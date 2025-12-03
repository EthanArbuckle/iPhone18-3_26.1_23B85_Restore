@interface STStatusBarDataCellularEntry
+ (id)entryWithType:(int64_t)type stringValue:(id)value crossfadeStringValue:(id)stringValue badgeStringValue:(id)badgeStringValue wifiCalling:(BOOL)calling callForwarding:(BOOL)forwarding showsSOSWhenDisabled:(BOOL)disabled sosAvailable:(BOOL)self0 isBootstrapCellular:(BOOL)self1 status:(int64_t)self2 lowDataMode:(BOOL)self3 rawValue:(int64_t)self4 displayValue:(int64_t)self5 displayRawValue:(BOOL)self6;
- (STStatusBarDataCellularEntry)initWithBSXPCCoder:(id)coder;
- (STStatusBarDataCellularEntry)initWithCoder:(id)coder;
- (id)_equalsBuilderWithObject:(id)object;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusBarDataCellularEntry

+ (id)entryWithType:(int64_t)type stringValue:(id)value crossfadeStringValue:(id)stringValue badgeStringValue:(id)badgeStringValue wifiCalling:(BOOL)calling callForwarding:(BOOL)forwarding showsSOSWhenDisabled:(BOOL)disabled sosAvailable:(BOOL)self0 isBootstrapCellular:(BOOL)self1 status:(int64_t)self2 lowDataMode:(BOOL)self3 rawValue:(int64_t)self4 displayValue:(int64_t)self5 displayRawValue:(BOOL)self6
{
  badgeStringValueCopy = badgeStringValue;
  stringValueCopy = stringValue;
  valueCopy = value;
  v22 = [self entryWithStatus:status lowDataMode:mode rawValue:rawValue displayValue:displayValue displayRawValue:displayRawValue];
  *(v22 + 56) = type;
  v23 = [valueCopy copy];

  v24 = *(v22 + 64);
  *(v22 + 64) = v23;

  v25 = [stringValueCopy copy];
  v26 = *(v22 + 72);
  *(v22 + 72) = v25;

  v27 = [badgeStringValueCopy copy];
  v28 = *(v22 + 80);
  *(v22 + 80) = v27;

  *(v22 + 48) = calling;
  *(v22 + 49) = forwarding;
  *(v22 + 50) = disabled;
  *(v22 + 51) = available;
  *(v22 + 52) = cellular;

  return v22;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataCellularEntry;
  coderCopy = coder;
  [(STStatusBarDataNetworkEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:*&self->_wifiCallingEnabled forKey:{@"type", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_type forKey:@"string"];
  [coderCopy encodeObject:self->_string forKey:@"crossfadeString"];
  [coderCopy encodeObject:self->_crossfadeString forKey:@"badgeString"];
  [coderCopy encodeBool:LOBYTE(self->super._status) forKey:@"wifiCallingEnabled"];
  [coderCopy encodeBool:BYTE1(self->super._status) forKey:@"callForwardingEnabled"];
  [coderCopy encodeBool:BYTE2(self->super._status) forKey:@"showsSOSWhenDisabled"];
  [coderCopy encodeBool:BYTE3(self->super._status) forKey:@"sosAvailable"];
  [coderCopy encodeBool:BYTE4(self->super._status) forKey:@"isBootstrapCellular"];
}

- (STStatusBarDataCellularEntry)initWithCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = STStatusBarDataCellularEntry;
  coderCopy = coder;
  v4 = [(STStatusBarDataNetworkEntry *)&v13 initWithCoder:coderCopy];
  *&v4->_wifiCallingEnabled = [coderCopy decodeIntegerForKey:{@"type", v13.receiver, v13.super_class}];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"string"];
  type = v4->_type;
  v4->_type = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"crossfadeString"];
  string = v4->_string;
  v4->_string = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"badgeString"];
  crossfadeString = v4->_crossfadeString;
  v4->_crossfadeString = v9;

  LOBYTE(v4->super._status) = [coderCopy decodeBoolForKey:@"wifiCallingEnabled"];
  BYTE1(v4->super._status) = [coderCopy decodeBoolForKey:@"callForwardingEnabled"];
  BYTE2(v4->super._status) = [coderCopy decodeBoolForKey:@"showsSOSWhenDisabled"];
  BYTE3(v4->super._status) = [coderCopy decodeBoolForKey:@"sosAvailable"];
  v11 = [coderCopy decodeBoolForKey:@"isBootstrapCellular"];

  BYTE4(v4->super._status) = v11;
  return v4;
}

