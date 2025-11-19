@interface _SFMatchCriteria
+ (id)matchAll;
+ (id)matchDomains:(id)a3;
- (_SFMatchCriteria)initWithDomains:(id)a3 matchAll:(BOOL)a4;
@end

@implementation _SFMatchCriteria

- (_SFMatchCriteria)initWithDomains:(id)a3 matchAll:(BOOL)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = _SFMatchCriteria;
  v7 = [(_SFMatchCriteria *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_matchAll = a4;
    v9 = [v6 copy];
    domains = v8->_domains;
    v8->_domains = v9;

    v11 = v8;
  }

  return v8;
}

+ (id)matchAll
{
  v2 = [[a1 alloc] initWithDomains:0 matchAll:1];

  return v2;
}

+ (id)matchDomains:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDomains:v4 matchAll:0];

  return v5;
}

@end