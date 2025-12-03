@interface WBSSavePermissionsToStorageInformation
- (BOOL)isEqual:(id)equal;
- (WBSSavePermissionsToStorageInformation)initWithWebExtension:(id)extension permissionsWereUpdatedDueToAnExternalChange:(BOOL)change;
@end

@implementation WBSSavePermissionsToStorageInformation

- (WBSSavePermissionsToStorageInformation)initWithWebExtension:(id)extension permissionsWereUpdatedDueToAnExternalChange:(BOOL)change
{
  extensionCopy = extension;
  v12.receiver = self;
  v12.super_class = WBSSavePermissionsToStorageInformation;
  v8 = [(WBSSavePermissionsToStorageInformation *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_webExtension, extension);
    v9->_permissionsWereUpdatedDueToAnExternalChange = change;
    v10 = v9;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    v6 = equalCopy;
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
      webExtension = [(WBSSavePermissionsToStorageInformation *)v8 webExtension];
      v12 = [(WBSWebExtensionData *)webExtension isEqual:webExtension];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

@end