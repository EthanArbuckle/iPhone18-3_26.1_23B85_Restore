@interface RWIProtocolConsoleMessage
- (NSArray)parameters;
- (NSString)networkRequestId;
- (NSString)text;
- (NSString)url;
- (RWIProtocolConsoleMessage)initWithSource:(int64_t)source level:(int64_t)level text:(id)text;
- (RWIProtocolConsoleStackTrace)stackTrace;
- (double)timestamp;
- (int)column;
- (int)line;
- (int)repeatCount;
- (int64_t)level;
- (int64_t)source;
- (int64_t)type;
- (void)setLevel:(int64_t)level;
- (void)setNetworkRequestId:(id)id;
- (void)setParameters:(id)parameters;
- (void)setSource:(int64_t)source;
- (void)setStackTrace:(id)trace;
- (void)setText:(id)text;
- (void)setTimestamp:(double)timestamp;
- (void)setType:(int64_t)type;
- (void)setUrl:(id)url;
@end

@implementation RWIProtocolConsoleMessage

- (RWIProtocolConsoleMessage)initWithSource:(int64_t)source level:(int64_t)level text:(id)text
{
  textCopy = text;
  v12.receiver = self;
  v12.super_class = RWIProtocolConsoleMessage;
  v9 = [(RWIProtocolJSONObject *)&v12 init];
  if (v9)
  {
    if (!textCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"text"}];
    }

    [(RWIProtocolConsoleMessage *)v9 setSource:source];
    [(RWIProtocolConsoleMessage *)v9 setLevel:level];
    [(RWIProtocolConsoleMessage *)v9 setText:textCopy];
    v10 = v9;
  }

  return v9;
}

- (void)setSource:(int64_t)source
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
  v5.super_class = RWIProtocolConsoleMessage;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"source"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)source
{
  v8.receiver = self;
  v8.super_class = RWIProtocolConsoleMessage;
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

  v5 = &Inspector::fromProtocolString<RWIProtocolConsoleChannelSource>(WTF::String const&)::mappings;
  v6 = 408;
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

- (void)setLevel:(int64_t)level
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
  v5.super_class = RWIProtocolConsoleMessage;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"level"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)level
{
  v8.receiver = self;
  v8.super_class = RWIProtocolConsoleMessage;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"level"];
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

  v5 = &Inspector::fromProtocolString<RWIProtocolConsoleMessageLevel>(WTF::String const&)::mappings;
  v6 = 120;
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

- (void)setText:(id)text
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleMessage;
  [(RWIProtocolJSONObject *)&v3 setString:text forKey:@"text"];
}

- (NSString)text
{
  v4.receiver = self;
  v4.super_class = RWIProtocolConsoleMessage;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"text"];

  return v2;
}

- (void)setType:(int64_t)type
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
  v5.super_class = RWIProtocolConsoleMessage;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"type"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)type
{
  v8.receiver = self;
  v8.super_class = RWIProtocolConsoleMessage;
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

  v5 = &Inspector::fromProtocolString<RWIProtocolConsoleMessageType>(WTF::String const&)::mappings;
  v6 = 336;
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

- (void)setUrl:(id)url
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleMessage;
  [(RWIProtocolJSONObject *)&v3 setString:url forKey:@"url"];
}

- (NSString)url
{
  v4.receiver = self;
  v4.super_class = RWIProtocolConsoleMessage;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"url"];

  return v2;
}

- (int)line
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleMessage;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"line"];
}

- (int)column
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleMessage;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"column"];
}

- (int)repeatCount
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleMessage;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"repeatCount"];
}

- (void)setParameters:(id)parameters
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = parameters;
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = *v18;
    v5 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = MEMORY[0x277CBEAD8];
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          [v8 raise:v5 format:{@"array should contain objects of type '%@', found bad value: %@", v10, v7}];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v3);
  }

  Inspector::toJSONObjectArray(obj, &v16);
  v15.receiver = self;
  v15.super_class = RWIProtocolConsoleMessage;
  [(RWIProtocolJSONObject *)&v15 setJSONArray:&v16 forKey:@"parameters"];
  v11 = v16;
  v16 = 0;
  if (v11)
  {
    if (*v11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v11;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NSArray)parameters
{
  v4.receiver = self;
  v4.super_class = RWIProtocolConsoleMessage;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"parameters"];
  v2 = Inspector::toObjCArray<RWIProtocolRuntimeRemoteObject>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setStackTrace:(id)trace
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleMessage;
  [(RWIProtocolJSONObject *)&v3 setObject:trace forKey:@"stackTrace"];
}

- (RWIProtocolConsoleStackTrace)stackTrace
{
  v14.receiver = self;
  v14.super_class = RWIProtocolConsoleMessage;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"stackTrace"];
  if (v3)
  {
    v4 = [RWIProtocolConsoleStackTrace alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolConsoleMessage;
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

- (void)setNetworkRequestId:(id)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleMessage;
  [(RWIProtocolJSONObject *)&v3 setString:id forKey:@"networkRequestId"];
}

- (NSString)networkRequestId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolConsoleMessage;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"networkRequestId"];

  return v2;
}

- (void)setTimestamp:(double)timestamp
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleMessage;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"timestamp" forKey:timestamp];
}

- (double)timestamp
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleMessage;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"timestamp"];
  return result;
}

@end