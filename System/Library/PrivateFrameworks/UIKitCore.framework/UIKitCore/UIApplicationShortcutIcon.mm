@interface UIApplicationShortcutIcon
+ (UIApplicationShortcutIcon)iconWithCustomImage:(id)image isTemplate:(BOOL)template;
+ (UIApplicationShortcutIcon)iconWithSystemImageName:(NSString *)systemImageName;
+ (UIApplicationShortcutIcon)iconWithTemplateImageName:(NSString *)templateImageName;
+ (UIApplicationShortcutIcon)iconWithType:(UIApplicationShortcutIconType)type;
- (BOOL)isEqual:(id)equal;
- (UIApplicationShortcutIcon)initWithSBSApplicationShortcutIcon:(id)icon;
- (UIApplicationShortcutIcon)initWithXPCDictionary:(id)dictionary;
@end

@implementation UIApplicationShortcutIcon

+ (UIApplicationShortcutIcon)iconWithType:(UIApplicationShortcutIconType)type
{
  v4 = _UIApplicationShortcutIconSystemImageNameForType(type);
  v5 = [self iconWithSystemImageName:v4];

  return v5;
}

+ (UIApplicationShortcutIcon)iconWithSystemImageName:(NSString *)systemImageName
{
  v4 = systemImageName;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v5 = getSBSApplicationShortcutSystemIconClass_softClass;
  v14 = getSBSApplicationShortcutSystemIconClass_softClass;
  if (!getSBSApplicationShortcutSystemIconClass_softClass)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getSBSApplicationShortcutSystemIconClass_block_invoke;
    v10[3] = &unk_1E70F2F20;
    v10[4] = &v11;
    __getSBSApplicationShortcutSystemIconClass_block_invoke(v10);
    v5 = v12[3];
  }

  v6 = v5;
  _Block_object_dispose(&v11, 8);
  v7 = [[v5 alloc] initWithSystemImageName:v4];
  v8 = [[self alloc] initWithSBSApplicationShortcutIcon:v7];

  return v8;
}

+ (UIApplicationShortcutIcon)iconWithTemplateImageName:(NSString *)templateImageName
{
  v4 = templateImageName;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v5 = getSBSApplicationShortcutTemplateIconClass_softClass;
  v14 = getSBSApplicationShortcutTemplateIconClass_softClass;
  if (!getSBSApplicationShortcutTemplateIconClass_softClass)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getSBSApplicationShortcutTemplateIconClass_block_invoke;
    v10[3] = &unk_1E70F2F20;
    v10[4] = &v11;
    __getSBSApplicationShortcutTemplateIconClass_block_invoke(v10);
    v5 = v12[3];
  }

  v6 = v5;
  _Block_object_dispose(&v11, 8);
  v7 = [[v5 alloc] initWithTemplateImageName:v4];
  v8 = [[self alloc] initWithSBSApplicationShortcutIcon:v7];

  return v8;
}

+ (UIApplicationShortcutIcon)iconWithCustomImage:(id)image isTemplate:(BOOL)template
{
  templateCopy = template;
  imageCopy = image;
  if ([(UIImage *)imageCopy isSymbolImage])
  {
    v7 = _UIImageName(imageCopy);
    if (_UIIsSystemSymbolImage(imageCopy))
    {
      v8 = [self iconWithSystemImageName:v7];
LABEL_6:
      v9 = v8;
      goto LABEL_10;
    }

    if (v7)
    {
      v8 = [self iconWithTemplateImageName:v7];
      goto LABEL_6;
    }
  }

  v7 = UIImagePNGRepresentation(imageCopy);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v10 = getSBSApplicationShortcutCustomImageIconClass_softClass;
  v18 = getSBSApplicationShortcutCustomImageIconClass_softClass;
  if (!getSBSApplicationShortcutCustomImageIconClass_softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getSBSApplicationShortcutCustomImageIconClass_block_invoke;
    v14[3] = &unk_1E70F2F20;
    v14[4] = &v15;
    __getSBSApplicationShortcutCustomImageIconClass_block_invoke(v14);
    v10 = v16[3];
  }

  v11 = v10;
  _Block_object_dispose(&v15, 8);
  v12 = [[v10 alloc] initWithImageData:v7 dataType:0 isTemplate:templateCopy];
  v9 = [[self alloc] initWithSBSApplicationShortcutIcon:v12];

LABEL_10:

  return v9;
}

- (UIApplicationShortcutIcon)initWithSBSApplicationShortcutIcon:(id)icon
{
  iconCopy = icon;
  v9.receiver = self;
  v9.super_class = UIApplicationShortcutIcon;
  v6 = [(UIApplicationShortcutIcon *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sbsShortcutIcon, icon);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      sbsShortcutIcon = [(UIApplicationShortcutIcon *)v5 sbsShortcutIcon];
      if (sbsShortcutIcon == self->_sbsShortcutIcon)
      {
        v8 = 1;
      }

      else
      {
        sbsShortcutIcon2 = [(UIApplicationShortcutIcon *)v5 sbsShortcutIcon];
        v8 = [sbsShortcutIcon2 isEqual:self->_sbsShortcutIcon];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (UIApplicationShortcutIcon)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v6 = getSBSApplicationShortcutIconClass_softClass;
  v15 = getSBSApplicationShortcutIconClass_softClass;
  if (!getSBSApplicationShortcutIconClass_softClass)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getSBSApplicationShortcutIconClass_block_invoke;
    v11[3] = &unk_1E70F2F20;
    v11[4] = &v12;
    __getSBSApplicationShortcutIconClass_block_invoke(v11);
    v6 = v13[3];
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);
  if (objc_opt_isKindOfClass())
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(UIApplicationShortcutIcon *)self initWithSBSApplicationShortcutIcon:v8];

  return v9;
}

@end