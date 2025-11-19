@interface STStatusBarDataStringEntry
+ (STStatusBarDataStringEntry)entryWithStringValue:(id)a3;
- (STStatusBarDataStringEntry)initWithBSXPCCoder:(id)a3;
- (STStatusBarDataStringEntry)initWithCoder:(id)a3;
- (id)_equalsBuilderWithObject:(id)a3;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusBarDataStringEntry

- (id)succinctDescriptionBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataStringEntry;
  v3 = [(STStatusBarDataEntry *)&v6 succinctDescriptionBuilder];
  v4 = [(STStatusBarDataStringEntry *)self stringValue];
  [v3 appendString:v4 withName:@"stringValue"];

  return v3;
}

+ (STStatusBarDataStringEntry)entryWithStringValue:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 copy];

  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataStringEntry;
  v4 = a3;
  [(STStatusBarDataEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_stringValue forKey:{@"stringValue", v5.receiver, v5.super_class}];
}

- (STStatusBarDataStringEntry)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataStringEntry;
  v3 = a3;
  v4 = [(STStatusBarDataEntry *)&v8 initWithCoder:v3];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"stringValue", v8.receiver, v8.super_class}];

  stringValue = v4->_stringValue;
  v4->_stringValue = v5;

  return v4;
}

- (id)_equalsBuilderWithObject:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STStatusBarDataStringEntry;
  v5 = [(STStatusBarDataEntry *)&v13 _equalsBuilderWithObject:v4];
  v6 = v4;
  v7 = [(STStatusBarDataStringEntry *)self stringValue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__STStatusBarDataStringEntry__equalsBuilderWithObject___block_invoke;
  v11[3] = &unk_1E85DDD28;
  v12 = v6;
  v8 = v6;
  v9 = [v5 appendString:v7 counterpart:v11];

  return v5;
}

- (id)_hashBuilder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataStringEntry;
  v3 = [(STStatusBarDataEntry *)&v7 _hashBuilder];
  v4 = [(STStatusBarDataStringEntry *)self stringValue];
  v5 = [v3 appendString:v4];

  return v3;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataStringEntry;
  v4 = a3;
  [(STStatusBarDataEntry *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeObject:self->_stringValue forKey:{@"stringValue", v5.receiver, v5.super_class}];
}

- (STStatusBarDataStringEntry)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STStatusBarDataStringEntry;
  v5 = [(STStatusBarDataEntry *)&v9 initWithBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;
  }

  return v5;
}

@end