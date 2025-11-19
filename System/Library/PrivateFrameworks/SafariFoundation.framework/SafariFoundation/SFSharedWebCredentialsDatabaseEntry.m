@interface SFSharedWebCredentialsDatabaseEntry
- (SFSharedWebCredentialsDatabaseEntry)initWithServiceDetails:(id)a3;
- (id)_initWithDomain:(id)a3 appID:(id)a4 service:(int64_t)a5 isApproved:(BOOL)a6;
- (id)description;
@end

@implementation SFSharedWebCredentialsDatabaseEntry

- (SFSharedWebCredentialsDatabaseEntry)initWithServiceDetails:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = SFSharedWebCredentialsDatabaseEntry;
  v5 = [(SFSharedWebCredentialsDatabaseEntry *)&v22 init];
  if (v5)
  {
    v6 = [v4 serviceSpecifier];
    v7 = [v6 domain];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 copy];
      v10 = [SFDomainAssociationUtilities domainByStrippingSubdomainWildcardPrefixIfNecessary:v9];
      domain = v5->_domain;
      v5->_domain = v10;

      v12 = [v6 applicationIdentifier];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 copy];
        appID = v5->_appID;
        v5->_appID = v14;

        v16 = [v6 serviceType];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
          if ([v18 isEqualToString:*MEMORY[0x277D547B8]])
          {
            v19 = 4;
          }

          else if ([v18 isEqualToString:*MEMORY[0x277D547C8]])
          {
            v19 = 5;
          }

          else if ([v18 isEqualToString:*MEMORY[0x277D547E8]])
          {
            v19 = 7;
          }

          else if ([v18 isEqualToString:*MEMORY[0x277D547D8]])
          {
            v19 = 1;
          }

          else if ([v18 isEqualToString:*MEMORY[0x277D547E0]])
          {
            v19 = 2;
          }

          else if ([v18 isEqualToString:*MEMORY[0x277D547D0]])
          {
            v19 = 3;
          }

          else if ([v18 isEqualToString:*MEMORY[0x277D547C0]])
          {
            v19 = 6;
          }

          else
          {
            v19 = 0;
          }

          v5->_service = v19;
          v5->_approved = [v4 isApproved];
          v20 = v5;
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)_initWithDomain:(id)a3 appID:(id)a4 service:(int64_t)a5 isApproved:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v20.receiver = self;
  v20.super_class = SFSharedWebCredentialsDatabaseEntry;
  v12 = [(SFSharedWebCredentialsDatabaseEntry *)&v20 init];
  if (v12)
  {
    v13 = [v10 copy];
    v14 = [SFDomainAssociationUtilities domainByStrippingSubdomainWildcardPrefixIfNecessary:v13];
    domain = v12->_domain;
    v12->_domain = v14;

    v16 = [v11 copy];
    appID = v12->_appID;
    v12->_appID = v16;

    v12->_service = a5;
    v12->_approved = a6;
    v18 = v12;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  domain = self->_domain;
  appID = self->_appID;
  v7 = self->_service - 1;
  if (v7 > 6)
  {
    v8 = @"Unknown";
  }

  else
  {
    v8 = **(&unk_279B621C8 + v7);
  }

  v9 = [v3 stringWithFormat:@"<%@: %p domain = %@; appID = %@; service = %@; isApproved = %d", v4, self, domain, appID, v8, self->_approved];;

  return v9;
}

@end