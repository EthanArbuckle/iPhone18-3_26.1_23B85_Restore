@interface WBSSavePermissionsToStorageInformation
- (BOOL)isEqual:(id)a3;
- (WBSSavePermissionsToStorageInformation)initWithWebExtension:(id)a3 permissionsWereUpdatedDueToAnExternalChange:(BOOL)a4;
@end

@implementation WBSSavePermissionsToStorageInformation

- (WBSSavePermissionsToStorageInformation)initWithWebExtension:(id)a3 permissionsWereUpdatedDueToAnExternalChange:(BOOL)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = WBSSavePermissionsToStorageInformation;
  v8 = [(WBSSavePermissionsToStorageInformation *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_webExtension, a3);
    v9->_permissionsWereUpdatedDueToAnExternalChange = a4;
    v10 = v9;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8 && (permissionsWereUpdatedDueToAnExternalChange = self->_permissionsWereUpdatedDueToAnExternalChange, permissionsWereUpdatedDueToAnExternalChange == [(WBSSavePermissionsToStorageInformation *)v8 permissionsWereUpdatedDueToAnExternalChange]))
    {
      webExtension = self->_webExtension;
      v11 = [(WBSSavePermissionsToStorageInformation *)v8 webExtension];
      v12 = [(WBSWebExtensionData *)webExtension isEqual:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

@end