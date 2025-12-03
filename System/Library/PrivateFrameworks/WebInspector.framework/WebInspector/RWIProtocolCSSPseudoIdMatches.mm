@interface RWIProtocolCSSPseudoIdMatches
- (NSArray)matches;
- (RWIProtocolCSSPseudoIdMatches)initWithPseudoId:(int64_t)id matches:(id)matches;
- (id)matches;
- (int64_t)pseudoId;
- (void)setMatches:(id)matches;
- (void)setPseudoId:(int64_t)id;
@end

@implementation RWIProtocolCSSPseudoIdMatches

- (RWIProtocolCSSPseudoIdMatches)initWithPseudoId:(int64_t)id matches:(id)matches
{
  v27 = *MEMORY[0x277D85DE8];
  matchesCopy = matches;
  v25.receiver = self;
  v25.super_class = RWIProtocolCSSPseudoIdMatches;
  v20 = [(RWIProtocolJSONObject *)&v25 init];
  if (v20)
  {
    if (!matchesCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"matches"}];
    }

    idCopy = id;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = matchesCopy;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v7)
    {
      v8 = *v22;
      v9 = *MEMORY[0x277CBE660];
      do
      {
        v10 = 0;
        do
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * v10);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v12 = MEMORY[0x277CBEAD8];
            v13 = objc_opt_class();
            v14 = NSStringFromClass(v13);
            [v12 raise:v9 format:{@"array should contain objects of type '%@', found bad value: %@", v14, v11}];
          }

          ++v10;
        }

        while (v7 != v10);
        v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v7);
    }

    [(RWIProtocolCSSPseudoIdMatches *)v20 setPseudoId:idCopy];
    [(RWIProtocolCSSPseudoIdMatches *)v20 setMatches:v6];
    v15 = v20;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)setPseudoId:(int64_t)id
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
  v5.super_class = RWIProtocolCSSPseudoIdMatches;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"pseudoId"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)pseudoId
{
  v13.receiver = self;
  v13.super_class = RWIProtocolCSSPseudoIdMatches;
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

- (void)setMatches:(id)matches
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = matches;
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
  v15.super_class = RWIProtocolCSSPseudoIdMatches;
  [(RWIProtocolJSONObject *)&v15 setJSONArray:&v16 forKey:@"matches"];
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

- (NSArray)matches
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSPseudoIdMatches;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"matches"];
  v2 = Inspector::toObjCArray<RWIProtocolCSSRuleMatch>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (atomic_uint)setPseudoId:(void *)a1 .cold.1(void **a1)
{
  OUTLINED_FUNCTION_1_3(a1);

  result = OUTLINED_FUNCTION_2_0();
  if (result)
  {
    result = OUTLINED_FUNCTION_1_1(result);
    if (v4)
    {
      return WTF::StringImpl::destroy(result, v3);
    }
  }

  return result;
}

- (id)matches
{
  v3 = OUTLINED_FUNCTION_0_6(self, a2);
  if (v3)
  {
    if (*v3 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v3;
    }
  }

  return v2;
}

@end