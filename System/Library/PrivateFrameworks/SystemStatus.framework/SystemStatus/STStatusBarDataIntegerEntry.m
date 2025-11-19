@interface STStatusBarDataIntegerEntry
+ (id)entryWithRawValue:(int64_t)a3 displayValue:(int64_t)a4 displayRawValue:(BOOL)a5;
- (STStatusBarDataIntegerEntry)initWithBSXPCCoder:(id)a3;
- (STStatusBarDataIntegerEntry)initWithCoder:(id)a3;
- (id)_equalsBuilderWithObject:(id)a3;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusBarDataIntegerEntry

- (id)succinctDescriptionBuilder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataIntegerEntry;
  v3 = [(STStatusBarDataEntry *)&v8 succinctDescriptionBuilder];
  v4 = [v3 appendInteger:-[STStatusBarDataIntegerEntry rawValue](self withName:{"rawValue"), @"rawValue"}];
  v5 = [v3 appendInteger:-[STStatusBarDataIntegerEntry displayValue](self withName:{"displayValue"), @"displayValue"}];
  v6 = [v3 appendBool:-[STStatusBarDataIntegerEntry displayRawValue](self withName:{"displayRawValue"), @"displayRawValue"}];

  return v3;
}

+ (id)entryWithRawValue:(int64_t)a3 displayValue:(int64_t)a4 displayRawValue:(BOOL)a5
{
  v8 = objc_alloc_init(a1);
  v8[2] = a3;
  v8[3] = a4;
  *(v8 + 9) = a5;

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataIntegerEntry;
  v4 = a3;
  [(STStatusBarDataEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:*&self->_displayRawValue forKey:{@"rawValue", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_rawValue forKey:@"displayValue"];
  [v4 encodeInteger:*(&self->super._enabled + 1) forKey:@"displayRawValue"];
}

- (STStatusBarDataIntegerEntry)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataIntegerEntry;
  v3 = a3;
  v4 = [(STStatusBarDataEntry *)&v7 initWithCoder:v3];
  *&v4->_displayRawValue = [v3 decodeIntegerForKey:{@"rawValue", v7.receiver, v7.super_class}];
  v4->_rawValue = [v3 decodeIntegerForKey:@"displayValue"];
  v5 = [v3 decodeIntegerForKey:@"displayRawValue"];

  *(&v4->super._enabled + 1) = v5 != 0;
  return v4;
}

- (id)_equalsBuilderWithObject:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = STStatusBarDataIntegerEntry;
  v5 = [(STStatusBarDataEntry *)&v23 _equalsBuilderWithObject:v4];
  v6 = v4;
  v7 = [(STStatusBarDataIntegerEntry *)self rawValue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __56__STStatusBarDataIntegerEntry__equalsBuilderWithObject___block_invoke;
  v21[3] = &unk_1E85DEAD0;
  v8 = v6;
  v22 = v8;
  v9 = [v5 appendInteger:v7 counterpart:v21];
  v10 = [(STStatusBarDataIntegerEntry *)self displayValue];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __56__STStatusBarDataIntegerEntry__equalsBuilderWithObject___block_invoke_2;
  v19[3] = &unk_1E85DEAD0;
  v11 = v8;
  v20 = v11;
  v12 = [v5 appendInteger:v10 counterpart:v19];
  v13 = [(STStatusBarDataIntegerEntry *)self displayRawValue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__STStatusBarDataIntegerEntry__equalsBuilderWithObject___block_invoke_3;
  v17[3] = &unk_1E85DDD50;
  v18 = v11;
  v14 = v11;
  v15 = [v5 appendBool:v13 counterpart:v17];

  return v5;
}

- (id)_hashBuilder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataIntegerEntry;
  v3 = [(STStatusBarDataEntry *)&v8 _hashBuilder];
  v4 = [v3 appendInteger:{-[STStatusBarDataIntegerEntry rawValue](self, "rawValue")}];
  v5 = [v3 appendInteger:{-[STStatusBarDataIntegerEntry displayValue](self, "displayValue")}];
  v6 = [v3 appendBool:{-[STStatusBarDataIntegerEntry displayRawValue](self, "displayRawValue")}];

  return v3;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataIntegerEntry;
  v4 = a3;
  [(STStatusBarDataEntry *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeInt64:*&self->_displayRawValue forKey:{@"rawValue", v5.receiver, v5.super_class}];
  [v4 encodeInt64:self->_rawValue forKey:@"displayValue"];
  [v4 encodeBool:*(&self->super._enabled + 1) forKey:@"displayRawValue"];
}

- (STStatusBarDataIntegerEntry)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = STStatusBarDataIntegerEntry;
  v5 = [(STStatusBarDataEntry *)&v7 initWithBSXPCCoder:v4];
  if (v5)
  {
    *&v5->_displayRawValue = [v4 decodeInt64ForKey:@"rawValue"];
    v5->_rawValue = [v4 decodeInt64ForKey:@"displayValue"];
    *(&v5->super._enabled + 1) = [v4 decodeBoolForKey:@"displayRawValue"];
  }

  return v5;
}

@end