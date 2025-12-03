@interface STStatusBarDataIntegerEntry
+ (id)entryWithRawValue:(int64_t)value displayValue:(int64_t)displayValue displayRawValue:(BOOL)rawValue;
- (STStatusBarDataIntegerEntry)initWithBSXPCCoder:(id)coder;
- (STStatusBarDataIntegerEntry)initWithCoder:(id)coder;
- (id)_equalsBuilderWithObject:(id)object;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusBarDataIntegerEntry

- (id)succinctDescriptionBuilder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataIntegerEntry;
  succinctDescriptionBuilder = [(STStatusBarDataEntry *)&v8 succinctDescriptionBuilder];
  v4 = [succinctDescriptionBuilder appendInteger:-[STStatusBarDataIntegerEntry rawValue](self withName:{"rawValue"), @"rawValue"}];
  v5 = [succinctDescriptionBuilder appendInteger:-[STStatusBarDataIntegerEntry displayValue](self withName:{"displayValue"), @"displayValue"}];
  v6 = [succinctDescriptionBuilder appendBool:-[STStatusBarDataIntegerEntry displayRawValue](self withName:{"displayRawValue"), @"displayRawValue"}];

  return succinctDescriptionBuilder;
}

+ (id)entryWithRawValue:(int64_t)value displayValue:(int64_t)displayValue displayRawValue:(BOOL)rawValue
{
  v8 = objc_alloc_init(self);
  v8[2] = value;
  v8[3] = displayValue;
  *(v8 + 9) = rawValue;

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataIntegerEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:*&self->_displayRawValue forKey:{@"rawValue", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_rawValue forKey:@"displayValue"];
  [coderCopy encodeInteger:*(&self->super._enabled + 1) forKey:@"displayRawValue"];
}

- (STStatusBarDataIntegerEntry)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataIntegerEntry;
  coderCopy = coder;
  v4 = [(STStatusBarDataEntry *)&v7 initWithCoder:coderCopy];
  *&v4->_displayRawValue = [coderCopy decodeIntegerForKey:{@"rawValue", v7.receiver, v7.super_class}];
  v4->_rawValue = [coderCopy decodeIntegerForKey:@"displayValue"];
  v5 = [coderCopy decodeIntegerForKey:@"displayRawValue"];

  *(&v4->super._enabled + 1) = v5 != 0;
  return v4;
}

- (id)_equalsBuilderWithObject:(id)object
{
  objectCopy = object;
  v23.receiver = self;
  v23.super_class = STStatusBarDataIntegerEntry;
  v5 = [(STStatusBarDataEntry *)&v23 _equalsBuilderWithObject:objectCopy];
  v6 = objectCopy;
  rawValue = [(STStatusBarDataIntegerEntry *)self rawValue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __56__STStatusBarDataIntegerEntry__equalsBuilderWithObject___block_invoke;
  v21[3] = &unk_1E85DEAD0;
  v8 = v6;
  v22 = v8;
  v9 = [v5 appendInteger:rawValue counterpart:v21];
  displayValue = [(STStatusBarDataIntegerEntry *)self displayValue];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __56__STStatusBarDataIntegerEntry__equalsBuilderWithObject___block_invoke_2;
  v19[3] = &unk_1E85DEAD0;
  v11 = v8;
  v20 = v11;
  v12 = [v5 appendInteger:displayValue counterpart:v19];
  displayRawValue = [(STStatusBarDataIntegerEntry *)self displayRawValue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__STStatusBarDataIntegerEntry__equalsBuilderWithObject___block_invoke_3;
  v17[3] = &unk_1E85DDD50;
  v18 = v11;
  v14 = v11;
  v15 = [v5 appendBool:displayRawValue counterpart:v17];

  return v5;
}

- (id)_hashBuilder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataIntegerEntry;
  _hashBuilder = [(STStatusBarDataEntry *)&v8 _hashBuilder];
  v4 = [_hashBuilder appendInteger:{-[STStatusBarDataIntegerEntry rawValue](self, "rawValue")}];
  v5 = [_hashBuilder appendInteger:{-[STStatusBarDataIntegerEntry displayValue](self, "displayValue")}];
  v6 = [_hashBuilder appendBool:{-[STStatusBarDataIntegerEntry displayRawValue](self, "displayRawValue")}];

  return _hashBuilder;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataIntegerEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:*&self->_displayRawValue forKey:{@"rawValue", v5.receiver, v5.super_class}];
  [coderCopy encodeInt64:self->_rawValue forKey:@"displayValue"];
  [coderCopy encodeBool:*(&self->super._enabled + 1) forKey:@"displayRawValue"];
}

- (STStatusBarDataIntegerEntry)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = STStatusBarDataIntegerEntry;
  v5 = [(STStatusBarDataEntry *)&v7 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    *&v5->_displayRawValue = [coderCopy decodeInt64ForKey:@"rawValue"];
    v5->_rawValue = [coderCopy decodeInt64ForKey:@"displayValue"];
    *(&v5->super._enabled + 1) = [coderCopy decodeBoolForKey:@"displayRawValue"];
  }

  return v5;
}

@end