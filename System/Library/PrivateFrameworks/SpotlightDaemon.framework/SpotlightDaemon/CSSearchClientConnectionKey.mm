@interface CSSearchClientConnectionKey
+ (id)keyWithConnection:(id)connection;
- (BOOL)isEqual:(id)equal;
- (CSSearchClientConnectionKey)initWithConnection:(id)connection;
@end

@implementation CSSearchClientConnectionKey

+ (id)keyWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [[CSSearchClientConnectionKey alloc] initWithConnection:connectionCopy];

  return v4;
}

- (CSSearchClientConnectionKey)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = CSSearchClientConnectionKey;
  v6 = [(CSSearchClientConnectionKey *)&v9 init];
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
      connection = [(CSSearchClientConnectionKey *)equalCopy connection];
      connection = self->_connection;
      if (connection == connection)
      {
        v8 = 1;
      }

      else
      {
        connection2 = [(CSSearchClientConnectionKey *)equalCopy connection];
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