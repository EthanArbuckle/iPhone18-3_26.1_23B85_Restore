@interface PUICustomFontConfiguration
- (BOOL)isEqual:(id)equal;
- (PUICustomFontConfiguration)initWithBSXPCCoder:(id)coder;
- (PUICustomFontConfiguration)initWithCoder:(id)coder;
- (PUICustomFontConfiguration)initWithFont:(id)font extensionBundle:(id)bundle;
- (PUICustomFontConfiguration)initWithFont:(id)font extensionBundleURL:(id)l;
- (PUICustomFontConfiguration)initWithFontPostScriptName:(id)name extensionBundleRelativeFilePath:(id)path;
- (id)PUIFontWithExtensionBundleURL:(id)l;
- (id)fontWithExtensionBundleURL:(id)l;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUICustomFontConfiguration

- (PUICustomFontConfiguration)initWithFontPostScriptName:(id)name extensionBundleRelativeFilePath:(id)path
{
  nameCopy = name;
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = PUICustomFontConfiguration;
  v8 = [(PUIFontConfiguration *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    fontPostScriptName = v8->_fontPostScriptName;
    v8->_fontPostScriptName = v9;

    v11 = [pathCopy copy];
    extensionBundleRelativeFilePath = v8->_extensionBundleRelativeFilePath;
    v8->_extensionBundleRelativeFilePath = v11;
  }

  return v8;
}

- (PUICustomFontConfiguration)initWithFont:(id)font extensionBundle:(id)bundle
{
  bundleCopy = bundle;
  fontCopy = font;
  pui_postScriptName = [fontCopy pui_postScriptName];
  v9 = [fontCopy pui_referencePathRelativeToBundle:bundleCopy];

  selfCopy = 0;
  if (pui_postScriptName && v9)
  {
    self = [(PUICustomFontConfiguration *)self initWithFontPostScriptName:pui_postScriptName extensionBundleRelativeFilePath:v9];
    selfCopy = self;
  }

  return selfCopy;
}

- (PUICustomFontConfiguration)initWithFont:(id)font extensionBundleURL:(id)l
{
  lCopy = l;
  fontCopy = font;
  pui_postScriptName = [fontCopy pui_postScriptName];
  v9 = [fontCopy pui_referencePathRelativeToDirectoryAtURL:lCopy];

  selfCopy = 0;
  if (pui_postScriptName && v9)
  {
    self = [(PUICustomFontConfiguration *)self initWithFontPostScriptName:pui_postScriptName extensionBundleRelativeFilePath:v9];
    selfCopy = self;
  }

  return selfCopy;
}

- (id)PUIFontWithExtensionBundleURL:(id)l
{
  lCopy = l;
  fontPostScriptName = [(PUICustomFontConfiguration *)self fontPostScriptName];
  extensionBundleRelativeFilePath = [(PUICustomFontConfiguration *)self extensionBundleRelativeFilePath];
  v7 = [MEMORY[0x1E69DB878] pui_UIFontWithPostScriptName:fontPostScriptName inBundleAtURL:lCopy relativePath:extensionBundleRelativeFilePath];

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

- (id)fontWithExtensionBundleURL:(id)l
{
  lCopy = l;
  fontPostScriptName = [(PUICustomFontConfiguration *)self fontPostScriptName];
  extensionBundleRelativeFilePath = [(PUICustomFontConfiguration *)self extensionBundleRelativeFilePath];
  v7 = extensionBundleRelativeFilePath;
  v8 = 0;
  if (fontPostScriptName && extensionBundleRelativeFilePath)
  {
    v8 = [MEMORY[0x1E69DB878] pui_UIFontWithPostScriptName:fontPostScriptName inBundleAtURL:lCopy relativePath:extensionBundleRelativeFilePath];
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
      fontPostScriptName = [(PUICustomFontConfiguration *)self fontPostScriptName];
      fontPostScriptName2 = [(PUICustomFontConfiguration *)v7 fontPostScriptName];
      v10 = BSEqualObjects();

      if (v10)
      {
        extensionBundleRelativeFilePath = [(PUICustomFontConfiguration *)self extensionBundleRelativeFilePath];
        extensionBundleRelativeFilePath2 = [(PUICustomFontConfiguration *)v7 extensionBundleRelativeFilePath];
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
  fontPostScriptName = [(PUICustomFontConfiguration *)self fontPostScriptName];
  v4 = [fontPostScriptName hash];
  extensionBundleRelativeFilePath = [(PUICustomFontConfiguration *)self extensionBundleRelativeFilePath];
  v6 = [extensionBundleRelativeFilePath hash];

  return v6 ^ v4;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  fontPostScriptName = [(PUICustomFontConfiguration *)self fontPostScriptName];
  [formatterCopy appendString:fontPostScriptName withName:@"fontPostScriptName"];

  extensionBundleRelativeFilePath = [(PUICustomFontConfiguration *)self extensionBundleRelativeFilePath];
  v6 = [formatterCopy appendObject:extensionBundleRelativeFilePath withName:@"extensionBundleRelativeFilePath"];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fontPostScriptName = [(PUICustomFontConfiguration *)self fontPostScriptName];
  [coderCopy encodeObject:fontPostScriptName forKey:@"fontPostScriptName"];

  extensionBundleRelativeFilePath = [(PUICustomFontConfiguration *)self extensionBundleRelativeFilePath];
  [coderCopy encodeObject:extensionBundleRelativeFilePath forKey:@"extensionBundleRelativeFilePath"];
}

- (PUICustomFontConfiguration)initWithCoder:(id)coder
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
    self = [(PUICustomFontConfiguration *)self initWithFontPostScriptName:v6 extensionBundleRelativeFilePath:v8];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  fontPostScriptName = [(PUICustomFontConfiguration *)self fontPostScriptName];
  [coderCopy encodeObject:fontPostScriptName forKey:@"fontPostScriptName"];

  extensionBundleRelativeFilePath = [(PUICustomFontConfiguration *)self extensionBundleRelativeFilePath];
  [coderCopy encodeObject:extensionBundleRelativeFilePath forKey:@"extensionBundleRelativeFilePath"];
}

- (PUICustomFontConfiguration)initWithBSXPCCoder:(id)coder
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
    self = [(PUICustomFontConfiguration *)self initWithFontPostScriptName:v6 extensionBundleRelativeFilePath:v8];
    selfCopy = self;
  }

  return selfCopy;
}

@end