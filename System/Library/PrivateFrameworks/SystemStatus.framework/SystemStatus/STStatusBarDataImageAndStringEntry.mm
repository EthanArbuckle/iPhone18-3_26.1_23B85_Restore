@interface STStatusBarDataImageAndStringEntry
+ (id)entryWithImageNamed:(id)named stringValue:(id)value;
- (STStatusBarDataImageAndStringEntry)initWithBSXPCCoder:(id)coder;
- (STStatusBarDataImageAndStringEntry)initWithCoder:(id)coder;
- (id)_equalsBuilderWithObject:(id)object;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusBarDataImageAndStringEntry

+ (id)entryWithImageNamed:(id)named stringValue:(id)value
{
  valueCopy = value;
  v7 = [self entryWithImageNamed:named];
  v8 = [valueCopy copy];

  v9 = v7[3];
  v7[3] = v8;

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataImageAndStringEntry;
  coderCopy = coder;
  [(STStatusBarDataImageEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_stringValue forKey:{@"stringValue", v5.receiver, v5.super_class}];
}

- (STStatusBarDataImageAndStringEntry)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataImageAndStringEntry;
  coderCopy = coder;
  v4 = [(STStatusBarDataImageEntry *)&v8 initWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"stringValue", v8.receiver, v8.super_class}];

  stringValue = v4->_stringValue;
  v4->_stringValue = v5;

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataImageAndStringEntry;
  succinctDescriptionBuilder = [(STStatusBarDataImageEntry *)&v6 succinctDescriptionBuilder];
  stringValue = [(STStatusBarDataImageAndStringEntry *)self stringValue];
  [succinctDescriptionBuilder appendString:stringValue withName:@"stringValue"];

  return succinctDescriptionBuilder;
}

- (id)_equalsBuilderWithObject:(id)object
{
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = STStatusBarDataImageAndStringEntry;
  v5 = [(STStatusBarDataImageEntry *)&v13 _equalsBuilderWithObject:objectCopy];
  v6 = objectCopy;
  stringValue = [(STStatusBarDataImageAndStringEntry *)self stringValue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__STStatusBarDataImageAndStringEntry__equalsBuilderWithObject___block_invoke;
  v11[3] = &unk_1E85DDD28;
  v12 = v6;
  v8 = v6;
  v9 = [v5 appendString:stringValue counterpart:v11];

  return v5;
}

- (id)_hashBuilder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataImageAndStringEntry;
  _hashBuilder = [(STStatusBarDataImageEntry *)&v7 _hashBuilder];
  stringValue = [(STStatusBarDataImageAndStringEntry *)self stringValue];
  v5 = [_hashBuilder appendString:stringValue];

  return _hashBuilder;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataImageAndStringEntry;
  coderCopy = coder;
  [(STStatusBarDataImageEntry *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeObject:self->_stringValue forKey:{@"stringValue", v5.receiver, v5.super_class}];
}

- (STStatusBarDataImageAndStringEntry)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STStatusBarDataImageAndStringEntry;
  v5 = [(STStatusBarDataImageEntry *)&v9 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;
  }

  return v5;
}

@end