@interface STStatusBarDataTetheringEntry
+ (STStatusBarDataTetheringEntry)entryWithConnectionCount:(int64_t)a3;
- (STStatusBarDataTetheringEntry)initWithBSXPCCoder:(id)a3;
- (STStatusBarDataTetheringEntry)initWithCoder:(id)a3;
- (id)_equalsBuilderWithObject:(id)a3;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusBarDataTetheringEntry

+ (STStatusBarDataTetheringEntry)entryWithConnectionCount:(int64_t)a3
{
  v4 = objc_alloc_init(a1);
  v4[2] = a3;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataTetheringEntry;
  v4 = a3;
  [(STStatusBarDataEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_connectionCount forKey:{@"connectionCount", v5.receiver, v5.super_class}];
}

- (STStatusBarDataTetheringEntry)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataTetheringEntry;
  v3 = a3;
  v4 = [(STStatusBarDataEntry *)&v7 initWithCoder:v3];
  v5 = [v3 decodeIntegerForKey:{@"connectionCount", v7.receiver, v7.super_class}];

  v4->_connectionCount = v5;
  return v4;
}

- (id)succinctDescriptionBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataTetheringEntry;
  v3 = [(STStatusBarDataEntry *)&v6 succinctDescriptionBuilder];
  v4 = [v3 appendInteger:-[STStatusBarDataTetheringEntry connectionCount](self withName:{"connectionCount"), @"connectionCount"}];

  return v3;
}

- (id)_equalsBuilderWithObject:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STStatusBarDataTetheringEntry;
  v5 = [(STStatusBarDataEntry *)&v13 _equalsBuilderWithObject:v4];
  v6 = v4;
  v7 = [(STStatusBarDataTetheringEntry *)self connectionCount];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__STStatusBarDataTetheringEntry__equalsBuilderWithObject___block_invoke;
  v11[3] = &unk_1E85DEAD0;
  v12 = v6;
  v8 = v6;
  v9 = [v5 appendInteger:v7 counterpart:v11];

  return v5;
}

- (id)_hashBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataTetheringEntry;
  v3 = [(STStatusBarDataEntry *)&v6 _hashBuilder];
  v4 = [v3 appendInteger:{-[STStatusBarDataTetheringEntry connectionCount](self, "connectionCount")}];

  return v3;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataTetheringEntry;
  v4 = a3;
  [(STStatusBarDataEntry *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeInt64:self->_connectionCount forKey:{@"connectionCount", v5.receiver, v5.super_class}];
}

- (STStatusBarDataTetheringEntry)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = STStatusBarDataTetheringEntry;
  v5 = [(STStatusBarDataEntry *)&v7 initWithBSXPCCoder:v4];
  if (v5)
  {
    v5->_connectionCount = [v4 decodeInt64ForKey:@"connectionCount"];
  }

  return v5;
}

@end