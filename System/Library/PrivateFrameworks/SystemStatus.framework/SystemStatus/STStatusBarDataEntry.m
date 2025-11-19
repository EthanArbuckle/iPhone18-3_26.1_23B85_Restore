@interface STStatusBarDataEntry
+ (id)disabledEntry;
+ (id)entry;
- (BOOL)isEqual:(id)a3;
- (STStatusBarDataEntry)init;
- (STStatusBarDataEntry)initWithBSXPCCoder:(id)a3;
- (STStatusBarDataEntry)initWithCoder:(id)a3;
- (id)_equalsBuilderWithObject:(id)a3;
- (id)_hashBuilder;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
@end

@implementation STStatusBarDataEntry

- (STStatusBarDataEntry)init
{
  v3.receiver = self;
  v3.super_class = STStatusBarDataEntry;
  result = [(STStatusBarDataEntry *)&v3 init];
  result->_enabled = 1;
  return result;
}

+ (id)disabledEntry
{
  v2 = objc_alloc_init(a1);
  v2[8] = 0;

  return v2;
}

+ (id)entry
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendBool:-[STStatusBarDataEntry isEnabled](self withName:{"isEnabled"), @"enabled"}];

  return v3;
}

- (STStatusBarDataEntry)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataEntry;
  v3 = a3;
  v4 = [(STStatusBarDataEntry *)&v7 init];
  v5 = [v3 decodeBoolForKey:{@"enabled", v7.receiver, v7.super_class}];

  v4->_enabled = v5;
  return v4;
}

- (STStatusBarDataEntry)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = STStatusBarDataEntry;
  v5 = [(STStatusBarDataEntry *)&v7 init];
  if (v5)
  {
    v5->_enabled = [v4 decodeBoolForKey:@"enabled"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v4 isEnabled] & 1) != 0 || -[STStatusBarDataEntry isEnabled](self, "isEnabled"))
  {
    v5 = [(STStatusBarDataEntry *)self _equalsBuilderWithObject:v4];
    v6 = [v5 isEqual];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [(STStatusBarDataEntry *)self _hashBuilder];
  v3 = [v2 hash];

  return v3;
}

- (id)_equalsBuilderWithObject:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STStatusBarDataEntry *)self isEnabled];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__STStatusBarDataEntry__equalsBuilderWithObject___block_invoke;
  v10[3] = &unk_1E85DDD50;
  v11 = v4;
  v7 = v4;
  v8 = [v5 appendBool:v6 counterpart:v10];

  return v5;
}

- (id)_hashBuilder
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendBool:{-[STStatusBarDataEntry isEnabled](self, "isEnabled")}];

  return v3;
}

- (id)succinctDescription
{
  v2 = [(STStatusBarDataEntry *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STStatusBarDataEntry *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STStatusBarDataEntry *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

@end