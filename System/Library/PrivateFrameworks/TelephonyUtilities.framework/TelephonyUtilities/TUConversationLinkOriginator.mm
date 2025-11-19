@interface TUConversationLinkOriginator
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConversationLinkOriginator:(id)a3;
- (TUConversationLinkOriginator)initWithCoder:(id)a3;
- (TUConversationLinkOriginator)initWithIdentifier:(id)a3 revision:(int64_t)a4 handle:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUConversationLinkOriginator

- (TUConversationLinkOriginator)initWithIdentifier:(id)a3 revision:(int64_t)a4 handle:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = TUConversationLinkOriginator;
  v10 = [(TUConversationLinkOriginator *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_handle, a5);
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v11->_revision = a4;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  handle = self->_handle;
  v5 = a3;
  v6 = NSStringFromSelector(sel_handle);
  [v5 encodeObject:handle forKey:v6];

  identifier = self->_identifier;
  v8 = NSStringFromSelector(sel_identifier);
  [v5 encodeObject:identifier forKey:v8];

  revision = self->_revision;
  v10 = NSStringFromSelector(sel_revision);
  [v5 encodeInteger:revision forKey:v10];
}

- (TUConversationLinkOriginator)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = TUConversationLinkOriginator;
  v5 = [(TUConversationLinkOriginator *)&v16 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_handle);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    handle = v5->_handle;
    v5->_handle = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_identifier);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    identifier = v5->_identifier;
    v5->_identifier = v12;

    v14 = NSStringFromSelector(sel_revision);
    v5->_revision = [v4 decodeIntegerForKey:v14];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
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
  v5 = [(TUConversationLinkOriginator *)self identifier];
  [v3 appendFormat:@"%@=%@", v4, v5];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector(sel_revision);
  [v3 appendFormat:@"%@=%ld", v6, -[TUConversationLinkOriginator revision](self, "revision")];

  [v3 appendFormat:@", "];
  v7 = NSStringFromSelector(sel_handle);
  v8 = [(TUConversationLinkOriginator *)self handle];
  [v3 appendFormat:@"%@=%@", v7, v8];

  [v3 appendFormat:@">"];
  v9 = [v3 copy];

  return v9;
}

- (unint64_t)hash
{
  v3 = [(TUConversationLinkOriginator *)self handle];
  v4 = [v3 hash];
  v5 = [(TUConversationLinkOriginator *)self identifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(TUConversationLinkOriginator *)self revision];

  return v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationLinkOriginator *)self isEqualToConversationLinkOriginator:v4];
  }

  return v5;
}

- (BOOL)isEqualToConversationLinkOriginator:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationLinkOriginator *)self handle];
  v6 = [v4 handle];
  if (TUObjectsAreEqualOrNil(v5, v6))
  {
    v7 = [(TUConversationLinkOriginator *)self identifier];
    v8 = [v4 identifier];
    if (TUStringsAreEqualOrNil(v7, v8))
    {
      v9 = [(TUConversationLinkOriginator *)self revision];
      v10 = v9 == [v4 revision];
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