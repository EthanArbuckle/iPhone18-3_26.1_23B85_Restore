@interface POUser
- (NSString)altSecurityIdentity;
- (NSString)generatedUUID;
- (NSString)loginUserName;
- (NSString)uid;
- (NSString)uniqueIdpIdentifier;
- (POUser)initWithCoder:(id)a3;
- (id)copy;
- (id)mutableCopy;
- (void)encodeWithCoder:(id)a3;
@end

@implementation POUser

- (id)mutableCopy
{
  v3 = objc_alloc_init(POMutableUser);
  v4 = [(_POJWTBodyBase *)self data];
  v5 = [v4 mutableCopy];
  [(_POJWTBodyBase *)v3 setData:v5];

  return v3;
}

- (id)copy
{
  v3 = objc_alloc_init(POUser);
  v4 = [(_POJWTBodyBase *)self data];
  v5 = [v4 mutableCopy];
  [(_POJWTBodyBase *)v3 setData:v5];

  return v3;
}

- (NSString)loginUserName
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __23__POUser_loginUserName__block_invoke;
  v4[3] = &unk_279A3A708;
  v4[4] = self;
  v2 = __23__POUser_loginUserName__block_invoke(v4);

  return v2;
}

id __23__POUser_loginUserName__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"loginUserName"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"loginUserName"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)generatedUUID
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __23__POUser_generatedUUID__block_invoke;
  v4[3] = &unk_279A3A708;
  v4[4] = self;
  v2 = __23__POUser_generatedUUID__block_invoke(v4);

  return v2;
}

id __23__POUser_generatedUUID__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"generatedUUID"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"generatedUUID"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)uniqueIdpIdentifier
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__POUser_uniqueIdpIdentifier__block_invoke;
  v4[3] = &unk_279A3A708;
  v4[4] = self;
  v2 = __29__POUser_uniqueIdpIdentifier__block_invoke(v4);

  return v2;
}

id __29__POUser_uniqueIdpIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"uniqueIdentifier"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"uniqueIdentifier"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)uid
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __13__POUser_uid__block_invoke;
  v4[3] = &unk_279A3A708;
  v4[4] = self;
  v2 = __13__POUser_uid__block_invoke(v4);

  return v2;
}

id __13__POUser_uid__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"uid"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"uid"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)altSecurityIdentity
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__POUser_altSecurityIdentity__block_invoke;
  v4[3] = &unk_279A3A708;
  v4[4] = self;
  v2 = __29__POUser_altSecurityIdentity__block_invoke(v4);

  return v2;
}

id __29__POUser_altSecurityIdentity__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectForKeyedSubscript:@"altSecurityIdentity"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) data];
    v6 = [v5 objectForKeyedSubscript:@"altSecurityIdentity"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (POUser)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_dataRepresentation);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = [(_POJWTBodyBase *)self initWithJWTData:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_POJWTBodyBase *)self dataRepresentation];
  v5 = NSStringFromSelector(sel_dataRepresentation);
  [v4 encodeObject:v6 forKey:v5];
}

@end