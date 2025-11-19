@interface PXPeopleNamePickerContactCell
- (CNAvatarView)contactAvatarView;
- (PXPeopleNamePickerContactCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
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
  v3 = [(PXPeopleNamePickerContactCell *)self subtitleLabel];
  v4 = [(PXPeopleNamePickerContactCell *)self constraintsForHiddenSubtitle];
  v5 = [(PXPeopleNamePickerContactCell *)self constraintsForVisibleSubtitle];
  v6 = [v3 text];
  v7 = [v6 length];

  v8 = v7 == 0;
  if (v7)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (v7)
  {
    v10 = v5;
  }

  else
  {
    v10 = v4;
  }

  [v3 setHidden:v8];
  [MEMORY[0x1E696ACD8] deactivateConstraints:v9];
  [MEMORY[0x1E696ACD8] activateConstraints:v10];
  v11.receiver = self;
  v11.super_class = PXPeopleNamePickerContactCell;
  [(PXPeopleNamePickerContactCell *)&v11 updateConstraints];
}

- (PXPeopleNamePickerContactCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v26.receiver = self;
  v26.super_class = PXPeopleNamePickerContactCell;
  v4 = [(PXPeopleNamePickerCell *)&v26 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695D0C0]);
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v8 = [(PXPeopleNamePickerCell *)v4 titleLabel];
    v9 = [(PXPeopleNamePickerContactCell *)v4 contentView];
    [v9 addSubview:v6];
    [v9 addSubview:v5];
    [v6 addSubview:v8];
    [v6 addSubview:v7];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = MEMORY[0x1E69DB878];
    [MEMORY[0x1E69DB878] smallSystemFontSize];
    v11 = [v10 systemFontOfSize:?];
    [v7 setFont:v11];

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [(PXPeopleNamePickerCell *)v4 baseConstraints];
    [v9 removeConstraints:v12];

    [(PXPeopleNamePickerCell *)v4 setBaseConstraints:0];
    v25 = _NSDictionaryOfVariableBindings(&cfstr_AvatarviewLabe.isa, v5, v6, 0);
    v13 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-[avatarView]-20-[labelsContainer]-|" options:1024 metrics:0 views:v25];
    [v9 addConstraints:v13];

    v14 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-[avatarView]-|" options:0 metrics:0 views:v25];
    [v9 addConstraints:v14];

    v15 = [MEMORY[0x1E696ACD8] constraintWithItem:v5 attribute:7 relatedBy:0 toItem:v5 attribute:8 multiplier:1.0 constant:0.0];
    [v9 addConstraint:v15];

    v16 = _NSDictionaryOfVariableBindings(&cfstr_TitlelabelSubt.isa, v8, v7, 0);
    v17 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"|[titleLabel]|" options:0 metrics:0 views:v16];
    [v6 addConstraints:v17];

    v18 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"|[subtitleLabel]|" options:0 metrics:0 views:v16];
    [v6 addConstraints:v18];

    v19 = objc_alloc(MEMORY[0x1E695DF70]);
    v20 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[titleLabel]|" options:0 metrics:0 views:v16];
    v21 = [v19 initWithArray:v20];

    v22 = [MEMORY[0x1E696ACD8] constraintWithItem:v7 attribute:10 relatedBy:0 toItem:v8 attribute:10 multiplier:1.0 constant:0.0];
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