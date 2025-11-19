@interface STStatusBarDataActivityEntry
+ (STStatusBarDataActivityEntry)entryWithType:(int64_t)a3 displayID:(id)a4;
- (STStatusBarDataActivityEntry)initWithBSXPCCoder:(id)a3;
- (STStatusBarDataActivityEntry)initWithCoder:(id)a3;
- (id)_equalsBuilderWithObject:(id)a3;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusBarDataActivityEntry

- (id)succinctDescriptionBuilder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataActivityEntry;
  v3 = [(STStatusBarDataEntry *)&v8 succinctDescriptionBuilder];
  v4 = [(STStatusBarDataActivityEntry *)self type];
  if (v4 > 2)
  {
    v5 = @"(unknown)";
  }

  else
  {
    v5 = off_1E85DEC58[v4];
  }

  [v3 appendString:v5 withName:@"type"];
  v6 = [(STStatusBarDataActivityEntry *)self displayId];
  [v3 appendString:v6 withName:@"displayId" skipIfEmpty:1];

  return v3;
}

+ (STStatusBarDataActivityEntry)entryWithType:(int64_t)a3 displayID:(id)a4
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
  v5.super_class = STStatusBarDataActivityEntry;
  v4 = a3;
  [(STStatusBarDataEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_displayId forKey:@"displayId"];
}

- (STStatusBarDataActivityEntry)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataActivityEntry;
  v3 = a3;
  v4 = [(STStatusBarDataEntry *)&v8 initWithCoder:v3];
  v4->_type = [v3 decodeIntegerForKey:{@"type", v8.receiver, v8.super_class}];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"displayId"];

  displayId = v4->_displayId;
  v4->_displayId = v5;

  return v4;
}

- (id)_equalsBuilderWithObject:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = STStatusBarDataActivityEntry;
  v5 = [(STStatusBarDataEntry *)&v18 _equalsBuilderWithObject:v4];
  v6 = v4;
  v7 = [(STStatusBarDataActivityEntry *)self type];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__STStatusBarDataActivityEntry__equalsBuilderWithObject___block_invoke;
  v16[3] = &unk_1E85DEAD0;
  v8 = v6;
  v17 = v8;
  v9 = [v5 appendInteger:v7 counterpart:v16];
  v10 = [(STStatusBarDataActivityEntry *)self displayId];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__STStatusBarDataActivityEntry__equalsBuilderWithObject___block_invoke_2;
  v14[3] = &unk_1E85DDD28;
  v15 = v8;
  v11 = v8;
  v12 = [v5 appendString:v10 counterpart:v14];

  return v5;
}

- (id)_hashBuilder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataActivityEntry;
  v3 = [(STStatusBarDataEntry *)&v8 _hashBuilder];
  v4 = [v3 appendInteger:{-[STStatusBarDataActivityEntry type](self, "type")}];
  v5 = [(STStatusBarDataActivityEntry *)self displayId];
  v6 = [v3 appendString:v5];

  return v3;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataActivityEntry;
  v4 = a3;
  [(STStatusBarDataEntry *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeInt64:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_displayId forKey:@"displayId"];
}

- (STStatusBarDataActivityEntry)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STStatusBarDataActivityEntry;
  v5 = [(STStatusBarDataEntry *)&v9 initWithBSXPCCoder:v4];
  if (v5)
  {
    v5->_type = [v4 decodeInt64ForKey:@"type"];
    v6 = [v4 decodeStringForKey:@"displayId"];
    displayId = v5->_displayId;
    v5->_displayId = v6;
  }

  return v5;
}

@end