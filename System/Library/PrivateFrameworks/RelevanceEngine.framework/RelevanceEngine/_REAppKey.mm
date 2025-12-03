@interface _REAppKey
- (BOOL)isEqual:(id)equal;
- (_REAppKey)initWithIdentifier:(id)identifier remote:(BOOL)remote;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _REAppKey

- (_REAppKey)initWithIdentifier:(id)identifier remote:(BOOL)remote
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = _REAppKey;
  v7 = [(_REAppKey *)&v11 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v7->_remote = remote;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = v5->_identifier;
      v7 = self->_identifier;
      v8 = v7;
      if (v7 == identifier)
      {
      }

      else
      {
        v9 = [(NSString *)v7 isEqual:identifier];

        if (!v9)
        {
          v10 = 0;
LABEL_10:

          goto LABEL_11;
        }
      }

      v10 = self->_remote == v5->_remote;
      goto LABEL_10;
    }

    v10 = 0;
  }

LABEL_11:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = self->_identifier;
  remote = self->_remote;

  return [v4 initWithIdentifier:identifier remote:remote];
}

@end