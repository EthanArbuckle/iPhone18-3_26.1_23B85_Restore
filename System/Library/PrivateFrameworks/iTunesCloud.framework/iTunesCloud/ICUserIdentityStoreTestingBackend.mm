@interface ICUserIdentityStoreTestingBackend
+ (void)setDefaultActiveAccountDSID:(id)a3;
+ (void)setDefaultActiveLockerAccountDSID:(id)a3;
+ (void)setDefaultStorefrontIdentifier:(id)a3;
- (BOOL)disableLockerAccountDSID:(id)a3 error:(id *)a4;
- (BOOL)replaceIdentityProperties:(id)a3 forDSID:(id)a4 error:(id *)a5;
- (BOOL)setIdentityProperties:(id)a3 forDSID:(id)a4 error:(id *)a5;
- (BOOL)setLocalStoreAccountProperties:(id)a3 error:(id *)a4;
- (BOOL)updateActiveAccountDSID:(id)a3 error:(id *)a4;
- (BOOL)updateActiveLockerAccountDSID:(id)a3 error:(id *)a4;
- (ICUserIdentityStoreBackendDelegate)delegate;
- (ICUserIdentityStoreTestingBackend)init;
- (ICUserIdentityStoreTestingBackend)initWithCoder:(id)a3;
- (id)_propertiesToSaveForProperties:(id)a3;
- (id)accountDSIDForAltDSID:(id)a3 error:(id *)a4;
- (id)activeAccountDSIDWithError:(id *)a3;
- (id)activeLockerAccountDSIDWithError:(id *)a3;
- (id)allStoreAccountDSIDsWithError:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)defaultMediaAccountDSIDWithError:(id *)a3;
- (id)identityPropertiesForDSID:(id)a3 error:(id *)a4;
- (id)identityPropertiesForPrimaryICloudAccountWithError:(id *)a3;
- (id)verificationContextForAccountEstablishmentWithError:(id *)a3;
- (id)verificationContextForDSID:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)removeIdentityForDSID:(id)a3 completion:(id)a4;
@end

@implementation ICUserIdentityStoreTestingBackend

- (ICUserIdentityStoreBackendDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_propertiesToSaveForProperties:(id)a3
{
  v3 = [a3 mutableCopy];
  [v3 setDelegated:0];
  [v3 setDelegateToken:0];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  activeAccountDSID = self->_activeAccountDSID;
  v5 = a3;
  [v5 encodeObject:activeAccountDSID forKey:@"activeDSID"];
  [v5 encodeObject:self->_activeLockerAccountDSID forKey:@"lockerDSID"];
  [v5 encodeObject:self->_identityProperties forKey:@"ids"];
  [v5 encodeObject:self->_localStoreAccountProperties forKey:@"localStoreAccountProperties"];
}

- (ICUserIdentityStoreTestingBackend)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ICUserIdentityStoreTestingBackend;
  v5 = [(ICUserIdentityStoreTestingBackend *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activeDSID"];
    activeAccountDSID = v5->_activeAccountDSID;
    v5->_activeAccountDSID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lockerDSID"];
    activeLockerAccountDSID = v5->_activeLockerAccountDSID;
    v5->_activeLockerAccountDSID = v8;

    v10 = objc_alloc(MEMORY[0x1E695DFD8]);
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v10 initWithObjects:{v11, v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"ids"];
    identityProperties = v5->_identityProperties;
    v5->_identityProperties = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localStoreAccountProperties"];
    localStoreAccountProperties = v5->_localStoreAccountProperties;
    v5->_localStoreAccountProperties = v16;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(NSNumber *)self->_activeAccountDSID copyWithZone:a3];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(NSNumber *)self->_activeLockerAccountDSID copyWithZone:a3];
    v9 = v5[2];
    v5[2] = v8;

    v10 = [(NSMutableDictionary *)self->_identityProperties mutableCopyWithZone:a3];
    v11 = v5[3];
    v5[3] = v10;

    v12 = [(ICLocalStoreAccountProperties *)self->_localStoreAccountProperties copyWithZone:a3];
    v13 = v5[4];
    v5[4] = v12;
  }

  return v5;
}

- (id)allStoreAccountDSIDsWithError:(id *)a3
{
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  if ([(NSNumber *)self->_activeAccountDSID unsignedLongLongValue])
  {
    [v5 addObject:self->_activeAccountDSID];
  }

  if (a3)
  {
    *a3 = 0;
  }

  v6 = [v5 copy];

  return v6;
}

- (BOOL)setLocalStoreAccountProperties:(id)a3 error:(id *)a4
{
  v6 = [a3 copy];
  localStoreAccountProperties = self->_localStoreAccountProperties;
  self->_localStoreAccountProperties = v6;

  if (a4)
  {
    *a4 = 0;
  }

  return 1;
}

- (id)verificationContextForDSID:(id)a3 error:(id *)a4
{
  v11 = 0;
  v5 = [(ICUserIdentityStoreTestingBackend *)self identityPropertiesForDSID:a3 error:&v11];
  v6 = v11;
  v7 = 0;
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5 == 0;
  }

  if (!v8)
  {
    v7 = objc_alloc_init(ICUserVerificationContext);
    [(ICUserVerificationContext *)v7 setIdentityProperties:v5];
  }

  if (a4)
  {
    v9 = v6;
    *a4 = v6;
  }

  return v7;
}

