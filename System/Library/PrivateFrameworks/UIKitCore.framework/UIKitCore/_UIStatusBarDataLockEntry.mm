@interface _UIStatusBarDataLockEntry
- (BOOL)isEqual:(id)equal;
- (_UIStatusBarDataLockEntry)initWithCoder:(id)coder;
- (id)_ui_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIStatusBarDataLockEntry

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _UIStatusBarDataLockEntry;
  return self->_unlockFailureCount ^ [(_UIStatusBarDataEntry *)&v3 hash];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarDataLockEntry;
  v4 = [(_UIStatusBarDataEntry *)&v6 copyWithZone:zone];
  [v4 setUnlockFailureCount:self->_unlockFailureCount];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataLockEntry;
  coderCopy = coder;
  [(_UIStatusBarDataEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_unlockFailureCount forKey:{@"unlockFailureCount", v5.receiver, v5.super_class}];
}

- (_UIStatusBarDataLockEntry)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataLockEntry;
  coderCopy = coder;
  v4 = [(_UIStatusBarDataEntry *)&v7 initWithCoder:coderCopy];
  v5 = [coderCopy decodeIntegerForKey:{@"unlockFailureCount", v7.receiver, v7.super_class}];

  [(_UIStatusBarDataLockEntry *)v4 setUnlockFailureCount:v5];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = _UIStatusBarDataLockEntry;
  if ([(_UIStatusBarDataEntry *)&v9 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (([v5 isEnabled] & 1) != 0 || -[_UIStatusBarDataEntry isEnabled](self, "isEnabled"))
    {
      unlockFailureCount = self->_unlockFailureCount;
      v7 = unlockFailureCount == [v5 unlockFailureCount];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_ui_descriptionBuilder
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarDataLockEntry;
  _ui_descriptionBuilder = [(_UIStatusBarDataEntry *)&v6 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_unlockFailureCount);
  v4 = [_ui_descriptionBuilder appendKey:v3];

  return v4;
}

@end