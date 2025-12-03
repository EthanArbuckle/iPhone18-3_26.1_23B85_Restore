@interface ICUserIdentityStoreTestingBackend
+ (void)setDefaultActiveAccountDSID:(id)d;
+ (void)setDefaultActiveLockerAccountDSID:(id)d;
+ (void)setDefaultStorefrontIdentifier:(id)identifier;
- (BOOL)disableLockerAccountDSID:(id)d error:(id *)error;
- (BOOL)replaceIdentityProperties:(id)properties forDSID:(id)d error:(id *)error;
- (BOOL)setIdentityProperties:(id)properties forDSID:(id)d error:(id *)error;
- (BOOL)setLocalStoreAccountProperties:(id)properties error:(id *)error;
- (BOOL)updateActiveAccountDSID:(id)d error:(id *)error;
- (BOOL)updateActiveLockerAccountDSID:(id)d error:(id *)error;
- (ICUserIdentityStoreBackendDelegate)delegate;
- (ICUserIdentityStoreTestingBackend)init;
- (ICUserIdentityStoreTestingBackend)initWithCoder:(id)coder;
- (id)_propertiesToSaveForProperties:(id)properties;
- (id)accountDSIDForAltDSID:(id)d error:(id *)error;
- (id)activeAccountDSIDWithError:(id *)error;
- (id)activeLockerAccountDSIDWithError:(id *)error;
- (id)allStoreAccountDSIDsWithError:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)defaultMediaAccountDSIDWithError:(id *)error;
- (id)identityPropertiesForDSID:(id)d error:(id *)error;
- (id)identityPropertiesForPrimaryICloudAccountWithError:(id *)error;
- (id)verificationContextForAccountEstablishmentWithError:(id *)error;
- (id)verificationContextForDSID:(id)d error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)removeIdentityForDSID:(id)d completion:(id)completion;
@end

@implementation ICUserIdentityStoreTestingBackend

- (ICUserIdentityStoreBackendDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_propertiesToSaveForProperties:(id)properties
{
  v3 = [properties mutableCopy];
  [v3 setDelegated:0];
  [v3 setDelegateToken:0];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  activeAccountDSID = self->_activeAccountDSID;
  coderCopy = coder;
  [coderCopy encodeObject:activeAccountDSID forKey:@"activeDSID"];
  [coderCopy encodeObject:self->_activeLockerAccountDSID forKey:@"lockerDSID"];
  [coderCopy encodeObject:self->_identityProperties forKey:@"ids"];
  [coderCopy encodeObject:self->_localStoreAccountProperties forKey:@"localStoreAccountProperties"];
}

- (ICUserIdentityStoreTestingBackend)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = ICUserIdentityStoreTestingBackend;
  v5 = [(ICUserIdentityStoreTestingBackend *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activeDSID"];
    activeAccountDSID = v5->_activeAccountDSID;
    v5->_activeAccountDSID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lockerDSID"];
    activeLockerAccountDSID = v5->_activeLockerAccountDSID;
    v5->_activeLockerAccountDSID = v8;

    v10 = objc_alloc(MEMORY[0x1E695DFD8]);
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v10 initWithObjects:{v11, v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"ids"];
    identityProperties = v5->_identityProperties;
    v5->_identityProperties = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localStoreAccountProperties"];
    localStoreAccountProperties = v5->_localStoreAccountProperties;
    v5->_localStoreAccountProperties = v16;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    v6 = [(NSNumber *)self->_activeAccountDSID copyWithZone:zone];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(NSNumber *)self->_activeLockerAccountDSID copyWithZone:zone];
    v9 = v5[2];
    v5[2] = v8;

    v10 = [(NSMutableDictionary *)self->_identityProperties mutableCopyWithZone:zone];
    v11 = v5[3];
    v5[3] = v10;

    v12 = [(ICLocalStoreAccountProperties *)self->_localStoreAccountProperties copyWithZone:zone];
    v13 = v5[4];
    v5[4] = v12;
  }

  return v5;
}

- (id)allStoreAccountDSIDsWithError:(id *)error
{
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  if ([(NSNumber *)self->_activeAccountDSID unsignedLongLongValue])
  {
    [v5 addObject:self->_activeAccountDSID];
  }

  if (error)
  {
    *error = 0;
  }

  v6 = [v5 copy];

  return v6;
}

