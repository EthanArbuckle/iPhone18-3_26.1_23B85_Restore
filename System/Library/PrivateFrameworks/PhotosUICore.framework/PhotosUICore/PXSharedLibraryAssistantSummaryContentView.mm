@interface PXSharedLibraryAssistantSummaryContentView
- (PXSharedLibraryAssistantSummaryContentView)initWithViewModel:(id)model;
- (void)_initializeSubviews;
- (void)_updateCountsLabel;
- (void)_updateDateLabel;
- (void)_updatePeopleLabel;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PXSharedLibraryAssistantSummaryContentView

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if (PXSharedLibraryAssistantViewModelObservationContext_129614 == context)
  {
    changeCopy = change;
    v7 = change & 0x88;
    if ((+[PXSharedLibraryAssistantViewModel shareCountChangeDescriptors]& change) != 0)
    {
      [(PXSharedLibraryAssistantSummaryContentView *)self _updateCountsLabel];
    }

    v8 = changeCopy & 0x2084;
    if (v7)
    {
      [(PXSharedLibraryAssistantSummaryContentView *)self _updatePeopleLabel];
    }

    if (v8)
    {

      [(PXSharedLibraryAssistantSummaryContentView *)self _updateDateLabel];
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = PXSharedLibraryAssistantSummaryContentView;
  changeCopy = change;
  [(PXSharedLibraryAssistantSummaryContentView *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(PXSharedLibraryAssistantSummaryContentView *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(PXSharedLibraryAssistantSummaryContentView *)self _updateIcon];
  }
}

- (void)_updateDateLabel
{
  viewModel = [(PXSharedLibraryAssistantSummaryContentView *)self viewModel];
  startDate = [viewModel startDate];
  selectedRuleType = [viewModel selectedRuleType];
  if (startDate)
  {
    [MEMORY[0x1E696AB78] localizedStringFromDate:startDate dateStyle:2 timeStyle:0];
    objc_claimAutoreleasedReturnValue();
    goto LABEL_5;
  }

  if (selectedRuleType == 1)
  {
    v5 = MEMORY[0x1E696AB78];
    suggestedStartDate = [viewModel suggestedStartDate];
    [v5 localizedStringFromDate:suggestedStartDate dateStyle:2 timeStyle:0];
    objc_claimAutoreleasedReturnValue();

LABEL_5:
    PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_Summary_Date_Format");
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringWithValidatedFormat();
  }

  [(UILabel *)self->_dateLabel setText:0];
  [(UILabel *)self->_dateLabel setHidden:1];
}

- (void)_updatePeopleLabel
{
  v7 = 0;
  viewModel = [(PXSharedLibraryAssistantSummaryContentView *)self viewModel];
  v4 = [viewModel localizedSelectedPeopleWithAdditionalPeopleCount:&v7];

  v5 = [v4 count];
  if (v7 + v5 >= 1)
  {
    [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v4];
    objc_claimAutoreleasedReturnValue();
    if ([v4 count] == 1)
    {
      v6 = @"PXSharedLibraryAssistant_Summary_People_SinglePerson_Format";
    }

    else
    {
      if ([v4 count] < 2 || v7)
      {
        if ([v4 count] == 2 && v7 >= 1)
        {
          PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_Summary_People_TwoPeopleAndCount_Format");
          objc_claimAutoreleasedReturnValue();
          [v4 objectAtIndexedSubscript:0];
          objc_claimAutoreleasedReturnValue();
          [v4 objectAtIndexedSubscript:1];
          objc_claimAutoreleasedReturnValue();
          PXLocalizedStringWithValidatedFormat();
        }

        PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_Summary_People_CountOnly_Format");
        objc_claimAutoreleasedReturnValue();
LABEL_9:
        PXLocalizedStringWithValidatedFormat();
      }

      v6 = @"PXSharedLibraryAssistant_Summary_People_MultiplePeople_Format";
    }

    PXLocalizedSharedLibraryString(v6);
    objc_claimAutoreleasedReturnValue();
    goto LABEL_9;
  }

  [(UILabel *)self->_peopleLabel setText:0];
  [(UILabel *)self->_peopleLabel setHidden:1];
}

- (void)_updateCountsLabel
{
  viewModel = [(PXSharedLibraryAssistantSummaryContentView *)self viewModel];
  v4 = viewModel;
  if (viewModel)
  {
    [viewModel shareCounts];
  }

  v5 = PLLocalizedCountDescription();
  [(UILabel *)self->_countsLabel setText:v5];
}

- (void)_initializeSubviews
{
  v55[14] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [(UIImageView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  topImageView = self->_topImageView;
  self->_topImageView = v3;

  v5 = _CreateLabel(1);
  countsLabel = self->_countsLabel;
  self->_countsLabel = v5;

  v7 = _CreateLabel(0);
  peopleLabel = self->_peopleLabel;
  self->_peopleLabel = v7;

  v9 = _CreateLabel(0);
  dateLabel = self->_dateLabel;
  self->_dateLabel = v9;

  [(PXSharedLibraryAssistantSummaryContentView *)self addSubview:self->_topImageView];
  [(PXSharedLibraryAssistantSummaryContentView *)self addSubview:self->_countsLabel];
  [(PXSharedLibraryAssistantSummaryContentView *)self addSubview:self->_peopleLabel];
  [(PXSharedLibraryAssistantSummaryContentView *)self addSubview:self->_dateLabel];
  v37 = MEMORY[0x1E696ACD8];
  topAnchor = [(UIImageView *)self->_topImageView topAnchor];
  topAnchor2 = [(PXSharedLibraryAssistantSummaryContentView *)self topAnchor];
  v52 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v55[0] = v52;
  centerXAnchor = [(UIImageView *)self->_topImageView centerXAnchor];
  centerXAnchor2 = [(PXSharedLibraryAssistantSummaryContentView *)self centerXAnchor];
  v49 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v55[1] = v49;
  leadingAnchor = [(UIImageView *)self->_topImageView leadingAnchor];
  leadingAnchor2 = [(PXSharedLibraryAssistantSummaryContentView *)self leadingAnchor];
  v46 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  v55[2] = v46;
  trailingAnchor = [(UIImageView *)self->_topImageView trailingAnchor];
  trailingAnchor2 = [(PXSharedLibraryAssistantSummaryContentView *)self trailingAnchor];
  v43 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  v55[3] = v43;
  topAnchor3 = [(UILabel *)self->_countsLabel topAnchor];
  bottomAnchor = [(UIImageView *)self->_topImageView bottomAnchor];
  v40 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:22.0];
  v55[4] = v40;
  leadingAnchor3 = [(UILabel *)self->_countsLabel leadingAnchor];
  leadingAnchor4 = [(PXSharedLibraryAssistantSummaryContentView *)self leadingAnchor];
  v36 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v55[5] = v36;
  trailingAnchor3 = [(UILabel *)self->_countsLabel trailingAnchor];
  trailingAnchor4 = [(PXSharedLibraryAssistantSummaryContentView *)self trailingAnchor];
  v33 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v55[6] = v33;
  topAnchor4 = [(UILabel *)self->_peopleLabel topAnchor];
  bottomAnchor2 = [(UILabel *)self->_countsLabel bottomAnchor];
  v30 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2];
  v55[7] = v30;
  leadingAnchor5 = [(UILabel *)self->_peopleLabel leadingAnchor];
  leadingAnchor6 = [(PXSharedLibraryAssistantSummaryContentView *)self leadingAnchor];
  v27 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v55[8] = v27;
  trailingAnchor5 = [(UILabel *)self->_peopleLabel trailingAnchor];
  trailingAnchor6 = [(PXSharedLibraryAssistantSummaryContentView *)self trailingAnchor];
  v24 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v55[9] = v24;
  topAnchor5 = [(UILabel *)self->_dateLabel topAnchor];
  bottomAnchor3 = [(UILabel *)self->_peopleLabel bottomAnchor];
  v21 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3];
  v55[10] = v21;
  leadingAnchor7 = [(UILabel *)self->_dateLabel leadingAnchor];
  leadingAnchor8 = [(PXSharedLibraryAssistantSummaryContentView *)self leadingAnchor];
  v12 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v55[11] = v12;
  trailingAnchor7 = [(UILabel *)self->_dateLabel trailingAnchor];
  trailingAnchor8 = [(PXSharedLibraryAssistantSummaryContentView *)self trailingAnchor];
  v15 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v55[12] = v15;
  bottomAnchor4 = [(UILabel *)self->_dateLabel bottomAnchor];
  bottomAnchor5 = [(PXSharedLibraryAssistantSummaryContentView *)self bottomAnchor];
  v18 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v55[13] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:14];
  [v37 activateConstraints:v19];

  [(PXSharedLibraryAssistantSummaryContentView *)self _updateIcon];
}

- (PXSharedLibraryAssistantSummaryContentView)initWithViewModel:(id)model
{
  modelCopy = model;
  if (!modelCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantSummaryContentView.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];
  }

  v12.receiver = self;
  v12.super_class = PXSharedLibraryAssistantSummaryContentView;
  v7 = [(PXSharedLibraryAssistantSummaryContentView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_viewModel, model);
    [(PXSharedLibraryAssistantViewModel *)v8->_viewModel registerChangeObserver:v8 context:PXSharedLibraryAssistantViewModelObservationContext_129614];
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(PXSharedLibraryAssistantSummaryContentView *)v8 setBackgroundColor:systemBackgroundColor];

    [(PXSharedLibraryAssistantSummaryContentView *)v8 _initializeSubviews];
    [(PXSharedLibraryAssistantSummaryContentView *)v8 _updateCountsLabel];
    [(PXSharedLibraryAssistantSummaryContentView *)v8 _updatePeopleLabel];
    [(PXSharedLibraryAssistantSummaryContentView *)v8 _updateDateLabel];
  }

  return v8;
}

@end