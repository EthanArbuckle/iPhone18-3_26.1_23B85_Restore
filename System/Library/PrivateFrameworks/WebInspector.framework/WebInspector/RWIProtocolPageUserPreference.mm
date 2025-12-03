@interface RWIProtocolPageUserPreference
- (RWIProtocolPageUserPreference)initWithName:(int64_t)name value:(int64_t)value;
- (int64_t)name;
- (int64_t)value;
- (void)setName:(int64_t)name;
- (void)setValue:(int64_t)value;
@end

@implementation RWIProtocolPageUserPreference

- (RWIProtocolPageUserPreference)initWithName:(int64_t)name value:(int64_t)value
{
  v10.receiver = self;
  v10.super_class = RWIProtocolPageUserPreference;
  v6 = [(RWIProtocolJSONObject *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(RWIProtocolPageUserPreference *)v6 setName:name];
    [(RWIProtocolPageUserPreference *)v7 setValue:value];
    v8 = v7;
  }

  return v7;
}

- (void)setName:(int64_t)name
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
  v5.super_class = RWIProtocolPageUserPreference;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"name"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)name
{
  v8.receiver = self;
  v8.super_class = RWIProtocolPageUserPreference;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"name"];
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

  v5 = &Inspector::fromProtocolString<RWIProtocolPageUserPreferenceName>(WTF::String const&)::mappings;
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

- (void)setValue:(int64_t)value
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
  v5.super_class = RWIProtocolPageUserPreference;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"value"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)value
{
  v8.receiver = self;
  v8.super_class = RWIProtocolPageUserPreference;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"value"];
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

  v5 = &Inspector::fromProtocolString<RWIProtocolPageUserPreferenceValue>(WTF::String const&)::mappings;
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

@end