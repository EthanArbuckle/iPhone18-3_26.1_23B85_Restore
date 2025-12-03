@interface NSError
- (BOOL)isNotFound;
- (NSError)excludingNotFound;
- (id)_errorWithSQL:(id)l;
@end

@implementation NSError

- (NSError)excludingNotFound
{
  if ([(NSError *)self isNotFound])
  {
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isNotFound
{
  if ([(NSError *)self code]!= 12)
  {
    return 0;
  }

  domain = [(NSError *)self domain];
  v4 = [domain isEqualToString:PQLSqliteErrorDomain];

  return v4;
}

- (id)_errorWithSQL:(id)l
{
  if (l)
  {
    lCopy = l;
    userInfo = [(NSError *)self userInfo];
    v6 = [userInfo mutableCopy];
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

    [v10 setObject:lCopy forKeyedSubscript:@"ExpandedSQL"];
    v11 = [NSError alloc];
    domain = [(NSError *)self domain];
    selfCopy = [v11 initWithDomain:domain code:-[NSError code](self userInfo:{"code"), v10}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end