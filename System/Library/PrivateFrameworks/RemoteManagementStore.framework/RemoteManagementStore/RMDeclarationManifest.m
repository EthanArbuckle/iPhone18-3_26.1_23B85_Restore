@interface RMDeclarationManifest
+ (id)declarationManifestWithDeclarations:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToManifest:(id)a3;
- (RMDeclarationManifest)initWithActivations:(id)a3 configurations:(id)a4 assets:(id)a5 management:(id)a6;
- (RMDeclarationManifest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RMDeclarationManifest

+ (id)declarationManifestWithDeclarations:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v25 = objc_opt_new();
  v23 = objc_opt_new();
  v21 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v3;
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
        v11 = [v10 declarationClassType];
        v12 = v4;
        if ([v11 isEqualToString:v8] & 1) != 0 || (v12 = v25, (objc_msgSend(v11, "isEqualToString:", v24)) || (v12 = v23, (objc_msgSend(v11, "isEqualToString:", v22)) || (v12 = v21, objc_msgSend(v11, "isEqualToString:", v20)))
        {
          v13 = [RMDeclarationManifestItem alloc];
          v14 = [v10 declarationIdentifier];
          v15 = [v10 declarationServerToken];
          v16 = [(RMDeclarationManifestItem *)v13 initWithIdentifier:v14 version:v15];
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

- (RMDeclarationManifest)initWithActivations:(id)a3 configurations:(id)a4 assets:(id)a5 management:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = RMDeclarationManifest;
  v14 = [(RMDeclarationManifest *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    activations = v14->_activations;
    v14->_activations = v15;

    v17 = [v11 copy];
    configurations = v14->_configurations;
    v14->_configurations = v17;

    v19 = [v12 copy];
    assets = v14->_assets;
    v14->_assets = v19;

    v21 = [v13 copy];
    management = v14->_management;
    v14->_management = v21;
  }

  return v14;
}

- (RMDeclarationManifest)initWithCoder:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v3 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"activations"];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"configurations"];

  v14 = MEMORY[0x277CBEB98];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = [v14 setWithObjects:{v15, v16, objc_opt_class(), 0}];
  v18 = [v4 decodeObjectOfClasses:v17 forKey:@"assets"];

  v19 = MEMORY[0x277CBEB98];
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = [v19 setWithObjects:{v20, v21, objc_opt_class(), 0}];
  v23 = [v4 decodeObjectOfClasses:v22 forKey:@"management"];

  v24 = [(RMDeclarationManifest *)self initWithActivations:v8 configurations:v13 assets:v18 management:v23];
  return v24;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RMDeclarationManifest *)self activations];
  [v4 encodeObject:v5 forKey:@"activations"];

  v6 = [(RMDeclarationManifest *)self configurations];
  [v4 encodeObject:v6 forKey:@"configurations"];

  v7 = [(RMDeclarationManifest *)self assets];
  [v4 encodeObject:v7 forKey:@"assets"];

  v8 = [(RMDeclarationManifest *)self management];
  [v4 encodeObject:v8 forKey:@"management"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMDeclarationManifest *)self isEqualToManifest:v4];
  }

  return v5;
}

- (BOOL)isEqualToManifest:(id)a3
{
  v4 = a3;
  v5 = [(RMDeclarationManifest *)self activations];
  v6 = [v4 activations];
  if ([v5 isEqualToArray:v6])
  {
    v7 = [(RMDeclarationManifest *)self configurations];
    v8 = [v4 configurations];
    if ([v7 isEqualToArray:v8])
    {
      v9 = [(RMDeclarationManifest *)self assets];
      v10 = [v4 assets];
      if ([v9 isEqualToArray:v10])
      {
        v11 = [(RMDeclarationManifest *)self management];
        v12 = [v4 management];
        v13 = [v11 isEqualToArray:v12];
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