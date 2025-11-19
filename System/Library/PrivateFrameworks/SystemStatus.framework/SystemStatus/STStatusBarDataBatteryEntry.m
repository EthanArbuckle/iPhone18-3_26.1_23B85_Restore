@interface STStatusBarDataBatteryEntry
+ (id)entryWithCapacity:(int64_t)a3 state:(int64_t)a4 saverMode:(BOOL)a5 prominentlyShowsDetailString:(BOOL)a6 detailString:(id)a7;
- (STStatusBarDataBatteryEntry)initWithBSXPCCoder:(id)a3;
- (STStatusBarDataBatteryEntry)initWithCoder:(id)a3;
- (id)_equalsBuilderWithObject:(id)a3;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusBarDataBatteryEntry

+ (id)entryWithCapacity:(int64_t)a3 state:(int64_t)a4 saverMode:(BOOL)a5 prominentlyShowsDetailString:(BOOL)a6 detailString:(id)a7
{
  v12 = a7;
  v13 = objc_alloc_init(a1);
  v13[2] = a3;
  v13[3] = a4;
  *(v13 + 9) = a5;
  *(v13 + 10) = a6;
  v14 = [v12 copy];

  v15 = v13[4];
  v13[4] = v14;

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataBatteryEntry;
  v4 = a3;
  [(STStatusBarDataEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:*&self->_saverModeActive forKey:{@"capacity", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_capacity forKey:@"state"];
  [v4 encodeInteger:*(&self->super._enabled + 1) forKey:@"saverModeActive"];
  [v4 encodeInteger:*(&self->super._enabled + 2) forKey:@"prominentlyShowsDetailString"];
  [v4 encodeObject:self->_state forKey:@"detailString"];
}

- (STStatusBarDataBatteryEntry)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataBatteryEntry;
  v3 = a3;
  v4 = [(STStatusBarDataEntry *)&v8 initWithCoder:v3];
  *&v4->_saverModeActive = [v3 decodeIntegerForKey:{@"capacity", v8.receiver, v8.super_class}];
  v4->_capacity = [v3 decodeIntegerForKey:@"state"];
  *(&v4->super._enabled + 1) = [v3 decodeIntegerForKey:@"saverModeActive"] != 0;
  *(&v4->super._enabled + 2) = [v3 decodeIntegerForKey:@"prominentlyShowsDetailString"] != 0;
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"detailString"];

  state = v4->_state;
  v4->_state = v5;

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v11.receiver = self;
  v11.super_class = STStatusBarDataBatteryEntry;
  v3 = [(STStatusBarDataEntry *)&v11 succinctDescriptionBuilder];
  v4 = [v3 appendInteger:-[STStatusBarDataBatteryEntry capacity](self withName:{"capacity"), @"capacity"}];
  v5 = [(STStatusBarDataBatteryEntry *)self state];
  if (v5 > 3)
  {
    v6 = @"(unknown)";
  }

  else
  {
    v6 = off_1E85DEC20[v5];
  }

  [v3 appendString:v6 withName:@"state"];
  v7 = [v3 appendBool:-[STStatusBarDataBatteryEntry saverModeActive](self withName:{"saverModeActive"), @"saverModeActive"}];
  v8 = [v3 appendBool:-[STStatusBarDataBatteryEntry prominentlyShowsDetailString](self withName:{"prominentlyShowsDetailString"), @"prominentlyShowsDetailString"}];
  v9 = [(STStatusBarDataBatteryEntry *)self detailString];
  [v3 appendString:v9 withName:@"detailString" skipIfEmpty:1];

  return v3;
}

