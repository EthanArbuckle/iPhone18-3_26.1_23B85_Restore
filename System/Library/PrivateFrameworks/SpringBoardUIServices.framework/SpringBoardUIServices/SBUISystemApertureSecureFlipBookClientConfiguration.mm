@interface SBUISystemApertureSecureFlipBookClientConfiguration
- (SBUISystemApertureSecureFlipBookClientConfiguration)initWithBSXPCCoder:(id)a3;
- (SBUISystemApertureSecureFlipBookClientConfiguration)initWithConfiguration:(id)a3;
- (SBUISystemApertureSecureFlipBookClientConfiguration)initWithName:(id)a3 layoutModesToComponentFlipBookDescriptions:(id)a4;
- (SBUISystemApertureSecureFlipBookClientConfiguration)initWithXPCDictionary:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation SBUISystemApertureSecureFlipBookClientConfiguration

- (SBUISystemApertureSecureFlipBookClientConfiguration)initWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 layoutModesToComponentFlipBookDescriptions];
  v6 = [MEMORY[0x1E695DF70] array];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__SBUISystemApertureSecureFlipBookClientConfiguration_initWithConfiguration___block_invoke;
  v11[3] = &unk_1E789F788;
  v12 = v6;
  v7 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v11];
  v8 = [v4 configurationName];

  v9 = [(SBUISystemApertureSecureFlipBookClientConfiguration *)self initWithName:v8 layoutModesToComponentFlipBookDescriptions:v7];
  return v9;
}

void __77__SBUISystemApertureSecureFlipBookClientConfiguration_initWithConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v14 = [SBUISystemApertureSecureFlipBookClientDescription alloc];
        v15 = [(SBUISystemApertureSecureFlipBookClientDescription *)v14 initWithClientDescription:v13, v17];
        [v7 addObject:v15];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v16 = [[SBUISystemApertureSecureFlipBookClientLayoutModeToDescriptions alloc] initWithLayoutMode:v5 descriptions:v7];
  [*(a1 + 32) addObject:v16];
}

- (SBUISystemApertureSecureFlipBookClientConfiguration)initWithName:(id)a3 layoutModesToComponentFlipBookDescriptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SBUISystemApertureSecureFlipBookClientConfiguration;
  v8 = [(SBUISystemApertureSecureFlipBookClientConfiguration *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    configurationName = v8->_configurationName;
    v8->_configurationName = v9;

    v11 = [v7 copy];
    layoutModesToComponentFlipBookDescriptions = v8->_layoutModesToComponentFlipBookDescriptions;
    v8->_layoutModesToComponentFlipBookDescriptions = v11;
  }

  return v8;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  configurationName = self->_configurationName;
  v5 = a3;
  v6 = [(NSString *)configurationName copy];
  [v5 encodeObject:v6 forKey:@"name"];

  v7 = [(NSArray *)self->_layoutModesToComponentFlipBookDescriptions copy];
  [v5 encodeCollection:v7 forKey:@"descriptions"];
}

- (SBUISystemApertureSecureFlipBookClientConfiguration)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeStringForKey:@"name"];
  v6 = objc_opt_class();
  v7 = [v4 decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"descriptions"];

  v8 = [(SBUISystemApertureSecureFlipBookClientConfiguration *)self initWithName:v5 layoutModesToComponentFlipBookDescriptions:v7];
  return v8;
}

- (SBUISystemApertureSecureFlipBookClientConfiguration)initWithXPCDictionary:(id)a3
{
  v4 = [MEMORY[0x1E698E7A8] coderWithMessage:a3];
  v5 = [(SBUISystemApertureSecureFlipBookClientConfiguration *)self initWithBSXPCCoder:v4];

  return v5;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v4 = [MEMORY[0x1E698E7A8] coderWithMessage:a3];
  [(SBUISystemApertureSecureFlipBookClientConfiguration *)self encodeWithBSXPCCoder:v4];
}

@end