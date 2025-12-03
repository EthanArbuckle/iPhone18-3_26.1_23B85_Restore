@interface RWIProtocolPageCookie
- (BOOL)httpOnly;
- (BOOL)secure;
- (BOOL)session;
- (NSString)domain;
- (NSString)name;
- (NSString)partitionKey;
- (NSString)path;
- (NSString)value;
- (double)expires;
- (int64_t)sameSite;
- (void)setDomain:(id)domain;
- (void)setExpires:(double)expires;
- (void)setName:(id)name;
- (void)setPartitionKey:(id)key;
- (void)setPath:(id)path;
- (void)setSameSite:(int64_t)site;
- (void)setValue:(id)value;
@end

@implementation RWIProtocolPageCookie

- (void)setName:(id)name
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageCookie;
  [(RWIProtocolJSONObject *)&v3 setString:name forKey:@"name"];
}

- (NSString)name
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageCookie;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"name"];

  return v2;
}

- (void)setValue:(id)value
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageCookie;
  [(RWIProtocolJSONObject *)&v3 setString:value forKey:@"value"];
}

- (NSString)value
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageCookie;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"value"];

  return v2;
}

- (void)setDomain:(id)domain
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageCookie;
  [(RWIProtocolJSONObject *)&v3 setString:domain forKey:@"domain"];
}

- (NSString)domain
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageCookie;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"domain"];

  return v2;
}

- (void)setPath:(id)path
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageCookie;
  [(RWIProtocolJSONObject *)&v3 setString:path forKey:@"path"];
}

- (NSString)path
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageCookie;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"path"];

  return v2;
}

- (void)setExpires:(double)expires
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageCookie;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"expires" forKey:expires];
}

- (double)expires
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageCookie;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"expires"];
  return result;
}

- (BOOL)session
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageCookie;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"session"];
}

- (BOOL)httpOnly
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageCookie;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"httpOnly"];
}

- (BOOL)secure
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageCookie;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"secure"];
}

- (void)setSameSite:(int64_t)site
{
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    MEMORY[0x2743DB4B0](&v7, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }
  }

  else
  {
    v7 = &stru_2882B1C88;
  }

  v5.receiver = self;
  v5.super_class = RWIProtocolPageCookie;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"sameSite"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)sameSite
{
  v8.receiver = self;
  v8.super_class = RWIProtocolPageCookie;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"sameSite"];
  MEMORY[0x2743DB520](&v9, v2);
  if (v9)
  {
    v3 = *(v9 + 8);
    v4 = *(v9 + 4) | (((*(v9 + 16) >> 2) & 1) << 32);
  }

  else
  {
    v3 = 0;
    v4 = 0x100000000;
  }

  v5 = &Inspector::fromProtocolString<RWIProtocolPageCookieSameSitePolicy>(WTF::String const&)::mappings;
  v6 = 72;
  do
  {
    if (WTF::operator==(v3, v4, *v5, v5[1]))
    {
      goto LABEL_8;
    }

    v5 += 3;
    v6 -= 24;
  }

  while (v6);
  do
  {
    std::__throw_bad_optional_access[abi:sn200100]();
LABEL_8:
    ;
  }

  while (!v6);
  [(RWIProtocolCSSStyleSheetHeader *)v5 origin];
  return v10;
}

- (void)setPartitionKey:(id)key
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageCookie;
  [(RWIProtocolJSONObject *)&v3 setString:key forKey:@"partitionKey"];
}

- (NSString)partitionKey
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageCookie;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"partitionKey"];

  return v2;
}

@end