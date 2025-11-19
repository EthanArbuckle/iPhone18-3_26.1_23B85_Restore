@interface NSError
- (BOOL)isNotFound;
- (NSError)excludingNotFound;
- (id)_errorWithSQL:(id)a3;
@end

@implementation NSError

- (NSError)excludingNotFound
{
  if ([(NSError *)self isNotFound])
  {
    v3 = 0;
  }

  else
  {
    v3 = self;
  }

  return v3;
}

- (BOOL)isNotFound
{
  if ([(NSError *)self code]!= 12)
  {
    return 0;
  }

  v3 = [(NSError *)self domain];
  v4 = [v3 isEqualToString:PQLSqliteErrorDomain];

  return v4;
}

- (id)_errorWithSQL:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(NSError *)self userInfo];
    v6 = [v5 mutableCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = +[NSMutableDictionary dictionary];
    }

    v10 = v8;

    [v10 setObject:v4 forKeyedSubscript:@"ExpandedSQL"];
    v11 = [NSError alloc];
    v12 = [(NSError *)self domain];
    v9 = [v11 initWithDomain:v12 code:-[NSError code](self userInfo:{"code"), v10}];
  }

  else
  {
    v9 = self;
  }

  return v9;
}

@end