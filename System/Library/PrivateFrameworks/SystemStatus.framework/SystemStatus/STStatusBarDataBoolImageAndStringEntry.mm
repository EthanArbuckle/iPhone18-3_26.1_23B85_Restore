@interface STStatusBarDataBoolImageAndStringEntry
- (STStatusBarDataBoolImageAndStringEntry)initWithBSXPCCoder:(id)coder;
- (STStatusBarDataBoolImageAndStringEntry)initWithCoder:(id)coder;
- (id)_equalsBuilderWithObject:(id)object;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusBarDataBoolImageAndStringEntry

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataBoolImageAndStringEntry;
  coderCopy = coder;
  [(STStatusBarDataBoolImageEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_stringValue forKey:{@"stringValue", v5.receiver, v5.super_class}];
}

- (STStatusBarDataBoolImageAndStringEntry)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataBoolImageAndStringEntry;
  coderCopy = coder;
  v4 = [(STStatusBarDataBoolImageEntry *)&v8 initWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"stringValue", v8.receiver, v8.super_class}];

  stringValue = v4->_stringValue;
  v4->_stringValue = v5;

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataBoolImageAndStringEntry;
  succinctDescriptionBuilder = [(STStatusBarDataBoolImageEntry *)&v6 succinctDescriptionBuilder];
  stringValue = [(STStatusBarDataBoolImageAndStringEntry *)self stringValue];
  [succinctDescriptionBuilder appendString:stringValue withName:@"stringValue"];

  return succinctDescriptionBuilder;
}

- (id)_equalsBuilderWithObject:(id)object
{
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = STStatusBarDataBoolImageAndStringEntry;
  v5 = [(STStatusBarDataBoolImageEntry *)&v13 _equalsBuilderWithObject:objectCopy];
  v6 = objectCopy;
  stringValue = [(STStatusBarDataBoolImageAndStringEntry *)self stringValue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__STStatusBarDataBoolImageAndStringEntry__equalsBuilderWithObject___block_invoke;
  v11[3] = &unk_1E85DDD28;
  v12 = v6;
  v8 = v6;
  v9 = [v5 appendString:stringValue counterpart:v11];

  return v5;
}

- (id)_hashBuilder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataBoolImageAndStringEntry;
  _hashBuilder = [(STStatusBarDataBoolImageEntry *)&v7 _hashBuilder];
  stringValue = [(STStatusBarDataBoolImageAndStringEntry *)self stringValue];
  v5 = [_hashBuilder appendString:stringValue];

  return _hashBuilder;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataBoolImageAndStringEntry;
  coderCopy = coder;
  [(STStatusBarDataBoolImageEntry *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeObject:self->_stringValue forKey:{@"stringValue", v5.receiver, v5.super_class}];
}

- (STStatusBarDataBoolImageAndStringEntry)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STStatusBarDataBoolImageAndStringEntry;
  v5 = [(STStatusBarDataBoolImageEntry *)&v9 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeStringForKey:@"stringValue"];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;
  }

  return v5;
}

@end