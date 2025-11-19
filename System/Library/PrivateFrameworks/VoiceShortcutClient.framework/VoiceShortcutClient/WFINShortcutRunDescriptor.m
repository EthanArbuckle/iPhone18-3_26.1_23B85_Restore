@interface WFINShortcutRunDescriptor
- (WFINShortcutRunDescriptor)initWithCoder:(id)a3;
- (WFINShortcutRunDescriptor)initWithShortcut:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFINShortcutRunDescriptor

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFINShortcutRunDescriptor *)self shortcut];
  [v4 encodeObject:v5 forKey:@"shortcut"];
}

- (WFINShortcutRunDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortcut"];

  v6 = [(WFINShortcutRunDescriptor *)self initWithShortcut:v5];
  return v6;
}

- (WFINShortcutRunDescriptor)initWithShortcut:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFWorkflowRunDescriptors.m" lineNumber:141 description:{@"Invalid parameter not satisfying: %@", @"shortcut"}];
  }

  v12.receiver = self;
  v12.super_class = WFINShortcutRunDescriptor;
  v7 = [(WFINShortcutRunDescriptor *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_shortcut, a3);
    v9 = v8;
  }

  return v8;
}

@end