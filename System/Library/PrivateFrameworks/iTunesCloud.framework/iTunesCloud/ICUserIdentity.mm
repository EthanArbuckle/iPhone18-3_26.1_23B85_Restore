@interface ICUserIdentity
+ (id)activeAccount;
+ (id)activeLockerAccount;
+ (id)autoupdatingActiveAccount;
+ (id)autoupdatingActiveLockerAccount;
+ (id)autoupdatingDefaultMediaIdentity;
+ (id)carrierBundleWithDeviceIdentifier:(id)a3;
+ (id)defaultMediaIdentity;
+ (id)nullIdentity;
+ (id)specificAccountWithAltDSID:(id)a3;
+ (id)specificAccountWithDSID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToIdentity:(id)a3 inStore:(id)a4;
- (ICUserIdentity)init;
- (ICUserIdentity)initWithCoder:(id)a3;
- (NSString)accountDSID;
- (NSString)description;
- (NSString)deviceIdentifier;
- (id)_resolvedDSIDUsingSpecificIdentityStore:(id)a3;
- (id)identityAllowingDelegation:(BOOL)a3;
- (id)identityAllowingEstablishment:(BOOL)a3;
- (unint64_t)hash;
- (unint64_t)hashInStore:(id)a3;
- (void)_performEncodingTaskUsingSpecificIdentityStore:(id)a3 encodingHandler:(id)a4;
- (void)_setResolvedDSID:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICUserIdentity

- (ICUserIdentity)init
{
  v4.receiver = self;
  v4.super_class = ICUserIdentity;
  v2 = [(ICUserIdentity *)&v4 init];
  if (v2)
  {
    v2->_creationTime = mach_absolute_time();
  }

  return v2;
}

+ (id)activeAccount
{
  v2 = objc_alloc_init(objc_opt_class());
  v2[3] = 0;
  v3 = +[ICDeviceInfo currentDeviceInfo];
  *(v2 + 18) = [v3 isWatch] ^ 1;

  return v2;
}

- (NSString)description
{
  if (self->_hasResolvedDSID)
  {
    DSID = self->_DSID;
    if (DSID)
    {
      v4 = ICCreateLoggableValueForDSID(DSID);
    }

    else
    {
      v4 = @"signed out";
    }
  }

  else
  {
    v4 = @"unresolved";
  }

  v5 = 0;
  type = self->_type;
  if (type > 4)
  {
    if (type <= 6)
    {
      if (type == 5)
      {
        v5 = @"Null";
        goto LABEL_27;
      }
    }

    else if (type != 7)
    {
      if (type == 8)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Default Media Account: <%@>", v4];
      }

      else
      {
        if (type != 9)
        {
          goto LABEL_27;
        }

        [MEMORY[0x1E696AEC0] stringWithFormat:@"Autoupdating Default Media Account: <%@>", v4];
      }

      goto LABEL_26;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"Account: <%@>", v4];
  }

  else if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_27;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"Active Locker Account: <%@>", v4];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Active Account: <%@>", v4];
    }
  }

  else
  {
    if (type == 2)
    {
      v5 = @"Autoupdating Active Account";
      goto LABEL_27;
    }

    if (type == 3)
    {
      v5 = @"Autoupdating Active Locker Account";
      goto LABEL_27;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"Carrier Bundle: %@", self->_deviceIdentifier];
  }

  v5 = LABEL_26:;
LABEL_27:
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@ %p: [%@]>", objc_opt_class(), self, v5];

  return v7;
}

+ (id)nullIdentity
{
  v2 = objc_alloc_init(objc_opt_class());
  v2[3] = 5;

  return v2;
}

+ (id)autoupdatingActiveAccount
{
  v2 = objc_alloc_init(objc_opt_class());
  v2[3] = 2;
  v3 = +[ICDeviceInfo currentDeviceInfo];
  *(v2 + 18) = [v3 isWatch] ^ 1;

  return v2;
}

- (NSString)deviceIdentifier
{
  if (self->_deviceIdentifier)
  {
    return self->_deviceIdentifier;
  }

  else
  {
    return &stru_1F2C4A680;
  }
}

- (unint64_t)hash
{
  v3 = +[ICUserIdentityStore defaultIdentityStore];
  v4 = [(ICUserIdentity *)self hashInStore:v3];

  return v4;
}

