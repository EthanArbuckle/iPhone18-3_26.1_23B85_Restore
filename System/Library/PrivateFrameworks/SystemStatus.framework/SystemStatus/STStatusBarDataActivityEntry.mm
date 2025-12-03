@interface STStatusBarDataActivityEntry
+ (STStatusBarDataActivityEntry)entryWithType:(int64_t)type displayID:(id)d;
- (STStatusBarDataActivityEntry)initWithBSXPCCoder:(id)coder;
- (STStatusBarDataActivityEntry)initWithCoder:(id)coder;
- (id)_equalsBuilderWithObject:(id)object;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusBarDataActivityEntry

- (id)succinctDescriptionBuilder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataActivityEntry;
  succinctDescriptionBuilder = [(STStatusBarDataEntry *)&v8 succinctDescriptionBuilder];
  type = [(STStatusBarDataActivityEntry *)self type];
  if (type > 2)
  {
    v5 = @"(unknown)";
  }

  else
  {
    v5 = off_1E85DEC58[type];
  }

  [succinctDescriptionBuilder appendString:v5 withName:@"type"];
  displayId = [(STStatusBarDataActivityEntry *)self displayId];
  [succinctDescriptionBuilder appendString:displayId withName:@"displayId" skipIfEmpty:1];

  return succinctDescriptionBuilder;
}

+ (STStatusBarDataActivityEntry)entryWithType:(int64_t)type displayID:(id)d
{
  dCopy = d;
  v7 = objc_alloc_init(self);
  v7[2] = type;
  v8 = [dCopy copy];

  v9 = v7[3];
  v7[3] = v8;

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataActivityEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_displayId forKey:@"displayId"];
}

- (STStatusBarDataActivityEntry)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataActivityEntry;
  coderCopy = coder;
  v4 = [(STStatusBarDataEntry *)&v8 initWithCoder:coderCopy];
  v4->_type = [coderCopy decodeIntegerForKey:{@"type", v8.receiver, v8.super_class}];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayId"];

  displayId = v4->_displayId;
  v4->_displayId = v5;

  return v4;
}

- (id)_equalsBuilderWithObject:(id)object
{
  objectCopy = object;
  v18.receiver = self;
  v18.super_class = STStatusBarDataActivityEntry;
  v5 = [(STStatusBarDataEntry *)&v18 _equalsBuilderWithObject:objectCopy];
  v6 = objectCopy;
  type = [(STStatusBarDataActivityEntry *)self type];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__STStatusBarDataActivityEntry__equalsBuilderWithObject___block_invoke;
  v16[3] = &unk_1E85DEAD0;
  v8 = v6;
  v17 = v8;
  v9 = [v5 appendInteger:type counterpart:v16];
  displayId = [(STStatusBarDataActivityEntry *)self displayId];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__STStatusBarDataActivityEntry__equalsBuilderWithObject___block_invoke_2;
  v14[3] = &unk_1E85DDD28;
  v15 = v8;
  v11 = v8;
  v12 = [v5 appendString:displayId counterpart:v14];

  return v5;
}

- (id)_hashBuilder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataActivityEntry;
  _hashBuilder = [(STStatusBarDataEntry *)&v8 _hashBuilder];
  v4 = [_hashBuilder appendInteger:{-[STStatusBarDataActivityEntry type](self, "type")}];
  displayId = [(STStatusBarDataActivityEntry *)self displayId];
  v6 = [_hashBuilder appendString:displayId];

  return _hashBuilder;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataActivityEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_displayId forKey:@"displayId"];
}

- (STStatusBarDataActivityEntry)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STStatusBarDataActivityEntry;
  v5 = [(STStatusBarDataEntry *)&v9 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_type = [coderCopy decodeInt64ForKey:@"type"];
    v6 = [coderCopy decodeStringForKey:@"displayId"];
    displayId = v5->_displayId;
    v5->_displayId = v6;
  }

  return v5;
}

@end