@interface STStatusBarDataPersonNameEntry
+ (STStatusBarDataPersonNameEntry)entryWithStringValue:(id)value avatarIdentifier:(id)identifier;
- (STStatusBarDataPersonNameEntry)initWithBSXPCCoder:(id)coder;
- (STStatusBarDataPersonNameEntry)initWithCoder:(id)coder;
- (id)_equalsBuilderWithObject:(id)object;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusBarDataPersonNameEntry

+ (STStatusBarDataPersonNameEntry)entryWithStringValue:(id)value avatarIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [self entryWithStringValue:value];
  v8 = [identifierCopy copy];

  v9 = v7[3];
  v7[3] = v8;

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataPersonNameEntry;
  coderCopy = coder;
  [(STStatusBarDataStringEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_avatarIdentifier forKey:{@"avatarIdentifier", v5.receiver, v5.super_class}];
}

- (STStatusBarDataPersonNameEntry)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataPersonNameEntry;
  coderCopy = coder;
  v4 = [(STStatusBarDataStringEntry *)&v8 initWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"avatarIdentifier", v8.receiver, v8.super_class}];

  avatarIdentifier = v4->_avatarIdentifier;
  v4->_avatarIdentifier = v5;

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataPersonNameEntry;
  succinctDescriptionBuilder = [(STStatusBarDataStringEntry *)&v6 succinctDescriptionBuilder];
  avatarIdentifier = [(STStatusBarDataPersonNameEntry *)self avatarIdentifier];
  [succinctDescriptionBuilder appendString:avatarIdentifier withName:@"avatarIdentifier"];

  return succinctDescriptionBuilder;
}

- (id)_equalsBuilderWithObject:(id)object
{
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = STStatusBarDataPersonNameEntry;
  v5 = [(STStatusBarDataStringEntry *)&v13 _equalsBuilderWithObject:objectCopy];
  v6 = objectCopy;
  avatarIdentifier = [(STStatusBarDataPersonNameEntry *)self avatarIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__STStatusBarDataPersonNameEntry__equalsBuilderWithObject___block_invoke;
  v11[3] = &unk_1E85DDD28;
  v12 = v6;
  v8 = v6;
  v9 = [v5 appendString:avatarIdentifier counterpart:v11];

  return v5;
}

- (id)_hashBuilder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataPersonNameEntry;
  _hashBuilder = [(STStatusBarDataStringEntry *)&v7 _hashBuilder];
  avatarIdentifier = [(STStatusBarDataPersonNameEntry *)self avatarIdentifier];
  v5 = [_hashBuilder appendString:avatarIdentifier];

  return _hashBuilder;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataPersonNameEntry;
  coderCopy = coder;
  [(STStatusBarDataStringEntry *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeObject:self->_avatarIdentifier forKey:{@"avatarIdentifier", v5.receiver, v5.super_class}];
}

- (STStatusBarDataPersonNameEntry)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STStatusBarDataPersonNameEntry;
  v5 = [(STStatusBarDataStringEntry *)&v9 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"avatarIdentifier"];
    avatarIdentifier = v5->_avatarIdentifier;
    v5->_avatarIdentifier = v6;
  }

  return v5;
}

@end