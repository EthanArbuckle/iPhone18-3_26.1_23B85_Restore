@interface PXPeopleNamePickerPersonCell
- (PHPerson)person;
- (PXPeopleNamePickerPersonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (PXPeopleScalableAvatarView)personAvatarView;
- (void)setPerson:(id)person;
@end

@implementation PXPeopleNamePickerPersonCell

- (PXPeopleScalableAvatarView)personAvatarView
{
  WeakRetained = objc_loadWeakRetained(&self->_personAvatarView);

  return WeakRetained;
}

- (PHPerson)person
{
  personAvatarView = [(PXPeopleNamePickerPersonCell *)self personAvatarView];
  person = [personAvatarView person];

  if (person)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v9 = NSStringFromClass(v10);
    px_descriptionForAssertionMessage = [person px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerCell.m" lineNumber:89 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.personAvatarView.person", v9, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerCell.m" lineNumber:89 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.personAvatarView.person", v9}];
  }

LABEL_3:

  return person;
}

- (void)setPerson:(id)person
{
  personCopy = person;
  personAvatarView = [(PXPeopleNamePickerPersonCell *)self personAvatarView];
  [personAvatarView setPerson:personCopy];
}

- (PXPeopleNamePickerPersonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v14.receiver = self;
  v14.super_class = PXPeopleNamePickerPersonCell;
  v4 = [(PXPeopleNamePickerCell *)&v14 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(PXPeopleScalableAvatarView);
    titleLabel = [(PXPeopleNamePickerCell *)v4 titleLabel];
    contentView = [(PXPeopleNamePickerPersonCell *)v4 contentView];
    [contentView addSubview:v5];
    [(PXPeopleScalableAvatarView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PXPeopleScalableAvatarView *)v5 setAccessibilityIgnoresInvertColors:1];
    baseConstraints = [(PXPeopleNamePickerCell *)v4 baseConstraints];
    [contentView removeConstraints:baseConstraints];

    [(PXPeopleNamePickerCell *)v4 setBaseConstraints:0];
    v9 = _NSDictionaryOfVariableBindings(&cfstr_AvatarviewTitl.isa, v5, titleLabel, 0);
    v10 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-[avatarView]-20-[titleLabel]-|" options:1024 metrics:0 views:v9];
    [contentView addConstraints:v10];

    v11 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-[avatarView]-|" options:0 metrics:0 views:v9];
    [contentView addConstraints:v11];

    v12 = [MEMORY[0x1E696ACD8] constraintWithItem:v5 attribute:7 relatedBy:0 toItem:v5 attribute:8 multiplier:1.0 constant:0.0];
    [contentView addConstraint:v12];

    objc_storeWeak(&v4->_personAvatarView, v5);
  }

  return v4;
}

@end