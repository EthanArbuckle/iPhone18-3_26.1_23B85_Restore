@interface STStatusBarDataCellularEntry
+ (id)entryWithType:(int64_t)a3 stringValue:(id)a4 crossfadeStringValue:(id)a5 badgeStringValue:(id)a6 wifiCalling:(BOOL)a7 callForwarding:(BOOL)a8 showsSOSWhenDisabled:(BOOL)a9 sosAvailable:(BOOL)a10 isBootstrapCellular:(BOOL)a11 status:(int64_t)a12 lowDataMode:(BOOL)a13 rawValue:(int64_t)a14 displayValue:(int64_t)a15 displayRawValue:(BOOL)a16;
- (STStatusBarDataCellularEntry)initWithBSXPCCoder:(id)a3;
- (STStatusBarDataCellularEntry)initWithCoder:(id)a3;
- (id)_equalsBuilderWithObject:(id)a3;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusBarDataCellularEntry

+ (id)entryWithType:(int64_t)a3 stringValue:(id)a4 crossfadeStringValue:(id)a5 badgeStringValue:(id)a6 wifiCalling:(BOOL)a7 callForwarding:(BOOL)a8 showsSOSWhenDisabled:(BOOL)a9 sosAvailable:(BOOL)a10 isBootstrapCellular:(BOOL)a11 status:(int64_t)a12 lowDataMode:(BOOL)a13 rawValue:(int64_t)a14 displayValue:(int64_t)a15 displayRawValue:(BOOL)a16
{
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = [a1 entryWithStatus:a12 lowDataMode:a13 rawValue:a14 displayValue:a15 displayRawValue:a16];
  *(v22 + 56) = a3;
  v23 = [v21 copy];

  v24 = *(v22 + 64);
  *(v22 + 64) = v23;

  v25 = [v20 copy];
  v26 = *(v22 + 72);
  *(v22 + 72) = v25;

  v27 = [v19 copy];
  v28 = *(v22 + 80);
  *(v22 + 80) = v27;

  *(v22 + 48) = a7;
  *(v22 + 49) = a8;
  *(v22 + 50) = a9;
  *(v22 + 51) = a10;
  *(v22 + 52) = a11;

  return v22;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataCellularEntry;
  v4 = a3;
  [(STStatusBarDataNetworkEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:*&self->_wifiCallingEnabled forKey:{@"type", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_type forKey:@"string"];
  [v4 encodeObject:self->_string forKey:@"crossfadeString"];
  [v4 encodeObject:self->_crossfadeString forKey:@"badgeString"];
  [v4 encodeBool:LOBYTE(self->super._status) forKey:@"wifiCallingEnabled"];
  [v4 encodeBool:BYTE1(self->super._status) forKey:@"callForwardingEnabled"];
  [v4 encodeBool:BYTE2(self->super._status) forKey:@"showsSOSWhenDisabled"];
  [v4 encodeBool:BYTE3(self->super._status) forKey:@"sosAvailable"];
  [v4 encodeBool:BYTE4(self->super._status) forKey:@"isBootstrapCellular"];
}

- (STStatusBarDataCellularEntry)initWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = STStatusBarDataCellularEntry;
  v3 = a3;
  v4 = [(STStatusBarDataNetworkEntry *)&v13 initWithCoder:v3];
  *&v4->_wifiCallingEnabled = [v3 decodeIntegerForKey:{@"type", v13.receiver, v13.super_class}];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"string"];
  type = v4->_type;
  v4->_type = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"crossfadeString"];
  string = v4->_string;
  v4->_string = v7;

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"badgeString"];
  crossfadeString = v4->_crossfadeString;
  v4->_crossfadeString = v9;

  LOBYTE(v4->super._status) = [v3 decodeBoolForKey:@"wifiCallingEnabled"];
  BYTE1(v4->super._status) = [v3 decodeBoolForKey:@"callForwardingEnabled"];
  BYTE2(v4->super._status) = [v3 decodeBoolForKey:@"showsSOSWhenDisabled"];
  BYTE3(v4->super._status) = [v3 decodeBoolForKey:@"sosAvailable"];
  v11 = [v3 decodeBoolForKey:@"isBootstrapCellular"];

  BYTE4(v4->super._status) = v11;
  return v4;
}