- (id)succinctDescriptionBuilder
{
  v14.receiver = self;
  v14.super_class = STStatusBarDataCellularEntry;
  succinctDescriptionBuilder = [(STStatusBarDataNetworkEntry *)&v14 succinctDescriptionBuilder];
  v4 = _STStatusBarDataCellularTypeDescription([(STStatusBarDataCellularEntry *)self type]);
  [succinctDescriptionBuilder appendString:v4 withName:@"type"];

  string = [(STStatusBarDataCellularEntry *)self string];
  [succinctDescriptionBuilder appendString:string withName:@"string" skipIfEmpty:1];

  crossfadeString = [(STStatusBarDataCellularEntry *)self crossfadeString];
  [succinctDescriptionBuilder appendString:crossfadeString withName:@"crossfadeString" skipIfEmpty:1];

  badgeString = [(STStatusBarDataCellularEntry *)self badgeString];
  [succinctDescriptionBuilder appendString:badgeString withName:@"badgeString" skipIfEmpty:1];

  v8 = [succinctDescriptionBuilder appendBool:-[STStatusBarDataCellularEntry wifiCallingEnabled](self withName:{"wifiCallingEnabled"), @"wifiCallingEnabled"}];
  v9 = [succinctDescriptionBuilder appendBool:-[STStatusBarDataCellularEntry callForwardingEnabled](self withName:{"callForwardingEnabled"), @"callForwardingEnabled"}];
  v10 = [succinctDescriptionBuilder appendBool:-[STStatusBarDataCellularEntry showsSOSWhenDisabled](self withName:{"showsSOSWhenDisabled"), @"showsSOSWhenDisabled"}];
  v11 = [succinctDescriptionBuilder appendBool:-[STStatusBarDataCellularEntry sosAvailable](self withName:{"sosAvailable"), @"sosAvailable"}];
  v12 = [succinctDescriptionBuilder appendBool:-[STStatusBarDataCellularEntry isBootstrapCellular](self withName:{"isBootstrapCellular"), @"isBootstrapCellular"}];

  return succinctDescriptionBuilder;
}

- (id)_equalsBuilderWithObject:(id)object
{
  objectCopy = object;
  v53.receiver = self;
  v53.super_class = STStatusBarDataCellularEntry;
  v5 = [(STStatusBarDataNetworkEntry *)&v53 _equalsBuilderWithObject:objectCopy];
  v6 = objectCopy;
  type = [(STStatusBarDataCellularEntry *)self type];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __57__STStatusBarDataCellularEntry__equalsBuilderWithObject___block_invoke;
  v51[3] = &unk_1E85DEAD0;
  v8 = v6;
  v52 = v8;
  v9 = [v5 appendInteger:type counterpart:v51];
  string = [(STStatusBarDataCellularEntry *)self string];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __57__STStatusBarDataCellularEntry__equalsBuilderWithObject___block_invoke_2;
  v49[3] = &unk_1E85DDD28;
  v11 = v8;
  v50 = v11;
  v12 = [v5 appendString:string counterpart:v49];

  crossfadeString = [(STStatusBarDataCellularEntry *)self crossfadeString];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __57__STStatusBarDataCellularEntry__equalsBuilderWithObject___block_invoke_3;
  v47[3] = &unk_1E85DDD28;
  v14 = v11;
  v48 = v14;
  v15 = [v5 appendString:crossfadeString counterpart:v47];

  badgeString = [(STStatusBarDataCellularEntry *)self badgeString];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __57__STStatusBarDataCellularEntry__equalsBuilderWithObject___block_invoke_4;
  v45[3] = &unk_1E85DDD28;
  v17 = v14;
  v46 = v17;
  v18 = [v5 appendString:badgeString counterpart:v45];

  wifiCallingEnabled = [(STStatusBarDataCellularEntry *)self wifiCallingEnabled];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __57__STStatusBarDataCellularEntry__equalsBuilderWithObject___block_invoke_5;
  v43[3] = &unk_1E85DDD50;
  v20 = v17;
  v44 = v20;
  v21 = [v5 appendBool:wifiCallingEnabled counterpart:v43];
  callForwardingEnabled = [(STStatusBarDataCellularEntry *)self callForwardingEnabled];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __57__STStatusBarDataCellularEntry__equalsBuilderWithObject___block_invoke_6;
  v41[3] = &unk_1E85DDD50;
  v23 = v20;
  v42 = v23;
  v24 = [v5 appendBool:callForwardingEnabled counterpart:v41];
  showsSOSWhenDisabled = [(STStatusBarDataCellularEntry *)self showsSOSWhenDisabled];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __57__STStatusBarDataCellularEntry__equalsBuilderWithObject___block_invoke_7;
  v39[3] = &unk_1E85DDD50;
  v26 = v23;
  v40 = v26;
  v27 = [v5 appendBool:showsSOSWhenDisabled counterpart:v39];
  sosAvailable = [(STStatusBarDataCellularEntry *)self sosAvailable];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __57__STStatusBarDataCellularEntry__equalsBuilderWithObject___block_invoke_8;
  v37[3] = &unk_1E85DDD50;
  v29 = v26;
  v38 = v29;
  v30 = [v5 appendBool:sosAvailable counterpart:v37];
  isBootstrapCellular = [(STStatusBarDataCellularEntry *)self isBootstrapCellular];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __57__STStatusBarDataCellularEntry__equalsBuilderWithObject___block_invoke_9;
  v35[3] = &unk_1E85DDD50;
  v36 = v29;
  v32 = v29;
  v33 = [v5 appendBool:isBootstrapCellular counterpart:v35];

  return v5;
}

