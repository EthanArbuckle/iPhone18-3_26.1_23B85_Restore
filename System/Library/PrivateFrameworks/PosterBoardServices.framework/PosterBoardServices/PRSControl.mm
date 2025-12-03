@interface PRSControl
- (BOOL)isEqual:(id)equal;
- (PRSControl)initWithBSXPCCoder:(id)coder;
- (PRSControl)initWithCoder:(id)coder;
- (PRSControl)initWithUniqueIdentifier:(id)identifier kind:(id)kind extensionBundleIdentifier:(id)bundleIdentifier containerBundleIdentifier:(id)containerBundleIdentifier controlType:(unint64_t)type intent:(id)intent;
- (id)controlIdentity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRSControl

- (PRSControl)initWithUniqueIdentifier:(id)identifier kind:(id)kind extensionBundleIdentifier:(id)bundleIdentifier containerBundleIdentifier:(id)containerBundleIdentifier controlType:(unint64_t)type intent:(id)intent
{
  identifierCopy = identifier;
  kindCopy = kind;
  bundleIdentifierCopy = bundleIdentifier;
  containerBundleIdentifierCopy = containerBundleIdentifier;
  intentCopy = intent;
  if (identifierCopy)
  {
    if (kindCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRSControl initWithUniqueIdentifier:a2 kind:self extensionBundleIdentifier:? containerBundleIdentifier:? controlType:? intent:?];
    if (kindCopy)
    {
      goto LABEL_3;
    }
  }

  [PRSControl initWithUniqueIdentifier:a2 kind:self extensionBundleIdentifier:? containerBundleIdentifier:? controlType:? intent:?];
LABEL_3:
  v23.receiver = self;
  v23.super_class = PRSControl;
  v20 = [(PRSGadget *)&v23 initWithUniqueIdentifier:identifierCopy kind:kindCopy extensionBundleIdentifier:bundleIdentifierCopy containerBundleIdentifier:containerBundleIdentifierCopy intent:intentCopy];
  v21 = v20;
  if (v20)
  {
    v20->_controlType = type;
  }

  return v21;
}

- (id)controlIdentity
{
  v3 = objc_alloc(MEMORY[0x1E6994290]);
  extensionBundleIdentifier = [(PRSGadget *)self extensionBundleIdentifier];
  containerBundleIdentifier = [(PRSGadget *)self containerBundleIdentifier];
  v6 = [v3 initWithExtensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier deviceIdentifier:0];

  v7 = objc_alloc(MEMORY[0x1E6994260]);
  kind = [(PRSGadget *)self kind];
  intent = [(PRSGadget *)self intent];
  v10 = [v7 initWithExtensionIdentity:v6 kind:kind intent:intent];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = PRSControl;
  if ([(PRSGadget *)&v7 isEqual:equalCopy])
  {
    v5 = [equalCopy controlType] == self->_controlType;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = PRSControl;
  return [(PRSGadget *)&v3 hash]+ self->_controlType;
}

- (PRSControl)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PRSControl;
  v5 = [(PRSGadget *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_controlType = [coderCopy decodeIntegerForKey:@"controlType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PRSControl;
  coderCopy = coder;
  [(PRSGadget *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_controlType forKey:{@"controlType", v5.receiver, v5.super_class}];
}

- (PRSControl)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PRSControl;
  v5 = [(PRSGadget *)&v7 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_controlType = [coderCopy decodeUInt64ForKey:@"controlType"];
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PRSControl;
  coderCopy = coder;
  [(PRSGadget *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeUInt64:-[PRSControl controlType](self forKey:{"controlType", v5.receiver, v5.super_class), @"controlType"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PRSControl;
  v4 = [(PRSGadget *)&v6 copyWithZone:zone];
  [v4 setControlType:self->_controlType];
  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v7.receiver = self;
  v7.super_class = PRSControl;
  v4 = [(PRSGadget *)&v7 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = [v4 appendInteger:self->_controlType withName:@"controlType"];

  return v4;
}

- (void)initWithUniqueIdentifier:(uint64_t)a1 kind:(uint64_t)a2 extensionBundleIdentifier:containerBundleIdentifier:controlType:intent:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRSControl.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"uniqueIdentifier"}];
}

- (void)initWithUniqueIdentifier:(uint64_t)a1 kind:(uint64_t)a2 extensionBundleIdentifier:containerBundleIdentifier:controlType:intent:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRSControl.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"kind"}];
}

@end