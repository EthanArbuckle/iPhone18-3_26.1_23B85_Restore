@interface STStatusBarDataLocationEntry
+ (id)entryWithType:(int64_t)type;
- (STStatusBarDataLocationEntry)initWithBSXPCCoder:(id)coder;
- (STStatusBarDataLocationEntry)initWithCoder:(id)coder;
- (id)_equalsBuilderWithObject:(id)object;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusBarDataLocationEntry

+ (id)entryWithType:(int64_t)type
{
  v4 = objc_alloc_init(self);
  v4[2] = type;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataLocationEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
}

- (STStatusBarDataLocationEntry)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataLocationEntry;
  coderCopy = coder;
  v4 = [(STStatusBarDataEntry *)&v7 initWithCoder:coderCopy];
  v5 = [coderCopy decodeIntegerForKey:{@"type", v7.receiver, v7.super_class}];

  v4->_type = v5;
  return v4;
}

- (id)succinctDescriptionBuilder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataLocationEntry;
  succinctDescriptionBuilder = [(STStatusBarDataEntry *)&v7 succinctDescriptionBuilder];
  type = [(STStatusBarDataLocationEntry *)self type];
  if (type > 2)
  {
    v5 = @"(unknown)";
  }

  else
  {
    v5 = off_1E85DEC70[type];
  }

  [succinctDescriptionBuilder appendString:v5 withName:@"type"];

  return succinctDescriptionBuilder;
}

- (id)_equalsBuilderWithObject:(id)object
{
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = STStatusBarDataLocationEntry;
  v5 = [(STStatusBarDataEntry *)&v13 _equalsBuilderWithObject:objectCopy];
  v6 = objectCopy;
  type = [(STStatusBarDataLocationEntry *)self type];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__STStatusBarDataLocationEntry__equalsBuilderWithObject___block_invoke;
  v11[3] = &unk_1E85DEAD0;
  v12 = v6;
  v8 = v6;
  v9 = [v5 appendInteger:type counterpart:v11];

  return v5;
}

- (id)_hashBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataLocationEntry;
  _hashBuilder = [(STStatusBarDataEntry *)&v6 _hashBuilder];
  v4 = [_hashBuilder appendInteger:{-[STStatusBarDataLocationEntry type](self, "type")}];

  return _hashBuilder;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataLocationEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
}

- (STStatusBarDataLocationEntry)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = STStatusBarDataLocationEntry;
  v5 = [(STStatusBarDataEntry *)&v7 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_type = [coderCopy decodeInt64ForKey:@"type"];
  }

  return v5;
}

@end