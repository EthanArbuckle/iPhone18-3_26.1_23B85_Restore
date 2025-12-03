@interface PRSWidget
- (BOOL)isEqual:(id)equal;
- (PRSWidget)initWithBSXPCCoder:(id)coder;
- (PRSWidget)initWithCoder:(id)coder;
- (PRSWidget)initWithUniqueIdentifier:(id)identifier kind:(id)kind extensionBundleIdentifier:(id)bundleIdentifier containerBundleIdentifier:(id)containerBundleIdentifier family:(unint64_t)family intent:(id)intent;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRSWidget

- (PRSWidget)initWithUniqueIdentifier:(id)identifier kind:(id)kind extensionBundleIdentifier:(id)bundleIdentifier containerBundleIdentifier:(id)containerBundleIdentifier family:(unint64_t)family intent:(id)intent
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
    [PRSWidget initWithUniqueIdentifier:a2 kind:self extensionBundleIdentifier:? containerBundleIdentifier:? family:? intent:?];
    if (kindCopy)
    {
      goto LABEL_3;
    }
  }

  [PRSWidget initWithUniqueIdentifier:a2 kind:self extensionBundleIdentifier:? containerBundleIdentifier:? family:? intent:?];
LABEL_3:
  v23.receiver = self;
  v23.super_class = PRSWidget;
  v20 = [(PRSGadget *)&v23 initWithUniqueIdentifier:identifierCopy kind:kindCopy extensionBundleIdentifier:bundleIdentifierCopy containerBundleIdentifier:containerBundleIdentifierCopy intent:intentCopy];
  v21 = v20;
  if (v20)
  {
    v20->_family = family;
  }

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = PRSWidget;
  if ([(PRSGadget *)&v7 isEqual:equalCopy])
  {
    v5 = [equalCopy family] == self->_family;
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

- (PRSWidget)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PRSWidget;
  v5 = [(PRSGadget *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_family = [coderCopy decodeIntegerForKey:@"family"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PRSWidget;
  coderCopy = coder;
  [(PRSGadget *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_family forKey:{@"family", v5.receiver, v5.super_class}];
}

- (PRSWidget)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PRSWidget;
  v5 = [(PRSGadget *)&v7 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_family = [coderCopy decodeUInt64ForKey:@"family"];
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PRSWidget;
  coderCopy = coder;
  [(PRSGadget *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeUInt64:self->_family forKey:{@"family", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PRSWidget;
  v4 = [(PRSGadget *)&v6 copyWithZone:zone];
  [v4 setFamily:self->_family];
  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v7.receiver = self;
  v7.super_class = PRSWidget;
  v4 = [(PRSGadget *)&v7 descriptionBuilderWithMultilinePrefix:prefix];
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