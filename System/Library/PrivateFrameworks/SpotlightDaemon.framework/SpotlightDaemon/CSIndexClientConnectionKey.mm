@interface CSIndexClientConnectionKey
+ (id)keyWithConnection:(id)connection;
- (BOOL)isEqual:(id)equal;
- (CSIndexClientConnectionKey)initWithConnection:(id)connection;
@end

@implementation CSIndexClientConnectionKey

+ (id)keyWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [[CSIndexClientConnectionKey alloc] initWithConnection:connectionCopy];

  return v4;
}

- (CSIndexClientConnectionKey)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = CSIndexClientConnectionKey;
  v6 = [(CSIndexClientConnectionKey *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      connection = [(CSIndexClientConnectionKey *)equalCopy connection];
      connection = self->_connection;
      if (connection == connection)
      {
        v8 = 1;
      }

      else
      {
        connection2 = [(CSIndexClientConnectionKey *)equalCopy connection];
        v8 = xpc_equal(connection, connection2);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end