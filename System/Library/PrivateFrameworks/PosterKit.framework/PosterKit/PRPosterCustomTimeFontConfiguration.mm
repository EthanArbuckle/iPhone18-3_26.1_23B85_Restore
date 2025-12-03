@interface PRPosterCustomTimeFontConfiguration
- (BOOL)isEqual:(id)equal;
- (PRPosterCustomTimeFontConfiguration)initWithBSXPCCoder:(id)coder;
- (PRPosterCustomTimeFontConfiguration)initWithCoder:(id)coder;
- (PRPosterCustomTimeFontConfiguration)initWithFont:(id)font extensionBundle:(id)bundle;
- (PRPosterCustomTimeFontConfiguration)initWithFont:(id)font extensionBundleURL:(id)l;
- (PRPosterCustomTimeFontConfiguration)initWithFontPostScriptName:(id)name extensionBundleRelativeFilePath:(id)path;
- (PRPosterCustomTimeFontConfiguration)timeFontConfigurationWithExtensionBundleURL:(id)l;
- (id)fontWithExtensionBundleURL:(id)l;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRPosterCustomTimeFontConfiguration

- (PRPosterCustomTimeFontConfiguration)initWithFontPostScriptName:(id)name extensionBundleRelativeFilePath:(id)path
{
  nameCopy = name;
  pathCopy = path;
  v8 = pathCopy;
  if (nameCopy)
  {
    if (pathCopy)
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
    v10 = [nameCopy copy];
    fontPostScriptName = v9->_fontPostScriptName;
    v9->_fontPostScriptName = v10;

    v12 = [v8 copy];
    extensionBundleRelativeFilePath = v9->_extensionBundleRelativeFilePath;
    v9->_extensionBundleRelativeFilePath = v12;
  }

  return v9;
}

- (PRPosterCustomTimeFontConfiguration)initWithFont:(id)font extensionBundle:(id)bundle
{
  fontCopy = font;
  bundleCopy = bundle;
  v8 = bundleCopy;
  if (!fontCopy)
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

  if (!bundleCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  pr_postScriptName = [fontCopy pr_postScriptName];
  v10 = [fontCopy pr_referencePathRelativeToBundle:v8];
  v11 = v10;
  selfCopy = 0;
  if (pr_postScriptName && v10)
  {
    self = [(PRPosterCustomTimeFontConfiguration *)self initWithFontPostScriptName:pr_postScriptName extensionBundleRelativeFilePath:v10];
    selfCopy = self;
  }

  return selfCopy;
}

- (PRPosterCustomTimeFontConfiguration)initWithFont:(id)font extensionBundleURL:(id)l
{
  fontCopy = font;
  lCopy = l;
  v8 = lCopy;
  if (!fontCopy)
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

  if (!lCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  pr_postScriptName = [fontCopy pr_postScriptName];
  v10 = [fontCopy pr_referencePathRelativeToDirectoryAtURL:v8];
  v11 = v10;
  selfCopy = 0;
  if (pr_postScriptName && v10)
  {
    self = [(PRPosterCustomTimeFontConfiguration *)self initWithFontPostScriptName:pr_postScriptName extensionBundleRelativeFilePath:v10];
    selfCopy = self;
  }

  return selfCopy;
}

- (PRPosterCustomTimeFontConfiguration)timeFontConfigurationWithExtensionBundleURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    [PRPosterCustomTimeFontConfiguration timeFontConfigurationWithExtensionBundleURL:];
  }

  fontPostScriptName = [(PRPosterCustomTimeFontConfiguration *)self fontPostScriptName];
  extensionBundleRelativeFilePath = [(PRPosterCustomTimeFontConfiguration *)self extensionBundleRelativeFilePath];
  v7 = [MEMORY[0x1E69DB878] pr_fontWithPostScriptName:fontPostScriptName inBundleAtURL:lCopy relativePath:extensionBundleRelativeFilePath];
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

- (id)fontWithExtensionBundleURL:(id)l
{
  lCopy = l;
  fontPostScriptName = [(PRPosterCustomTimeFontConfiguration *)self fontPostScriptName];
  extensionBundleRelativeFilePath = [(PRPosterCustomTimeFontConfiguration *)self extensionBundleRelativeFilePath];
  v7 = extensionBundleRelativeFilePath;
  v8 = 0;
  if (fontPostScriptName && extensionBundleRelativeFilePath)
  {
    v8 = [MEMORY[0x1E69DB878] pr_fontWithPostScriptName:fontPostScriptName inBundleAtURL:lCopy relativePath:extensionBundleRelativeFilePath];
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      fontPostScriptName = [(PRPosterCustomTimeFontConfiguration *)self fontPostScriptName];
      fontPostScriptName2 = [(PRPosterCustomTimeFontConfiguration *)v7 fontPostScriptName];
      v10 = BSEqualObjects();

      if (v10)
      {
        extensionBundleRelativeFilePath = [(PRPosterCustomTimeFontConfiguration *)self extensionBundleRelativeFilePath];
        extensionBundleRelativeFilePath2 = [(PRPosterCustomTimeFontConfiguration *)v7 extensionBundleRelativeFilePath];
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
  fontPostScriptName = [(PRPosterCustomTimeFontConfiguration *)self fontPostScriptName];
  v4 = [fontPostScriptName hash];
  extensionBundleRelativeFilePath = [(PRPosterCustomTimeFontConfiguration *)self extensionBundleRelativeFilePath];
  v6 = [extensionBundleRelativeFilePath hash];

  return v6 ^ v4;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  fontPostScriptName = [(PRPosterCustomTimeFontConfiguration *)self fontPostScriptName];
  [formatterCopy appendString:fontPostScriptName withName:@"fontPostScriptName"];

  extensionBundleRelativeFilePath = [(PRPosterCustomTimeFontConfiguration *)self extensionBundleRelativeFilePath];
  v6 = [formatterCopy appendObject:extensionBundleRelativeFilePath withName:@"extensionBundleRelativeFilePath"];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fontPostScriptName = [(PRPosterCustomTimeFontConfiguration *)self fontPostScriptName];
  [coderCopy encodeObject:fontPostScriptName forKey:@"fontPostScriptName"];

  extensionBundleRelativeFilePath = [(PRPosterCustomTimeFontConfiguration *)self extensionBundleRelativeFilePath];
  [coderCopy encodeObject:extensionBundleRelativeFilePath forKey:@"extensionBundleRelativeFilePath"];
}

- (PRPosterCustomTimeFontConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"fontPostScriptName"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"extensionBundleRelativeFilePath"];

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
    selfCopy = 0;
  }

  else
  {
    self = [(PRPosterCustomTimeFontConfiguration *)self initWithFontPostScriptName:v6 extensionBundleRelativeFilePath:v8];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  fontPostScriptName = [(PRPosterCustomTimeFontConfiguration *)self fontPostScriptName];
  [coderCopy encodeObject:fontPostScriptName forKey:@"fontPostScriptName"];

  extensionBundleRelativeFilePath = [(PRPosterCustomTimeFontConfiguration *)self extensionBundleRelativeFilePath];
  [coderCopy encodeObject:extensionBundleRelativeFilePath forKey:@"extensionBundleRelativeFilePath"];
}

- (PRPosterCustomTimeFontConfiguration)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"fontPostScriptName"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"extensionBundleRelativeFilePath"];

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
    selfCopy = 0;
  }

  else
  {
    self = [(PRPosterCustomTimeFontConfiguration *)self initWithFontPostScriptName:v6 extensionBundleRelativeFilePath:v8];
    selfCopy = self;
  }

  return selfCopy;
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