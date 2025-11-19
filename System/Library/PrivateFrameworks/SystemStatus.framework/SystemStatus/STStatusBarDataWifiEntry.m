@interface STStatusBarDataWifiEntry
- (STStatusBarDataWifiEntry)initWithBSXPCCoder:(id)a3;
- (STStatusBarDataWifiEntry)initWithCoder:(id)a3;
- (id)_equalsBuilderWithObject:(id)a3;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusBarDataWifiEntry

- (id)succinctDescriptionBuilder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataWifiEntry;
  v3 = [(STStatusBarDataNetworkEntry *)&v8 succinctDescriptionBuilder];
  v4 = [(STStatusBarDataWifiEntry *)self type];
  v5 = @"(unknown)";
  if (v4 == 1)
  {
    v5 = @"hotspot";
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"regular";
  }

  [v3 appendString:v6 withName:@"type"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataWifiEntry;
  v4 = a3;
  [(STStatusBarDataNetworkEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->super._status forKey:{@"type", v5.receiver, v5.super_class}];
}

- (STStatusBarDataWifiEntry)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataWifiEntry;
  v3 = a3;
  v4 = [(STStatusBarDataNetworkEntry *)&v7 initWithCoder:v3];
  v5 = [v3 decodeIntegerForKey:{@"type", v7.receiver, v7.super_class}];

  v4->super._status = v5;
  return v4;
}

- (id)_equalsBuilderWithObject:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = STStatusBarDataWifiEntry;
  v5 = [(STStatusBarDataNetworkEntry *)&v12 _equalsBuilderWithObject:v4];
  v6 = [(STStatusBarDataWifiEntry *)self type];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__STStatusBarDataWifiEntry__equalsBuilderWithObject___block_invoke;
  v10[3] = &unk_1E85DEAD0;
  v11 = v4;
  v7 = v4;
  v8 = [v5 appendInteger:v6 counterpart:v10];

  return v5;
}

- (id)_hashBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataWifiEntry;
  v3 = [(STStatusBarDataNetworkEntry *)&v6 _hashBuilder];
  v4 = [v3 appendInteger:{-[STStatusBarDataWifiEntry type](self, "type")}];

  return v3;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataWifiEntry;
  v4 = a3;
  [(STStatusBarDataNetworkEntry *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeInt64:self->super._status forKey:{@"type", v5.receiver, v5.super_class}];
}

- (STStatusBarDataWifiEntry)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = STStatusBarDataWifiEntry;
  v5 = [(STStatusBarDataNetworkEntry *)&v7 initWithBSXPCCoder:v4];
  if (v5)
  {
    v5->super._status = [v4 decodeInt64ForKey:@"type"];
  }

  return v5;
}

@end