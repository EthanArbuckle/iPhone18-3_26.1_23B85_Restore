@interface WBSWebExtensionToolbarItem
- (BOOL)hasUpdatedBadgeTextInTab:(id)tab;
- (BOOL)isEnabledForTab:(id)tab;
- (BOOL)shouldRequestAccessForTab:(id)tab;
- (WBSWebExtensionData)webExtension;
- (WBSWebExtensionToolbarItem)initWithWebExtension:(id)extension extensionsController:(id)controller;
- (id)badgeTextForTab:(id)tab;
- (id)iconForTab:(id)tab;
- (id)popupWebViewInspectionNameForAction:(id)action;
- (id)titleForTab:(id)tab;
- (void)didViewBadgeInTab:(id)tab;
@end

@implementation WBSWebExtensionToolbarItem

- (WBSWebExtensionToolbarItem)initWithWebExtension:(id)extension extensionsController:(id)controller
{
  extensionCopy = extension;
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = WBSWebExtensionToolbarItem;
  v8 = [(WBSWebExtensionToolbarItem *)&v17 init];
  if (v8)
  {
    webKitContext = [extensionCopy webKitContext];
    v10 = [webKitContext actionForTab:0];

    toolbarImage = [extensionCopy toolbarImage];
    image = v8->_image;
    v8->_image = toolbarImage;

    label = [v10 label];
    label = v8->_label;
    v8->_label = label;

    v8->_enabled = [v10 isEnabled];
    objc_storeWeak(&v8->_extensionsController, controllerCopy);
    objc_storeWeak(&v8->_webExtension, extensionCopy);
    v15 = v8;
  }

  return v8;
}

- (id)popupWebViewInspectionNameForAction:(id)action
{
  popupWebView = [action popupWebView];
  v5 = [popupWebView URL];

  WeakRetained = objc_loadWeakRetained(&self->_webExtension);
  v7 = objc_loadWeakRetained(&self->_extensionsController);
  if ([v7 hasNamedProfiles])
  {
    profile = [v7 profile];
    v9 = MEMORY[0x1E696AEC0];
    displayShortName2 = _WBSLocalizedString();
    displayShortName = [WeakRetained displayShortName];
    title = [profile title];
    lastPathComponent = [v5 lastPathComponent];
    v14 = [v9 stringWithFormat:displayShortName2, displayShortName, title, lastPathComponent];
  }

  else
  {
    v15 = MEMORY[0x1E696AEC0];
    profile = _WBSLocalizedString();
    displayShortName2 = [WeakRetained displayShortName];
    displayShortName = [v5 lastPathComponent];
    v14 = [v15 stringWithFormat:profile, displayShortName2, displayShortName];
  }

  return v14;
}

- (id)badgeTextForTab:(id)tab
{
  tabCopy = tab;
  WeakRetained = objc_loadWeakRetained(&self->_webExtension);
  webKitContext = [WeakRetained webKitContext];
  v7 = [webKitContext actionForTab:tabCopy];
  badgeText = [v7 badgeText];

  return badgeText;
}

- (void)didViewBadgeInTab:(id)tab
{
  tabCopy = tab;
  WeakRetained = objc_loadWeakRetained(&self->_webExtension);
  webKitContext = [WeakRetained webKitContext];
  v6 = [webKitContext actionForTab:tabCopy];

  if (objc_opt_respondsToSelector())
  {
    [v6 setHasUnreadBadgeText:0];
  }
}

- (BOOL)hasUpdatedBadgeTextInTab:(id)tab
{
  tabCopy = tab;
  WeakRetained = objc_loadWeakRetained(&self->_webExtension);
  webKitContext = [WeakRetained webKitContext];
  v7 = [webKitContext actionForTab:tabCopy];

  if (objc_opt_respondsToSelector())
  {
    hasUnreadBadgeText = [v7 hasUnreadBadgeText];
  }

  else
  {
    hasUnreadBadgeText = 0;
  }

  return hasUnreadBadgeText;
}

- (id)titleForTab:(id)tab
{
  tabCopy = tab;
  WeakRetained = objc_loadWeakRetained(&self->_webExtension);
  webKitContext = [WeakRetained webKitContext];
  v7 = [webKitContext actionForTab:tabCopy];
  label = [v7 label];

  return label;
}

- (BOOL)isEnabledForTab:(id)tab
{
  tabCopy = tab;
  WeakRetained = objc_loadWeakRetained(&self->_webExtension);
  webKitContext = [WeakRetained webKitContext];
  v7 = [webKitContext actionForTab:tabCopy];
  isEnabled = [v7 isEnabled];

  return isEnabled;
}

- (id)iconForTab:(id)tab
{
  tabCopy = tab;
  webExtension = [(WBSWebExtensionToolbarItem *)self webExtension];
  extensionsController = [webExtension extensionsController];
  toolbarItemIdealPointSize = [extensionsController toolbarItemIdealPointSize];

  WeakRetained = objc_loadWeakRetained(&self->_webExtension);
  webKitContext = [WeakRetained webKitContext];
  v10 = [webKitContext actionForTab:tabCopy];
  v11 = [v10 iconForSize:{toolbarItemIdealPointSize, toolbarItemIdealPointSize}];
  v12 = v11;
  if (v11)
  {
    toolbarImage = v11;
  }

  else
  {
    toolbarImage = [webExtension toolbarImage];
  }

  v14 = toolbarImage;

  return v14;
}

- (BOOL)shouldRequestAccessForTab:(id)tab
{
  tabCopy = tab;
  urlForExtensions = [tabCopy urlForExtensions];
  if ([urlForExtensions safari_isHTTPFamilyURL])
  {
    webExtension = [(WBSWebExtensionToolbarItem *)self webExtension];
    mEMORY[0x1E69C88C8] = [MEMORY[0x1E69C88C8] sharedController];
    host = [urlForExtensions host];
    composedIdentifier = [webExtension composedIdentifier];
    v10 = [mEMORY[0x1E69C88C8] domainIsManaged:host forComposedIdentifier:composedIdentifier];

    v11 = (v10 & 1) == 0 && ([webExtension permissionStateForURL:urlForExtensions inTab:tabCopy] + 1) < 2;
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