@interface SBSApplicationShortcutTemplateIcon
- (BOOL)isEqual:(id)equal;
- (SBSApplicationShortcutTemplateIcon)initWithTemplateImageName:(id)name;
- (SBSApplicationShortcutTemplateIcon)initWithXPCDictionary:(id)dictionary;
- (id)_initForSubclass;
- (unint64_t)hash;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation SBSApplicationShortcutTemplateIcon

- (SBSApplicationShortcutTemplateIcon)initWithTemplateImageName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = SBSApplicationShortcutTemplateIcon;
  _initForSubclass = [(SBSApplicationShortcutIcon *)&v9 _initForSubclass];
  if (_initForSubclass)
  {
    v6 = [nameCopy copy];
    templateImageName = _initForSubclass->_templateImageName;
    _initForSubclass->_templateImageName = v6;
  }

  return _initForSubclass;
}

- (id)_initForSubclass
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D920];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"%s is not a valid initializer. You must call -[%@ initWithTemplateImageName:].", "-[SBSApplicationShortcutTemplateIcon _initForSubclass]", v6}];

  return [(SBSApplicationShortcutTemplateIcon *)self initWithTemplateImageName:0];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
    templateImageName = [(SBSApplicationShortcutTemplateIcon *)self templateImageName];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__SBSApplicationShortcutTemplateIcon_isEqual___block_invoke;
    v10[3] = &unk_1E7360810;
    v11 = equalCopy;
    v7 = [v5 appendObject:templateImageName counterpart:v10];

    v8 = [v5 isEqual];
  }

  return v8;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  templateImageName = [(SBSApplicationShortcutTemplateIcon *)self templateImageName];
  v5 = [builder appendObject:templateImageName];

  v6 = [builder hash];
  return v6;
}

- (SBSApplicationShortcutTemplateIcon)initWithXPCDictionary:(id)dictionary
{
  if (dictionary)
  {
    v4 = BSDeserializeStringFromXPCDictionaryWithKey();
    self = [(SBSApplicationShortcutTemplateIcon *)self initWithTemplateImageName:v4];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    templateImageName = [(SBSApplicationShortcutTemplateIcon *)self templateImageName];
    BSSerializeStringToXPCDictionaryWithKey();
  }
}

@end