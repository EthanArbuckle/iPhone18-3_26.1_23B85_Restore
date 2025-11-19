@interface PRPosterCustomTimeFontConfiguration
- (BOOL)isEqual:(id)a3;
- (PRPosterCustomTimeFontConfiguration)initWithBSXPCCoder:(id)a3;
- (PRPosterCustomTimeFontConfiguration)initWithCoder:(id)a3;
- (PRPosterCustomTimeFontConfiguration)initWithFont:(id)a3 extensionBundle:(id)a4;
- (PRPosterCustomTimeFontConfiguration)initWithFont:(id)a3 extensionBundleURL:(id)a4;
- (PRPosterCustomTimeFontConfiguration)initWithFontPostScriptName:(id)a3 extensionBundleRelativeFilePath:(id)a4;
- (PRPosterCustomTimeFontConfiguration)timeFontConfigurationWithExtensionBundleURL:(id)a3;
- (id)fontWithExtensionBundleURL:(id)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRPosterCustomTimeFontConfiguration

- (PRPosterCustomTimeFontConfiguration)initWithFontPostScriptName:(id)a3 extensionBundleRelativeFilePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRPosterCustomTimeFontConfiguration initWithFontPostScriptName:extensionBundleRelativeFilePath:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [PRPosterCustomTimeFontConfiguration initWithFontPostScriptName:extensionBundleRelativeFilePath:];
LABEL_3:
  v15.receiver = self;
  v15.super_class = PRPosterCustomTimeFontConfiguration;
  v9 = [(PRPosterTimeFontConfiguration *)&v15 init];
  if (v9)
  {
    v10 = [v6 copy];
    fontPostScriptName = v9->_fontPostScriptName;
    v9->_fontPostScriptName = v10;

    v12 = [v8 copy];
    extensionBundleRelativeFilePath = v9->_extensionBundleRelativeFilePath;
    v9->_extensionBundleRelativeFilePath = v12;
  }

  return v9;
}

- (PRPosterCustomTimeFontConfiguration)initWithFont:(id)a3 extensionBundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    [PRPosterCustomTimeFontConfiguration initWithFont:extensionBundle:];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_8:
    [PRPosterCustomTimeFontConfiguration initWithFont:extensionBundle:];
    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_3:
  v9 = [v6 pr_postScriptName];
  v10 = [v6 pr_referencePathRelativeToBundle:v8];
  v11 = v10;
  v12 = 0;
  if (v9 && v10)
  {
    self = [(PRPosterCustomTimeFontConfiguration *)self initWithFontPostScriptName:v9 extensionBundleRelativeFilePath:v10];
    v12 = self;
  }

  return v12;
}

- (PRPosterCustomTimeFontConfiguration)initWithFont:(id)a3 extensionBundleURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    [PRPosterCustomTimeFontConfiguration initWithFont:extensionBundleURL:];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_8:
    [PRPosterCustomTimeFontConfiguration initWithFont:extensionBundleURL:];
    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_3:
  v9 = [v6 pr_postScriptName];
  v10 = [v6 pr_referencePathRelativeToDirectoryAtURL:v8];
  v11 = v10;
  v12 = 0;
  if (v9 && v10)
  {
    self = [(PRPosterCustomTimeFontConfiguration *)self initWithFontPostScriptName:v9 extensionBundleRelativeFilePath:v10];
    v12 = self;
  }

  return v12;
}

