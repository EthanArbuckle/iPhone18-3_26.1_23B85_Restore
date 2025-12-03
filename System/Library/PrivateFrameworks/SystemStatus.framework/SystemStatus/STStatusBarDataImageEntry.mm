@interface STStatusBarDataImageEntry
+ (id)entryWithImageNamed:(id)named;
- (STStatusBarDataImageEntry)initWithBSXPCCoder:(id)coder;
- (STStatusBarDataImageEntry)initWithCoder:(id)coder;
- (id)_equalsBuilderWithObject:(id)object;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusBarDataImageEntry

+ (id)entryWithImageNamed:(id)named
{
  namedCopy = named;
  v5 = objc_alloc_init(self);
  v6 = [namedCopy copy];

  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataImageEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_imageName forKey:{@"imageName", v5.receiver, v5.super_class}];
}

- (STStatusBarDataImageEntry)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataImageEntry;
  coderCopy = coder;
  v4 = [(STStatusBarDataEntry *)&v8 initWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"imageName", v8.receiver, v8.super_class}];

  imageName = v4->_imageName;
  v4->_imageName = v5;

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataImageEntry;
  succinctDescriptionBuilder = [(STStatusBarDataEntry *)&v6 succinctDescriptionBuilder];
  imageName = [(STStatusBarDataImageEntry *)self imageName];
  [succinctDescriptionBuilder appendString:imageName withName:@"imageName"];

  return succinctDescriptionBuilder;
}

- (id)_equalsBuilderWithObject:(id)object
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = STStatusBarDataImageEntry;
  v5 = [(STStatusBarDataEntry *)&v12 _equalsBuilderWithObject:objectCopy];
  imageName = [(STStatusBarDataImageEntry *)self imageName];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__STStatusBarDataImageEntry__equalsBuilderWithObject___block_invoke;
  v10[3] = &unk_1E85DDD28;
  v11 = objectCopy;
  v7 = objectCopy;
  v8 = [v5 appendString:imageName counterpart:v10];

  return v5;
}

- (id)_hashBuilder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataImageEntry;
  _hashBuilder = [(STStatusBarDataEntry *)&v7 _hashBuilder];
  imageName = [(STStatusBarDataImageEntry *)self imageName];
  v5 = [_hashBuilder appendString:imageName];

  return _hashBuilder;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataImageEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeObject:self->_imageName forKey:{@"imageName", v5.receiver, v5.super_class}];
}

- (STStatusBarDataImageEntry)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STStatusBarDataImageEntry;
  v5 = [(STStatusBarDataEntry *)&v9 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeStringForKey:@"imageName"];
    imageName = v5->_imageName;
    v5->_imageName = v6;
  }

  return v5;
}

@end