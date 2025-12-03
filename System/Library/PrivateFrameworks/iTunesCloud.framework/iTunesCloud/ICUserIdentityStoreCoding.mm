@interface ICUserIdentityStoreCoding
- (ICUserIdentityStoreCoding)initWithCoder:(id)coder;
- (ICUserIdentityStoreCoding)initWithIdentityStoreStyle:(int64_t)style;
- (id)_initCommon;
- (void)encodeWithCoder:(id)coder;
- (void)lock:(id)lock;
@end

@implementation ICUserIdentityStoreCoding

- (id)_initCommon
{
  v3.receiver = self;
  v3.super_class = ICUserIdentityStoreCoding;
  result = [(ICUserIdentityStoreCoding *)&v3 init];
  if (result)
  {
    *(result + 2) = 0;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  activeAccountHistory = self->_activeAccountHistory;
  coderCopy = coder;
  [coderCopy encodeObject:activeAccountHistory forKey:@"accountHistory"];
  [coderCopy encodeObject:self->_activeLockerAccountHistory forKey:@"lockerHistory"];
  [coderCopy encodeObject:self->_backend forKey:@"backend"];
  [coderCopy encodeObject:self->_delegateAccountStoreOptions forKey:@"delegationOptions"];
  [coderCopy encodeInteger:self->_identityStoreStyle forKey:@"style"];
  [coderCopy encodeInt64:self->_uniqueIdentifier forKey:@"uid"];
}

- (ICUserIdentityStoreCoding)initWithCoder:(id)coder
{
  coderCopy = coder;
  _initCommon = [(ICUserIdentityStoreCoding *)self _initCommon];
  if (_initCommon)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountHistory"];
    activeAccountHistory = _initCommon->_activeAccountHistory;
    _initCommon->_activeAccountHistory = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lockerHistory"];
    activeLockerAccountHistory = _initCommon->_activeLockerAccountHistory;
    _initCommon->_activeLockerAccountHistory = v8;

    v10 = objc_alloc(MEMORY[0x1E695DFD8]);
    v11 = objc_opt_class();
    v12 = [v10 initWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"backend"];
    backend = _initCommon->_backend;
    _initCommon->_backend = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"delegationOptions"];
    delegateAccountStoreOptions = _initCommon->_delegateAccountStoreOptions;
    _initCommon->_delegateAccountStoreOptions = v15;

    _initCommon->_identityStoreStyle = [coderCopy decodeIntegerForKey:@"style"];
    _initCommon->_uniqueIdentifier = [coderCopy decodeInt64ForKey:@"uid"];
  }

  return _initCommon;
}

- (void)lock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2]();
  os_unfair_lock_unlock(&self->_lock);
}

- (ICUserIdentityStoreCoding)initWithIdentityStoreStyle:(int64_t)style
{
  _initCommon = [(ICUserIdentityStoreCoding *)self _initCommon];
  v5 = _initCommon;
  if (_initCommon)
  {
    _initCommon->_identityStoreStyle = style;
    v6 = CFUUIDCreate(*MEMORY[0x1E695E480]);
    v5->_uniqueIdentifier = *&CFUUIDGetUUIDBytes(v6);
    CFRelease(v6);
  }

  return v5;
}

@end