- (id)verificationContextForAccountEstablishmentWithError:(id *)a3
{
  v4 = objc_alloc_init(ICUserVerificationContext);
  v5 = objc_alloc_init(ICUserIdentityProperties);
  [(ICUserVerificationContext *)v4 setIdentityProperties:v5];
  if (a3)
  {
    *a3 = 0;
  }

  return v4;
}

- (BOOL)replaceIdentityProperties:(id)a3 forDSID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(NSMutableDictionary *)self->_identityProperties objectForKey:v9];

  if (v10)
  {
    v11 = [(ICUserIdentityStoreTestingBackend *)self _propertiesToSaveForProperties:v8];
    [(NSMutableDictionary *)self->_identityProperties setObject:v11 forKey:v9];
  }

  if (a5)
  {
    *a5 = 0;
  }

  return v10 != 0;
}

- (void)removeIdentityForDSID:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_identityProperties objectForKey:v8];

  if (v7)
  {
    [(NSMutableDictionary *)self->_identityProperties removeObjectForKey:v8];
  }

  if (v6)
  {
    v6[2](v6, v7 != 0, 0);
  }
}

- (id)identityPropertiesForPrimaryICloudAccountWithError:(id *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  return 0;
}

- (BOOL)setIdentityProperties:(id)a3 forDSID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!self->_identityProperties)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    identityProperties = self->_identityProperties;
    self->_identityProperties = v10;
  }

  v12 = [(ICUserIdentityStoreTestingBackend *)self _propertiesToSaveForProperties:v8];
  [(NSMutableDictionary *)self->_identityProperties setObject:v12 forKey:v9];
  if (a5)
  {
    *a5 = 0;
  }

  return 1;
}

- (id)identityPropertiesForDSID:(id)a3 error:(id *)a4
{
  result = [(NSMutableDictionary *)self->_identityProperties objectForKey:a3];
  if (a4)
  {
    *a4 = 0;
  }

  return result;
}

- (BOOL)disableLockerAccountDSID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(NSNumber *)self->_activeLockerAccountDSID isEqualToNumber:v6])
  {
    activeLockerAccountDSID = self->_activeLockerAccountDSID;
    self->_activeLockerAccountDSID = 0;
  }

  v15 = 0;
  v8 = [(ICUserIdentityStoreTestingBackend *)self identityPropertiesForDSID:v6 error:&v15];
  v9 = v15;
  v10 = [v8 mutableCopy];

  if (v10)
  {
    [v10 setActiveLocker:0];
    v14 = v9;
    [(ICUserIdentityStoreTestingBackend *)self setIdentityProperties:v10 forDSID:v6 error:&v14];
    v11 = v14;

    v9 = v11;
  }

  if (a4)
  {
    v12 = v9;
    *a4 = v9;
  }

  return 1;
}

- (BOOL)updateActiveLockerAccountDSID:(id)a3 error:(id *)a4
{
  objc_storeStrong(&self->_activeLockerAccountDSID, a3);
  if (a4)
  {
    *a4 = 0;
  }

  return 1;
}

- (id)defaultMediaAccountDSIDWithError:(id *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  return self->_activeAccountDSID;
}

- (id)accountDSIDForAltDSID:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = 0;
  }

  return self->_activeAccountDSID;
}

- (id)activeLockerAccountDSIDWithError:(id *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  return self->_activeLockerAccountDSID;
}

- (BOOL)updateActiveAccountDSID:(id)a3 error:(id *)a4
{
  objc_storeStrong(&self->_activeAccountDSID, a3);
  if (a4)
  {
    *a4 = 0;
  }

  return 1;
}

- (id)activeAccountDSIDWithError:(id *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  return self->_activeAccountDSID;
}

- (ICUserIdentityStoreTestingBackend)init
{
  v8.receiver = self;
  v8.super_class = ICUserIdentityStoreTestingBackend;
  v2 = [(ICUserIdentityStoreTestingBackend *)&v8 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_activeAccountDSID, sDefaultActiveAccountDSID);
    objc_storeStrong(&v3->_activeLockerAccountDSID, sDefaultActiveLockerAccountDSID);
    v4 = objc_alloc_init(ICMutableLocalStoreAccountProperties);
    [(ICMutableLocalStoreAccountProperties *)v4 setStorefrontIdentifier:sDefaultStorefrontIdentifier];
    v5 = [(ICMutableLocalStoreAccountProperties *)v4 copy];
    localStoreAccountProperties = v3->_localStoreAccountProperties;
    v3->_localStoreAccountProperties = v5;
  }

  return v3;
}

+ (void)setDefaultStorefrontIdentifier:(id)a3
{
  if (sDefaultStorefrontIdentifier != a3)
  {
    v3 = [a3 copy];
    v4 = sDefaultStorefrontIdentifier;
    sDefaultStorefrontIdentifier = v3;

    MEMORY[0x1EEE66BB8](v3, v4);
  }
}

+ (void)setDefaultActiveLockerAccountDSID:(id)a3
{
  if (sDefaultActiveLockerAccountDSID != a3)
  {
    v3 = [a3 copy];
    v4 = sDefaultActiveLockerAccountDSID;
    sDefaultActiveLockerAccountDSID = v3;

    MEMORY[0x1EEE66BB8](v3, v4);
  }
}

+ (void)setDefaultActiveAccountDSID:(id)a3
{
  if (sDefaultActiveAccountDSID != a3)
  {
    v3 = [a3 copy];
    v4 = sDefaultActiveAccountDSID;
    sDefaultActiveAccountDSID = v3;

    MEMORY[0x1EEE66BB8](v3, v4);
  }
}

@end