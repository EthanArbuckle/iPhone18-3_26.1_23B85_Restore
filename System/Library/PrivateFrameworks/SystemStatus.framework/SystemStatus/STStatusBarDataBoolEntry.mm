@interface STStatusBarDataBoolEntry
+ (STStatusBarDataBoolEntry)entryWithBoolValue:(BOOL)a3;
- (STStatusBarDataBoolEntry)initWithBSXPCCoder:(id)a3;
- (STStatusBarDataBoolEntry)initWithCoder:(id)a3;
- (id)_equalsBuilderWithObject:(id)a3;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusBarDataBoolEntry

+ (STStatusBarDataBoolEntry)entryWithBoolValue:(BOOL)a3
{
  v4 = objc_alloc_init(a1);
  v4[9] = a3;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataBoolEntry;
  v4 = a3;
  [(STStatusBarDataEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:*(&self->super._enabled + 1) forKey:{@"BOOLValue", v5.receiver, v5.super_class}];
}

- (STStatusBarDataBoolEntry)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataBoolEntry;
  v3 = a3;
  v4 = [(STStatusBarDataEntry *)&v7 initWithCoder:v3];
  v5 = [v3 decodeBoolForKey:{@"BOOLValue", v7.receiver, v7.super_class}];

  *(&v4->super._enabled + 1) = v5;
  return v4;
}

- (id)succinctDescriptionBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataBoolEntry;
  v3 = [(STStatusBarDataEntry *)&v6 succinctDescriptionBuilder];
  v4 = [v3 appendBool:-[STStatusBarDataBoolEntry BOOLValue](self withName:{"BOOLValue"), @"BOOLValue"}];

  return v3;
}

- (id)_equalsBuilderWithObject:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STStatusBarDataBoolEntry;
  v5 = [(STStatusBarDataEntry *)&v13 _equalsBuilderWithObject:v4];
  v6 = v4;
  v7 = [(STStatusBarDataBoolEntry *)self BOOLValue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__STStatusBarDataBoolEntry__equalsBuilderWithObject___block_invoke;
  v11[3] = &unk_1E85DDD50;
  v12 = v6;
  v8 = v6;
  v9 = [v5 appendBool:v7 counterpart:v11];

  return v5;
}

- (id)_hashBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataBoolEntry;
  v3 = [(STStatusBarDataEntry *)&v6 _hashBuilder];
  v4 = [v3 appendBool:{-[STStatusBarDataBoolEntry BOOLValue](self, "BOOLValue")}];

  return v3;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataBoolEntry;
  v4 = a3;
  [(STStatusBarDataEntry *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeBool:*(&self->super._enabled + 1) forKey:{@"BOOLValue", v5.receiver, v5.super_class}];
}

- (STStatusBarDataBoolEntry)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = STStatusBarDataBoolEntry;
  v5 = [(STStatusBarDataEntry *)&v7 initWithBSXPCCoder:v4];
  if (v5)
  {
    *(&v5->super._enabled + 1) = [v4 decodeBoolForKey:@"BOOLValue"];
  }

  return v5;
}

@end