@interface RWIProtocolDOMStyleable
- (int)nodeId;
- (int64_t)pseudoId;
- (void)setPseudoId:(int64_t)a3;
@end

@implementation RWIProtocolDOMStyleable

- (int)nodeId
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMStyleable;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"nodeId"];
}

- (void)setPseudoId:(int64_t)a3
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
  v5.super_class = RWIProtocolDOMStyleable;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"pseudoId"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)pseudoId
{
  v13.receiver = self;
  v13.super_class = RWIProtocolDOMStyleable;
  v2 = [(RWIProtocolJSONObject *)&v13 stringForKey:@"pseudoId"];
  MEMORY[0x2743DB520](&v14, v2);
  if (v14)
  {
    v3 = *(v14 + 1);
    v4 = *(v14 + 1) | (((*(v14 + 4) >> 2) & 1) << 32);
  }

  else
  {
    v3 = 0;
    v4 = 0x100000000;
  }

  v15 = v3;
  LODWORD(v16) = v4;
  BYTE4(v16) = BYTE4(v4);
  v17 = 1;
  v18 = 0;
  v5 = std::__lower_bound_bisecting[abi:sn200100]<std::_ClassicAlgPolicy,std::pair<WTF::ComparableASCIISubsetLiteral<(WTF::ASCIISubset)0>,RWIProtocolCSSPseudoId> const*,WTF::ComparableStringView,std::__identity,RWIProtocolCSSPseudoId const* WTF::SortedArrayMap<std::pair<WTF::ComparableASCIISubsetLiteral<(WTF::ASCIISubset)0>,RWIProtocolCSSPseudoId>[23]>::tryGet<WTF::String>(WTF::String const&)::{lambda(WTF::String&,std::pair<WTF::ComparableASCIISubsetLiteral<(WTF::ASCIISubset)0>,RWIProtocolCSSPseudoId> const* &)#1}>(&Inspector::fromProtocolString<RWIProtocolCSSPseudoId>(WTF::String const&)::mappings, &v15, 0x17uLL);
  if (v5 == &Inspector::fromProtocolString<RWIProtocolCSSStyleSheetOrigin>(WTF::String const&)::mappings)
  {
    goto LABEL_12;
  }

  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((WTF::operator==(v15, v16, *v5, v5[1]) & 1) == 0)
  {
LABEL_12:
    v11 = std::__throw_bad_optional_access[abi:sn200100]();
    v12 = v14;
    v14 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v10);
    }

    _Unwind_Resume(v11);
  }

  v7 = v5[2];
  v8 = v14;
  v14 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  return v7;
}

@end