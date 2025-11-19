@interface SBSApplicationShortcutSystemPrivateIcon
- (BOOL)isEqual:(id)a3;
- (SBSApplicationShortcutSystemPrivateIcon)initWithSystemImageName:(id)a3;
- (SBSApplicationShortcutSystemPrivateIcon)initWithXPCDictionary:(id)a3;
- (id)_initForSubclass;
- (unint64_t)hash;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation SBSApplicationShortcutSystemPrivateIcon

- (SBSApplicationShortcutSystemPrivateIcon)initWithSystemImageName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBSApplicationShortcutSystemPrivateIcon;
  v5 = [(SBSApplicationShortcutIcon *)&v9 _initForSubclass];
  if (v5)
  {
    v6 = [v4 copy];
    systemImageName = v5->_systemImageName;
    v5->_systemImageName = v6;
  }

  return v5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
    v6 = [(SBSApplicationShortcutSystemPrivateIcon *)self systemImageName];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__SBSApplicationShortcutSystemPrivateIcon_isEqual___block_invoke;
    v10[3] = &unk_1E7360810;
    v11 = v4;
    v7 = [v5 appendObject:v6 counterpart:v10];

    v8 = [v5 isEqual];
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(SBSApplicationShortcutSystemPrivateIcon *)self systemImageName];
  v3 = [v2 hash];

  return v3;
}

- (SBSApplicationShortcutSystemPrivateIcon)initWithXPCDictionary:(id)a3
{
  if (a3)
  {
    v4 = BSDeserializeStringFromXPCDictionaryWithKey();
    if (v4)
    {
      self = [(SBSApplicationShortcutSystemPrivateIcon *)self initWithSystemImageName:v4];
      v5 = self;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = [(SBSApplicationShortcutSystemPrivateIcon *)self systemImageName];
    if (v5)
    {
      BSSerializeStringToXPCDictionaryWithKey();
    }

    v4 = v6;
  }
}

@end