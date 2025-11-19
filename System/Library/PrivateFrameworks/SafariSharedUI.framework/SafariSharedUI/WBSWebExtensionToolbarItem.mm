@interface WBSWebExtensionToolbarItem
- (BOOL)hasUpdatedBadgeTextInTab:(id)a3;
- (BOOL)isEnabledForTab:(id)a3;
- (BOOL)shouldRequestAccessForTab:(id)a3;
- (WBSWebExtensionData)webExtension;
- (WBSWebExtensionToolbarItem)initWithWebExtension:(id)a3 extensionsController:(id)a4;
- (id)badgeTextForTab:(id)a3;
- (id)iconForTab:(id)a3;
- (id)popupWebViewInspectionNameForAction:(id)a3;
- (id)titleForTab:(id)a3;
- (void)didViewBadgeInTab:(id)a3;
@end

@implementation WBSWebExtensionToolbarItem

- (WBSWebExtensionToolbarItem)initWithWebExtension:(id)a3 extensionsController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = WBSWebExtensionToolbarItem;
  v8 = [(WBSWebExtensionToolbarItem *)&v17 init];
  if (v8)
  {
    v9 = [v6 webKitContext];
    v10 = [v9 actionForTab:0];

    v11 = [v6 toolbarImage];
    image = v8->_image;
    v8->_image = v11;

    v13 = [v10 label];
    label = v8->_label;
    v8->_label = v13;

    v8->_enabled = [v10 isEnabled];
    objc_storeWeak(&v8->_extensionsController, v7);
    objc_storeWeak(&v8->_webExtension, v6);
    v15 = v8;
  }

  return v8;
}

- (id)popupWebViewInspectionNameForAction:(id)a3
{
  v4 = [a3 popupWebView];
  v5 = [v4 URL];

  WeakRetained = objc_loadWeakRetained(&self->_webExtension);
  v7 = objc_loadWeakRetained(&self->_extensionsController);
  if ([v7 hasNamedProfiles])
  {
    v8 = [v7 profile];
    v9 = MEMORY[0x1E696AEC0];
    v10 = _WBSLocalizedString();
    v11 = [WeakRetained displayShortName];
    v12 = [v8 title];
    v13 = [v5 lastPathComponent];
    v14 = [v9 stringWithFormat:v10, v11, v12, v13];
  }

  else
  {
    v15 = MEMORY[0x1E696AEC0];
    v8 = _WBSLocalizedString();
    v10 = [WeakRetained displayShortName];
    v11 = [v5 lastPathComponent];
    v14 = [v15 stringWithFormat:v8, v10, v11];
  }

  return v14;
}

- (id)badgeTextForTab:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_webExtension);
  v6 = [WeakRetained webKitContext];
  v7 = [v6 actionForTab:v4];
  v8 = [v7 badgeText];

  return v8;
}

- (void)didViewBadgeInTab:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_webExtension);
  v5 = [WeakRetained webKitContext];
  v6 = [v5 actionForTab:v7];

  if (objc_opt_respondsToSelector())
  {
    [v6 setHasUnreadBadgeText:0];
  }
}

- (BOOL)hasUpdatedBadgeTextInTab:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_webExtension);
  v6 = [WeakRetained webKitContext];
  v7 = [v6 actionForTab:v4];

  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 hasUnreadBadgeText];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)titleForTab:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_webExtension);
  v6 = [WeakRetained webKitContext];
  v7 = [v6 actionForTab:v4];
  v8 = [v7 label];

  return v8;
}

- (BOOL)isEnabledForTab:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_webExtension);
  v6 = [WeakRetained webKitContext];
  v7 = [v6 actionForTab:v4];
  v8 = [v7 isEnabled];

  return v8;
}

- (id)iconForTab:(id)a3
{
  v4 = a3;
  v5 = [(WBSWebExtensionToolbarItem *)self webExtension];
  v6 = [v5 extensionsController];
  v7 = [v6 toolbarItemIdealPointSize];

  WeakRetained = objc_loadWeakRetained(&self->_webExtension);
  v9 = [WeakRetained webKitContext];
  v10 = [v9 actionForTab:v4];
  v11 = [v10 iconForSize:{v7, v7}];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [v5 toolbarImage];
  }

  v14 = v13;

  return v14;
}

- (BOOL)shouldRequestAccessForTab:(id)a3
{
  v4 = a3;
  v5 = [v4 urlForExtensions];
  if ([v5 safari_isHTTPFamilyURL])
  {
    v6 = [(WBSWebExtensionToolbarItem *)self webExtension];
    v7 = [MEMORY[0x1E69C88C8] sharedController];
    v8 = [v5 host];
    v9 = [v6 composedIdentifier];
    v10 = [v7 domainIsManaged:v8 forComposedIdentifier:v9];

    v11 = (v10 & 1) == 0 && ([v6 permissionStateForURL:v5 inTab:v4] + 1) < 2;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (WBSWebExtensionData)webExtension
{
  WeakRetained = objc_loadWeakRetained(&self->_webExtension);

  return WeakRetained;
}

@end