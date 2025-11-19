@interface STStatusBarDataBluetoothEntry
+ (STStatusBarDataBluetoothEntry)entryWithState:(int64_t)a3 batteryEntry:(id)a4;
- (STStatusBarDataBluetoothEntry)initWithBSXPCCoder:(id)a3;
- (STStatusBarDataBluetoothEntry)initWithCoder:(id)a3;
- (id)_equalsBuilderWithObject:(id)a3;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusBarDataBluetoothEntry

+ (STStatusBarDataBluetoothEntry)entryWithState:(int64_t)a3 batteryEntry:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(a1);
  v7[2] = a3;
  v8 = [v6 copy];

  v9 = v7[3];
  v7[3] = v8;

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataBluetoothEntry;
  v4 = a3;
  [(STStatusBarDataEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_state forKey:{@"state", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_batteryEntry forKey:@"batteryEntry"];
}

- (STStatusBarDataBluetoothEntry)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataBluetoothEntry;
  v3 = a3;
  v4 = [(STStatusBarDataEntry *)&v8 initWithCoder:v3];
  v4->_state = [v3 decodeIntegerForKey:{@"state", v8.receiver, v8.super_class}];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"batteryEntry"];

  batteryEntry = v4->_batteryEntry;
  v4->_batteryEntry = v5;

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v9.receiver = self;
  v9.super_class = STStatusBarDataBluetoothEntry;
  v3 = [(STStatusBarDataEntry *)&v9 succinctDescriptionBuilder];
  v4 = [(STStatusBarDataBluetoothEntry *)self state];
  if (v4 > 2)
  {
    v5 = @"(unknown)";
  }

  else
  {
    v5 = off_1E85DEC40[v4];
  }

  [v3 appendString:v5 withName:@"state"];
  v6 = [(STStatusBarDataBluetoothEntry *)self batteryEntry];
  v7 = [v3 appendObject:v6 withName:@"batteryState" skipIfNil:1];

  return v3;
}

- (id)_equalsBuilderWithObject:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = STStatusBarDataBluetoothEntry;
  v5 = [(STStatusBarDataEntry *)&v18 _equalsBuilderWithObject:v4];
  v6 = v4;
  v7 = [(STStatusBarDataBluetoothEntry *)self state];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__STStatusBarDataBluetoothEntry__equalsBuilderWithObject___block_invoke;
  v16[3] = &unk_1E85DEAD0;
  v8 = v6;
  v17 = v8;
  v9 = [v5 appendInteger:v7 counterpart:v16];
  v10 = [(STStatusBarDataBluetoothEntry *)self batteryEntry];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__STStatusBarDataBluetoothEntry__equalsBuilderWithObject___block_invoke_2;
  v14[3] = &unk_1E85DDCD8;
  v15 = v8;
  v11 = v8;
  v12 = [v5 appendObject:v10 counterpart:v14];

  return v5;
}

- (id)_hashBuilder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataBluetoothEntry;
  v3 = [(STStatusBarDataEntry *)&v8 _hashBuilder];
  v4 = [v3 appendInteger:{-[STStatusBarDataBluetoothEntry state](self, "state")}];
  v5 = [(STStatusBarDataBluetoothEntry *)self batteryEntry];
  v6 = [v3 appendObject:v5];

  return v3;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataBluetoothEntry;
  v4 = a3;
  [(STStatusBarDataEntry *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeInt64:self->_state forKey:{@"state", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_batteryEntry forKey:@"batteryEntry"];
}

- (STStatusBarDataBluetoothEntry)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STStatusBarDataBluetoothEntry;
  v5 = [(STStatusBarDataEntry *)&v9 initWithBSXPCCoder:v4];
  if (v5)
  {
    v5->_state = [v4 decodeInt64ForKey:@"state"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"batteryEntry"];
    batteryEntry = v5->_batteryEntry;
    v5->_batteryEntry = v6;
  }

  return v5;
}

@end