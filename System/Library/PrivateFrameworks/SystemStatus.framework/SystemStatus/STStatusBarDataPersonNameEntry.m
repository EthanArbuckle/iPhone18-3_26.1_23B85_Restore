@interface STStatusBarDataPersonNameEntry
+ (STStatusBarDataPersonNameEntry)entryWithStringValue:(id)a3 avatarIdentifier:(id)a4;
- (STStatusBarDataPersonNameEntry)initWithBSXPCCoder:(id)a3;
- (STStatusBarDataPersonNameEntry)initWithCoder:(id)a3;
- (id)_equalsBuilderWithObject:(id)a3;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusBarDataPersonNameEntry

+ (STStatusBarDataPersonNameEntry)entryWithStringValue:(id)a3 avatarIdentifier:(id)a4
{
  v6 = a4;
  v7 = [a1 entryWithStringValue:a3];
  v8 = [v6 copy];

  v9 = v7[3];
  v7[3] = v8;

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataPersonNameEntry;
  v4 = a3;
  [(STStatusBarDataStringEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_avatarIdentifier forKey:{@"avatarIdentifier", v5.receiver, v5.super_class}];
}

- (STStatusBarDataPersonNameEntry)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataPersonNameEntry;
  v3 = a3;
  v4 = [(STStatusBarDataStringEntry *)&v8 initWithCoder:v3];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"avatarIdentifier", v8.receiver, v8.super_class}];

  avatarIdentifier = v4->_avatarIdentifier;
  v4->_avatarIdentifier = v5;

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataPersonNameEntry;
  v3 = [(STStatusBarDataStringEntry *)&v6 succinctDescriptionBuilder];
  v4 = [(STStatusBarDataPersonNameEntry *)self avatarIdentifier];
  [v3 appendString:v4 withName:@"avatarIdentifier"];

  return v3;
}

- (id)_equalsBuilderWithObject:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STStatusBarDataPersonNameEntry;
  v5 = [(STStatusBarDataStringEntry *)&v13 _equalsBuilderWithObject:v4];
  v6 = v4;
  v7 = [(STStatusBarDataPersonNameEntry *)self avatarIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__STStatusBarDataPersonNameEntry__equalsBuilderWithObject___block_invoke;
  v11[3] = &unk_1E85DDD28;
  v12 = v6;
  v8 = v6;
  v9 = [v5 appendString:v7 counterpart:v11];

  return v5;
}

- (id)_hashBuilder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataPersonNameEntry;
  v3 = [(STStatusBarDataStringEntry *)&v7 _hashBuilder];
  v4 = [(STStatusBarDataPersonNameEntry *)self avatarIdentifier];
  v5 = [v3 appendString:v4];

  return v3;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataPersonNameEntry;
  v4 = a3;
  [(STStatusBarDataStringEntry *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeObject:self->_avatarIdentifier forKey:{@"avatarIdentifier", v5.receiver, v5.super_class}];
}

- (STStatusBarDataPersonNameEntry)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STStatusBarDataPersonNameEntry;
  v5 = [(STStatusBarDataStringEntry *)&v9 initWithBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"avatarIdentifier"];
    avatarIdentifier = v5->_avatarIdentifier;
    v5->_avatarIdentifier = v6;
  }

  return v5;
}

@end