- (PRPosterCustomTimeFontConfiguration)timeFontConfigurationWithExtensionBundleURL:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [PRPosterCustomTimeFontConfiguration timeFontConfigurationWithExtensionBundleURL:];
  }

  v5 = [(PRPosterCustomTimeFontConfiguration *)self fontPostScriptName];
  v6 = [(PRPosterCustomTimeFontConfiguration *)self extensionBundleRelativeFilePath];
  v7 = [MEMORY[0x1E69DB878] pr_fontWithPostScriptName:v5 inBundleAtURL:v4 relativePath:v6];
  if (v7)
  {
    v8 = [[PRTimeFontConfiguration alloc] initWithCustomFont:v7];
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
  v5 = [(PRPosterCustomTimeFontConfiguration *)self fontPostScriptName];
  v6 = [(PRPosterCustomTimeFontConfiguration *)self extensionBundleRelativeFilePath];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v8 = [MEMORY[0x1E69DB878] pr_fontWithPostScriptName:v5 inBundleAtURL:v4 relativePath:v6];
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
      v8 = [(PRPosterCustomTimeFontConfiguration *)self fontPostScriptName];
      v9 = [(PRPosterCustomTimeFontConfiguration *)v7 fontPostScriptName];
      v10 = BSEqualObjects();

      if (v10)
      {
        v11 = [(PRPosterCustomTimeFontConfiguration *)self extensionBundleRelativeFilePath];
        v12 = [(PRPosterCustomTimeFontConfiguration *)v7 extensionBundleRelativeFilePath];
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
  v3 = [(PRPosterCustomTimeFontConfiguration *)self fontPostScriptName];
  v4 = [v3 hash];
  v5 = [(PRPosterCustomTimeFontConfiguration *)self extensionBundleRelativeFilePath];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v7 = a3;
  v4 = [(PRPosterCustomTimeFontConfiguration *)self fontPostScriptName];
  [v7 appendString:v4 withName:@"fontPostScriptName"];

  v5 = [(PRPosterCustomTimeFontConfiguration *)self extensionBundleRelativeFilePath];
  v6 = [v7 appendObject:v5 withName:@"extensionBundleRelativeFilePath"];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterCustomTimeFontConfiguration *)self fontPostScriptName];
  [v4 encodeObject:v5 forKey:@"fontPostScriptName"];

  v6 = [(PRPosterCustomTimeFontConfiguration *)self extensionBundleRelativeFilePath];
  [v4 encodeObject:v6 forKey:@"extensionBundleRelativeFilePath"];
}

- (PRPosterCustomTimeFontConfiguration)initWithCoder:(id)a3
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
    self = [(PRPosterCustomTimeFontConfiguration *)self initWithFontPostScriptName:v6 extensionBundleRelativeFilePath:v8];
    v10 = self;
  }

  return v10;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterCustomTimeFontConfiguration *)self fontPostScriptName];
  [v4 encodeObject:v5 forKey:@"fontPostScriptName"];

  v6 = [(PRPosterCustomTimeFontConfiguration *)self extensionBundleRelativeFilePath];
  [v4 encodeObject:v6 forKey:@"extensionBundleRelativeFilePath"];
}

- (PRPosterCustomTimeFontConfiguration)initWithBSXPCCoder:(id)a3
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
    self = [(PRPosterCustomTimeFontConfiguration *)self initWithFontPostScriptName:v6 extensionBundleRelativeFilePath:v8];
    v10 = self;
  }

  return v10;
}

- (void)initWithFontPostScriptName:extensionBundleRelativeFilePath:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v0 handleFailureInMethod:@"fontPostScriptName" object:? file:? lineNumber:? description:?];
}

- (void)initWithFontPostScriptName:extensionBundleRelativeFilePath:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v0 handleFailureInMethod:@"extensionBundleRelativeFilePath" object:? file:? lineNumber:? description:?];
}

- (void)initWithFont:extensionBundle:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v0 handleFailureInMethod:@"font" object:? file:? lineNumber:? description:?];
}

- (void)initWithFont:extensionBundle:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v0 handleFailureInMethod:@"extensionBundle" object:? file:? lineNumber:? description:?];
}

- (void)initWithFont:extensionBundleURL:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v0 handleFailureInMethod:@"font" object:? file:? lineNumber:? description:?];
}

- (void)initWithFont:extensionBundleURL:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v0 handleFailureInMethod:@"extensionBundleURL" object:? file:? lineNumber:? description:?];
}

- (void)timeFontConfigurationWithExtensionBundleURL:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v0 handleFailureInMethod:@"extensionBundleURL != nil" object:? file:? lineNumber:? description:?];
}

@end