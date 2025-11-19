@interface RWIProtocolConsoleChannel
- (RWIProtocolConsoleChannel)initWithSource:(int64_t)a3 level:(int64_t)a4;
- (int64_t)level;
- (int64_t)source;
- (void)setLevel:(int64_t)a3;
- (void)setSource:(int64_t)a3;
@end

@implementation RWIProtocolConsoleChannel

- (RWIProtocolConsoleChannel)initWithSource:(int64_t)a3 level:(int64_t)a4
{
  v10.receiver = self;
  v10.super_class = RWIProtocolConsoleChannel;
  v6 = [(RWIProtocolJSONObject *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(RWIProtocolConsoleChannel *)v6 setSource:a3];
    [(RWIProtocolConsoleChannel *)v7 setLevel:a4];
    v8 = v7;
  }

  return v7;
}

- (void)setSource:(int64_t)a3
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
  v5.super_class = RWIProtocolConsoleChannel;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"source"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)source
{
  v8.receiver = self;
  v8.super_class = RWIProtocolConsoleChannel;
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

- (void)setLevel:(int64_t)a3
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
  v5.super_class = RWIProtocolConsoleChannel;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"level"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)level
{
  v8.receiver = self;
  v8.super_class = RWIProtocolConsoleChannel;
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

  v5 = &Inspector::fromProtocolString<RWIProtocolConsoleChannelLevel>(WTF::String const&)::mappings;
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

@end