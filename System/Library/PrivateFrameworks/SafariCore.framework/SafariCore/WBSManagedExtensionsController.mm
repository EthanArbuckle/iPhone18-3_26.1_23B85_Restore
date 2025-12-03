@interface WBSManagedExtensionsController
+ (NSURL)managedExtensionsConfigurationURL;
+ (id)sharedController;
- (BOOL)_domainIsManaged:(id)managed byManagedDomainSet:(id)set;
- (BOOL)allDomainsAreManagedForComposedIdentifier:(id)identifier;
- (BOOL)anyDomainIsManagedForComposedIdentifier:(id)identifier;
- (BOOL)domainIsDenied:(id)denied forComposedIdentifier:(id)identifier;
- (BOOL)domainIsManaged:(id)managed forComposedIdentifier:(id)identifier;
- (BOOL)hasAnyExtensionManagement;
- (WBSManagedExtensionsController)init;
- (id)allowedDomainsForComposedIdentifier:(id)identifier;
- (id)deniedDomainsForComposedIdentifier:(id)identifier;
- (int64_t)managedExtensionPrivateBrowsingStateForComposedIdentifier:(id)identifier;
- (int64_t)managedExtensionStateForComposedIdentifier:(id)identifier;
- (void)_managedExtensionConfigurationDidChange:(id)change;
- (void)_readManagedExtensionsStateFromDisk;
@end

@implementation WBSManagedExtensionsController

+ (id)sharedController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__WBSManagedExtensionsController_sharedController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedController_once != -1)
  {
    dispatch_once(&sharedController_once, block);
  }

  v2 = sharedController_sharedController_0;

  return v2;
}

void __50__WBSManagedExtensionsController_sharedController__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = sharedController_sharedController_0;
  sharedController_sharedController_0 = v2;
}

- (WBSManagedExtensionsController)init
{
  v7.receiver = self;
  v7.super_class = WBSManagedExtensionsController;
  v2 = [(WBSManagedExtensionsController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(WBSManagedExtensionsController *)v2 _readManagedExtensionsStateFromDisk];
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__managedExtensionConfigurationDidChange_ name:@"ManagedExtensionsConfigurationDidChange" object:0];

    v5 = v3;
  }

  return v3;
}

- (void)_readManagedExtensionsStateFromDisk
{
  v3 = MEMORY[0x1E695DF20];
  managedExtensionsConfigurationURL = [objc_opt_class() managedExtensionsConfigurationURL];
  v9 = [v3 dictionaryWithContentsOfURL:managedExtensionsConfigurationURL];

  v5 = [v9 safari_dictionaryForKey:@"ExtensionSettings"];
  v6 = [v5 safari_dictionaryForKey:@"Payload"];
  v7 = [v6 safari_dictionaryForKey:@"ManagedExtensions"];
  managedExtensionsState = self->_managedExtensionsState;
  self->_managedExtensionsState = v7;
}

+ (NSURL)managedExtensionsConfigurationURL
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  safari_mobileSafariContainerDirectoryURL = [defaultManager safari_mobileSafariContainerDirectoryURL];
  v4 = [safari_mobileSafariContainerDirectoryURL URLByAppendingPathComponent:@"Library/Safari"];

  if (v4)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [defaultManager2 safari_ensureDirectoryExists:v4];
  }

  v7 = [v4 URLByAppendingPathComponent:@"SafariExtensionsManagedConfiguration.plist"];

  return v7;
}

- (BOOL)hasAnyExtensionManagement
{
  allKeys = [(NSDictionary *)self->_managedExtensionsState allKeys];
  v3 = [allKeys count] != 0;

  return v3;
}

