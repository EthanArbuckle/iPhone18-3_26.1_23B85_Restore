@interface SBSApplicationShortcutSystemPrivateIcon
- (BOOL)isEqual:(id)equal;
- (SBSApplicationShortcutSystemPrivateIcon)initWithSystemImageName:(id)name;
- (SBSApplicationShortcutSystemPrivateIcon)initWithXPCDictionary:(id)dictionary;
- (id)_initForSubclass;
- (unint64_t)hash;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation SBSApplicationShortcutSystemPrivateIcon

- (SBSApplicationShortcutSystemPrivateIcon)initWithSystemImageName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = SBSApplicationShortcutSystemPrivateIcon;
  _initForSubclass = [(SBSApplicationShortcutIcon *)&v9 _initForSubclass];
  if (_initForSubclass)
  {
    v6 = [nameCopy copy];
    systemImageName = _initForSubclass->_systemImageName;
    _initForSubclass->_systemImageName = v6;
  }

  return _initForSubclass;
}

- (id)_initForSubclass
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D920];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"%s is not a valid initializer. You must call -[%@ initWithSystemImageName:].", "-[SBSApplicationShortcutSystemPrivateIcon _initForSubclass]", v6}];

  return [(SBSApplicationShortcutSystemPrivateIcon *)self initWithSystemImageName:&stru_1F058B7C8];
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
    systemImageName = [(SBSApplicationShortcutSystemPrivateIcon *)self systemImageName];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__SBSApplicationShortcutSystemPrivateIcon_isEqual___block_invoke;
    v10[3] = &unk_1E7360810;
    v11 = equalCopy;
    v7 = [v5 appendObject:systemImageName counterpart:v10];

    v8 = [v5 isEqual];
  }

  return v8;
}

- (unint64_t)hash
{
  systemImageName = [(SBSApplicationShortcutSystemPrivateIcon *)self systemImageName];
  v3 = [systemImageName hash];

  return v3;
}

- (SBSApplicationShortcutSystemPrivateIcon)initWithXPCDictionary:(id)dictionary
{
  if (dictionary)
  {
    v4 = BSDeserializeStringFromXPCDictionaryWithKey();
    if (v4)
    {
      self = [(SBSApplicationShortcutSystemPrivateIcon *)self initWithSystemImageName:v4];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v6 = dictionaryCopy;
    systemImageName = [(SBSApplicationShortcutSystemPrivateIcon *)self systemImageName];
    if (systemImageName)
    {
      BSSerializeStringToXPCDictionaryWithKey();
    }

    dictionaryCopy = v6;
  }
}

@end