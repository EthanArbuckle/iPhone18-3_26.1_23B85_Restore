@interface STStatusBarDataThermalEntry
+ (STStatusBarDataThermalEntry)entryWithColor:(int64_t)a3 isSunlightMode:(BOOL)a4;
- (STStatusBarDataThermalEntry)initWithBSXPCCoder:(id)a3;
- (STStatusBarDataThermalEntry)initWithCoder:(id)a3;
- (id)_equalsBuilderWithObject:(id)a3;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusBarDataThermalEntry

+ (STStatusBarDataThermalEntry)entryWithColor:(int64_t)a3 isSunlightMode:(BOOL)a4
{
  v6 = objc_alloc_init(a1);
  v6[2] = a3;
  *(v6 + 9) = a4;

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataThermalEntry;
  v4 = a3;
  [(STStatusBarDataEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:*&self->_sunlightMode forKey:{@"color", v5.receiver, v5.super_class}];
  [v4 encodeInteger:*(&self->super._enabled + 1) forKey:@"sunlightMode"];
}

- (STStatusBarDataThermalEntry)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataThermalEntry;
  v3 = a3;
  v4 = [(STStatusBarDataEntry *)&v7 initWithCoder:v3];
  *&v4->_sunlightMode = [v3 decodeIntegerForKey:{@"color", v7.receiver, v7.super_class}];
  v5 = [v3 decodeIntegerForKey:@"sunlightMode"];

  *(&v4->super._enabled + 1) = v5 != 0;
  return v4;
}

- (id)succinctDescriptionBuilder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataThermalEntry;
  v3 = [(STStatusBarDataEntry *)&v7 succinctDescriptionBuilder];
  v4 = _STStatusBarThermalColorDescription([(STStatusBarDataThermalEntry *)self color]);
  [v3 appendString:v4 withName:@"color"];

  v5 = [v3 appendBool:-[STStatusBarDataThermalEntry sunlightMode](self withName:{"sunlightMode"), @"sunlightMode"}];

  return v3;
}

- (id)_equalsBuilderWithObject:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = STStatusBarDataThermalEntry;
  v5 = [(STStatusBarDataEntry *)&v18 _equalsBuilderWithObject:v4];
  v6 = v4;
  v7 = [(STStatusBarDataThermalEntry *)self color];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__STStatusBarDataThermalEntry__equalsBuilderWithObject___block_invoke;
  v16[3] = &unk_1E85DEAD0;
  v8 = v6;
  v17 = v8;
  v9 = [v5 appendInteger:v7 counterpart:v16];
  v10 = [(STStatusBarDataThermalEntry *)self sunlightMode];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__STStatusBarDataThermalEntry__equalsBuilderWithObject___block_invoke_2;
  v14[3] = &unk_1E85DDD50;
  v15 = v8;
  v11 = v8;
  v12 = [v5 appendBool:v10 counterpart:v14];

  return v5;
}

- (id)_hashBuilder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataThermalEntry;
  v3 = [(STStatusBarDataEntry *)&v7 _hashBuilder];
  v4 = [v3 appendInteger:{-[STStatusBarDataThermalEntry color](self, "color")}];
  v5 = [v3 appendBool:{-[STStatusBarDataThermalEntry sunlightMode](self, "sunlightMode")}];

  return v3;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataThermalEntry;
  v4 = a3;
  [(STStatusBarDataEntry *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeInt64:*&self->_sunlightMode forKey:{@"color", v5.receiver, v5.super_class}];
  [v4 encodeInt64:*(&self->super._enabled + 1) forKey:@"sunlightMode"];
}

- (STStatusBarDataThermalEntry)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = STStatusBarDataThermalEntry;
  v5 = [(STStatusBarDataEntry *)&v7 initWithBSXPCCoder:v4];
  if (v5)
  {
    *&v5->_sunlightMode = [v4 decodeInt64ForKey:@"color"];
    *(&v5->super._enabled + 1) = [v4 decodeInt64ForKey:@"sunlightMode"] != 0;
  }

  return v5;
}

@end