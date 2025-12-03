@interface STStatusBarDataBoolEntry
+ (STStatusBarDataBoolEntry)entryWithBoolValue:(BOOL)value;
- (STStatusBarDataBoolEntry)initWithBSXPCCoder:(id)coder;
- (STStatusBarDataBoolEntry)initWithCoder:(id)coder;
- (id)_equalsBuilderWithObject:(id)object;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusBarDataBoolEntry

+ (STStatusBarDataBoolEntry)entryWithBoolValue:(BOOL)value
{
  v4 = objc_alloc_init(self);
  v4[9] = value;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataBoolEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:*(&self->super._enabled + 1) forKey:{@"BOOLValue", v5.receiver, v5.super_class}];
}

- (STStatusBarDataBoolEntry)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataBoolEntry;
  coderCopy = coder;
  v4 = [(STStatusBarDataEntry *)&v7 initWithCoder:coderCopy];
  v5 = [coderCopy decodeBoolForKey:{@"BOOLValue", v7.receiver, v7.super_class}];

  *(&v4->super._enabled + 1) = v5;
  return v4;
}

- (id)succinctDescriptionBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataBoolEntry;
  succinctDescriptionBuilder = [(STStatusBarDataEntry *)&v6 succinctDescriptionBuilder];
  v4 = [succinctDescriptionBuilder appendBool:-[STStatusBarDataBoolEntry BOOLValue](self withName:{"BOOLValue"), @"BOOLValue"}];

  return succinctDescriptionBuilder;
}

- (id)_equalsBuilderWithObject:(id)object
{
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = STStatusBarDataBoolEntry;
  v5 = [(STStatusBarDataEntry *)&v13 _equalsBuilderWithObject:objectCopy];
  v6 = objectCopy;
  bOOLValue = [(STStatusBarDataBoolEntry *)self BOOLValue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__STStatusBarDataBoolEntry__equalsBuilderWithObject___block_invoke;
  v11[3] = &unk_1E85DDD50;
  v12 = v6;
  v8 = v6;
  v9 = [v5 appendBool:bOOLValue counterpart:v11];

  return v5;
}

- (id)_hashBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataBoolEntry;
  _hashBuilder = [(STStatusBarDataEntry *)&v6 _hashBuilder];
  v4 = [_hashBuilder appendBool:{-[STStatusBarDataBoolEntry BOOLValue](self, "BOOLValue")}];

  return _hashBuilder;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataBoolEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeBool:*(&self->super._enabled + 1) forKey:{@"BOOLValue", v5.receiver, v5.super_class}];
}

- (STStatusBarDataBoolEntry)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = STStatusBarDataBoolEntry;
  v5 = [(STStatusBarDataEntry *)&v7 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    *(&v5->super._enabled + 1) = [coderCopy decodeBoolForKey:@"BOOLValue"];
  }

  return v5;
}

@end