- (int64_t)managedExtensionStateForComposedIdentifier:(id)identifier
{
  v4 = [(NSDictionary *)self->_managedExtensionsState safari_dictionaryForKey:identifier];
  v5 = [v4 safari_stringForKey:@"State"];
  v6 = v5;
  if (v5)
  {
    v7 = managedExtensionStateFromString(v5);
  }

  else
  {
    v8 = [(NSDictionary *)self->_managedExtensionsState safari_dictionaryForKey:@"*"];
    v9 = [v8 safari_stringForKey:@"State"];
    v10 = v9;
    if (v9)
    {
      v7 = managedExtensionStateFromString(v9);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (int64_t)managedExtensionPrivateBrowsingStateForComposedIdentifier:(id)identifier
{
  v4 = [(NSDictionary *)self->_managedExtensionsState safari_dictionaryForKey:identifier];
  v5 = [v4 safari_stringForKey:@"PrivateBrowsing"];
  v6 = v5;
  if (v5)
  {
    v7 = managedExtensionStateFromString(v5);
  }

  else
  {
    v8 = [(NSDictionary *)self->_managedExtensionsState safari_dictionaryForKey:@"*"];
    v9 = [v8 safari_stringForKey:@"PrivateBrowsing"];
    v10 = v9;
    if (v9)
    {
      v7 = managedExtensionStateFromString(v9);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)allowedDomainsForComposedIdentifier:(id)identifier
{
  v3 = [(NSDictionary *)self->_managedExtensionsState safari_dictionaryForKey:identifier];
  v4 = MEMORY[0x1E695DFD8];
  v5 = [v3 safari_arrayForKey:@"AllowedDomains"];
  v6 = [v4 setWithArray:v5];

  return v6;
}

- (id)deniedDomainsForComposedIdentifier:(id)identifier
{
  v3 = [(NSDictionary *)self->_managedExtensionsState safari_dictionaryForKey:identifier];
  v4 = MEMORY[0x1E695DFD8];
  v5 = [v3 safari_arrayForKey:@"DeniedDomains"];
  v6 = [v4 setWithArray:v5];

  return v6;
}

- (BOOL)_domainIsManaged:(id)managed byManagedDomainSet:(id)set
{
  managedCopy = managed;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__WBSManagedExtensionsController__domainIsManaged_byManagedDomainSet___block_invoke;
  v8[3] = &unk_1E7CF1818;
  v9 = managedCopy;
  v6 = managedCopy;
  LOBYTE(set) = [set safari_containsObjectPassingTest:v8];

  return set;
}

uint64_t __70__WBSManagedExtensionsController__domainIsManaged_byManagedDomainSet___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:@"*"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *(a1 + 32)))
  {
    v4 = 1;
  }

  else if ([v3 hasPrefix:@"*"])
  {
    v4 = 1;
    v6 = [v3 substringFromIndex:1];
    if (([*(a1 + 32) isEqualToString:v6] & 1) == 0)
    {
      v7 = *(a1 + 32);
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@".%@", v6];
      v4 = [v7 hasSuffix:v8];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)domainIsManaged:(id)managed forComposedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  managedCopy = managed;
  v8 = [(WBSManagedExtensionsController *)self allowedDomainsForComposedIdentifier:identifierCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x1E695DFD8] set];
  }

  v11 = v10;

  v12 = [(WBSManagedExtensionsController *)self deniedDomainsForComposedIdentifier:identifierCopy];

  v13 = v12;
  if (!v12)
  {
    v13 = [MEMORY[0x1E695DFD8] set];
  }

  v14 = [v11 setByAddingObjectsFromSet:v13];

  if (!v12)
  {
  }

  v15 = [(WBSManagedExtensionsController *)self _domainIsManaged:managedCopy byManagedDomainSet:v14];
  return v15;
}

- (BOOL)domainIsDenied:(id)denied forComposedIdentifier:(id)identifier
{
  deniedCopy = denied;
  v7 = [(WBSManagedExtensionsController *)self deniedDomainsForComposedIdentifier:identifier];
  LOBYTE(self) = [(WBSManagedExtensionsController *)self _domainIsManaged:deniedCopy byManagedDomainSet:v7];

  return self;
}

- (BOOL)anyDomainIsManagedForComposedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(WBSManagedExtensionsController *)self allowedDomainsForComposedIdentifier:identifierCopy];
  if ([v5 count])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(WBSManagedExtensionsController *)self deniedDomainsForComposedIdentifier:identifierCopy];
    v6 = [v7 count] != 0;
  }

  return v6;
}

- (BOOL)allDomainsAreManagedForComposedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(WBSManagedExtensionsController *)self allowedDomainsForComposedIdentifier:identifierCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E695DFD8] set];
  }

  v8 = v7;

  v9 = [(WBSManagedExtensionsController *)self deniedDomainsForComposedIdentifier:identifierCopy];

  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFD8] set];
  }

  v11 = [v8 setByAddingObjectsFromSet:v10];

  if (!v9)
  {
  }

  v12 = [v11 safari_containsObjectPassingTest:&__block_literal_global_17];
  return v12;
}

- (void)_managedExtensionConfigurationDidChange:(id)change
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__WBSManagedExtensionsController__managedExtensionConfigurationDidChange___block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __74__WBSManagedExtensionsController__managedExtensionConfigurationDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _readManagedExtensionsStateFromDisk];
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:@"ManagedExtensionsStateDidChange" object:0];
}

@end