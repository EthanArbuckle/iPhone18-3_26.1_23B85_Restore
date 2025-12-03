@interface STStatusBarDataLockEntry
+ (STStatusBarDataLockEntry)entryWithUnlockFailureCount:(int64_t)count;
- (STStatusBarDataLockEntry)initWithBSXPCCoder:(id)coder;
- (STStatusBarDataLockEntry)initWithCoder:(id)coder;
- (id)_equalsBuilderWithObject:(id)object;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusBarDataLockEntry

+ (STStatusBarDataLockEntry)entryWithUnlockFailureCount:(int64_t)count
{
  v4 = objc_alloc_init(self);
  v4[2] = count;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataLockEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_unlockFailureCount forKey:{@"unlockFailureCount", v5.receiver, v5.super_class}];
}

- (STStatusBarDataLockEntry)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataLockEntry;
  coderCopy = coder;
  v4 = [(STStatusBarDataEntry *)&v7 initWithCoder:coderCopy];
  v5 = [coderCopy decodeIntegerForKey:{@"unlockFailureCount", v7.receiver, v7.super_class}];

  v4->_unlockFailureCount = v5;
  return v4;
}

- (id)succinctDescriptionBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataLockEntry;
  succinctDescriptionBuilder = [(STStatusBarDataEntry *)&v6 succinctDescriptionBuilder];
  v4 = [succinctDescriptionBuilder appendInteger:-[STStatusBarDataLockEntry unlockFailureCount](self withName:{"unlockFailureCount"), @"unlockFailureCount"}];

  return succinctDescriptionBuilder;
}

- (id)_equalsBuilderWithObject:(id)object
{
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = STStatusBarDataLockEntry;
  v5 = [(STStatusBarDataEntry *)&v13 _equalsBuilderWithObject:objectCopy];
  v6 = objectCopy;
  unlockFailureCount = [(STStatusBarDataLockEntry *)self unlockFailureCount];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__STStatusBarDataLockEntry__equalsBuilderWithObject___block_invoke;
  v11[3] = &unk_1E85DEAD0;
  v12 = v6;
  v8 = v6;
  v9 = [v5 appendInteger:unlockFailureCount counterpart:v11];

  return v5;
}

- (id)_hashBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataLockEntry;
  _hashBuilder = [(STStatusBarDataEntry *)&v6 _hashBuilder];
  v4 = [_hashBuilder appendInteger:{-[STStatusBarDataLockEntry unlockFailureCount](self, "unlockFailureCount")}];

  return _hashBuilder;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataLockEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:self->_unlockFailureCount forKey:{@"unlockFailureCount", v5.receiver, v5.super_class}];
}

- (STStatusBarDataLockEntry)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = STStatusBarDataLockEntry;
  v5 = [(STStatusBarDataEntry *)&v7 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_unlockFailureCount = [coderCopy decodeInt64ForKey:@"unlockFailureCount"];
  }

  return v5;
}

@end