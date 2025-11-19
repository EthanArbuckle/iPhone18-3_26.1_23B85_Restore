@interface SBSApplicationShortcutSystemIcon
- (BOOL)isEqual:(id)a3;
- (SBSApplicationShortcutSystemIcon)initWithSystemImageName:(id)a3;
- (SBSApplicationShortcutSystemIcon)initWithType:(int64_t)a3;
- (SBSApplicationShortcutSystemIcon)initWithXPCDictionary:(id)a3;
- (id)_initForSubclass;
- (unint64_t)hash;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation SBSApplicationShortcutSystemIcon

- (SBSApplicationShortcutSystemIcon)initWithType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SBSApplicationShortcutSystemIcon;
  result = [(SBSApplicationShortcutIcon *)&v5 _initForSubclass];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (SBSApplicationShortcutSystemIcon)initWithSystemImageName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBSApplicationShortcutSystemIcon;
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
  [v3 raise:v4 format:{@"%s is not a valid initializer. You must call -[%@ initWithType:].", "-[SBSApplicationShortcutSystemIcon _initForSubclass]", v6}];

  return [(SBSApplicationShortcutSystemIcon *)self initWithSystemImageName:&stru_1F058B7C8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SBSApplicationShortcutSystemIcon type](self, "type")}];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __44__SBSApplicationShortcutSystemIcon_isEqual___block_invoke;
    v18[3] = &unk_1E7360C10;
    v7 = v4;
    v19 = v7;
    v8 = [v5 appendObject:v6 counterpart:v18];

    v9 = [(SBSApplicationShortcutSystemIcon *)self systemImageName];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __44__SBSApplicationShortcutSystemIcon_isEqual___block_invoke_2;
    v16 = &unk_1E7360810;
    v17 = v7;
    v10 = [v5 appendObject:v9 counterpart:&v13];

    v11 = [v5 isEqual];
  }

  return v11;
}

uint64_t __44__SBSApplicationShortcutSystemIcon_isEqual___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = [*(a1 + 32) type];

  return [v1 numberWithInteger:v2];
}

- (unint64_t)hash
{
  v3 = [(SBSApplicationShortcutSystemIcon *)self type];
  v4 = [(SBSApplicationShortcutSystemIcon *)self systemImageName];
  v5 = [v4 hash];

  return v5 + v3;
}

- (SBSApplicationShortcutSystemIcon)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = BSDeserializeStringFromXPCDictionaryWithKey();
    if (v5)
    {
      v6 = [(SBSApplicationShortcutSystemIcon *)self initWithSystemImageName:v5];
    }

    else
    {
      v6 = [(SBSApplicationShortcutSystemIcon *)self initWithType:xpc_dictionary_get_int64(v4, "systemIconType")];
    }

    self = v6;

    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    xdict = v4;
    v5 = [(SBSApplicationShortcutSystemIcon *)self systemImageName];
    if (v5)
    {
      BSSerializeStringToXPCDictionaryWithKey();
    }

    else
    {
      xpc_dictionary_set_int64(xdict, "systemIconType", [(SBSApplicationShortcutSystemIcon *)self type]);
    }

    v4 = xdict;
  }
}

@end