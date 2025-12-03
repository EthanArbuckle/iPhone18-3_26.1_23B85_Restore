@interface STStatusBarDataStringEntry
+ (STStatusBarDataStringEntry)entryWithStringValue:(id)value;
- (STStatusBarDataStringEntry)initWithBSXPCCoder:(id)coder;
- (STStatusBarDataStringEntry)initWithCoder:(id)coder;
- (id)_equalsBuilderWithObject:(id)object;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusBarDataStringEntry

- (id)succinctDescriptionBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataStringEntry;
  succinctDescriptionBuilder = [(STStatusBarDataEntry *)&v6 succinctDescriptionBuilder];
  stringValue = [(STStatusBarDataStringEntry *)self stringValue];
  [succinctDescriptionBuilder appendString:stringValue withName:@"stringValue"];

  return succinctDescriptionBuilder;
}

+ (STStatusBarDataStringEntry)entryWithStringValue:(id)value
{
  valueCopy = value;
  v5 = objc_alloc_init(self);
  v6 = [valueCopy copy];

  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataStringEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_stringValue forKey:{@"stringValue", v5.receiver, v5.super_class}];
}

- (STStatusBarDataStringEntry)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataStringEntry;
  coderCopy = coder;
  v4 = [(STStatusBarDataEntry *)&v8 initWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"stringValue", v8.receiver, v8.super_class}];

  stringValue = v4->_stringValue;
  v4->_stringValue = v5;

  return v4;
}

- (id)_equalsBuilderWithObject:(id)object
{
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = STStatusBarDataStringEntry;
  v5 = [(STStatusBarDataEntry *)&v13 _equalsBuilderWithObject:objectCopy];
  v6 = objectCopy;
  stringValue = [(STStatusBarDataStringEntry *)self stringValue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__STStatusBarDataStringEntry__equalsBuilderWithObject___block_invoke;
  v11[3] = &unk_1E85DDD28;
  v12 = v6;
  v8 = v6;
  v9 = [v5 appendString:stringValue counterpart:v11];

  return v5;
}

- (id)_hashBuilder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataStringEntry;
  _hashBuilder = [(STStatusBarDataEntry *)&v7 _hashBuilder];
  stringValue = [(STStatusBarDataStringEntry *)self stringValue];
  v5 = [_hashBuilder appendString:stringValue];

  return _hashBuilder;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataStringEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeObject:self->_stringValue forKey:{@"stringValue", v5.receiver, v5.super_class}];
}

- (STStatusBarDataStringEntry)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STStatusBarDataStringEntry;
  v5 = [(STStatusBarDataEntry *)&v9 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;
  }

  return v5;
}

@end