- (NSString)accountDSID
{
  v3 = [(ICUserIdentity *)self DSID];

  if (v3)
  {
    v4 = [(ICUserIdentity *)self DSID];
    v5 = v4;
LABEL_3:
    v6 = [v4 stringValue];
    goto LABEL_5;
  }

  v7 = +[ICUserIdentityStore defaultIdentityStore];
  v10 = 0;
  v5 = [v7 DSIDForUserIdentity:self outError:&v10];
  v8 = v10;

  v6 = 0;
  if (!v8)
  {
    v4 = v5;
    goto LABEL_3;
  }

LABEL_5:

  return v6;
}

+ (id)defaultMediaIdentity
{
  v2 = objc_alloc_init(objc_opt_class());
  v2[3] = 8;
  v3 = +[ICDeviceInfo currentDeviceInfo];
  *(v2 + 18) = [v3 isWatch] ^ 1;

  return v2;
}

+ (id)autoupdatingDefaultMediaIdentity
{
  v2 = objc_alloc_init(objc_opt_class());
  v2[3] = 9;
  v3 = +[ICDeviceInfo currentDeviceInfo];
  *(v2 + 18) = [v3 isWatch] ^ 1;

  return v2;
}

- (id)_resolvedDSIDUsingSpecificIdentityStore:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_DSID;
  type = self->_type;
  v7 = type > 8;
  v8 = (1 << type) & 0x183;
  v9 = v7 || v8 == 0;
  if (!v9 && !self->_hasResolvedDSID)
  {
    v10 = v4;
    if (!v10)
    {
      if (!self->_isEncodingUsingSpecificIdentityStore)
      {
        v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_ERROR, "warning: ICUserIdentity - Resolving DSID without an externally supplied identity store; if encoding the identity into an NSCoder, make sure to use [NSCoder ic_encodeUserIdentity:withStore:forKey:]. Falling back to using [ICUserIdentityStore defaultIdentityStore].", buf, 2u);
        }
      }

      v10 = +[ICUserIdentityStore defaultIdentityStore];
    }

    v16 = 0;
    v12 = [v10 DSIDForUserIdentity:self outError:&v16];
    v13 = v16;

    if (v13)
    {
      v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v18 = self;
        v19 = 2114;
        v20 = v13;
        _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_ERROR, "ICUserIdentity - Unable to retrieve DSID for userIdentity=%{public}@ - error=%{public}@", buf, 0x16u);
      }
    }

    v5 = v12;
  }

  return v5;
}

- (void)_performEncodingTaskUsingSpecificIdentityStore:(id)a3 encodingHandler:(id)a4
{
  isEncodingUsingSpecificIdentityStore = self->_isEncodingUsingSpecificIdentityStore;
  self->_isEncodingUsingSpecificIdentityStore = a3 != 0 || isEncodingUsingSpecificIdentityStore;
  v7 = a4;
  [(ICUserIdentity *)self _ensureResolvedDSIDUsingSpecificIdentityStore:a3];
  v7[2](v7);

  self->_isEncodingUsingSpecificIdentityStore = isEncodingUsingSpecificIdentityStore;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [(ICUserIdentity *)self _ensureResolvedDSIDUsingSpecificIdentityStore:0];
  [v5 encodeBool:self->_allowsDelegation forKey:@"delegation"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_creationTime];
  [v5 encodeObject:v4 forKey:@"time"];

  [v5 encodeObject:self->_deviceIdentifier forKey:@"deviceID"];
  [v5 encodeObject:self->_DSID forKey:@"dsid"];
  [v5 encodeObject:self->_altDSID forKey:@"altDSID"];
  [v5 encodeBool:self->_hasResolvedDSID forKey:@"hasResolvedDSID"];
  [v5 encodeInteger:self->_type forKey:@"type"];
}

