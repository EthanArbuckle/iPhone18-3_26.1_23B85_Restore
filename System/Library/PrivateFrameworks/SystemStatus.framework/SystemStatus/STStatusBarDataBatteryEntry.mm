@interface STStatusBarDataBatteryEntry
+ (id)entryWithCapacity:(int64_t)capacity state:(int64_t)state saverMode:(BOOL)mode prominentlyShowsDetailString:(BOOL)string detailString:(id)detailString;
- (STStatusBarDataBatteryEntry)initWithBSXPCCoder:(id)coder;
- (STStatusBarDataBatteryEntry)initWithCoder:(id)coder;
- (id)_equalsBuilderWithObject:(id)object;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusBarDataBatteryEntry

+ (id)entryWithCapacity:(int64_t)capacity state:(int64_t)state saverMode:(BOOL)mode prominentlyShowsDetailString:(BOOL)string detailString:(id)detailString
{
  detailStringCopy = detailString;
  v13 = objc_alloc_init(self);
  v13[2] = capacity;
  v13[3] = state;
  *(v13 + 9) = mode;
  *(v13 + 10) = string;
  v14 = [detailStringCopy copy];

  v15 = v13[4];
  v13[4] = v14;

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataBatteryEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:*&self->_saverModeActive forKey:{@"capacity", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_capacity forKey:@"state"];
  [coderCopy encodeInteger:*(&self->super._enabled + 1) forKey:@"saverModeActive"];
  [coderCopy encodeInteger:*(&self->super._enabled + 2) forKey:@"prominentlyShowsDetailString"];
  [coderCopy encodeObject:self->_state forKey:@"detailString"];
}

- (STStatusBarDataBatteryEntry)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataBatteryEntry;
  coderCopy = coder;
  v4 = [(STStatusBarDataEntry *)&v8 initWithCoder:coderCopy];
  *&v4->_saverModeActive = [coderCopy decodeIntegerForKey:{@"capacity", v8.receiver, v8.super_class}];
  v4->_capacity = [coderCopy decodeIntegerForKey:@"state"];
  *(&v4->super._enabled + 1) = [coderCopy decodeIntegerForKey:@"saverModeActive"] != 0;
  *(&v4->super._enabled + 2) = [coderCopy decodeIntegerForKey:@"prominentlyShowsDetailString"] != 0;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"detailString"];

  state = v4->_state;
  v4->_state = v5;

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v11.receiver = self;
  v11.super_class = STStatusBarDataBatteryEntry;
  succinctDescriptionBuilder = [(STStatusBarDataEntry *)&v11 succinctDescriptionBuilder];
  v4 = [succinctDescriptionBuilder appendInteger:-[STStatusBarDataBatteryEntry capacity](self withName:{"capacity"), @"capacity"}];
  state = [(STStatusBarDataBatteryEntry *)self state];
  if (state > 3)
  {
    v6 = @"(unknown)";
  }

  else
  {
    v6 = off_1E85DEC20[state];
  }

  [succinctDescriptionBuilder appendString:v6 withName:@"state"];
  v7 = [succinctDescriptionBuilder appendBool:-[STStatusBarDataBatteryEntry saverModeActive](self withName:{"saverModeActive"), @"saverModeActive"}];
  v8 = [succinctDescriptionBuilder appendBool:-[STStatusBarDataBatteryEntry prominentlyShowsDetailString](self withName:{"prominentlyShowsDetailString"), @"prominentlyShowsDetailString"}];
  detailString = [(STStatusBarDataBatteryEntry *)self detailString];
  [succinctDescriptionBuilder appendString:detailString withName:@"detailString" skipIfEmpty:1];

  return succinctDescriptionBuilder;
}

