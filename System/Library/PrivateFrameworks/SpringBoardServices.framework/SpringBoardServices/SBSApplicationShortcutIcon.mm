@interface SBSApplicationShortcutIcon
- (SBSApplicationShortcutIcon)init;
- (SBSApplicationShortcutIcon)initWithXPCDictionary:(id)dictionary;
- (id)_initForSubclass;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation SBSApplicationShortcutIcon

- (id)_initForSubclass
{
  v3.receiver = self;
  v3.super_class = SBSApplicationShortcutIcon;
  return [(SBSApplicationShortcutIcon *)&v3 init];
}

- (SBSApplicationShortcutIcon)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D920];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"%@ does not support initialization.", v6}];

  return [(SBSApplicationShortcutIcon *)self _initForSubclass];
}

- (SBSApplicationShortcutIcon)initWithXPCDictionary:(id)dictionary
{
  objc_opt_class();
  NSRequestConcreteImplementation();

  return [(SBSApplicationShortcutIcon *)self _initForSubclass];
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end