- (id)_equalsBuilderWithObject:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = STStatusBarDataBatteryEntry;
  v5 = [(STStatusBarDataEntry *)&v33 _equalsBuilderWithObject:v4];
  v6 = v4;
  v7 = [(STStatusBarDataBatteryEntry *)self capacity];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __56__STStatusBarDataBatteryEntry__equalsBuilderWithObject___block_invoke;
  v31[3] = &unk_1E85DEAD0;
  v8 = v6;
  v32 = v8;
  v9 = [v5 appendInteger:v7 counterpart:v31];
  v10 = [(STStatusBarDataBatteryEntry *)self state];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __56__STStatusBarDataBatteryEntry__equalsBuilderWithObject___block_invoke_2;
  v29[3] = &unk_1E85DEAD0;
  v11 = v8;
  v30 = v11;
  v12 = [v5 appendInteger:v10 counterpart:v29];
  v13 = [(STStatusBarDataBatteryEntry *)self saverModeActive];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __56__STStatusBarDataBatteryEntry__equalsBuilderWithObject___block_invoke_3;
  v27[3] = &unk_1E85DDD50;
  v14 = v11;
  v28 = v14;
  v15 = [v5 appendBool:v13 counterpart:v27];
  v16 = [(STStatusBarDataBatteryEntry *)self prominentlyShowsDetailString];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __56__STStatusBarDataBatteryEntry__equalsBuilderWithObject___block_invoke_4;
  v25[3] = &unk_1E85DDD50;
  v17 = v14;
  v26 = v17;
  v18 = [v5 appendBool:v16 counterpart:v25];
  v19 = [(STStatusBarDataBatteryEntry *)self detailString];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __56__STStatusBarDataBatteryEntry__equalsBuilderWithObject___block_invoke_5;
  v23[3] = &unk_1E85DDD28;
  v24 = v17;
  v20 = v17;
  v21 = [v5 appendString:v19 counterpart:v23];

  return v5;
}

- (id)_hashBuilder
{
  v11.receiver = self;
  v11.super_class = STStatusBarDataBatteryEntry;
  v3 = [(STStatusBarDataEntry *)&v11 _hashBuilder];
  v4 = [v3 appendInteger:{-[STStatusBarDataBatteryEntry capacity](self, "capacity")}];
  v5 = [v3 appendInteger:{-[STStatusBarDataBatteryEntry state](self, "state")}];
  v6 = [v3 appendBool:{-[STStatusBarDataBatteryEntry saverModeActive](self, "saverModeActive")}];
  v7 = [v3 appendBool:{-[STStatusBarDataBatteryEntry prominentlyShowsDetailString](self, "prominentlyShowsDetailString")}];
  v8 = [(STStatusBarDataBatteryEntry *)self detailString];
  v9 = [v3 appendString:v8];

  return v3;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataBatteryEntry;
  v4 = a3;
  [(STStatusBarDataEntry *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeInt64:*&self->_saverModeActive forKey:{@"capacity", v5.receiver, v5.super_class}];
  [v4 encodeInt64:self->_capacity forKey:@"state"];
  [v4 encodeInt64:*(&self->super._enabled + 1) forKey:@"saverModeActive"];
  [v4 encodeInt64:*(&self->super._enabled + 2) forKey:@"prominentlyShowsDetailString"];
  [v4 encodeObject:self->_state forKey:@"detailString"];
}

- (STStatusBarDataBatteryEntry)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STStatusBarDataBatteryEntry;
  v5 = [(STStatusBarDataEntry *)&v9 initWithBSXPCCoder:v4];
  if (v5)
  {
    *&v5->_saverModeActive = [v4 decodeInt64ForKey:@"capacity"];
    v5->_capacity = [v4 decodeInt64ForKey:@"state"];
    *(&v5->super._enabled + 1) = [v4 decodeInt64ForKey:@"saverModeActive"] != 0;
    *(&v5->super._enabled + 2) = [v4 decodeInt64ForKey:@"prominentlyShowsDetailString"] != 0;
    v6 = [v4 decodeStringForKey:@"detailString"];
    state = v5->_state;
    v5->_state = v6;
  }

  return v5;
}

@end