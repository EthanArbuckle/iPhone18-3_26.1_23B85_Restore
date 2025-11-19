@interface CSIndexClientConnectionKey
+ (id)keyWithConnection:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CSIndexClientConnectionKey)initWithConnection:(id)a3;
@end

@implementation CSIndexClientConnectionKey

+ (id)keyWithConnection:(id)a3
{
  v3 = a3;
  v4 = [[CSIndexClientConnectionKey alloc] initWithConnection:v3];

  return v4;
}

- (CSIndexClientConnectionKey)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CSIndexClientConnectionKey;
  v6 = [(CSIndexClientConnectionKey *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CSIndexClientConnectionKey *)v4 connection];
      connection = self->_connection;
      if (v5 == connection)
      {
        v8 = 1;
      }

      else
      {
        v7 = [(CSIndexClientConnectionKey *)v4 connection];
        v8 = xpc_equal(connection, v7);
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