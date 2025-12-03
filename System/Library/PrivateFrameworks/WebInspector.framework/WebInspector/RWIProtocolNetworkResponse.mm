@interface RWIProtocolNetworkResponse
- (NSString)mimeType;
- (NSString)statusText;
- (NSString)url;
- (RWIProtocolNetworkHeaders)headers;
- (RWIProtocolNetworkHeaders)requestHeaders;
- (RWIProtocolNetworkResourceTiming)timing;
- (RWIProtocolSecurity)security;
- (int)status;
- (int64_t)source;
- (void)setHeaders:(id)headers;
- (void)setMimeType:(id)type;
- (void)setRequestHeaders:(id)headers;
- (void)setSecurity:(id)security;
- (void)setSource:(int64_t)source;
- (void)setStatusText:(id)text;
- (void)setTiming:(id)timing;
- (void)setUrl:(id)url;
@end

@implementation RWIProtocolNetworkResponse

- (void)setUrl:(id)url
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResponse;
  [(RWIProtocolJSONObject *)&v3 setString:url forKey:@"url"];
}

- (NSString)url
{
  v4.receiver = self;
  v4.super_class = RWIProtocolNetworkResponse;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"url"];

  return v2;
}

- (int)status
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResponse;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"status"];
}

- (void)setStatusText:(id)text
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResponse;
  [(RWIProtocolJSONObject *)&v3 setString:text forKey:@"statusText"];
}

- (NSString)statusText
{
  v4.receiver = self;
  v4.super_class = RWIProtocolNetworkResponse;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"statusText"];

  return v2;
}

- (void)setHeaders:(id)headers
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResponse;
  [(RWIProtocolJSONObject *)&v3 setObject:headers forKey:@"headers"];
}

- (RWIProtocolNetworkHeaders)headers
{
  v14.receiver = self;
  v14.super_class = RWIProtocolNetworkResponse;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"headers"];
  if (v3)
  {
    v4 = [RWIProtocolNetworkHeaders alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolNetworkResponse;
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

- (void)setMimeType:(id)type
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResponse;
  [(RWIProtocolJSONObject *)&v3 setString:type forKey:@"mimeType"];
}

- (NSString)mimeType
{
  v4.receiver = self;
  v4.super_class = RWIProtocolNetworkResponse;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"mimeType"];

  return v2;
}

- (void)setSource:(int64_t)source
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
  v5.super_class = RWIProtocolNetworkResponse;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"source"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)source
{
  v8.receiver = self;
  v8.super_class = RWIProtocolNetworkResponse;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"source"];
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

  v5 = &Inspector::fromProtocolString<RWIProtocolNetworkResponseSource>(WTF::String const&)::mappings;
  v6 = 144;
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

- (void)setRequestHeaders:(id)headers
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResponse;
  [(RWIProtocolJSONObject *)&v3 setObject:headers forKey:@"requestHeaders"];
}

- (RWIProtocolNetworkHeaders)requestHeaders
{
  v14.receiver = self;
  v14.super_class = RWIProtocolNetworkResponse;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"requestHeaders"];
  if (v3)
  {
    v4 = [RWIProtocolNetworkHeaders alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolNetworkResponse;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"requestHeaders"];
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

- (void)setTiming:(id)timing
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResponse;
  [(RWIProtocolJSONObject *)&v3 setObject:timing forKey:@"timing"];
}

- (RWIProtocolNetworkResourceTiming)timing
{
  v14.receiver = self;
  v14.super_class = RWIProtocolNetworkResponse;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"timing"];
  if (v3)
  {
    v4 = [RWIProtocolNetworkResourceTiming alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolNetworkResponse;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"timing"];
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

- (void)setSecurity:(id)security
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkResponse;
  [(RWIProtocolJSONObject *)&v3 setObject:security forKey:@"security"];
}

- (RWIProtocolSecurity)security
{
  v14.receiver = self;
  v14.super_class = RWIProtocolNetworkResponse;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"security"];
  if (v3)
  {
    v4 = [RWIProtocolSecurity alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolNetworkResponse;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"security"];
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

@end