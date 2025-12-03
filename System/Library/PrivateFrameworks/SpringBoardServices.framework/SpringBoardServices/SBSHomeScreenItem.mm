@interface SBSHomeScreenItem
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SBSHomeScreenItem)initWithBSXPCCoder:(id)coder;
- (unint64_t)hash;
@end

@implementation SBSHomeScreenItem

- (SBSHomeScreenItem)initWithBSXPCCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SBSHomeScreenItem;
  return [(SBSHomeScreenItem *)&v4 init];
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v4 = [v3 appendUnsignedInteger:{-[SBSHomeScreenItem kind](self, "kind")}];
  v5 = [v3 hash];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:self ofExpectedClass:objc_opt_class()];
  kind = [(SBSHomeScreenItem *)self kind];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __29__SBSHomeScreenItem_isEqual___block_invoke;
  v10[3] = &unk_1E73607E8;
  v11 = equalCopy;
  v7 = equalCopy;
  v8 = [v5 appendUnsignedInteger:kind counterpart:v10];
  LOBYTE(kind) = [v5 isEqual];

  return kind;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendUnsignedInteger:-[SBSHomeScreenItem kind](self withName:{"kind"), @"kind"}];
  build = [v3 build];

  return build;
}

@end