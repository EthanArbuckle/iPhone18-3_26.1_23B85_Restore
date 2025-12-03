@interface STStatusBarDataTetheringEntry
+ (STStatusBarDataTetheringEntry)entryWithConnectionCount:(int64_t)count;
- (STStatusBarDataTetheringEntry)initWithBSXPCCoder:(id)coder;
- (STStatusBarDataTetheringEntry)initWithCoder:(id)coder;
- (id)_equalsBuilderWithObject:(id)object;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusBarDataTetheringEntry

+ (STStatusBarDataTetheringEntry)entryWithConnectionCount:(int64_t)count
{
  v4 = objc_alloc_init(self);
  v4[2] = count;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataTetheringEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_connectionCount forKey:{@"connectionCount", v5.receiver, v5.super_class}];
}

- (STStatusBarDataTetheringEntry)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataTetheringEntry;
  coderCopy = coder;
  v4 = [(STStatusBarDataEntry *)&v7 initWithCoder:coderCopy];
  v5 = [coderCopy decodeIntegerForKey:{@"connectionCount", v7.receiver, v7.super_class}];

  v4->_connectionCount = v5;
  return v4;
}

- (id)succinctDescriptionBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataTetheringEntry;
  succinctDescriptionBuilder = [(STStatusBarDataEntry *)&v6 succinctDescriptionBuilder];
  v4 = [succinctDescriptionBuilder appendInteger:-[STStatusBarDataTetheringEntry connectionCount](self withName:{"connectionCount"), @"connectionCount"}];

  return succinctDescriptionBuilder;
}

- (id)_equalsBuilderWithObject:(id)object
{
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = STStatusBarDataTetheringEntry;
  v5 = [(STStatusBarDataEntry *)&v13 _equalsBuilderWithObject:objectCopy];
  v6 = objectCopy;
  connectionCount = [(STStatusBarDataTetheringEntry *)self connectionCount];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__STStatusBarDataTetheringEntry__equalsBuilderWithObject___block_invoke;
  v11[3] = &unk_1E85DEAD0;
  v12 = v6;
  v8 = v6;
  v9 = [v5 appendInteger:connectionCount counterpart:v11];

  return v5;
}

- (id)_hashBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataTetheringEntry;
  _hashBuilder = [(STStatusBarDataEntry *)&v6 _hashBuilder];
  v4 = [_hashBuilder appendInteger:{-[STStatusBarDataTetheringEntry connectionCount](self, "connectionCount")}];

  return _hashBuilder;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataTetheringEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:self->_connectionCount forKey:{@"connectionCount", v5.receiver, v5.super_class}];
}

- (STStatusBarDataTetheringEntry)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = STStatusBarDataTetheringEntry;
  v5 = [(STStatusBarDataEntry *)&v7 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_connectionCount = [coderCopy decodeInt64ForKey:@"connectionCount"];
  }

  return v5;
}

@end