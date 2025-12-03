@interface SFSharedWebCredentialsDatabaseEntry
- (SFSharedWebCredentialsDatabaseEntry)initWithServiceDetails:(id)details;
- (id)_initWithDomain:(id)domain appID:(id)d service:(int64_t)service isApproved:(BOOL)approved;
- (id)description;
@end

@implementation SFSharedWebCredentialsDatabaseEntry

- (SFSharedWebCredentialsDatabaseEntry)initWithServiceDetails:(id)details
{
  detailsCopy = details;
  v22.receiver = self;
  v22.super_class = SFSharedWebCredentialsDatabaseEntry;
  v5 = [(SFSharedWebCredentialsDatabaseEntry *)&v22 init];
  if (v5)
  {
    serviceSpecifier = [detailsCopy serviceSpecifier];
    domain = [serviceSpecifier domain];
    v8 = domain;
    if (domain)
    {
      v9 = [domain copy];
      v10 = [SFDomainAssociationUtilities domainByStrippingSubdomainWildcardPrefixIfNecessary:v9];
      domain = v5->_domain;
      v5->_domain = v10;

      applicationIdentifier = [serviceSpecifier applicationIdentifier];
      v13 = applicationIdentifier;
      if (applicationIdentifier)
      {
        v14 = [applicationIdentifier copy];
        appID = v5->_appID;
        v5->_appID = v14;

        serviceType = [serviceSpecifier serviceType];
        v17 = serviceType;
        if (serviceType)
        {
          v18 = serviceType;
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
          v5->_approved = [detailsCopy isApproved];
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

- (id)_initWithDomain:(id)domain appID:(id)d service:(int64_t)service isApproved:(BOOL)approved
{
  domainCopy = domain;
  dCopy = d;
  v20.receiver = self;
  v20.super_class = SFSharedWebCredentialsDatabaseEntry;
  v12 = [(SFSharedWebCredentialsDatabaseEntry *)&v20 init];
  if (v12)
  {
    v13 = [domainCopy copy];
    v14 = [SFDomainAssociationUtilities domainByStrippingSubdomainWildcardPrefixIfNecessary:v13];
    domain = v12->_domain;
    v12->_domain = v14;

    v16 = [dCopy copy];
    appID = v12->_appID;
    v12->_appID = v16;

    v12->_service = service;
    v12->_approved = approved;
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