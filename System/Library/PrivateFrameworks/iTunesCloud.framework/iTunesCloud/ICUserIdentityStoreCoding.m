@interface ICUserIdentityStoreCoding
- (ICUserIdentityStoreCoding)initWithCoder:(id)a3;
- (ICUserIdentityStoreCoding)initWithIdentityStoreStyle:(int64_t)a3;
- (id)_initCommon;
- (void)encodeWithCoder:(id)a3;
- (void)lock:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  activeAccountHistory = self->_activeAccountHistory;
  v5 = a3;
  [v5 encodeObject:activeAccountHistory forKey:@"accountHistory"];
  [v5 encodeObject:self->_activeLockerAccountHistory forKey:@"lockerHistory"];
  [v5 encodeObject:self->_backend forKey:@"backend"];
  [v5 encodeObject:self->_delegateAccountStoreOptions forKey:@"delegationOptions"];
  [v5 encodeInteger:self->_identityStoreStyle forKey:@"style"];
  [v5 encodeInt64:self->_uniqueIdentifier forKey:@"uid"];
}

- (ICUserIdentityStoreCoding)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ICUserIdentityStoreCoding *)self _initCommon];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountHistory"];
    activeAccountHistory = v5->_activeAccountHistory;
    v5->_activeAccountHistory = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lockerHistory"];
    activeLockerAccountHistory = v5->_activeLockerAccountHistory;
    v5->_activeLockerAccountHistory = v8;

    v10 = objc_alloc(MEMORY[0x1E695DFD8]);
    v11 = objc_opt_class();
    v12 = [v10 initWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"backend"];
    backend = v5->_backend;
    v5->_backend = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"delegationOptions"];
    delegateAccountStoreOptions = v5->_delegateAccountStoreOptions;
    v5->_delegateAccountStoreOptions = v15;

    v5->_identityStoreStyle = [v4 decodeIntegerForKey:@"style"];
    v5->_uniqueIdentifier = [v4 decodeInt64ForKey:@"uid"];
  }

  return v5;
}

- (void)lock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2]();
  os_unfair_lock_unlock(&self->_lock);
}

- (ICUserIdentityStoreCoding)initWithIdentityStoreStyle:(int64_t)a3
{
  v4 = [(ICUserIdentityStoreCoding *)self _initCommon];
  v5 = v4;
  if (v4)
  {
    v4->_identityStoreStyle = a3;
    v6 = CFUUIDCreate(*MEMORY[0x1E695E480]);
    v5->_uniqueIdentifier = *&CFUUIDGetUUIDBytes(v6);
    CFRelease(v6);
  }

  return v5;
}

@end