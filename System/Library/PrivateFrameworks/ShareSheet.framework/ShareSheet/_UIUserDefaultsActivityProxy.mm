@interface _UIUserDefaultsActivityProxy
- (_UIUserDefaultsActivityProxy)initWithCoder:(id)coder;
- (_UIUserDefaultsActivityProxy)initWithIdentifier:(id)identifier;
- (id)labelSlot;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIUserDefaultsActivityProxy

- (_UIUserDefaultsActivityProxy)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = _UIUserDefaultsActivityProxy;
  v5 = [(_UIUserDefaultsActivityProxy *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (_UIUserDefaultsActivityProxy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UIUserDefaultsActivityProxy *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_isDisabled = [coderCopy decodeBoolForKey:@"isDisabled"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityTitle"];
    activityTitle = v5->_activityTitle;
    v5->_activityTitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationBundleIdentifier"];
    applicationBundleIdentifier = v5->_applicationBundleIdentifier;
    v5->_applicationBundleIdentifier = v10;

    v5->_iconImageSlotID = [coderCopy decodeInt32ForKey:@"iconImageSlotID"];
    v5->_canEdit = [coderCopy decodeBoolForKey:@"canEdit"];
    v5->_canMove = [coderCopy decodeBoolForKey:@"canMove"];
    v5->_canHide = [coderCopy decodeBoolForKey:@"canHide"];
    v5->_isHidden = [coderCopy decodeBoolForKey:@"isHidden"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeBool:self->_isDisabled forKey:@"isDisabled"];
  [coderCopy encodeObject:self->_activityTitle forKey:@"activityTitle"];
  [coderCopy encodeObject:self->_applicationBundleIdentifier forKey:@"applicationBundleIdentifier"];
  [coderCopy encodeInt32:self->_iconImageSlotID forKey:@"iconImageSlotID"];
  [coderCopy encodeBool:self->_canEdit forKey:@"canEdit"];
  [coderCopy encodeBool:self->_canMove forKey:@"canMove"];
  [coderCopy encodeBool:self->_canHide forKey:@"canHide"];
  [coderCopy encodeBool:self->_isHidden forKey:@"isHidden"];
}

- (id)labelSlot
{
  v2 = MEMORY[0x1E696AD98];
  activityTitle = [(_UIUserDefaultsActivityProxy *)self activityTitle];
  v4 = [v2 numberWithUnsignedInt:{objc_msgSend(activityTitle, "slotIdentifier")}];

  return v4;
}

@end