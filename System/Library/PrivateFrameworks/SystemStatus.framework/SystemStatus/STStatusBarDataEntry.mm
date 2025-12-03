@interface STStatusBarDataEntry
+ (id)disabledEntry;
+ (id)entry;
- (BOOL)isEqual:(id)equal;
- (STStatusBarDataEntry)init;
- (STStatusBarDataEntry)initWithBSXPCCoder:(id)coder;
- (STStatusBarDataEntry)initWithCoder:(id)coder;
- (id)_equalsBuilderWithObject:(id)object;
- (id)_hashBuilder;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
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
  v2 = objc_alloc_init(self);
  v2[8] = 0;

  return v2;
}

+ (id)entry
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendBool:-[STStatusBarDataEntry isEnabled](self withName:{"isEnabled"), @"enabled"}];

  return v3;
}

- (STStatusBarDataEntry)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataEntry;
  coderCopy = coder;
  v4 = [(STStatusBarDataEntry *)&v7 init];
  v5 = [coderCopy decodeBoolForKey:{@"enabled", v7.receiver, v7.super_class}];

  v4->_enabled = v5;
  return v4;
}

- (STStatusBarDataEntry)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = STStatusBarDataEntry;
  v5 = [(STStatusBarDataEntry *)&v7 init];
  if (v5)
  {
    v5->_enabled = [coderCopy decodeBoolForKey:@"enabled"];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([equalCopy isEnabled] & 1) != 0 || -[STStatusBarDataEntry isEnabled](self, "isEnabled"))
  {
    v5 = [(STStatusBarDataEntry *)self _equalsBuilderWithObject:equalCopy];
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
  _hashBuilder = [(STStatusBarDataEntry *)self _hashBuilder];
  v3 = [_hashBuilder hash];

  return v3;
}

- (id)_equalsBuilderWithObject:(id)object
{
  objectCopy = object;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:objectCopy ofExpectedClass:objc_opt_class()];
  isEnabled = [(STStatusBarDataEntry *)self isEnabled];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__STStatusBarDataEntry__equalsBuilderWithObject___block_invoke;
  v10[3] = &unk_1E85DDD50;
  v11 = objectCopy;
  v7 = objectCopy;
  v8 = [v5 appendBool:isEnabled counterpart:v10];

  return v5;
}

- (id)_hashBuilder
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendBool:{-[STStatusBarDataEntry isEnabled](self, "isEnabled")}];

  return builder;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STStatusBarDataEntry *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusBarDataEntry *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusBarDataEntry *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

@end