@interface PUICustomFontConfiguration
- (BOOL)isEqual:(id)a3;
- (PUICustomFontConfiguration)initWithBSXPCCoder:(id)a3;
- (PUICustomFontConfiguration)initWithCoder:(id)a3;
- (PUICustomFontConfiguration)initWithFont:(id)a3 extensionBundle:(id)a4;
- (PUICustomFontConfiguration)initWithFont:(id)a3 extensionBundleURL:(id)a4;
- (PUICustomFontConfiguration)initWithFontPostScriptName:(id)a3 extensionBundleRelativeFilePath:(id)a4;
- (id)PUIFontWithExtensionBundleURL:(id)a3;
- (id)fontWithExtensionBundleURL:(id)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PUICustomFontConfiguration

- (PUICustomFontConfiguration)initWithFontPostScriptName:(id)a3 extensionBundleRelativeFilePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PUICustomFontConfiguration;
  v8 = [(PUIFontConfiguration *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    fontPostScriptName = v8->_fontPostScriptName;
    v8->_fontPostScriptName = v9;

    v11 = [v7 copy];
    extensionBundleRelativeFilePath = v8->_extensionBundleRelativeFilePath;
    v8->_extensionBundleRelativeFilePath = v11;
  }

  return v8;
}

- (PUICustomFontConfiguration)initWithFont:(id)a3 extensionBundle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 pui_postScriptName];
  v9 = [v7 pui_referencePathRelativeToBundle:v6];

  v10 = 0;
  if (v8 && v9)
  {
    self = [(PUICustomFontConfiguration *)self initWithFontPostScriptName:v8 extensionBundleRelativeFilePath:v9];
    v10 = self;
  }

  return v10;
}

- (PUICustomFontConfiguration)initWithFont:(id)a3 extensionBundleURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 pui_postScriptName];
  v9 = [v7 pui_referencePathRelativeToDirectoryAtURL:v6];

  v10 = 0;
  if (v8 && v9)
  {
    self = [(PUICustomFontConfiguration *)self initWithFontPostScriptName:v8 extensionBundleRelativeFilePath:v9];
    v10 = self;
  }

  return v10;
}

- (id)PUIFontWithExtensionBundleURL:(id)a3
{
  v4 = a3;
  v5 = [(PUICustomFontConfiguration *)self fontPostScriptName];
  v6 = [(PUICustomFontConfiguration *)self extensionBundleRelativeFilePath];
  v7 = [MEMORY[0x1E69DB878] pui_UIFontWithPostScriptName:v5 inBundleAtURL:v4 relativePath:v6];

  if (v7)
  {
    v8 = [[PUIFont alloc] initWithCustomFont:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)fontWithExtensionBundleURL:(id)a3
{
  v4 = a3;
  v5 = [(PUICustomFontConfiguration *)self fontPostScriptName];
  v6 = [(PUICustomFontConfiguration *)self extensionBundleRelativeFilePath];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v8 = [MEMORY[0x1E69DB878] pui_UIFontWithPostScriptName:v5 inBundleAtURL:v4 relativePath:v6];
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(PUICustomFontConfiguration *)self fontPostScriptName];
      v9 = [(PUICustomFontConfiguration *)v7 fontPostScriptName];
      v10 = BSEqualObjects();

      if (v10)
      {
        v11 = [(PUICustomFontConfiguration *)self extensionBundleRelativeFilePath];
        v12 = [(PUICustomFontConfiguration *)v7 extensionBundleRelativeFilePath];
        v13 = BSEqualObjects();
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

  return v13;
}

- (unint64_t)hash
{
  v3 = [(PUICustomFontConfiguration *)self fontPostScriptName];
  v4 = [v3 hash];
  v5 = [(PUICustomFontConfiguration *)self extensionBundleRelativeFilePath];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v7 = a3;
  v4 = [(PUICustomFontConfiguration *)self fontPostScriptName];
  [v7 appendString:v4 withName:@"fontPostScriptName"];

  v5 = [(PUICustomFontConfiguration *)self extensionBundleRelativeFilePath];
  v6 = [v7 appendObject:v5 withName:@"extensionBundleRelativeFilePath"];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PUICustomFontConfiguration *)self fontPostScriptName];
  [v4 encodeObject:v5 forKey:@"fontPostScriptName"];

  v6 = [(PUICustomFontConfiguration *)self extensionBundleRelativeFilePath];
  [v4 encodeObject:v6 forKey:@"extensionBundleRelativeFilePath"];
}

- (PUICustomFontConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"fontPostScriptName"];

  v7 = objc_opt_self();
  v8 = [v4 decodeObjectOfClass:v7 forKey:@"extensionBundleRelativeFilePath"];

  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    self = [(PUICustomFontConfiguration *)self initWithFontPostScriptName:v6 extensionBundleRelativeFilePath:v8];
    v10 = self;
  }

  return v10;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(PUICustomFontConfiguration *)self fontPostScriptName];
  [v4 encodeObject:v5 forKey:@"fontPostScriptName"];

  v6 = [(PUICustomFontConfiguration *)self extensionBundleRelativeFilePath];
  [v4 encodeObject:v6 forKey:@"extensionBundleRelativeFilePath"];
}

- (PUICustomFontConfiguration)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"fontPostScriptName"];

  v7 = objc_opt_self();
  v8 = [v4 decodeObjectOfClass:v7 forKey:@"extensionBundleRelativeFilePath"];

  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    self = [(PUICustomFontConfiguration *)self initWithFontPostScriptName:v6 extensionBundleRelativeFilePath:v8];
    v10 = self;
  }

  return v10;
}

@end