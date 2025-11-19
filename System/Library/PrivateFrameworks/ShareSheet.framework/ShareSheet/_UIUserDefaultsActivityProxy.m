@interface _UIUserDefaultsActivityProxy
- (_UIUserDefaultsActivityProxy)initWithCoder:(id)a3;
- (_UIUserDefaultsActivityProxy)initWithIdentifier:(id)a3;
- (id)labelSlot;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIUserDefaultsActivityProxy

- (_UIUserDefaultsActivityProxy)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIUserDefaultsActivityProxy;
  v5 = [(_UIUserDefaultsActivityProxy *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (_UIUserDefaultsActivityProxy)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIUserDefaultsActivityProxy *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_isDisabled = [v4 decodeBoolForKey:@"isDisabled"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityTitle"];
    activityTitle = v5->_activityTitle;
    v5->_activityTitle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationBundleIdentifier"];
    applicationBundleIdentifier = v5->_applicationBundleIdentifier;
    v5->_applicationBundleIdentifier = v10;

    v5->_iconImageSlotID = [v4 decodeInt32ForKey:@"iconImageSlotID"];
    v5->_canEdit = [v4 decodeBoolForKey:@"canEdit"];
    v5->_canMove = [v4 decodeBoolForKey:@"canMove"];
    v5->_canHide = [v4 decodeBoolForKey:@"canHide"];
    v5->_isHidden = [v4 decodeBoolForKey:@"isHidden"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeBool:self->_isDisabled forKey:@"isDisabled"];
  [v5 encodeObject:self->_activityTitle forKey:@"activityTitle"];
  [v5 encodeObject:self->_applicationBundleIdentifier forKey:@"applicationBundleIdentifier"];
  [v5 encodeInt32:self->_iconImageSlotID forKey:@"iconImageSlotID"];
  [v5 encodeBool:self->_canEdit forKey:@"canEdit"];
  [v5 encodeBool:self->_canMove forKey:@"canMove"];
  [v5 encodeBool:self->_canHide forKey:@"canHide"];
  [v5 encodeBool:self->_isHidden forKey:@"isHidden"];
}

- (id)labelSlot
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(_UIUserDefaultsActivityProxy *)self activityTitle];
  v4 = [v2 numberWithUnsignedInt:{objc_msgSend(v3, "slotIdentifier")}];

  return v4;
}

@end