- (id)_equalsBuilderWithObject:(id)object
{
  objectCopy = object;
  v33.receiver = self;
  v33.super_class = STStatusBarDataBatteryEntry;
  v5 = [(STStatusBarDataEntry *)&v33 _equalsBuilderWithObject:objectCopy];
  v6 = objectCopy;
  capacity = [(STStatusBarDataBatteryEntry *)self capacity];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __56__STStatusBarDataBatteryEntry__equalsBuilderWithObject___block_invoke;
  v31[3] = &unk_1E85DEAD0;
  v8 = v6;
  v32 = v8;
  v9 = [v5 appendInteger:capacity counterpart:v31];
  state = [(STStatusBarDataBatteryEntry *)self state];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __56__STStatusBarDataBatteryEntry__equalsBuilderWithObject___block_invoke_2;
  v29[3] = &unk_1E85DEAD0;
  v11 = v8;
  v30 = v11;
  v12 = [v5 appendInteger:state counterpart:v29];
  saverModeActive = [(STStatusBarDataBatteryEntry *)self saverModeActive];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __56__STStatusBarDataBatteryEntry__equalsBuilderWithObject___block_invoke_3;
  v27[3] = &unk_1E85DDD50;
  v14 = v11;
  v28 = v14;
  v15 = [v5 appendBool:saverModeActive counterpart:v27];
  prominentlyShowsDetailString = [(STStatusBarDataBatteryEntry *)self prominentlyShowsDetailString];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __56__STStatusBarDataBatteryEntry__equalsBuilderWithObject___block_invoke_4;
  v25[3] = &unk_1E85DDD50;
  v17 = v14;
  v26 = v17;
  v18 = [v5 appendBool:prominentlyShowsDetailString counterpart:v25];
  detailString = [(STStatusBarDataBatteryEntry *)self detailString];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __56__STStatusBarDataBatteryEntry__equalsBuilderWithObject___block_invoke_5;
  v23[3] = &unk_1E85DDD28;
  v24 = v17;
  v20 = v17;
  v21 = [v5 appendString:detailString counterpart:v23];

  return v5;
}

- (id)_hashBuilder
{
  v11.receiver = self;
  v11.super_class = STStatusBarDataBatteryEntry;
  _hashBuilder = [(STStatusBarDataEntry *)&v11 _hashBuilder];
  v4 = [_hashBuilder appendInteger:{-[STStatusBarDataBatteryEntry capacity](self, "capacity")}];
  v5 = [_hashBuilder appendInteger:{-[STStatusBarDataBatteryEntry state](self, "state")}];
  v6 = [_hashBuilder appendBool:{-[STStatusBarDataBatteryEntry saverModeActive](self, "saverModeActive")}];
  v7 = [_hashBuilder appendBool:{-[STStatusBarDataBatteryEntry prominentlyShowsDetailString](self, "prominentlyShowsDetailString")}];
  detailString = [(STStatusBarDataBatteryEntry *)self detailString];
  v9 = [_hashBuilder appendString:detailString];

  return _hashBuilder;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataBatteryEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:*&self->_saverModeActive forKey:{@"capacity", v5.receiver, v5.super_class}];
  [coderCopy encodeInt64:self->_capacity forKey:@"state"];
  [coderCopy encodeInt64:*(&self->super._enabled + 1) forKey:@"saverModeActive"];
  [coderCopy encodeInt64:*(&self->super._enabled + 2) forKey:@"prominentlyShowsDetailString"];
  [coderCopy encodeObject:self->_state forKey:@"detailString"];
}

- (STStatusBarDataBatteryEntry)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STStatusBarDataBatteryEntry;
  v5 = [(STStatusBarDataEntry *)&v9 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    *&v5->_saverModeActive = [coderCopy decodeInt64ForKey:@"capacity"];
    v5->_capacity = [coderCopy decodeInt64ForKey:@"state"];
    *(&v5->super._enabled + 1) = [coderCopy decodeInt64ForKey:@"saverModeActive"] != 0;
    *(&v5->super._enabled + 2) = [coderCopy decodeInt64ForKey:@"prominentlyShowsDetailString"] != 0;
    v6 = [coderCopy decodeStringForKey:@"detailString"];
    state = v5->_state;
    v5->_state = v6;
  }

  return v5;
}

@end