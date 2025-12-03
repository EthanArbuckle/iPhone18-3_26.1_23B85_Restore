@interface STStatusBarDataBoolImageEntry
+ (id)entryWithImageNamed:(id)named BOOLValue:(BOOL)value;
- (STStatusBarDataBoolImageEntry)initWithBSXPCCoder:(id)coder;
- (STStatusBarDataBoolImageEntry)initWithCoder:(id)coder;
- (id)_equalsBuilderWithObject:(id)object;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusBarDataBoolImageEntry

+ (id)entryWithImageNamed:(id)named BOOLValue:(BOOL)value
{
  result = [self entryWithImageNamed:named];
  *(result + 24) = value;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataBoolImageEntry;
  coderCopy = coder;
  [(STStatusBarDataImageEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_BOOLValue forKey:{@"BOOLValue", v5.receiver, v5.super_class}];
}

- (STStatusBarDataBoolImageEntry)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataBoolImageEntry;
  coderCopy = coder;
  v4 = [(STStatusBarDataImageEntry *)&v7 initWithCoder:coderCopy];
  v5 = [coderCopy decodeBoolForKey:{@"BOOLValue", v7.receiver, v7.super_class}];

  v4->_BOOLValue = v5;
  return v4;
}

- (id)succinctDescriptionBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataBoolImageEntry;
  succinctDescriptionBuilder = [(STStatusBarDataImageEntry *)&v6 succinctDescriptionBuilder];
  v4 = [succinctDescriptionBuilder appendBool:-[STStatusBarDataBoolImageEntry BOOLValue](self withName:{"BOOLValue"), @"BOOLValue"}];

  return succinctDescriptionBuilder;
}

- (id)_equalsBuilderWithObject:(id)object
{
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = STStatusBarDataBoolImageEntry;
  v5 = [(STStatusBarDataImageEntry *)&v13 _equalsBuilderWithObject:objectCopy];
  v6 = objectCopy;
  bOOLValue = [(STStatusBarDataBoolImageEntry *)self BOOLValue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__STStatusBarDataBoolImageEntry__equalsBuilderWithObject___block_invoke;
  v11[3] = &unk_1E85DDD50;
  v12 = v6;
  v8 = v6;
  v9 = [v5 appendBool:bOOLValue counterpart:v11];

  return v5;
}

- (id)_hashBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataBoolImageEntry;
  _hashBuilder = [(STStatusBarDataImageEntry *)&v6 _hashBuilder];
  v4 = [_hashBuilder appendBool:{-[STStatusBarDataBoolImageEntry BOOLValue](self, "BOOLValue")}];

  return _hashBuilder;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataBoolImageEntry;
  coderCopy = coder;
  [(STStatusBarDataImageEntry *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeBool:self->_BOOLValue forKey:{@"BOOLValue", v5.receiver, v5.super_class}];
}

- (STStatusBarDataBoolImageEntry)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = STStatusBarDataBoolImageEntry;
  v5 = [(STStatusBarDataImageEntry *)&v7 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_BOOLValue = [coderCopy decodeBoolForKey:@"BOOLValue"];
  }

  return v5;
}

@end