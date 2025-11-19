@interface STStatusBarDataQuietModeEntry
- (STStatusBarDataQuietModeEntry)initWithBSXPCCoder:(id)a3;
- (STStatusBarDataQuietModeEntry)initWithCoder:(id)a3;
- (id)_equalsBuilderWithObject:(id)a3;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusBarDataQuietModeEntry

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataQuietModeEntry;
  v4 = a3;
  [(STStatusBarDataBoolImageEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_focusName forKey:{@"focusName", v5.receiver, v5.super_class}];
}

- (STStatusBarDataQuietModeEntry)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataQuietModeEntry;
  v3 = a3;
  v4 = [(STStatusBarDataBoolImageEntry *)&v8 initWithCoder:v3];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"focusName", v8.receiver, v8.super_class}];

  focusName = v4->_focusName;
  v4->_focusName = v5;

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataQuietModeEntry;
  v3 = [(STStatusBarDataBoolImageEntry *)&v6 succinctDescriptionBuilder];
  v4 = [(STStatusBarDataQuietModeEntry *)self focusName];
  [v3 appendString:v4 withName:@"focusName"];

  return v3;
}

- (id)_equalsBuilderWithObject:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STStatusBarDataQuietModeEntry;
  v5 = [(STStatusBarDataBoolImageEntry *)&v13 _equalsBuilderWithObject:v4];
  v6 = v4;
  v7 = [(STStatusBarDataQuietModeEntry *)self focusName];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__STStatusBarDataQuietModeEntry__equalsBuilderWithObject___block_invoke;
  v11[3] = &unk_1E85DDD28;
  v12 = v6;
  v8 = v6;
  v9 = [v5 appendString:v7 counterpart:v11];

  return v5;
}

- (id)_hashBuilder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataQuietModeEntry;
  v3 = [(STStatusBarDataBoolImageEntry *)&v7 _hashBuilder];
  v4 = [(STStatusBarDataQuietModeEntry *)self focusName];
  v5 = [v3 appendString:v4];

  return v3;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataQuietModeEntry;
  v4 = a3;
  [(STStatusBarDataBoolImageEntry *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeObject:self->_focusName forKey:{@"focusName", v5.receiver, v5.super_class}];
}

- (STStatusBarDataQuietModeEntry)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STStatusBarDataQuietModeEntry;
  v5 = [(STStatusBarDataBoolImageEntry *)&v9 initWithBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeStringForKey:@"focusName"];
    focusName = v5->_focusName;
    v5->_focusName = v6;
  }

  return v5;
}

@end