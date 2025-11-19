@interface PXSharedLibraryAssistantSummaryContentView
- (PXSharedLibraryAssistantSummaryContentView)initWithViewModel:(id)a3;
- (void)_initializeSubviews;
- (void)_updateCountsLabel;
- (void)_updateDateLabel;
- (void)_updatePeopleLabel;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PXSharedLibraryAssistantSummaryContentView

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if (PXSharedLibraryAssistantViewModelObservationContext_129614 == a5)
  {
    v5 = a4;
    v7 = a4 & 0x88;
    if ((+[PXSharedLibraryAssistantViewModel shareCountChangeDescriptors]& a4) != 0)
    {
      [(PXSharedLibraryAssistantSummaryContentView *)self _updateCountsLabel];
    }

    v8 = v5 & 0x2084;
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

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = PXSharedLibraryAssistantSummaryContentView;
  v4 = a3;
  [(PXSharedLibraryAssistantSummaryContentView *)&v8 traitCollectionDidChange:v4];
  v5 = [(PXSharedLibraryAssistantSummaryContentView *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(PXSharedLibraryAssistantSummaryContentView *)self _updateIcon];
  }
}

- (void)_updateDateLabel
{
  v7 = [(PXSharedLibraryAssistantSummaryContentView *)self viewModel];
  v3 = [v7 startDate];
  v4 = [v7 selectedRuleType];
  if (v3)
  {
    [MEMORY[0x1E696AB78] localizedStringFromDate:v3 dateStyle:2 timeStyle:0];
    objc_claimAutoreleasedReturnValue();
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = MEMORY[0x1E696AB78];
    v6 = [v7 suggestedStartDate];
    [v5 localizedStringFromDate:v6 dateStyle:2 timeStyle:0];
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
  v3 = [(PXSharedLibraryAssistantSummaryContentView *)self viewModel];
  v4 = [v3 localizedSelectedPeopleWithAdditionalPeopleCount:&v7];

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
  v3 = [(PXSharedLibraryAssistantSummaryContentView *)self viewModel];
  v4 = v3;
  if (v3)
  {
    [v3 shareCounts];
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
  v54 = [(UIImageView *)self->_topImageView topAnchor];
  v53 = [(PXSharedLibraryAssistantSummaryContentView *)self topAnchor];
  v52 = [v54 constraintEqualToAnchor:v53];
  v55[0] = v52;
  v51 = [(UIImageView *)self->_topImageView centerXAnchor];
  v50 = [(PXSharedLibraryAssistantSummaryContentView *)self centerXAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v55[1] = v49;
  v48 = [(UIImageView *)self->_topImageView leadingAnchor];
  v47 = [(PXSharedLibraryAssistantSummaryContentView *)self leadingAnchor];
  v46 = [v48 constraintGreaterThanOrEqualToAnchor:v47];
  v55[2] = v46;
  v45 = [(UIImageView *)self->_topImageView trailingAnchor];
  v44 = [(PXSharedLibraryAssistantSummaryContentView *)self trailingAnchor];
  v43 = [v45 constraintLessThanOrEqualToAnchor:v44];
  v55[3] = v43;
  v42 = [(UILabel *)self->_countsLabel topAnchor];
  v41 = [(UIImageView *)self->_topImageView bottomAnchor];
  v40 = [v42 constraintEqualToAnchor:v41 constant:22.0];
  v55[4] = v40;
  v39 = [(UILabel *)self->_countsLabel leadingAnchor];
  v38 = [(PXSharedLibraryAssistantSummaryContentView *)self leadingAnchor];
  v36 = [v39 constraintEqualToAnchor:v38];
  v55[5] = v36;
  v35 = [(UILabel *)self->_countsLabel trailingAnchor];
  v34 = [(PXSharedLibraryAssistantSummaryContentView *)self trailingAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v55[6] = v33;
  v32 = [(UILabel *)self->_peopleLabel topAnchor];
  v31 = [(UILabel *)self->_countsLabel bottomAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v55[7] = v30;
  v29 = [(UILabel *)self->_peopleLabel leadingAnchor];
  v28 = [(PXSharedLibraryAssistantSummaryContentView *)self leadingAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v55[8] = v27;
  v26 = [(UILabel *)self->_peopleLabel trailingAnchor];
  v25 = [(PXSharedLibraryAssistantSummaryContentView *)self trailingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v55[9] = v24;
  v23 = [(UILabel *)self->_dateLabel topAnchor];
  v22 = [(UILabel *)self->_peopleLabel bottomAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v55[10] = v21;
  v20 = [(UILabel *)self->_dateLabel leadingAnchor];
  v11 = [(PXSharedLibraryAssistantSummaryContentView *)self leadingAnchor];
  v12 = [v20 constraintEqualToAnchor:v11];
  v55[11] = v12;
  v13 = [(UILabel *)self->_dateLabel trailingAnchor];
  v14 = [(PXSharedLibraryAssistantSummaryContentView *)self trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v55[12] = v15;
  v16 = [(UILabel *)self->_dateLabel bottomAnchor];
  v17 = [(PXSharedLibraryAssistantSummaryContentView *)self bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v55[13] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:14];
  [v37 activateConstraints:v19];

  [(PXSharedLibraryAssistantSummaryContentView *)self _updateIcon];
}

- (PXSharedLibraryAssistantSummaryContentView)initWithViewModel:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantSummaryContentView.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];
  }

  v12.receiver = self;
  v12.super_class = PXSharedLibraryAssistantSummaryContentView;
  v7 = [(PXSharedLibraryAssistantSummaryContentView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_viewModel, a3);
    [(PXSharedLibraryAssistantViewModel *)v8->_viewModel registerChangeObserver:v8 context:PXSharedLibraryAssistantViewModelObservationContext_129614];
    v9 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(PXSharedLibraryAssistantSummaryContentView *)v8 setBackgroundColor:v9];

    [(PXSharedLibraryAssistantSummaryContentView *)v8 _initializeSubviews];
    [(PXSharedLibraryAssistantSummaryContentView *)v8 _updateCountsLabel];
    [(PXSharedLibraryAssistantSummaryContentView *)v8 _updatePeopleLabel];
    [(PXSharedLibraryAssistantSummaryContentView *)v8 _updateDateLabel];
  }

  return v8;
}

@end