- (id)succinctDescriptionBuilder
{
  v14.receiver = self;
  v14.super_class = STStatusBarDataCellularEntry;
  v3 = [(STStatusBarDataNetworkEntry *)&v14 succinctDescriptionBuilder];
  v4 = _STStatusBarDataCellularTypeDescription([(STStatusBarDataCellularEntry *)self type]);
  [v3 appendString:v4 withName:@"type"];

  v5 = [(STStatusBarDataCellularEntry *)self string];
  [v3 appendString:v5 withName:@"string" skipIfEmpty:1];

  v6 = [(STStatusBarDataCellularEntry *)self crossfadeString];
  [v3 appendString:v6 withName:@"crossfadeString" skipIfEmpty:1];

  v7 = [(STStatusBarDataCellularEntry *)self badgeString];
  [v3 appendString:v7 withName:@"badgeString" skipIfEmpty:1];

  v8 = [v3 appendBool:-[STStatusBarDataCellularEntry wifiCallingEnabled](self withName:{"wifiCallingEnabled"), @"wifiCallingEnabled"}];
  v9 = [v3 appendBool:-[STStatusBarDataCellularEntry callForwardingEnabled](self withName:{"callForwardingEnabled"), @"callForwardingEnabled"}];
  v10 = [v3 appendBool:-[STStatusBarDataCellularEntry showsSOSWhenDisabled](self withName:{"showsSOSWhenDisabled"), @"showsSOSWhenDisabled"}];
  v11 = [v3 appendBool:-[STStatusBarDataCellularEntry sosAvailable](self withName:{"sosAvailable"), @"sosAvailable"}];
  v12 = [v3 appendBool:-[STStatusBarDataCellularEntry isBootstrapCellular](self withName:{"isBootstrapCellular"), @"isBootstrapCellular"}];

  return v3;
}

- (id)_equalsBuilderWithObject:(id)a3
{
  v4 = a3;
  v53.receiver = self;
  v53.super_class = STStatusBarDataCellularEntry;
  v5 = [(STStatusBarDataNetworkEntry *)&v53 _equalsBuilderWithObject:v4];
  v6 = v4;
  v7 = [(STStatusBarDataCellularEntry *)self type];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __57__STStatusBarDataCellularEntry__equalsBuilderWithObject___block_invoke;
  v51[3] = &unk_1E85DEAD0;
  v8 = v6;
  v52 = v8;
  v9 = [v5 appendInteger:v7 counterpart:v51];
  v10 = [(STStatusBarDataCellularEntry *)self string];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __57__STStatusBarDataCellularEntry__equalsBuilderWithObject___block_invoke_2;
  v49[3] = &unk_1E85DDD28;
  v11 = v8;
  v50 = v11;
  v12 = [v5 appendString:v10 counterpart:v49];

  v13 = [(STStatusBarDataCellularEntry *)self crossfadeString];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __57__STStatusBarDataCellularEntry__equalsBuilderWithObject___block_invoke_3;
  v47[3] = &unk_1E85DDD28;
  v14 = v11;
  v48 = v14;
  v15 = [v5 appendString:v13 counterpart:v47];

  v16 = [(STStatusBarDataCellularEntry *)self badgeString];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __57__STStatusBarDataCellularEntry__equalsBuilderWithObject___block_invoke_4;
  v45[3] = &unk_1E85DDD28;
  v17 = v14;
  v46 = v17;
  v18 = [v5 appendString:v16 counterpart:v45];

  v19 = [(STStatusBarDataCellularEntry *)self wifiCallingEnabled];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __57__STStatusBarDataCellularEntry__equalsBuilderWithObject___block_invoke_5;
  v43[3] = &unk_1E85DDD50;
  v20 = v17;
  v44 = v20;
  v21 = [v5 appendBool:v19 counterpart:v43];
  v22 = [(STStatusBarDataCellularEntry *)self callForwardingEnabled];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __57__STStatusBarDataCellularEntry__equalsBuilderWithObject___block_invoke_6;
  v41[3] = &unk_1E85DDD50;
  v23 = v20;
  v42 = v23;
  v24 = [v5 appendBool:v22 counterpart:v41];
  v25 = [(STStatusBarDataCellularEntry *)self showsSOSWhenDisabled];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __57__STStatusBarDataCellularEntry__equalsBuilderWithObject___block_invoke_7;
  v39[3] = &unk_1E85DDD50;
  v26 = v23;
  v40 = v26;
  v27 = [v5 appendBool:v25 counterpart:v39];
  v28 = [(STStatusBarDataCellularEntry *)self sosAvailable];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __57__STStatusBarDataCellularEntry__equalsBuilderWithObject___block_invoke_8;
  v37[3] = &unk_1E85DDD50;
  v29 = v26;
  v38 = v29;
  v30 = [v5 appendBool:v28 counterpart:v37];
  v31 = [(STStatusBarDataCellularEntry *)self isBootstrapCellular];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __57__STStatusBarDataCellularEntry__equalsBuilderWithObject___block_invoke_9;
  v35[3] = &unk_1E85DDD50;
  v36 = v29;
  v32 = v29;
  v33 = [v5 appendBool:v31 counterpart:v35];

  return v5;
}

