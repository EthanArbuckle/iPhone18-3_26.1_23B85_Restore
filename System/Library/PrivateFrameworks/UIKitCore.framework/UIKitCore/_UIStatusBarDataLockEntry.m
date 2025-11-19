@interface _UIStatusBarDataLockEntry
- (BOOL)isEqual:(id)a3;
- (_UIStatusBarDataLockEntry)initWithCoder:(id)a3;
- (id)_ui_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIStatusBarDataLockEntry

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _UIStatusBarDataLockEntry;
  return self->_unlockFailureCount ^ [(_UIStatusBarDataEntry *)&v3 hash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarDataLockEntry;
  v4 = [(_UIStatusBarDataEntry *)&v6 copyWithZone:a3];
  [v4 setUnlockFailureCount:self->_unlockFailureCount];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataLockEntry;
  v4 = a3;
  [(_UIStatusBarDataEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_unlockFailureCount forKey:{@"unlockFailureCount", v5.receiver, v5.super_class}];
}

- (_UIStatusBarDataLockEntry)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataLockEntry;
  v3 = a3;
  v4 = [(_UIStatusBarDataEntry *)&v7 initWithCoder:v3];
  v5 = [v3 decodeIntegerForKey:{@"unlockFailureCount", v7.receiver, v7.super_class}];

  [(_UIStatusBarDataLockEntry *)v4 setUnlockFailureCount:v5];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIStatusBarDataLockEntry;
  if ([(_UIStatusBarDataEntry *)&v9 isEqual:v4])
  {
    v5 = v4;
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
  v2 = [(_UIStatusBarDataEntry *)&v6 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_unlockFailureCount);
  v4 = [v2 appendKey:v3];

  return v4;
}

@end