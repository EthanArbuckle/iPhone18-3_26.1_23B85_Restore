@interface PRSWidget
- (BOOL)isEqual:(id)a3;
- (PRSWidget)initWithBSXPCCoder:(id)a3;
- (PRSWidget)initWithCoder:(id)a3;
- (PRSWidget)initWithUniqueIdentifier:(id)a3 kind:(id)a4 extensionBundleIdentifier:(id)a5 containerBundleIdentifier:(id)a6 family:(unint64_t)a7 intent:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRSWidget

- (PRSWidget)initWithUniqueIdentifier:(id)a3 kind:(id)a4 extensionBundleIdentifier:(id)a5 containerBundleIdentifier:(id)a6 family:(unint64_t)a7 intent:(id)a8
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
    [PRSWidget initWithUniqueIdentifier:a2 kind:self extensionBundleIdentifier:? containerBundleIdentifier:? family:? intent:?];
    if (v16)
    {
      goto LABEL_3;
    }
  }

  [PRSWidget initWithUniqueIdentifier:a2 kind:self extensionBundleIdentifier:? containerBundleIdentifier:? family:? intent:?];
LABEL_3:
  v23.receiver = self;
  v23.super_class = PRSWidget;
  v20 = [(PRSGadget *)&v23 initWithUniqueIdentifier:v15 kind:v16 extensionBundleIdentifier:v17 containerBundleIdentifier:v18 intent:v19];
  v21 = v20;
  if (v20)
  {
    v20->_family = a7;
  }

  return v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PRSWidget;
  if ([(PRSGadget *)&v7 isEqual:v4])
  {
    v5 = [v4 family] == self->_family;
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
  v3.super_class = PRSWidget;
  return [(PRSGadget *)&v3 hash]+ self->_family;
}

- (PRSWidget)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PRSWidget;
  v5 = [(PRSGadget *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_family = [v4 decodeIntegerForKey:@"family"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PRSWidget;
  v4 = a3;
  [(PRSGadget *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_family forKey:{@"family", v5.receiver, v5.super_class}];
}

- (PRSWidget)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PRSWidget;
  v5 = [(PRSGadget *)&v7 initWithBSXPCCoder:v4];
  if (v5)
  {
    v5->_family = [v4 decodeUInt64ForKey:@"family"];
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PRSWidget;
  v4 = a3;
  [(PRSGadget *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeUInt64:self->_family forKey:{@"family", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PRSWidget;
  v4 = [(PRSGadget *)&v6 copyWithZone:a3];
  [v4 setFamily:self->_family];
  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v7.receiver = self;
  v7.super_class = PRSWidget;
  v4 = [(PRSGadget *)&v7 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [v4 appendInteger:self->_family withName:@"family"];

  return v4;
}

- (void)initWithUniqueIdentifier:(uint64_t)a1 kind:(uint64_t)a2 extensionBundleIdentifier:containerBundleIdentifier:family:intent:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRSWidget.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"uniqueIdentifier"}];
}

- (void)initWithUniqueIdentifier:(uint64_t)a1 kind:(uint64_t)a2 extensionBundleIdentifier:containerBundleIdentifier:family:intent:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRSWidget.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"kind"}];
}

@end