@interface SBSwitcherShelf
- (BOOL)isEqual:(id)equal;
- (SBSwitcherShelf)initWithBundleIdentifier:(id)identifier layoutRole:(int64_t)role displayMode:(unint64_t)mode;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBSwitcherShelf

- (SBSwitcherShelf)initWithBundleIdentifier:(id)identifier layoutRole:(int64_t)role displayMode:(unint64_t)mode
{
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = SBSwitcherShelf;
  v10 = [(SBSwitcherShelf *)&v16 init];
  if (v10)
  {
    if (!identifierCopy)
    {
      [SBSwitcherShelf initWithBundleIdentifier:a2 layoutRole:v10 displayMode:?];
    }

    v11 = [identifierCopy copy];
    bundleIdentifier = v10->_bundleIdentifier;
    v10->_bundleIdentifier = v11;

    v10->_layoutRole = role;
    v10->_displayMode = mode;
    mode = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%ld-%ld", v10->_bundleIdentifier, role, mode];
    uniqueIdentifier = v10->_uniqueIdentifier;
    v10->_uniqueIdentifier = mode;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uniqueIdentifier = self->_uniqueIdentifier;
      uniqueIdentifier = [(SBSwitcherShelf *)equalCopy uniqueIdentifier];
      v7 = [(NSString *)uniqueIdentifier isEqualToString:uniqueIdentifier];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSwitcherShelf *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  bundleIdentifier = [(SBSwitcherShelf *)self bundleIdentifier];
  v5 = [v3 appendObject:bundleIdentifier withName:@"bundleIdentifier"];

  uniqueIdentifier = [(SBSwitcherShelf *)self uniqueIdentifier];
  v7 = [v3 appendObject:uniqueIdentifier withName:@"uniqueIdentifier"];

  v8 = SBLayoutRoleDescription([(SBSwitcherShelf *)self layoutRole]);
  v9 = [v3 appendObject:v8 withName:@"layoutRole"];

  if ([(SBSwitcherShelf *)self displayMode])
  {
    v10 = @"scenes";
  }

  else
  {
    v10 = @"spaces";
  }

  v11 = [v3 appendObject:v10 withName:@"displayMode"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSwitcherShelf *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (void)initWithBundleIdentifier:(uint64_t)a1 layoutRole:(uint64_t)a2 displayMode:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSwitcherShelf.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
}

@end