- (ICUserIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ICUserIdentity;
  v5 = [(ICUserIdentity *)&v14 init];
  if (v5)
  {
    v5->_allowsDelegation = [v4 decodeBoolForKey:@"delegation"];
    if ([v4 containsValueForKey:@"time"])
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"time"];
      v5->_creationTime = [v6 unsignedLongLongValue];
    }

    else
    {
      v5->_creationTime = mach_absolute_time();
    }

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceID"];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dsid"];
    DSID = v5->_DSID;
    v5->_DSID = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v11;

    v5->_hasResolvedDSID = [v4 decodeBoolForKey:@"hasResolvedDSID"];
    v5->_type = [v4 decodeIntegerForKey:@"type"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = +[ICUserIdentityStore defaultIdentityStore];
      v7 = [(ICUserIdentity *)self isEqualToIdentity:v5 inStore:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hashInStore:(id)a3
{
  v4 = a3;
  if ([(ICUserIdentity *)self _isComparableUsingResolvedDSID])
  {
    v5 = [(ICUserIdentity *)self _resolvedDSIDUsingSpecificIdentityStore:v4];
    v6 = [v5 hash];
  }

  else
  {
    type = self->_type;
    v5 = [(ICUserIdentity *)self deviceIdentifier];
    v6 = [v5 hash] ^ type;
  }

  return v6;
}

- (BOOL)isEqualToIdentity:(id)a3 inStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    goto LABEL_10;
  }

  if (self == v6)
  {
    v11 = 1;
    goto LABEL_14;
  }

  if (![(ICUserIdentity *)self _isComparableUsingResolvedDSID]|| ![(ICUserIdentity *)v6 _isComparableUsingResolvedDSID])
  {
    if (self->_type == v6->_type)
    {
      v8 = [(ICUserIdentity *)self deviceIdentifier];
      v9 = [(ICUserIdentity *)v6 deviceIdentifier];
      goto LABEL_8;
    }

LABEL_10:
    v11 = 0;
    goto LABEL_14;
  }

  v8 = [(ICUserIdentity *)self _resolvedDSIDUsingSpecificIdentityStore:v7];
  v9 = [(ICUserIdentity *)v6 _resolvedDSIDUsingSpecificIdentityStore:v7];
LABEL_8:
  v10 = v9;
  if (v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = [v8 isEqual:v9];
  }

LABEL_14:
  return v11;
}

- (void)_setResolvedDSID:(id)a3
{
  v4 = [a3 copy];
  DSID = self->_DSID;
  self->_DSID = v4;

  self->_hasResolvedDSID = 1;
}

- (id)identityAllowingEstablishment:(BOOL)a3
{
  if (self->_allowsAccountEstablishment == a3)
  {
    v4 = self;
  }

  else
  {
    v4 = objc_alloc_init(objc_opt_class());
    v4->_allowsAccountEstablishment = a3;
    v4->_allowsDelegation = self->_allowsDelegation;
    v4->_creationTime = self->_creationTime;
    v6 = [(NSString *)self->_deviceIdentifier copy];
    deviceIdentifier = v4->_deviceIdentifier;
    v4->_deviceIdentifier = v6;

    v8 = [(NSNumber *)self->_DSID copy];
    DSID = v4->_DSID;
    v4->_DSID = v8;

    v10 = [(NSString *)self->_altDSID copy];
    altDSID = v4->_altDSID;
    v4->_altDSID = v10;

    v4->_hasResolvedDSID = self->_hasResolvedDSID;
    v4->_type = self->_type;
  }

  return v4;
}

- (id)identityAllowingDelegation:(BOOL)a3
{
  if (self->_allowsDelegation == a3)
  {
    v4 = self;
  }

  else
  {
    v4 = objc_alloc_init(objc_opt_class());
    v4->_allowsDelegation = a3;
    v4->_allowsAccountEstablishment = self->_allowsAccountEstablishment;
    v4->_creationTime = self->_creationTime;
    v6 = [(NSString *)self->_deviceIdentifier copy];
    deviceIdentifier = v4->_deviceIdentifier;
    v4->_deviceIdentifier = v6;

    v8 = [(NSNumber *)self->_DSID copy];
    DSID = v4->_DSID;
    v4->_DSID = v8;

    v10 = [(NSString *)self->_altDSID copy];
    altDSID = v4->_altDSID;
    v4->_altDSID = v10;

    v4->_hasResolvedDSID = self->_hasResolvedDSID;
    v4->_type = self->_type;
  }

  return v4;
}

+ (id)specificAccountWithAltDSID:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [v3 copy];

  v6 = v4[6];
  v4[6] = v5;

  v4[3] = 7;

  return v4;
}

+ (id)specificAccountWithDSID:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [v3 copy];

  v6 = v4[5];
  v4[5] = v5;

  v4[3] = 6;
  *(v4 + 19) = 1;

  return v4;
}

+ (id)carrierBundleWithDeviceIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [v3 copy];

  v6 = v4[1];
  v4[1] = v5;

  v4[3] = 4;

  return v4;
}

+ (id)autoupdatingActiveLockerAccount
{
  v2 = objc_alloc_init(objc_opt_class());
  v2[3] = 3;

  return v2;
}

+ (id)activeLockerAccount
{
  v2 = objc_alloc_init(objc_opt_class());
  v2[3] = 1;

  return v2;
}

@end