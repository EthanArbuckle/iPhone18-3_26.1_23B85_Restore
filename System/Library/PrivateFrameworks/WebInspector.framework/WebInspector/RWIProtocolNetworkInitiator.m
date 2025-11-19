@interface RWIProtocolNetworkInitiator
- (NSString)url;
- (RWIProtocolConsoleStackTrace)stackTrace;
- (RWIProtocolNetworkInitiator)initWithType:(int64_t)a3;
- (double)lineNumber;
- (int)nodeId;
- (int64_t)type;
- (void)setLineNumber:(double)a3;
- (void)setStackTrace:(id)a3;
- (void)setType:(int64_t)a3;
- (void)setUrl:(id)a3;
@end

@implementation RWIProtocolNetworkInitiator

- (RWIProtocolNetworkInitiator)initWithType:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = RWIProtocolNetworkInitiator;
  v4 = [(RWIProtocolJSONObject *)&v8 init];
  v5 = v4;
  if (v4)
  {
    [(RWIProtocolNetworkInitiator *)v4 setType:a3];
    v6 = v5;
  }

  return v5;
}

- (void)setType:(int64_t)a3
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
  v5.super_class = RWIProtocolNetworkInitiator;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"type"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)type
{
  v8.receiver = self;
  v8.super_class = RWIProtocolNetworkInitiator;
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

  v5 = &Inspector::fromProtocolString<RWIProtocolNetworkInitiatorType>(WTF::String const&)::mappings;
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

- (void)setStackTrace:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkInitiator;
  [(RWIProtocolJSONObject *)&v3 setObject:a3 forKey:@"stackTrace"];
}

- (RWIProtocolConsoleStackTrace)stackTrace
{
  v14.receiver = self;
  v14.super_class = RWIProtocolNetworkInitiator;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"stackTrace"];
  if (v3)
  {
    v4 = [RWIProtocolConsoleStackTrace alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolNetworkInitiator;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"stackTrace"];
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

- (void)setUrl:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkInitiator;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"url"];
}

- (NSString)url
{
  v4.receiver = self;
  v4.super_class = RWIProtocolNetworkInitiator;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"url"];

  return v2;
}

- (void)setLineNumber:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkInitiator;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"lineNumber" forKey:a3];
}

- (double)lineNumber
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkInitiator;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"lineNumber"];
  return result;
}

- (int)nodeId
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkInitiator;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"nodeId"];
}

@end