@interface SBSwitcherShelf
- (BOOL)isEqual:(id)a3;
- (SBSwitcherShelf)initWithBundleIdentifier:(id)a3 layoutRole:(int64_t)a4 displayMode:(unint64_t)a5;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBSwitcherShelf

- (SBSwitcherShelf)initWithBundleIdentifier:(id)a3 layoutRole:(int64_t)a4 displayMode:(unint64_t)a5
{
  v9 = a3;
  v16.receiver = self;
  v16.super_class = SBSwitcherShelf;
  v10 = [(SBSwitcherShelf *)&v16 init];
  if (v10)
  {
    if (!v9)
    {
      [SBSwitcherShelf initWithBundleIdentifier:a2 layoutRole:v10 displayMode:?];
    }

    v11 = [v9 copy];
    bundleIdentifier = v10->_bundleIdentifier;
    v10->_bundleIdentifier = v11;

    v10->_layoutRole = a4;
    v10->_displayMode = a5;
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%ld-%ld", v10->_bundleIdentifier, a4, a5];
    uniqueIdentifier = v10->_uniqueIdentifier;
    v10->_uniqueIdentifier = v13;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uniqueIdentifier = self->_uniqueIdentifier;
      v6 = [(SBSwitcherShelf *)v4 uniqueIdentifier];
      v7 = [(NSString *)uniqueIdentifier isEqualToString:v6];
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
  v2 = [(SBSwitcherShelf *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(SBSwitcherShelf *)self bundleIdentifier];
  v5 = [v3 appendObject:v4 withName:@"bundleIdentifier"];

  v6 = [(SBSwitcherShelf *)self uniqueIdentifier];
  v7 = [v3 appendObject:v6 withName:@"uniqueIdentifier"];

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

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSwitcherShelf *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (void)initWithBundleIdentifier:(uint64_t)a1 layoutRole:(uint64_t)a2 displayMode:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSwitcherShelf.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
}

@end