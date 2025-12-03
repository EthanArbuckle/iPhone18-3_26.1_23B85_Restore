@interface PXSharedLibraryRulePersonCell
- (PHPerson)imagePerson;
- (PXSharedLibraryRulePersonCell)initWithFrame:(CGRect)frame;
- (id)removeTarget;
- (void)_updateMinusButton;
- (void)prepareForReuse;
- (void)remove:(id)remove;
- (void)setImagePerson:(id)person;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PXSharedLibraryRulePersonCell

- (id)removeTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_removeTarget);

  return WeakRetained;
}

- (void)remove:(id)remove
{
  removeAction = [(PXSharedLibraryRulePersonCell *)self removeAction];
  if (removeAction)
  {
    v5 = removeAction;
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    removeTarget = [(PXSharedLibraryRulePersonCell *)self removeTarget];
    [mEMORY[0x1E69DC668] sendAction:v5 to:removeTarget from:self forEvent:0];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = PXSharedLibraryRulePersonCell;
  changeCopy = change;
  [(PXSharedLibraryRulePersonCell *)&v7 traitCollectionDidChange:changeCopy];
  v5 = [(PXSharedLibraryRulePersonCell *)self traitCollection:v7.receiver];
  v6 = [v5 hasDifferentColorAppearanceComparedToTraitCollection:changeCopy];

  if (v6)
  {
    [(PXSharedLibraryRulePersonCell *)self _updateMinusButton];
  }
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = PXSharedLibraryRulePersonCell;
  [(PXSharedLibraryRulePersonCell *)&v5 prepareForReuse];
  [(PXSharedLibraryRulePersonCell *)self setImagePerson:0];
  plusImageView = [(PXSharedLibraryRulePersonCell *)self plusImageView];
  [plusImageView setImage:0];

  faceImageView = [(PXSharedLibraryRulePersonCell *)self faceImageView];
  [faceImageView setImage:0];
}

- (void)_updateMinusButton
{
  traitCollection = [(PXSharedLibraryRulePersonCell *)self traitCollection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__PXSharedLibraryRulePersonCell__updateMinusButton__block_invoke;
  v4[3] = &unk_1E774C648;
  v4[4] = self;
  [traitCollection performAsCurrentTraitCollection:v4];
}

void __51__PXSharedLibraryRulePersonCell__updateMinusButton__block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x1E69DC888] labelColor];
  v2 = v5;
  v3 = [v5 CGColor];
  v4 = [*(*(a1 + 32) + 672) layer];
  [v4 setShadowColor:v3];
}

- (PHPerson)imagePerson
{
  faceImageView = [(PXSharedLibraryRulePersonCell *)self faceImageView];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = faceImageView;
  }

  else
  {
    v3 = 0;
  }

  representedPerson = [v3 representedPerson];

  return representedPerson;
}

- (void)setImagePerson:(id)person
{
  personCopy = person;
  faceImageView = [(PXSharedLibraryRulePersonCell *)self faceImageView];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = faceImageView;
  }

  else
  {
    v6 = 0;
  }

  [v6 setRepresentedPerson:personCopy];
}

