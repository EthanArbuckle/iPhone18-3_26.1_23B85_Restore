@interface ExtensionItem
+ (id)itemWithExtension:(id)extension activationStyle:(int64_t)style;
- (BOOL)isEqual:(id)equal;
- (id)activate;
- (id)name;
- (unint64_t)hash;
- (void)dealloc;
- (void)invalidate;
@end

@implementation ExtensionItem

+ (id)itemWithExtension:(id)extension activationStyle:(int64_t)style
{
  extensionCopy = extension;
  v7 = objc_alloc_init(self);
  v8 = v7[1];
  v7[1] = extensionCopy;

  v7[4] = style;

  return v7;
}

- (void)dealloc
{
  [(ExtensionItem *)self invalidate];
  v3.receiver = self;
  v3.super_class = ExtensionItem;
  [(ExtensionItem *)&v3 dealloc];
}

- (id)name
{
  localizedName = [(_EXExtensionIdentity *)self->_extension localizedName];
  if ([(ExtensionItem *)self wasEverActivated])
  {
    v4 = [localizedName stringByAppendingString:@" 🟢"];

    localizedName = v4;
  }

  return localizedName;
}

- (id)activate
{
  if (!MEMORY[0x21CEF7340]("[ExtensionItem activate]", a2))
  {
    v6 = 0;
    goto LABEL_14;
  }

  viewController = self->_viewController;
  if (!viewController)
  {
    activationStyle = self->_activationStyle;
    if (activationStyle)
    {
      if (activationStyle != 1)
      {
        v7 = 0;
        v8 = 0;
        goto LABEL_10;
      }

      v5 = MEMORY[0x277D3F028];
    }

    else
    {
      v5 = MEMORY[0x277D3F030];
    }

    v7 = objc_opt_self();
    v8 = *v5;
LABEL_10:
    v9 = *MEMORY[0x277D3EEF0];
    v10 = [MEMORY[0x277D3EB88] temporaryPathForRole:*MEMORY[0x277D3EEF0]];
    tmpPoster = self->_tmpPoster;
    self->_tmpPoster = v10;

    v12 = MEMORY[0x277D3EB98];
    bundleIdentifier = [(_EXExtensionIdentity *)self->_extension bundleIdentifier];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v15 = [v12 configurationIdentityWithProvider:bundleIdentifier identifier:0 role:v9 posterUUID:uUID version:1 supplement:0];

    v16 = MEMORY[0x277D3EBA0];
    contentsURL = [(BSInvalidatable *)self->_tmpPoster contentsURL];
    v18 = [v16 pathWithContainerURL:contentsURL identity:v15];

    [v18 ensureContentsURLIsReachableAndReturnError:0];
    v19 = MEMORY[0x277D3EB78];
    extension = self->_extension;
    uUID2 = [MEMORY[0x277CCAD78] UUID];
    v22 = [v19 extensionInstanceForIdentity:extension instanceIdentifier:uUID2];

    v23 = [[v7 alloc] initWithProvider:v22 contents:v18];
    v24 = self->_viewController;
    self->_viewController = v23;

    if (self->_activationStyle == 1)
    {
      [(PRSceneViewController *)self->_viewController setModalPresentationStyle:0];
    }

    viewController = self->_viewController;
  }

  v6 = viewController;
LABEL_14:

  return v6;
}

- (void)invalidate
{
  [(ExtensionItem *)self deactivate];
  [(PRSceneViewController *)self->_viewController invalidate];
  viewController = self->_viewController;
  self->_viewController = 0;

  [(BSInvalidatable *)self->_tmpPoster invalidate];
  tmpPoster = self->_tmpPoster;
  self->_tmpPoster = 0;
}

- (unint64_t)hash
{
  uniqueIdentifier = [(_EXExtensionIdentity *)self->_extension uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  extension = self->_extension;
  equalCopy = equal;
  uniqueIdentifier = [(_EXExtensionIdentity *)extension uniqueIdentifier];
  v6 = equalCopy[1];

  uniqueIdentifier2 = [v6 uniqueIdentifier];
  LOBYTE(v6) = [uniqueIdentifier isEqual:uniqueIdentifier2];

  return v6;
}

@end