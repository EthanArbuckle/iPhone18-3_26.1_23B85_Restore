@interface _REAppKey
- (BOOL)isEqual:(id)a3;
- (_REAppKey)initWithIdentifier:(id)a3 remote:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _REAppKey

- (_REAppKey)initWithIdentifier:(id)a3 remote:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = _REAppKey;
  v7 = [(_REAppKey *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v7->_remote = a4;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  identifier = self->_identifier;
  remote = self->_remote;

  return [v4 initWithIdentifier:identifier remote:remote];
}

@end