@interface SBSApplicationShortcutTemplateIcon
- (BOOL)isEqual:(id)a3;
- (SBSApplicationShortcutTemplateIcon)initWithTemplateImageName:(id)a3;
- (SBSApplicationShortcutTemplateIcon)initWithXPCDictionary:(id)a3;
- (id)_initForSubclass;
- (unint64_t)hash;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation SBSApplicationShortcutTemplateIcon

- (SBSApplicationShortcutTemplateIcon)initWithTemplateImageName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBSApplicationShortcutTemplateIcon;
  v5 = [(SBSApplicationShortcutIcon *)&v9 _initForSubclass];
  if (v5)
  {
    v6 = [v4 copy];
    templateImageName = v5->_templateImageName;
    v5->_templateImageName = v6;
  }

  return v5;
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
    v6 = [(SBSApplicationShortcutTemplateIcon *)self templateImageName];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__SBSApplicationShortcutTemplateIcon_isEqual___block_invoke;
    v10[3] = &unk_1E7360810;
    v11 = v4;
    v7 = [v5 appendObject:v6 counterpart:v10];

    v8 = [v5 isEqual];
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(SBSApplicationShortcutTemplateIcon *)self templateImageName];
  v5 = [v3 appendObject:v4];

  v6 = [v3 hash];
  return v6;
}

- (SBSApplicationShortcutTemplateIcon)initWithXPCDictionary:(id)a3
{
  if (a3)
  {
    v4 = BSDeserializeStringFromXPCDictionaryWithKey();
    self = [(SBSApplicationShortcutTemplateIcon *)self initWithTemplateImageName:v4];

    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SBSApplicationShortcutTemplateIcon *)self templateImageName];
    BSSerializeStringToXPCDictionaryWithKey();
  }
}

@end