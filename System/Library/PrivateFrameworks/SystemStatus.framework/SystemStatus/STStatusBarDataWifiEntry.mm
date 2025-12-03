@interface STStatusBarDataWifiEntry
- (STStatusBarDataWifiEntry)initWithBSXPCCoder:(id)coder;
- (STStatusBarDataWifiEntry)initWithCoder:(id)coder;
- (id)_equalsBuilderWithObject:(id)object;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusBarDataWifiEntry

- (id)succinctDescriptionBuilder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataWifiEntry;
  succinctDescriptionBuilder = [(STStatusBarDataNetworkEntry *)&v8 succinctDescriptionBuilder];
  type = [(STStatusBarDataWifiEntry *)self type];
  v5 = @"(unknown)";
  if (type == 1)
  {
    v5 = @"hotspot";
  }

  if (type)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"regular";
  }

  [succinctDescriptionBuilder appendString:v6 withName:@"type"];

  return succinctDescriptionBuilder;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataWifiEntry;
  coderCopy = coder;
  [(STStatusBarDataNetworkEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->super._status forKey:{@"type", v5.receiver, v5.super_class}];
}

- (STStatusBarDataWifiEntry)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataWifiEntry;
  coderCopy = coder;
  v4 = [(STStatusBarDataNetworkEntry *)&v7 initWithCoder:coderCopy];
  v5 = [coderCopy decodeIntegerForKey:{@"type", v7.receiver, v7.super_class}];

  v4->super._status = v5;
  return v4;
}

- (id)_equalsBuilderWithObject:(id)object
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = STStatusBarDataWifiEntry;
  v5 = [(STStatusBarDataNetworkEntry *)&v12 _equalsBuilderWithObject:objectCopy];
  type = [(STStatusBarDataWifiEntry *)self type];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__STStatusBarDataWifiEntry__equalsBuilderWithObject___block_invoke;
  v10[3] = &unk_1E85DEAD0;
  v11 = objectCopy;
  v7 = objectCopy;
  v8 = [v5 appendInteger:type counterpart:v10];

  return v5;
}

- (id)_hashBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataWifiEntry;
  _hashBuilder = [(STStatusBarDataNetworkEntry *)&v6 _hashBuilder];
  v4 = [_hashBuilder appendInteger:{-[STStatusBarDataWifiEntry type](self, "type")}];

  return _hashBuilder;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataWifiEntry;
  coderCopy = coder;
  [(STStatusBarDataNetworkEntry *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:self->super._status forKey:{@"type", v5.receiver, v5.super_class}];
}

- (STStatusBarDataWifiEntry)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = STStatusBarDataWifiEntry;
  v5 = [(STStatusBarDataNetworkEntry *)&v7 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->super._status = [coderCopy decodeInt64ForKey:@"type"];
  }

  return v5;
}

@end