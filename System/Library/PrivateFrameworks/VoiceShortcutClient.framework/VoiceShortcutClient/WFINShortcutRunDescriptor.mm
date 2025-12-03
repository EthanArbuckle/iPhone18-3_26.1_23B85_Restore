@interface WFINShortcutRunDescriptor
- (WFINShortcutRunDescriptor)initWithCoder:(id)coder;
- (WFINShortcutRunDescriptor)initWithShortcut:(id)shortcut;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFINShortcutRunDescriptor

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  shortcut = [(WFINShortcutRunDescriptor *)self shortcut];
  [coderCopy encodeObject:shortcut forKey:@"shortcut"];
}

- (WFINShortcutRunDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortcut"];

  v6 = [(WFINShortcutRunDescriptor *)self initWithShortcut:v5];
  return v6;
}

- (WFINShortcutRunDescriptor)initWithShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  if (!shortcutCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWorkflowRunDescriptors.m" lineNumber:141 description:{@"Invalid parameter not satisfying: %@", @"shortcut"}];
  }

  v12.receiver = self;
  v12.super_class = WFINShortcutRunDescriptor;
  v7 = [(WFINShortcutRunDescriptor *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_shortcut, shortcut);
    v9 = v8;
  }

  return v8;
}

@end