@interface STStatusBarDataNetworkEntry
- (STStatusBarDataNetworkEntry)initWithBSXPCCoder:(id)coder;
- (STStatusBarDataNetworkEntry)initWithCoder:(id)coder;
- (id)_equalsBuilderWithObject:(id)object;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusBarDataNetworkEntry

- (id)succinctDescriptionBuilder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataNetworkEntry;
  succinctDescriptionBuilder = [(STStatusBarDataIntegerEntry *)&v7 succinctDescriptionBuilder];
  v4 = _STStatusBarDataNetworkStatusDescription([(STStatusBarDataNetworkEntry *)self status]);
  [succinctDescriptionBuilder appendString:v4 withName:@"status"];

  v5 = [succinctDescriptionBuilder appendBool:-[STStatusBarDataNetworkEntry lowDataModeActive](self withName:{"lowDataModeActive"), @"lowDataModeActive"}];

  return succinctDescriptionBuilder;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataNetworkEntry;
  coderCopy = coder;
  [(STStatusBarDataIntegerEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:*&self->_lowDataModeActive forKey:{@"status", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:LOBYTE(self->super._displayValue) forKey:@"lowDataModeActive"];
}

- (STStatusBarDataNetworkEntry)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataNetworkEntry;
  coderCopy = coder;
  v4 = [(STStatusBarDataIntegerEntry *)&v7 initWithCoder:coderCopy];
  *&v4->_lowDataModeActive = [coderCopy decodeIntegerForKey:{@"status", v7.receiver, v7.super_class}];
  v5 = [coderCopy decodeBoolForKey:@"lowDataModeActive"];

  LOBYTE(v4->super._displayValue) = v5;
  return v4;
}

- (id)_equalsBuilderWithObject:(id)object
{
  objectCopy = object;
  v18.receiver = self;
  v18.super_class = STStatusBarDataNetworkEntry;
  v5 = [(STStatusBarDataIntegerEntry *)&v18 _equalsBuilderWithObject:objectCopy];
  v6 = objectCopy;
  status = [(STStatusBarDataNetworkEntry *)self status];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__STStatusBarDataNetworkEntry__equalsBuilderWithObject___block_invoke;
  v16[3] = &unk_1E85DEAD0;
  v8 = v6;
  v17 = v8;
  v9 = [v5 appendInteger:status counterpart:v16];
  lowDataModeActive = [(STStatusBarDataNetworkEntry *)self lowDataModeActive];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__STStatusBarDataNetworkEntry__equalsBuilderWithObject___block_invoke_2;
  v14[3] = &unk_1E85DDD50;
  v15 = v8;
  v11 = v8;
  v12 = [v5 appendBool:lowDataModeActive counterpart:v14];

  return v5;
}

- (id)_hashBuilder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataNetworkEntry;
  _hashBuilder = [(STStatusBarDataIntegerEntry *)&v7 _hashBuilder];
  v4 = [_hashBuilder appendInteger:{-[STStatusBarDataNetworkEntry status](self, "status")}];
  v5 = [_hashBuilder appendBool:{-[STStatusBarDataNetworkEntry lowDataModeActive](self, "lowDataModeActive")}];

  return _hashBuilder;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataNetworkEntry;
  coderCopy = coder;
  [(STStatusBarDataIntegerEntry *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:*&self->_lowDataModeActive forKey:{@"status", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:LOBYTE(self->super._displayValue) forKey:@"lowDataModeActive"];
}

- (STStatusBarDataNetworkEntry)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = STStatusBarDataNetworkEntry;
  v5 = [(STStatusBarDataIntegerEntry *)&v7 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    *&v5->_lowDataModeActive = [coderCopy decodeInt64ForKey:@"status"];
    LOBYTE(v5->super._displayValue) = [coderCopy decodeBoolForKey:@"lowDataModeActive"];
  }

  return v5;
}

@end