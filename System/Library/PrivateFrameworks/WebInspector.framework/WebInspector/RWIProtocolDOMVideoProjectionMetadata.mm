@interface RWIProtocolDOMVideoProjectionMetadata
- (RWIProtocolDOMVideoProjectionMetadata)initWithKind:(int64_t)kind;
- (int64_t)kind;
- (void)setKind:(int64_t)kind;
@end

@implementation RWIProtocolDOMVideoProjectionMetadata

- (RWIProtocolDOMVideoProjectionMetadata)initWithKind:(int64_t)kind
{
  v8.receiver = self;
  v8.super_class = RWIProtocolDOMVideoProjectionMetadata;
  v4 = [(RWIProtocolJSONObject *)&v8 init];
  v5 = v4;
  if (v4)
  {
    [(RWIProtocolDOMVideoProjectionMetadata *)v4 setKind:kind];
    v6 = v5;
  }

  return v5;
}

- (void)setKind:(int64_t)kind
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
  v5.super_class = RWIProtocolDOMVideoProjectionMetadata;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"kind"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)kind
{
  v8.receiver = self;
  v8.super_class = RWIProtocolDOMVideoProjectionMetadata;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"kind"];
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

  v5 = &Inspector::fromProtocolString<RWIProtocolDOMVideoProjectionMetadataKind>(WTF::String const&)::mappings;
  v6 = 168;
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