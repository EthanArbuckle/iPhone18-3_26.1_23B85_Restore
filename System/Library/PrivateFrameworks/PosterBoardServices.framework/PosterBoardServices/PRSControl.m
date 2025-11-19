@interface PRSControl
- (BOOL)isEqual:(id)a3;
- (PRSControl)initWithBSXPCCoder:(id)a3;
- (PRSControl)initWithCoder:(id)a3;
- (PRSControl)initWithUniqueIdentifier:(id)a3 kind:(id)a4 extensionBundleIdentifier:(id)a5 containerBundleIdentifier:(id)a6 controlType:(unint64_t)a7 intent:(id)a8;
- (id)controlIdentity;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRSControl

- (PRSControl)initWithUniqueIdentifier:(id)a3 kind:(id)a4 extensionBundleIdentifier:(id)a5 containerBundleIdentifier:(id)a6 controlType:(unint64_t)a7 intent:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRSControl initWithUniqueIdentifier:a2 kind:self extensionBundleIdentifier:? containerBundleIdentifier:? controlType:? intent:?];
    if (v16)
    {
      goto LABEL_3;
    }
  }

  [PRSControl initWithUniqueIdentifier:a2 kind:self extensionBundleIdentifier:? containerBundleIdentifier:? controlType:? intent:?];
LABEL_3:
  v23.receiver = self;
  v23.super_class = PRSControl;
  v20 = [(PRSGadget *)&v23 initWithUniqueIdentifier:v15 kind:v16 extensionBundleIdentifier:v17 containerBundleIdentifier:v18 intent:v19];
  v21 = v20;
  if (v20)
  {
    v20->_controlType = a7;
  }

  return v21;
}

- (id)controlIdentity
{
  v3 = objc_alloc(MEMORY[0x1E6994290]);
  v4 = [(PRSGadget *)self extensionBundleIdentifier];
  v5 = [(PRSGadget *)self containerBundleIdentifier];
  v6 = [v3 initWithExtensionBundleIdentifier:v4 containerBundleIdentifier:v5 deviceIdentifier:0];

  v7 = objc_alloc(MEMORY[0x1E6994260]);
  v8 = [(PRSGadget *)self kind];
  v9 = [(PRSGadget *)self intent];
  v10 = [v7 initWithExtensionIdentity:v6 kind:v8 intent:v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PRSControl;
  if ([(PRSGadget *)&v7 isEqual:v4])
  {
    v5 = [v4 controlType] == self->_controlType;
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

- (PRSControl)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PRSControl;
  v5 = [(PRSGadget *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_controlType = [v4 decodeIntegerForKey:@"controlType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PRSControl;
  v4 = a3;
  [(PRSGadget *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_controlType forKey:{@"controlType", v5.receiver, v5.super_class}];
}

- (PRSControl)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PRSControl;
  v5 = [(PRSGadget *)&v7 initWithBSXPCCoder:v4];
  if (v5)
  {
    v5->_controlType = [v4 decodeUInt64ForKey:@"controlType"];
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PRSControl;
  v4 = a3;
  [(PRSGadget *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeUInt64:-[PRSControl controlType](self forKey:{"controlType", v5.receiver, v5.super_class), @"controlType"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PRSControl;
  v4 = [(PRSGadget *)&v6 copyWithZone:a3];
  [v4 setControlType:self->_controlType];
  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v7.receiver = self;
  v7.super_class = PRSControl;
  v4 = [(PRSGadget *)&v7 descriptionBuilderWithMultilinePrefix:a3];
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