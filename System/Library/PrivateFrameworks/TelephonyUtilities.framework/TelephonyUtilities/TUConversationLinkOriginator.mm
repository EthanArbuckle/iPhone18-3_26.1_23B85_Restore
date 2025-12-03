@interface TUConversationLinkOriginator
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConversationLinkOriginator:(id)originator;
- (TUConversationLinkOriginator)initWithCoder:(id)coder;
- (TUConversationLinkOriginator)initWithIdentifier:(id)identifier revision:(int64_t)revision handle:(id)handle;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUConversationLinkOriginator

- (TUConversationLinkOriginator)initWithIdentifier:(id)identifier revision:(int64_t)revision handle:(id)handle
{
  identifierCopy = identifier;
  handleCopy = handle;
  v15.receiver = self;
  v15.super_class = TUConversationLinkOriginator;
  v10 = [(TUConversationLinkOriginator *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_handle, handle);
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v11->_revision = revision;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  handle = self->_handle;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_handle);
  [coderCopy encodeObject:handle forKey:v6];

  identifier = self->_identifier;
  v8 = NSStringFromSelector(sel_identifier);
  [coderCopy encodeObject:identifier forKey:v8];

  revision = self->_revision;
  v10 = NSStringFromSelector(sel_revision);
  [coderCopy encodeInteger:revision forKey:v10];
}

- (TUConversationLinkOriginator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = TUConversationLinkOriginator;
  v5 = [(TUConversationLinkOriginator *)&v16 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_handle);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    handle = v5->_handle;
    v5->_handle = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_identifier);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    identifier = v5->_identifier;
    v5->_identifier = v12;

    v14 = NSStringFromSelector(sel_revision);
    v5->_revision = [coderCopy decodeIntegerForKey:v14];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = self->_identifier;
  revision = self->_revision;
  handle = self->_handle;

  return [v4 initWithIdentifier:identifier revision:revision handle:handle];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_identifier);
  identifier = [(TUConversationLinkOriginator *)self identifier];
  [v3 appendFormat:@"%@=%@", v4, identifier];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector(sel_revision);
  [v3 appendFormat:@"%@=%ld", v6, -[TUConversationLinkOriginator revision](self, "revision")];

  [v3 appendFormat:@", "];
  v7 = NSStringFromSelector(sel_handle);
  handle = [(TUConversationLinkOriginator *)self handle];
  [v3 appendFormat:@"%@=%@", v7, handle];

  [v3 appendFormat:@">"];
  v9 = [v3 copy];

  return v9;
}

- (unint64_t)hash
{
  handle = [(TUConversationLinkOriginator *)self handle];
  v4 = [handle hash];
  identifier = [(TUConversationLinkOriginator *)self identifier];
  v6 = [identifier hash] ^ v4;
  revision = [(TUConversationLinkOriginator *)self revision];

  return v6 ^ revision;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationLinkOriginator *)self isEqualToConversationLinkOriginator:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToConversationLinkOriginator:(id)originator
{
  originatorCopy = originator;
  handle = [(TUConversationLinkOriginator *)self handle];
  handle2 = [originatorCopy handle];
  if (TUObjectsAreEqualOrNil(handle, handle2))
  {
    identifier = [(TUConversationLinkOriginator *)self identifier];
    identifier2 = [originatorCopy identifier];
    if (TUStringsAreEqualOrNil(identifier, identifier2))
    {
      revision = [(TUConversationLinkOriginator *)self revision];
      v10 = revision == [originatorCopy revision];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end