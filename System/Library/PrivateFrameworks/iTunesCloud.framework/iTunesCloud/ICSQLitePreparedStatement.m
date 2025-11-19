@interface ICSQLitePreparedStatement
- (ICSQLitePreparedStatement)initWithConnection:(const void *)a3 SQL:(id)a4;
@end

@implementation ICSQLitePreparedStatement

- (ICSQLitePreparedStatement)initWithConnection:(const void *)a3 SQL:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = ICSQLitePreparedStatement;
  v7 = [(ICSQLitePreparedStatement *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_connectionPointer = a3;
    v9 = [v6 copy];
    SQL = v8->_SQL;
    v8->_SQL = v9;
  }

  return v8;
}

@end