- (BOOL)setLocalStoreAccountProperties:(id)properties error:(id *)error
{
  v6 = [properties copy];
  localStoreAccountProperties = self->_localStoreAccountProperties;
  self->_localStoreAccountProperties = v6;

  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (id)verificationContextForDSID:(id)d error:(id *)error
{
  v11 = 0;
  v5 = [(ICUserIdentityStoreTestingBackend *)self identityPropertiesForDSID:d error:&v11];
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

  if (error)
  {
    v9 = v6;
    *error = v6;
  }

  return v7;
}

- (id)verificationContextForAccountEstablishmentWithError:(id *)error
{
  v4 = objc_alloc_init(ICUserVerificationContext);
  v5 = objc_alloc_init(ICUserIdentityProperties);
  [(ICUserVerificationContext *)v4 setIdentityProperties:v5];
  if (error)
  {
    *error = 0;
  }

  return v4;
}

- (BOOL)replaceIdentityProperties:(id)properties forDSID:(id)d error:(id *)error
{
  propertiesCopy = properties;
  dCopy = d;
  v10 = [(NSMutableDictionary *)self->_identityProperties objectForKey:dCopy];

  if (v10)
  {
    v11 = [(ICUserIdentityStoreTestingBackend *)self _propertiesToSaveForProperties:propertiesCopy];
    [(NSMutableDictionary *)self->_identityProperties setObject:v11 forKey:dCopy];
  }

  if (error)
  {
    *error = 0;
  }

  return v10 != 0;
}

- (void)removeIdentityForDSID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v7 = [(NSMutableDictionary *)self->_identityProperties objectForKey:dCopy];

  if (v7)
  {
    [(NSMutableDictionary *)self->_identityProperties removeObjectForKey:dCopy];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v7 != 0, 0);
  }
}

- (id)identityPropertiesForPrimaryICloudAccountWithError:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return 0;
}

- (BOOL)setIdentityProperties:(id)properties forDSID:(id)d error:(id *)error
{
  propertiesCopy = properties;
  dCopy = d;
  if (!self->_identityProperties)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    identityProperties = self->_identityProperties;
    self->_identityProperties = v10;
  }

  v12 = [(ICUserIdentityStoreTestingBackend *)self _propertiesToSaveForProperties:propertiesCopy];
  [(NSMutableDictionary *)self->_identityProperties setObject:v12 forKey:dCopy];
  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (id)identityPropertiesForDSID:(id)d error:(id *)error
{
  result = [(NSMutableDictionary *)self->_identityProperties objectForKey:d];
  if (error)
  {
    *error = 0;
  }

  return result;
}

- (BOOL)disableLockerAccountDSID:(id)d error:(id *)error
{
  dCopy = d;
  if ([(NSNumber *)self->_activeLockerAccountDSID isEqualToNumber:dCopy])
  {
    activeLockerAccountDSID = self->_activeLockerAccountDSID;
    self->_activeLockerAccountDSID = 0;
  }

  v15 = 0;
  v8 = [(ICUserIdentityStoreTestingBackend *)self identityPropertiesForDSID:dCopy error:&v15];
  v9 = v15;
  v10 = [v8 mutableCopy];

  if (v10)
  {
    [v10 setActiveLocker:0];
    v14 = v9;
    [(ICUserIdentityStoreTestingBackend *)self setIdentityProperties:v10 forDSID:dCopy error:&v14];
    v11 = v14;

    v9 = v11;
  }

  if (error)
  {
    v12 = v9;
    *error = v9;
  }

  return 1;
}

- (BOOL)updateActiveLockerAccountDSID:(id)d error:(id *)error
{
  objc_storeStrong(&self->_activeLockerAccountDSID, d);
  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (id)defaultMediaAccountDSIDWithError:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return self->_activeAccountDSID;
}

- (id)accountDSIDForAltDSID:(id)d error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return self->_activeAccountDSID;
}

- (id)activeLockerAccountDSIDWithError:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return self->_activeLockerAccountDSID;
}

- (BOOL)updateActiveAccountDSID:(id)d error:(id *)error
{
  objc_storeStrong(&self->_activeAccountDSID, d);
  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (id)activeAccountDSIDWithError:(id *)error
{
  if (error)
  {
    *error = 0;
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

+ (void)setDefaultStorefrontIdentifier:(id)identifier
{
  if (sDefaultStorefrontIdentifier != identifier)
  {
    v3 = [identifier copy];
    v4 = sDefaultStorefrontIdentifier;
    sDefaultStorefrontIdentifier = v3;

    MEMORY[0x1EEE66BB8](v3, v4);
  }
}

+ (void)setDefaultActiveLockerAccountDSID:(id)d
{
  if (sDefaultActiveLockerAccountDSID != d)
  {
    v3 = [d copy];
    v4 = sDefaultActiveLockerAccountDSID;
    sDefaultActiveLockerAccountDSID = v3;

    MEMORY[0x1EEE66BB8](v3, v4);
  }
}

+ (void)setDefaultActiveAccountDSID:(id)d
{
  if (sDefaultActiveAccountDSID != d)
  {
    v3 = [d copy];
    v4 = sDefaultActiveAccountDSID;
    sDefaultActiveAccountDSID = v3;

    MEMORY[0x1EEE66BB8](v3, v4);
  }
}

@end