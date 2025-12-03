@interface _SFMatchCriteria
+ (id)matchAll;
+ (id)matchDomains:(id)domains;
- (_SFMatchCriteria)initWithDomains:(id)domains matchAll:(BOOL)all;
@end

@implementation _SFMatchCriteria

- (_SFMatchCriteria)initWithDomains:(id)domains matchAll:(BOOL)all
{
  domainsCopy = domains;
  v13.receiver = self;
  v13.super_class = _SFMatchCriteria;
  v7 = [(_SFMatchCriteria *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_matchAll = all;
    v9 = [domainsCopy copy];
    domains = v8->_domains;
    v8->_domains = v9;

    v11 = v8;
  }

  return v8;
}

+ (id)matchAll
{
  v2 = [[self alloc] initWithDomains:0 matchAll:1];

  return v2;
}

+ (id)matchDomains:(id)domains
{
  domainsCopy = domains;
  v5 = [[self alloc] initWithDomains:domainsCopy matchAll:0];

  return v5;
}

@end