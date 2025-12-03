@interface STStatusBarDataBluetoothEntry
+ (STStatusBarDataBluetoothEntry)entryWithState:(int64_t)state batteryEntry:(id)entry;
- (STStatusBarDataBluetoothEntry)initWithBSXPCCoder:(id)coder;
- (STStatusBarDataBluetoothEntry)initWithCoder:(id)coder;
- (id)_equalsBuilderWithObject:(id)object;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusBarDataBluetoothEntry

+ (STStatusBarDataBluetoothEntry)entryWithState:(int64_t)state batteryEntry:(id)entry
{
  entryCopy = entry;
  v7 = objc_alloc_init(self);
  v7[2] = state;
  v8 = [entryCopy copy];

  v9 = v7[3];
  v7[3] = v8;

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataBluetoothEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_state forKey:{@"state", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_batteryEntry forKey:@"batteryEntry"];
}

- (STStatusBarDataBluetoothEntry)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataBluetoothEntry;
  coderCopy = coder;
  v4 = [(STStatusBarDataEntry *)&v8 initWithCoder:coderCopy];
  v4->_state = [coderCopy decodeIntegerForKey:{@"state", v8.receiver, v8.super_class}];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"batteryEntry"];

  batteryEntry = v4->_batteryEntry;
  v4->_batteryEntry = v5;

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v9.receiver = self;
  v9.super_class = STStatusBarDataBluetoothEntry;
  succinctDescriptionBuilder = [(STStatusBarDataEntry *)&v9 succinctDescriptionBuilder];
  state = [(STStatusBarDataBluetoothEntry *)self state];
  if (state > 2)
  {
    v5 = @"(unknown)";
  }

  else
  {
    v5 = off_1E85DEC40[state];
  }

  [succinctDescriptionBuilder appendString:v5 withName:@"state"];
  batteryEntry = [(STStatusBarDataBluetoothEntry *)self batteryEntry];
  v7 = [succinctDescriptionBuilder appendObject:batteryEntry withName:@"batteryState" skipIfNil:1];

  return succinctDescriptionBuilder;
}

- (id)_equalsBuilderWithObject:(id)object
{
  objectCopy = object;
  v18.receiver = self;
  v18.super_class = STStatusBarDataBluetoothEntry;
  v5 = [(STStatusBarDataEntry *)&v18 _equalsBuilderWithObject:objectCopy];
  v6 = objectCopy;
  state = [(STStatusBarDataBluetoothEntry *)self state];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__STStatusBarDataBluetoothEntry__equalsBuilderWithObject___block_invoke;
  v16[3] = &unk_1E85DEAD0;
  v8 = v6;
  v17 = v8;
  v9 = [v5 appendInteger:state counterpart:v16];
  batteryEntry = [(STStatusBarDataBluetoothEntry *)self batteryEntry];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__STStatusBarDataBluetoothEntry__equalsBuilderWithObject___block_invoke_2;
  v14[3] = &unk_1E85DDCD8;
  v15 = v8;
  v11 = v8;
  v12 = [v5 appendObject:batteryEntry counterpart:v14];

  return v5;
}

- (id)_hashBuilder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataBluetoothEntry;
  _hashBuilder = [(STStatusBarDataEntry *)&v8 _hashBuilder];
  v4 = [_hashBuilder appendInteger:{-[STStatusBarDataBluetoothEntry state](self, "state")}];
  batteryEntry = [(STStatusBarDataBluetoothEntry *)self batteryEntry];
  v6 = [_hashBuilder appendObject:batteryEntry];

  return _hashBuilder;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataBluetoothEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:self->_state forKey:{@"state", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_batteryEntry forKey:@"batteryEntry"];
}

- (STStatusBarDataBluetoothEntry)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STStatusBarDataBluetoothEntry;
  v5 = [(STStatusBarDataEntry *)&v9 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_state = [coderCopy decodeInt64ForKey:@"state"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"batteryEntry"];
    batteryEntry = v5->_batteryEntry;
    v5->_batteryEntry = v6;
  }

  return v5;
}

@end