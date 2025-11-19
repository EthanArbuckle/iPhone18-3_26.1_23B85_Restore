@interface ExtensionItem
+ (id)itemWithExtension:(id)a3 activationStyle:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (id)activate;
- (id)name;
- (unint64_t)hash;
- (void)dealloc;
- (void)invalidate;
@end

@implementation ExtensionItem

+ (id)itemWithExtension:(id)a3 activationStyle:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(a1);
  v8 = v7[1];
  v7[1] = v6;

  v7[4] = a4;

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
  v3 = [(_EXExtensionIdentity *)self->_extension localizedName];
  if ([(ExtensionItem *)self wasEverActivated])
  {
    v4 = [v3 stringByAppendingString:@" 🟢"];

    v3 = v4;
  }

  return v3;
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
    v13 = [(_EXExtensionIdentity *)self->_extension bundleIdentifier];
    v14 = [MEMORY[0x277CCAD78] UUID];
    v15 = [v12 configurationIdentityWithProvider:v13 identifier:0 role:v9 posterUUID:v14 version:1 supplement:0];

    v16 = MEMORY[0x277D3EBA0];
    v17 = [(BSInvalidatable *)self->_tmpPoster contentsURL];
    v18 = [v16 pathWithContainerURL:v17 identity:v15];

    [v18 ensureContentsURLIsReachableAndReturnError:0];
    v19 = MEMORY[0x277D3EB78];
    extension = self->_extension;
    v21 = [MEMORY[0x277CCAD78] UUID];
    v22 = [v19 extensionInstanceForIdentity:extension instanceIdentifier:v21];

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
  v2 = [(_EXExtensionIdentity *)self->_extension uniqueIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  extension = self->_extension;
  v4 = a3;
  v5 = [(_EXExtensionIdentity *)extension uniqueIdentifier];
  v6 = v4[1];

  v7 = [v6 uniqueIdentifier];
  LOBYTE(v6) = [v5 isEqual:v7];

  return v6;
}

@end