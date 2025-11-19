@interface RWIProtocolNetworkCachedResource
- (NSString)sourceMapURL;
- (NSString)url;
- (RWIProtocolNetworkCachedResource)initWithUrl:(id)a3 type:(int64_t)a4 bodySize:(double)a5;
- (RWIProtocolNetworkResponse)response;
- (double)bodySize;
- (int64_t)type;
- (void)setBodySize:(double)a3;
- (void)setResponse:(id)a3;
- (void)setSourceMapURL:(id)a3;
- (void)setType:(int64_t)a3;
- (void)setUrl:(id)a3;
@end

@implementation RWIProtocolNetworkCachedResource

- (RWIProtocolNetworkCachedResource)initWithUrl:(id)a3 type:(int64_t)a4 bodySize:(double)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = RWIProtocolNetworkCachedResource;
  v9 = [(RWIProtocolJSONObject *)&v12 init];
  if (v9)
  {
    if (!v8)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"url"}];
    }

    [(RWIProtocolNetworkCachedResource *)v9 setUrl:v8];
    [(RWIProtocolNetworkCachedResource *)v9 setType:a4];
    [(RWIProtocolNetworkCachedResource *)v9 setBodySize:a5];
    v10 = v9;
  }

  return v9;
}

- (void)setUrl:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkCachedResource;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"url"];
}

- (NSString)url
{
  v4.receiver = self;
  v4.super_class = RWIProtocolNetworkCachedResource;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"url"];

  return v2;
}

- (void)setType:(int64_t)a3
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
  v5.super_class = RWIProtocolNetworkCachedResource;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"type"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)type
{
  v8.receiver = self;
  v8.super_class = RWIProtocolNetworkCachedResource;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"type"];
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

  v5 = &Inspector::fromProtocolString<RWIProtocolPageResourceType>(WTF::String const&)::mappings;
  v6 = 288;
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

- (void)setResponse:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkCachedResource;
  [(RWIProtocolJSONObject *)&v3 setObject:a3 forKey:@"response"];
}

- (RWIProtocolNetworkResponse)response
{
  v14.receiver = self;
  v14.super_class = RWIProtocolNetworkCachedResource;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"response"];
  if (v3)
  {
    v4 = [RWIProtocolNetworkResponse alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolNetworkCachedResource;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"response"];
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

- (void)setBodySize:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkCachedResource;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"bodySize" forKey:a3];
}

- (double)bodySize
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkCachedResource;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"bodySize"];
  return result;
}

- (void)setSourceMapURL:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkCachedResource;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"sourceMapURL"];
}

- (NSString)sourceMapURL
{
  v4.receiver = self;
  v4.super_class = RWIProtocolNetworkCachedResource;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"sourceMapURL"];

  return v2;
}

@end