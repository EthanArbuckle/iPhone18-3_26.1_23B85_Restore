@interface RWIProtocolNetworkRequest
- (NSString)integrity;
- (NSString)method;
- (NSString)postData;
- (NSString)url;
- (RWIProtocolNetworkHeaders)headers;
- (RWIProtocolNetworkRequest)initWithUrl:(id)url method:(id)method headers:(id)headers;
- (int64_t)referrerPolicy;
- (void)setHeaders:(id)headers;
- (void)setIntegrity:(id)integrity;
- (void)setMethod:(id)method;
- (void)setPostData:(id)data;
- (void)setReferrerPolicy:(int64_t)policy;
- (void)setUrl:(id)url;
@end

@implementation RWIProtocolNetworkRequest

- (RWIProtocolNetworkRequest)initWithUrl:(id)url method:(id)method headers:(id)headers
{
  urlCopy = url;
  methodCopy = method;
  headersCopy = headers;
  v14.receiver = self;
  v14.super_class = RWIProtocolNetworkRequest;
  v11 = [(RWIProtocolJSONObject *)&v14 init];
  if (v11)
  {
    if (!urlCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"url"}];
    }

    if (!methodCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"method"}];
    }

    if (!headersCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"headers"}];
    }

    [(RWIProtocolNetworkRequest *)v11 setUrl:urlCopy];
    [(RWIProtocolNetworkRequest *)v11 setMethod:methodCopy];
    [(RWIProtocolNetworkRequest *)v11 setHeaders:headersCopy];
    v12 = v11;
  }

  return v11;
}

- (void)setUrl:(id)url
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkRequest;
  [(RWIProtocolJSONObject *)&v3 setString:url forKey:@"url"];
}

- (NSString)url
{
  v4.receiver = self;
  v4.super_class = RWIProtocolNetworkRequest;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"url"];

  return v2;
}

- (void)setMethod:(id)method
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkRequest;
  [(RWIProtocolJSONObject *)&v3 setString:method forKey:@"method"];
}

- (NSString)method
{
  v4.receiver = self;
  v4.super_class = RWIProtocolNetworkRequest;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"method"];

  return v2;
}

- (void)setHeaders:(id)headers
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkRequest;
  [(RWIProtocolJSONObject *)&v3 setObject:headers forKey:@"headers"];
}

- (RWIProtocolNetworkHeaders)headers
{
  v14.receiver = self;
  v14.super_class = RWIProtocolNetworkRequest;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"headers"];
  if (v3)
  {
    v4 = [RWIProtocolNetworkHeaders alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolNetworkRequest;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"headers"];
    [v5 toJSONObject];
    v6 = v12;
    ++*v12;
    v13 = v6;
    v7 = [(RWIProtocolJSONObject *)v4 initWithJSONObject:&v13];
    v8 = v13;
    v13 = 0;
    if (v8)
    {
      if (*v8 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v8;
      }
    }

    v9 = v12;
    v12 = 0;
    if (v9)
    {
      if (*v9 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v9;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setPostData:(id)data
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkRequest;
  [(RWIProtocolJSONObject *)&v3 setString:data forKey:@"postData"];
}

- (NSString)postData
{
  v4.receiver = self;
  v4.super_class = RWIProtocolNetworkRequest;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"postData"];

  return v2;
}

- (void)setReferrerPolicy:(int64_t)policy
{
  Inspector::toProtocolString();
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
  v5.super_class = RWIProtocolNetworkRequest;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"referrerPolicy"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)referrerPolicy
{
  v8.receiver = self;
  v8.super_class = RWIProtocolNetworkRequest;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"referrerPolicy"];
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

  v5 = &Inspector::fromProtocolString<RWIProtocolNetworkReferrerPolicy>(WTF::String const&)::mappings;
  v6 = 216;
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

- (void)setIntegrity:(id)integrity
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkRequest;
  [(RWIProtocolJSONObject *)&v3 setString:integrity forKey:@"integrity"];
}

- (NSString)integrity
{
  v4.receiver = self;
  v4.super_class = RWIProtocolNetworkRequest;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"integrity"];

  return v2;
}

@end