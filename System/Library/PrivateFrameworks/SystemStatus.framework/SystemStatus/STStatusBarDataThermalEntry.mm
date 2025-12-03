@interface STStatusBarDataThermalEntry
+ (STStatusBarDataThermalEntry)entryWithColor:(int64_t)color isSunlightMode:(BOOL)mode;
- (STStatusBarDataThermalEntry)initWithBSXPCCoder:(id)coder;
- (STStatusBarDataThermalEntry)initWithCoder:(id)coder;
- (id)_equalsBuilderWithObject:(id)object;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusBarDataThermalEntry

+ (STStatusBarDataThermalEntry)entryWithColor:(int64_t)color isSunlightMode:(BOOL)mode
{
  v6 = objc_alloc_init(self);
  v6[2] = color;
  *(v6 + 9) = mode;

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataThermalEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:*&self->_sunlightMode forKey:{@"color", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:*(&self->super._enabled + 1) forKey:@"sunlightMode"];
}

- (STStatusBarDataThermalEntry)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataThermalEntry;
  coderCopy = coder;
  v4 = [(STStatusBarDataEntry *)&v7 initWithCoder:coderCopy];
  *&v4->_sunlightMode = [coderCopy decodeIntegerForKey:{@"color", v7.receiver, v7.super_class}];
  v5 = [coderCopy decodeIntegerForKey:@"sunlightMode"];

  *(&v4->super._enabled + 1) = v5 != 0;
  return v4;
}

- (id)succinctDescriptionBuilder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataThermalEntry;
  succinctDescriptionBuilder = [(STStatusBarDataEntry *)&v7 succinctDescriptionBuilder];
  v4 = _STStatusBarThermalColorDescription([(STStatusBarDataThermalEntry *)self color]);
  [succinctDescriptionBuilder appendString:v4 withName:@"color"];

  v5 = [succinctDescriptionBuilder appendBool:-[STStatusBarDataThermalEntry sunlightMode](self withName:{"sunlightMode"), @"sunlightMode"}];

  return succinctDescriptionBuilder;
}

- (id)_equalsBuilderWithObject:(id)object
{
  objectCopy = object;
  v18.receiver = self;
  v18.super_class = STStatusBarDataThermalEntry;
  v5 = [(STStatusBarDataEntry *)&v18 _equalsBuilderWithObject:objectCopy];
  v6 = objectCopy;
  color = [(STStatusBarDataThermalEntry *)self color];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__STStatusBarDataThermalEntry__equalsBuilderWithObject___block_invoke;
  v16[3] = &unk_1E85DEAD0;
  v8 = v6;
  v17 = v8;
  v9 = [v5 appendInteger:color counterpart:v16];
  sunlightMode = [(STStatusBarDataThermalEntry *)self sunlightMode];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__STStatusBarDataThermalEntry__equalsBuilderWithObject___block_invoke_2;
  v14[3] = &unk_1E85DDD50;
  v15 = v8;
  v11 = v8;
  v12 = [v5 appendBool:sunlightMode counterpart:v14];

  return v5;
}

- (id)_hashBuilder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataThermalEntry;
  _hashBuilder = [(STStatusBarDataEntry *)&v7 _hashBuilder];
  v4 = [_hashBuilder appendInteger:{-[STStatusBarDataThermalEntry color](self, "color")}];
  v5 = [_hashBuilder appendBool:{-[STStatusBarDataThermalEntry sunlightMode](self, "sunlightMode")}];

  return _hashBuilder;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataThermalEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:*&self->_sunlightMode forKey:{@"color", v5.receiver, v5.super_class}];
  [coderCopy encodeInt64:*(&self->super._enabled + 1) forKey:@"sunlightMode"];
}

- (STStatusBarDataThermalEntry)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = STStatusBarDataThermalEntry;
  v5 = [(STStatusBarDataEntry *)&v7 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    *&v5->_sunlightMode = [coderCopy decodeInt64ForKey:@"color"];
    *(&v5->super._enabled + 1) = [coderCopy decodeInt64ForKey:@"sunlightMode"] != 0;
  }

  return v5;
}

@end