@interface STStatusBarDataNetworkEntry
- (STStatusBarDataNetworkEntry)initWithBSXPCCoder:(id)a3;
- (STStatusBarDataNetworkEntry)initWithCoder:(id)a3;
- (id)_equalsBuilderWithObject:(id)a3;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusBarDataNetworkEntry

- (id)succinctDescriptionBuilder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataNetworkEntry;
  v3 = [(STStatusBarDataIntegerEntry *)&v7 succinctDescriptionBuilder];
  v4 = _STStatusBarDataNetworkStatusDescription([(STStatusBarDataNetworkEntry *)self status]);
  [v3 appendString:v4 withName:@"status"];

  v5 = [v3 appendBool:-[STStatusBarDataNetworkEntry lowDataModeActive](self withName:{"lowDataModeActive"), @"lowDataModeActive"}];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataNetworkEntry;
  v4 = a3;
  [(STStatusBarDataIntegerEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:*&self->_lowDataModeActive forKey:{@"status", v5.receiver, v5.super_class}];
  [v4 encodeBool:LOBYTE(self->super._displayValue) forKey:@"lowDataModeActive"];
}

- (STStatusBarDataNetworkEntry)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataNetworkEntry;
  v3 = a3;
  v4 = [(STStatusBarDataIntegerEntry *)&v7 initWithCoder:v3];
  *&v4->_lowDataModeActive = [v3 decodeIntegerForKey:{@"status", v7.receiver, v7.super_class}];
  v5 = [v3 decodeBoolForKey:@"lowDataModeActive"];

  LOBYTE(v4->super._displayValue) = v5;
  return v4;
}

- (id)_equalsBuilderWithObject:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = STStatusBarDataNetworkEntry;
  v5 = [(STStatusBarDataIntegerEntry *)&v18 _equalsBuilderWithObject:v4];
  v6 = v4;
  v7 = [(STStatusBarDataNetworkEntry *)self status];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__STStatusBarDataNetworkEntry__equalsBuilderWithObject___block_invoke;
  v16[3] = &unk_1E85DEAD0;
  v8 = v6;
  v17 = v8;
  v9 = [v5 appendInteger:v7 counterpart:v16];
  v10 = [(STStatusBarDataNetworkEntry *)self lowDataModeActive];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__STStatusBarDataNetworkEntry__equalsBuilderWithObject___block_invoke_2;
  v14[3] = &unk_1E85DDD50;
  v15 = v8;
  v11 = v8;
  v12 = [v5 appendBool:v10 counterpart:v14];

  return v5;
}

- (id)_hashBuilder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataNetworkEntry;
  v3 = [(STStatusBarDataIntegerEntry *)&v7 _hashBuilder];
  v4 = [v3 appendInteger:{-[STStatusBarDataNetworkEntry status](self, "status")}];
  v5 = [v3 appendBool:{-[STStatusBarDataNetworkEntry lowDataModeActive](self, "lowDataModeActive")}];

  return v3;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataNetworkEntry;
  v4 = a3;
  [(STStatusBarDataIntegerEntry *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeInt64:*&self->_lowDataModeActive forKey:{@"status", v5.receiver, v5.super_class}];
  [v4 encodeBool:LOBYTE(self->super._displayValue) forKey:@"lowDataModeActive"];
}

- (STStatusBarDataNetworkEntry)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = STStatusBarDataNetworkEntry;
  v5 = [(STStatusBarDataIntegerEntry *)&v7 initWithBSXPCCoder:v4];
  if (v5)
  {
    *&v5->_lowDataModeActive = [v4 decodeInt64ForKey:@"status"];
    LOBYTE(v5->super._displayValue) = [v4 decodeBoolForKey:@"lowDataModeActive"];
  }

  return v5;
}

@end