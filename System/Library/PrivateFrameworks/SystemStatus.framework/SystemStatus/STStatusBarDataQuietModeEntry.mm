@interface STStatusBarDataQuietModeEntry
- (STStatusBarDataQuietModeEntry)initWithBSXPCCoder:(id)coder;
- (STStatusBarDataQuietModeEntry)initWithCoder:(id)coder;
- (id)_equalsBuilderWithObject:(id)object;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusBarDataQuietModeEntry

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataQuietModeEntry;
  coderCopy = coder;
  [(STStatusBarDataBoolImageEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_focusName forKey:{@"focusName", v5.receiver, v5.super_class}];
}

- (STStatusBarDataQuietModeEntry)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataQuietModeEntry;
  coderCopy = coder;
  v4 = [(STStatusBarDataBoolImageEntry *)&v8 initWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"focusName", v8.receiver, v8.super_class}];

  focusName = v4->_focusName;
  v4->_focusName = v5;

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataQuietModeEntry;
  succinctDescriptionBuilder = [(STStatusBarDataBoolImageEntry *)&v6 succinctDescriptionBuilder];
  focusName = [(STStatusBarDataQuietModeEntry *)self focusName];
  [succinctDescriptionBuilder appendString:focusName withName:@"focusName"];

  return succinctDescriptionBuilder;
}

- (id)_equalsBuilderWithObject:(id)object
{
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = STStatusBarDataQuietModeEntry;
  v5 = [(STStatusBarDataBoolImageEntry *)&v13 _equalsBuilderWithObject:objectCopy];
  v6 = objectCopy;
  focusName = [(STStatusBarDataQuietModeEntry *)self focusName];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__STStatusBarDataQuietModeEntry__equalsBuilderWithObject___block_invoke;
  v11[3] = &unk_1E85DDD28;
  v12 = v6;
  v8 = v6;
  v9 = [v5 appendString:focusName counterpart:v11];

  return v5;
}

- (id)_hashBuilder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataQuietModeEntry;
  _hashBuilder = [(STStatusBarDataBoolImageEntry *)&v7 _hashBuilder];
  focusName = [(STStatusBarDataQuietModeEntry *)self focusName];
  v5 = [_hashBuilder appendString:focusName];

  return _hashBuilder;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataQuietModeEntry;
  coderCopy = coder;
  [(STStatusBarDataBoolImageEntry *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeObject:self->_focusName forKey:{@"focusName", v5.receiver, v5.super_class}];
}

- (STStatusBarDataQuietModeEntry)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STStatusBarDataQuietModeEntry;
  v5 = [(STStatusBarDataBoolImageEntry *)&v9 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeStringForKey:@"focusName"];
    focusName = v5->_focusName;
    v5->_focusName = v6;
  }

  return v5;
}

@end