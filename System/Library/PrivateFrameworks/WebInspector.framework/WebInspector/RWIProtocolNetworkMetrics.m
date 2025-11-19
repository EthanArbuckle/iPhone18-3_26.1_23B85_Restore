@interface RWIProtocolNetworkMetrics
- (BOOL)isProxyConnection;
- (NSString)connectionIdentifier;
- (NSString)protocol;
- (NSString)remoteAddress;
- (RWIProtocolNetworkHeaders)requestHeaders;
- (RWIProtocolSecurityConnection)securityConnection;
- (double)requestBodyBytesSent;
- (double)requestHeaderBytesSent;
- (double)responseBodyBytesReceived;
- (double)responseBodyDecodedSize;
- (double)responseHeaderBytesReceived;
- (int64_t)priority;
- (void)setConnectionIdentifier:(id)a3;
- (void)setPriority:(int64_t)a3;
- (void)setProtocol:(id)a3;
- (void)setRemoteAddress:(id)a3;
- (void)setRequestBodyBytesSent:(double)a3;
- (void)setRequestHeaderBytesSent:(double)a3;
- (void)setRequestHeaders:(id)a3;
- (void)setResponseBodyBytesReceived:(double)a3;
- (void)setResponseBodyDecodedSize:(double)a3;
- (void)setResponseHeaderBytesReceived:(double)a3;
- (void)setSecurityConnection:(id)a3;
@end

@implementation RWIProtocolNetworkMetrics

- (void)setProtocol:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkMetrics;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"protocol"];
}

- (NSString)protocol
{
  v4.receiver = self;
  v4.super_class = RWIProtocolNetworkMetrics;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"protocol"];

  return v2;
}

- (void)setPriority:(int64_t)a3
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
  v5.super_class = RWIProtocolNetworkMetrics;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"priority"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)priority
{
  v8.receiver = self;
  v8.super_class = RWIProtocolNetworkMetrics;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"priority"];
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

  v5 = &Inspector::fromProtocolString<RWIProtocolNetworkMetricsPriority>(WTF::String const&)::mappings;
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

- (void)setConnectionIdentifier:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkMetrics;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"connectionIdentifier"];
}

- (NSString)connectionIdentifier
{
  v4.receiver = self;
  v4.super_class = RWIProtocolNetworkMetrics;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"connectionIdentifier"];

  return v2;
}

- (void)setRemoteAddress:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkMetrics;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"remoteAddress"];
}

- (NSString)remoteAddress
{
  v4.receiver = self;
  v4.super_class = RWIProtocolNetworkMetrics;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"remoteAddress"];

  return v2;
}

- (void)setRequestHeaders:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkMetrics;
  [(RWIProtocolJSONObject *)&v3 setObject:a3 forKey:@"requestHeaders"];
}

- (RWIProtocolNetworkHeaders)requestHeaders
{
  v14.receiver = self;
  v14.super_class = RWIProtocolNetworkMetrics;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"requestHeaders"];
  if (v3)
  {
    v4 = [RWIProtocolNetworkHeaders alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolNetworkMetrics;
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

- (void)setRequestHeaderBytesSent:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkMetrics;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"requestHeaderBytesSent" forKey:a3];
}

- (double)requestHeaderBytesSent
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkMetrics;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"requestHeaderBytesSent"];
  return result;
}

- (void)setRequestBodyBytesSent:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkMetrics;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"requestBodyBytesSent" forKey:a3];
}

- (double)requestBodyBytesSent
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkMetrics;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"requestBodyBytesSent"];
  return result;
}

- (void)setResponseHeaderBytesReceived:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkMetrics;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"responseHeaderBytesReceived" forKey:a3];
}

- (double)responseHeaderBytesReceived
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkMetrics;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"responseHeaderBytesReceived"];
  return result;
}

- (void)setResponseBodyBytesReceived:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkMetrics;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"responseBodyBytesReceived" forKey:a3];
}

- (double)responseBodyBytesReceived
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkMetrics;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"responseBodyBytesReceived"];
  return result;
}

- (void)setResponseBodyDecodedSize:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkMetrics;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"responseBodyDecodedSize" forKey:a3];
}

- (double)responseBodyDecodedSize
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkMetrics;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"responseBodyDecodedSize"];
  return result;
}

- (void)setSecurityConnection:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkMetrics;
  [(RWIProtocolJSONObject *)&v3 setObject:a3 forKey:@"securityConnection"];
}

- (RWIProtocolSecurityConnection)securityConnection
{
  v14.receiver = self;
  v14.super_class = RWIProtocolNetworkMetrics;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"securityConnection"];
  if (v3)
  {
    v4 = [RWIProtocolSecurityConnection alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolNetworkMetrics;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"securityConnection"];
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

- (BOOL)isProxyConnection
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkMetrics;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isProxyConnection"];
}

@end