- (id)_hashBuilder
{
  v17.receiver = self;
  v17.super_class = STStatusBarDataCellularEntry;
  v3 = [(STStatusBarDataNetworkEntry *)&v17 _hashBuilder];
  v4 = [v3 appendInteger:{-[STStatusBarDataCellularEntry type](self, "type")}];
  v5 = [(STStatusBarDataCellularEntry *)self string];
  v6 = [v3 appendString:v5];

  v7 = [(STStatusBarDataCellularEntry *)self crossfadeString];
  v8 = [v3 appendString:v7];

  v9 = [(STStatusBarDataCellularEntry *)self badgeString];
  v10 = [v3 appendString:v9];

  v11 = [v3 appendBool:{-[STStatusBarDataCellularEntry wifiCallingEnabled](self, "wifiCallingEnabled")}];
  v12 = [v3 appendBool:{-[STStatusBarDataCellularEntry callForwardingEnabled](self, "callForwardingEnabled")}];
  v13 = [v3 appendBool:{-[STStatusBarDataCellularEntry showsSOSWhenDisabled](self, "showsSOSWhenDisabled")}];
  v14 = [v3 appendBool:{-[STStatusBarDataCellularEntry sosAvailable](self, "sosAvailable")}];
  v15 = [v3 appendBool:{-[STStatusBarDataCellularEntry isBootstrapCellular](self, "isBootstrapCellular")}];

  return v3;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataCellularEntry;
  v4 = a3;
  [(STStatusBarDataNetworkEntry *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeInt64:*&self->_wifiCallingEnabled forKey:{@"type", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_type forKey:@"string"];
  [v4 encodeObject:self->_string forKey:@"crossfadeString"];
  [v4 encodeObject:self->_crossfadeString forKey:@"badgeString"];
  [v4 encodeBool:LOBYTE(self->super._status) forKey:@"wifiCallingEnabled"];
  [v4 encodeBool:BYTE1(self->super._status) forKey:@"callForwardingEnabled"];
  [v4 encodeBool:BYTE2(self->super._status) forKey:@"showsSOSWhenDisabled"];
  [v4 encodeBool:BYTE3(self->super._status) forKey:@"sosAvailable"];
  [v4 encodeBool:BYTE4(self->super._status) forKey:@"isBootstrapCellular"];
}

- (STStatusBarDataCellularEntry)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STStatusBarDataCellularEntry;
  v5 = [(STStatusBarDataNetworkEntry *)&v13 initWithBSXPCCoder:v4];
  if (v5)
  {
    *&v5->_wifiCallingEnabled = [v4 decodeInt64ForKey:@"type"];
    v6 = [v4 decodeStringForKey:@"string"];
    type = v5->_type;
    v5->_type = v6;

    v8 = [v4 decodeStringForKey:@"crossfadeString"];
    string = v5->_string;
    v5->_string = v8;

    v10 = [v4 decodeStringForKey:@"badgeString"];
    crossfadeString = v5->_crossfadeString;
    v5->_crossfadeString = v10;

    LOBYTE(v5->super._status) = [v4 decodeBoolForKey:@"wifiCallingEnabled"];
    BYTE1(v5->super._status) = [v4 decodeBoolForKey:@"callForwardingEnabled"];
    BYTE2(v5->super._status) = [v4 decodeBoolForKey:@"showsSOSWhenDisabled"];
    BYTE3(v5->super._status) = [v4 decodeBoolForKey:@"sosAvailable"];
    BYTE4(v5->super._status) = [v4 decodeBoolForKey:@"isBootstrapCellular"];
  }

  return v5;
}

@end