- (PXSharedLibraryRulePersonCell)initWithFrame:(CGRect)frame
{
  v105[2] = *MEMORY[0x1E69E9840];
  v103.receiver = self;
  v103.super_class = PXSharedLibraryRulePersonCell;
  v3 = [(PXSharedLibraryRulePersonCell *)&v103 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(PXSharedLibraryRulePersonCell *)v3 contentView];
    v5 = objc_alloc_init(PXRoundImageView);
    faceImageView = v4->_faceImageView;
    v4->_faceImageView = &v5->super;

    systemLightGrayColor = [MEMORY[0x1E69DC888] systemLightGrayColor];
    [(UIImageView *)v4->_faceImageView setBackgroundColor:systemLightGrayColor];

    [(UIImageView *)v4->_faceImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_faceImageView setContentMode:1];
    [contentView addSubview:v4->_faceImageView];
    v8 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    plusImageView = v4->_plusImageView;
    v4->_plusImageView = v8;

    [(UIImageView *)v4->_plusImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_plusImageView setContentMode:1];
    [contentView addSubview:v4->_plusImageView];
    objc_initWeak(&location, v4);
    v10 = MEMORY[0x1E69DC888];
    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 3221225472;
    v100[2] = __47__PXSharedLibraryRulePersonCell_initWithFrame___block_invoke;
    v100[3] = &unk_1E773DCE8;
    objc_copyWeak(&v101, &location);
    v11 = [v10 colorWithDynamicProvider:v100];
    v12 = MEMORY[0x1E69DCAD8];
    v49 = v11;
    v105[0] = v11;
    secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    v105[1] = secondarySystemGroupedBackgroundColor;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:2];
    v97 = [v12 configurationWithPaletteColors:v14];

    v15 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
    v96 = [v15 configurationByApplyingConfiguration:v97];

    v16 = MEMORY[0x1E69DC738];
    v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"minus.circle.fill"];
    v18 = [v16 systemButtonWithImage:v17 target:v4 action:sel_remove_];
    minusButton = v4->_minusButton;
    v4->_minusButton = v18;

    [(UIButton *)v4->_minusButton setPreferredSymbolConfiguration:v96 forImageInState:0];
    [(UIButton *)v4->_minusButton setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(UIButton *)v4->_minusButton layer];
    LODWORD(v21) = 1050253722;
    [layer setShadowOpacity:v21];

    layer2 = [(UIButton *)v4->_minusButton layer];
    [layer2 setShadowOffset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];

    layer3 = [(UIButton *)v4->_minusButton layer];
    [layer3 setShadowRadius:3.0];

    [(PXSharedLibraryRulePersonCell *)v4 _updateMinusButton];
    [contentView addSubview:v4->_minusButton];
    v95 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
    v24 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"minus.circle"];
    v25 = [v24 imageWithSymbolConfiguration:v95];
    systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    v94 = [v25 px_tintedCircularImageWithColor:systemWhiteColor backgroundColor:systemBlueColor];

    v28 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    minusImageView = v4->_minusImageView;
    v4->_minusImageView = v28;

    [(UIImageView *)v4->_minusImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_minusImageView setImage:v94];
    [(UIImageView *)v4->_minusImageView setHidden:1];
    [contentView addSubview:v4->_minusImageView];
    v98 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDD08] maxContentSizeCategory:*MEMORY[0x1E69DDC60] withSymbolicTraits:0x8000];
    v30 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    nameLabel = v4->_nameLabel;
    v4->_nameLabel = v30;

    [(UILabel *)v4->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_nameLabel setTextAlignment:1];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v4->_nameLabel setTextColor:labelColor];

    [(UILabel *)v4->_nameLabel setNumberOfLines:2];
    [(UILabel *)v4->_nameLabel setFont:v98];
    LODWORD(v33) = 1144766464;
    [(UILabel *)v4->_nameLabel setContentCompressionResistancePriority:1 forAxis:v33];
    [contentView addSubview:v4->_nameLabel];
    v34 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v34;

    [(UILabel *)v4->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_subtitleLabel setTextAlignment:1];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v4->_subtitleLabel setTextColor:secondaryLabelColor];

    [(UILabel *)v4->_subtitleLabel setFont:v98];
    LODWORD(v37) = 1144766464;
    [(UILabel *)v4->_subtitleLabel setContentCompressionResistancePriority:1 forAxis:v37];
    [contentView addSubview:v4->_subtitleLabel];
    v48 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIImageView *)v4->_faceImageView topAnchor];
    topAnchor2 = [(PXSharedLibraryRulePersonCell *)v4 topAnchor];
    v91 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v104[0] = v91;
    leadingAnchor = [(UIImageView *)v4->_faceImageView leadingAnchor];
    leadingAnchor2 = [(PXSharedLibraryRulePersonCell *)v4 leadingAnchor];
    v88 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v104[1] = v88;
    trailingAnchor = [(UIImageView *)v4->_faceImageView trailingAnchor];
    trailingAnchor2 = [(PXSharedLibraryRulePersonCell *)v4 trailingAnchor];
    v85 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v104[2] = v85;
    bottomAnchor = [(UIImageView *)v4->_faceImageView bottomAnchor];
    bottomAnchor2 = [(PXSharedLibraryRulePersonCell *)v4 bottomAnchor];
    v82 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v104[3] = v82;
    centerYAnchor = [(UIImageView *)v4->_plusImageView centerYAnchor];
    centerYAnchor2 = [(UIImageView *)v4->_faceImageView centerYAnchor];
    v79 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v104[4] = v79;
    centerXAnchor = [(UIImageView *)v4->_plusImageView centerXAnchor];
    centerXAnchor2 = [(UIImageView *)v4->_faceImageView centerXAnchor];
    v76 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v104[5] = v76;
    heightAnchor = [(UIImageView *)v4->_plusImageView heightAnchor];
    v74 = [heightAnchor constraintEqualToConstant:50.0];
    v104[6] = v74;
    heightAnchor2 = [(UIImageView *)v4->_plusImageView heightAnchor];
    v72 = [heightAnchor2 constraintEqualToConstant:50.0];
    v104[7] = v72;
    leadingAnchor3 = [(UIButton *)v4->_minusButton leadingAnchor];
    leadingAnchor4 = [(UIImageView *)v4->_faceImageView leadingAnchor];
    v69 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v104[8] = v69;
    topAnchor3 = [(UIButton *)v4->_minusButton topAnchor];
    topAnchor4 = [(UIImageView *)v4->_faceImageView topAnchor];
    v66 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v104[9] = v66;
    leadingAnchor5 = [(UIImageView *)v4->_minusImageView leadingAnchor];
    leadingAnchor6 = [(UIImageView *)v4->_faceImageView leadingAnchor];
    v63 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v104[10] = v63;
    topAnchor5 = [(UIImageView *)v4->_minusImageView topAnchor];
    topAnchor6 = [(UIImageView *)v4->_faceImageView topAnchor];
    v60 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v104[11] = v60;
    topAnchor7 = [(UILabel *)v4->_nameLabel topAnchor];
    bottomAnchor3 = [(UIImageView *)v4->_faceImageView bottomAnchor];
    v57 = [topAnchor7 constraintEqualToAnchor:bottomAnchor3 constant:5.0];
    v104[12] = v57;
    leadingAnchor7 = [(UILabel *)v4->_nameLabel leadingAnchor];
    leadingAnchor8 = [(UIImageView *)v4->_faceImageView leadingAnchor];
    v54 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v104[13] = v54;
    trailingAnchor3 = [(UILabel *)v4->_nameLabel trailingAnchor];
    trailingAnchor4 = [(UIImageView *)v4->_faceImageView trailingAnchor];
    v51 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v104[14] = v51;
    topAnchor8 = [(UILabel *)v4->_subtitleLabel topAnchor];
    bottomAnchor4 = [(UILabel *)v4->_nameLabel bottomAnchor];
    v39 = [topAnchor8 constraintEqualToAnchor:bottomAnchor4];
    v104[15] = v39;
    leadingAnchor9 = [(UILabel *)v4->_subtitleLabel leadingAnchor];
    leadingAnchor10 = [(UIImageView *)v4->_faceImageView leadingAnchor];
    v42 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    v104[16] = v42;
    trailingAnchor5 = [(UILabel *)v4->_subtitleLabel trailingAnchor];
    trailingAnchor6 = [(UIImageView *)v4->_faceImageView trailingAnchor];
    v45 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v104[17] = v45;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:18];
    [v48 activateConstraints:v46];

    objc_destroyWeak(&v101);
    objc_destroyWeak(&location);
  }

  return v4;
}

id __47__PXSharedLibraryRulePersonCell_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained tintColor];

  return v2;
}

@end