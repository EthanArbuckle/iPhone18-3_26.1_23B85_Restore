@interface SBSHomeScreenItem
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SBSHomeScreenItem)initWithBSXPCCoder:(id)a3;
- (unint64_t)hash;
@end

@implementation SBSHomeScreenItem

- (SBSHomeScreenItem)initWithBSXPCCoder:(id)a3
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:self ofExpectedClass:objc_opt_class()];
  v6 = [(SBSHomeScreenItem *)self kind];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __29__SBSHomeScreenItem_isEqual___block_invoke;
  v10[3] = &unk_1E73607E8;
  v11 = v4;
  v7 = v4;
  v8 = [v5 appendUnsignedInteger:v6 counterpart:v10];
  LOBYTE(v6) = [v5 isEqual];

  return v6;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendUnsignedInteger:-[SBSHomeScreenItem kind](self withName:{"kind"), @"kind"}];
  v5 = [v3 build];

  return v5;
}

@end