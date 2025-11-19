@interface STStatusBarDataBoolImageEntry
+ (id)entryWithImageNamed:(id)a3 BOOLValue:(BOOL)a4;
- (STStatusBarDataBoolImageEntry)initWithBSXPCCoder:(id)a3;
- (STStatusBarDataBoolImageEntry)initWithCoder:(id)a3;
- (id)_equalsBuilderWithObject:(id)a3;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusBarDataBoolImageEntry

+ (id)entryWithImageNamed:(id)a3 BOOLValue:(BOOL)a4
{
  result = [a1 entryWithImageNamed:a3];
  *(result + 24) = a4;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataBoolImageEntry;
  v4 = a3;
  [(STStatusBarDataImageEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_BOOLValue forKey:{@"BOOLValue", v5.receiver, v5.super_class}];
}

- (STStatusBarDataBoolImageEntry)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataBoolImageEntry;
  v3 = a3;
  v4 = [(STStatusBarDataImageEntry *)&v7 initWithCoder:v3];
  v5 = [v3 decodeBoolForKey:{@"BOOLValue", v7.receiver, v7.super_class}];

  v4->_BOOLValue = v5;
  return v4;
}

- (id)succinctDescriptionBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataBoolImageEntry;
  v3 = [(STStatusBarDataImageEntry *)&v6 succinctDescriptionBuilder];
  v4 = [v3 appendBool:-[STStatusBarDataBoolImageEntry BOOLValue](self withName:{"BOOLValue"), @"BOOLValue"}];

  return v3;
}

- (id)_equalsBuilderWithObject:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STStatusBarDataBoolImageEntry;
  v5 = [(STStatusBarDataImageEntry *)&v13 _equalsBuilderWithObject:v4];
  v6 = v4;
  v7 = [(STStatusBarDataBoolImageEntry *)self BOOLValue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__STStatusBarDataBoolImageEntry__equalsBuilderWithObject___block_invoke;
  v11[3] = &unk_1E85DDD50;
  v12 = v6;
  v8 = v6;
  v9 = [v5 appendBool:v7 counterpart:v11];

  return v5;
}

- (id)_hashBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataBoolImageEntry;
  v3 = [(STStatusBarDataImageEntry *)&v6 _hashBuilder];
  v4 = [v3 appendBool:{-[STStatusBarDataBoolImageEntry BOOLValue](self, "BOOLValue")}];

  return v3;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataBoolImageEntry;
  v4 = a3;
  [(STStatusBarDataImageEntry *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeBool:self->_BOOLValue forKey:{@"BOOLValue", v5.receiver, v5.super_class}];
}

- (STStatusBarDataBoolImageEntry)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = STStatusBarDataBoolImageEntry;
  v5 = [(STStatusBarDataImageEntry *)&v7 initWithBSXPCCoder:v4];
  if (v5)
  {
    v5->_BOOLValue = [v4 decodeBoolForKey:@"BOOLValue"];
  }

  return v5;
}

@end