- (id)_hashBuilder
{
  v17.receiver = self;
  v17.super_class = STStatusBarDataCellularEntry;
  _hashBuilder = [(STStatusBarDataNetworkEntry *)&v17 _hashBuilder];
  v4 = [_hashBuilder appendInteger:{-[STStatusBarDataCellularEntry type](self, "type")}];
  string = [(STStatusBarDataCellularEntry *)self string];
  v6 = [_hashBuilder appendString:string];

  crossfadeString = [(STStatusBarDataCellularEntry *)self crossfadeString];
  v8 = [_hashBuilder appendString:crossfadeString];

  badgeString = [(STStatusBarDataCellularEntry *)self badgeString];
  v10 = [_hashBuilder appendString:badgeString];

  v11 = [_hashBuilder appendBool:{-[STStatusBarDataCellularEntry wifiCallingEnabled](self, "wifiCallingEnabled")}];
  v12 = [_hashBuilder appendBool:{-[STStatusBarDataCellularEntry callForwardingEnabled](self, "callForwardingEnabled")}];
  v13 = [_hashBuilder appendBool:{-[STStatusBarDataCellularEntry showsSOSWhenDisabled](self, "showsSOSWhenDisabled")}];
  v14 = [_hashBuilder appendBool:{-[STStatusBarDataCellularEntry sosAvailable](self, "sosAvailable")}];
  v15 = [_hashBuilder appendBool:{-[STStatusBarDataCellularEntry isBootstrapCellular](self, "isBootstrapCellular")}];

  return _hashBuilder;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataCellularEntry;
  coderCopy = coder;
  [(STStatusBarDataNetworkEntry *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:*&self->_wifiCallingEnabled forKey:{@"type", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_type forKey:@"string"];
  [coderCopy encodeObject:self->_string forKey:@"crossfadeString"];
  [coderCopy encodeObject:self->_crossfadeString forKey:@"badgeString"];
  [coderCopy encodeBool:LOBYTE(self->super._status) forKey:@"wifiCallingEnabled"];
  [coderCopy encodeBool:BYTE1(self->super._status) forKey:@"callForwardingEnabled"];
  [coderCopy encodeBool:BYTE2(self->super._status) forKey:@"showsSOSWhenDisabled"];
  [coderCopy encodeBool:BYTE3(self->super._status) forKey:@"sosAvailable"];
  [coderCopy encodeBool:BYTE4(self->super._status) forKey:@"isBootstrapCellular"];
}

- (STStatusBarDataCellularEntry)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = STStatusBarDataCellularEntry;
  v5 = [(STStatusBarDataNetworkEntry *)&v13 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    *&v5->_wifiCallingEnabled = [coderCopy decodeInt64ForKey:@"type"];
    v6 = [coderCopy decodeStringForKey:@"string"];
    type = v5->_type;
    v5->_type = v6;

    v8 = [coderCopy decodeStringForKey:@"crossfadeString"];
    string = v5->_string;
    v5->_string = v8;

    v10 = [coderCopy decodeStringForKey:@"badgeString"];
    crossfadeString = v5->_crossfadeString;
    v5->_crossfadeString = v10;

    LOBYTE(v5->super._status) = [coderCopy decodeBoolForKey:@"wifiCallingEnabled"];
    BYTE1(v5->super._status) = [coderCopy decodeBoolForKey:@"callForwardingEnabled"];
    BYTE2(v5->super._status) = [coderCopy decodeBoolForKey:@"showsSOSWhenDisabled"];
    BYTE3(v5->super._status) = [coderCopy decodeBoolForKey:@"sosAvailable"];
    BYTE4(v5->super._status) = [coderCopy decodeBoolForKey:@"isBootstrapCellular"];
  }

  return v5;
}

@end