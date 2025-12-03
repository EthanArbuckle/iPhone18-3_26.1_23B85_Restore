@interface RMDeclarationManifest
+ (id)declarationManifestWithDeclarations:(id)declarations;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToManifest:(id)manifest;
- (RMDeclarationManifest)initWithActivations:(id)activations configurations:(id)configurations assets:(id)assets management:(id)management;
- (RMDeclarationManifest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RMDeclarationManifest

+ (id)declarationManifestWithDeclarations:(id)declarations
{
  v32 = *MEMORY[0x277D85DE8];
  declarationsCopy = declarations;
  v4 = objc_opt_new();
  v25 = objc_opt_new();
  v23 = objc_opt_new();
  v21 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = declarationsCopy;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    v8 = *MEMORY[0x277D46060];
    v24 = *MEMORY[0x277D46070];
    v22 = *MEMORY[0x277D46068];
    v20 = *MEMORY[0x277D46078];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        declarationClassType = [v10 declarationClassType];
        v12 = v4;
        if ([declarationClassType isEqualToString:v8] & 1) != 0 || (v12 = v25, (objc_msgSend(declarationClassType, "isEqualToString:", v24)) || (v12 = v23, (objc_msgSend(declarationClassType, "isEqualToString:", v22)) || (v12 = v21, objc_msgSend(declarationClassType, "isEqualToString:", v20)))
        {
          v13 = [RMDeclarationManifestItem alloc];
          declarationIdentifier = [v10 declarationIdentifier];
          declarationServerToken = [v10 declarationServerToken];
          v16 = [(RMDeclarationManifestItem *)v13 initWithIdentifier:declarationIdentifier version:declarationServerToken];
          [v12 addObject:v16];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  v17 = [[RMDeclarationManifest alloc] initWithActivations:v4 configurations:v25 assets:v23 management:v21];
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (RMDeclarationManifest)initWithActivations:(id)activations configurations:(id)configurations assets:(id)assets management:(id)management
{
  activationsCopy = activations;
  configurationsCopy = configurations;
  assetsCopy = assets;
  managementCopy = management;
  v24.receiver = self;
  v24.super_class = RMDeclarationManifest;
  v14 = [(RMDeclarationManifest *)&v24 init];
  if (v14)
  {
    v15 = [activationsCopy copy];
    activations = v14->_activations;
    v14->_activations = v15;

    v17 = [configurationsCopy copy];
    configurations = v14->_configurations;
    v14->_configurations = v17;

    v19 = [assetsCopy copy];
    assets = v14->_assets;
    v14->_assets = v19;

    v21 = [managementCopy copy];
    management = v14->_management;
    v14->_management = v21;
  }

  return v14;
}

- (RMDeclarationManifest)initWithCoder:(id)coder
{
  v3 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v3 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"activations"];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"configurations"];

  v14 = MEMORY[0x277CBEB98];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = [v14 setWithObjects:{v15, v16, objc_opt_class(), 0}];
  v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"assets"];

  v19 = MEMORY[0x277CBEB98];
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = [v19 setWithObjects:{v20, v21, objc_opt_class(), 0}];
  v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"management"];

  v24 = [(RMDeclarationManifest *)self initWithActivations:v8 configurations:v13 assets:v18 management:v23];
  return v24;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  activations = [(RMDeclarationManifest *)self activations];
  [coderCopy encodeObject:activations forKey:@"activations"];

  configurations = [(RMDeclarationManifest *)self configurations];
  [coderCopy encodeObject:configurations forKey:@"configurations"];

  assets = [(RMDeclarationManifest *)self assets];
  [coderCopy encodeObject:assets forKey:@"assets"];

  management = [(RMDeclarationManifest *)self management];
  [coderCopy encodeObject:management forKey:@"management"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMDeclarationManifest *)self isEqualToManifest:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToManifest:(id)manifest
{
  manifestCopy = manifest;
  activations = [(RMDeclarationManifest *)self activations];
  activations2 = [manifestCopy activations];
  if ([activations isEqualToArray:activations2])
  {
    configurations = [(RMDeclarationManifest *)self configurations];
    configurations2 = [manifestCopy configurations];
    if ([configurations isEqualToArray:configurations2])
    {
      assets = [(RMDeclarationManifest *)self assets];
      assets2 = [manifestCopy assets];
      if ([assets isEqualToArray:assets2])
      {
        management = [(RMDeclarationManifest *)self management];
        management2 = [manifestCopy management];
        v13 = [management isEqualToArray:management2];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end