@interface PXPeopleNamePickerContactCell
- (CNAvatarView)contactAvatarView;
- (PXPeopleNamePickerContactCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UILabel)subtitleLabel;
- (UIView)labelsContainer;
- (void)updateConstraints;
@end

@implementation PXPeopleNamePickerContactCell

- (UIView)labelsContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_labelsContainer);

  return WeakRetained;
}

- (UILabel)subtitleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_subtitleLabel);

  return WeakRetained;
}

- (CNAvatarView)contactAvatarView
{
  WeakRetained = objc_loadWeakRetained(&self->_contactAvatarView);

  return WeakRetained;
}

- (void)updateConstraints
{
  subtitleLabel = [(PXPeopleNamePickerContactCell *)self subtitleLabel];
  constraintsForHiddenSubtitle = [(PXPeopleNamePickerContactCell *)self constraintsForHiddenSubtitle];
  constraintsForVisibleSubtitle = [(PXPeopleNamePickerContactCell *)self constraintsForVisibleSubtitle];
  text = [subtitleLabel text];
  v7 = [text length];

  v8 = v7 == 0;
  if (v7)
  {
    v9 = constraintsForHiddenSubtitle;
  }

  else
  {
    v9 = constraintsForVisibleSubtitle;
  }

  if (v7)
  {
    v10 = constraintsForVisibleSubtitle;
  }

  else
  {
    v10 = constraintsForHiddenSubtitle;
  }

  [subtitleLabel setHidden:v8];
  [MEMORY[0x1E696ACD8] deactivateConstraints:v9];
  [MEMORY[0x1E696ACD8] activateConstraints:v10];
  v11.receiver = self;
  v11.super_class = PXPeopleNamePickerContactCell;
  [(PXPeopleNamePickerContactCell *)&v11 updateConstraints];
}

- (PXPeopleNamePickerContactCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v26.receiver = self;
  v26.super_class = PXPeopleNamePickerContactCell;
  v4 = [(PXPeopleNamePickerCell *)&v26 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695D0C0]);
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = [(PXPeopleNamePickerCell *)v4 titleLabel];
    contentView = [(PXPeopleNamePickerContactCell *)v4 contentView];
    [contentView addSubview:v6];
    [contentView addSubview:v5];
    [v6 addSubview:titleLabel];
    [v6 addSubview:v7];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = MEMORY[0x1E69DB878];
    [MEMORY[0x1E69DB878] smallSystemFontSize];
    v11 = [v10 systemFontOfSize:?];
    [v7 setFont:v11];

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    baseConstraints = [(PXPeopleNamePickerCell *)v4 baseConstraints];
    [contentView removeConstraints:baseConstraints];

    [(PXPeopleNamePickerCell *)v4 setBaseConstraints:0];
    v25 = _NSDictionaryOfVariableBindings(&cfstr_AvatarviewLabe.isa, v5, v6, 0);
    v13 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-[avatarView]-20-[labelsContainer]-|" options:1024 metrics:0 views:v25];
    [contentView addConstraints:v13];

    v14 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-[avatarView]-|" options:0 metrics:0 views:v25];
    [contentView addConstraints:v14];

    v15 = [MEMORY[0x1E696ACD8] constraintWithItem:v5 attribute:7 relatedBy:0 toItem:v5 attribute:8 multiplier:1.0 constant:0.0];
    [contentView addConstraint:v15];

    v16 = _NSDictionaryOfVariableBindings(&cfstr_TitlelabelSubt.isa, titleLabel, v7, 0);
    v17 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"|[titleLabel]|" options:0 metrics:0 views:v16];
    [v6 addConstraints:v17];

    v18 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"|[subtitleLabel]|" options:0 metrics:0 views:v16];
    [v6 addConstraints:v18];

    v19 = objc_alloc(MEMORY[0x1E695DF70]);
    v20 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[titleLabel]|" options:0 metrics:0 views:v16];
    v21 = [v19 initWithArray:v20];

    v22 = [MEMORY[0x1E696ACD8] constraintWithItem:v7 attribute:10 relatedBy:0 toItem:titleLabel attribute:10 multiplier:1.0 constant:0.0];
    [v21 addObject:v22];

    [v6 addConstraints:v21];
    [MEMORY[0x1E696ACD8] deactivateConstraints:v21];
    [(PXPeopleNamePickerContactCell *)v4 setConstraintsForHiddenSubtitle:v21];
    v23 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[titleLabel]-[subtitleLabel]|" options:0 metrics:0 views:v16];
    [v6 addConstraints:v23];
    [(PXPeopleNamePickerContactCell *)v4 setConstraintsForVisibleSubtitle:v23];
    objc_storeWeak(&v4->_contactAvatarView, v5);
    objc_storeWeak(&v4->_subtitleLabel, v7);
    objc_storeWeak(&v4->_labelsContainer, v6);
  }

  return v4;
}

@end