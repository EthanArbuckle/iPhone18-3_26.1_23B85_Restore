@interface RWIProtocolCSSRuleMatch
- (NSArray)matchingSelectors;
- (RWIProtocolCSSRule)rule;
- (RWIProtocolCSSRuleMatch)initWithRule:(id)rule matchingSelectors:(id)selectors;
- (void)setMatchingSelectors:(id)selectors;
- (void)setRule:(id)rule;
@end

@implementation RWIProtocolCSSRuleMatch

- (RWIProtocolCSSRuleMatch)initWithRule:(id)rule matchingSelectors:(id)selectors
{
  ruleCopy = rule;
  selectorsCopy = selectors;
  v11.receiver = self;
  v11.super_class = RWIProtocolCSSRuleMatch;
  v8 = [(RWIProtocolJSONObject *)&v11 init];
  if (v8)
  {
    if (!ruleCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"rule"}];
    }

    if (!selectorsCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"matchingSelectors"}];
    }

    [(RWIProtocolCSSRuleMatch *)v8 setRule:ruleCopy];
    [(RWIProtocolCSSRuleMatch *)v8 setMatchingSelectors:selectorsCopy];
    v9 = v8;
  }

  return v8;
}

- (void)setRule:(id)rule
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSRuleMatch;
  [(RWIProtocolJSONObject *)&v3 setObject:rule forKey:@"rule"];
}

- (RWIProtocolCSSRule)rule
{
  v14.receiver = self;
  v14.super_class = RWIProtocolCSSRuleMatch;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"rule"];
  if (v3)
  {
    v4 = [RWIProtocolCSSRule alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolCSSRuleMatch;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"rule"];
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

- (void)setMatchingSelectors:(id)selectors
{
  Inspector::toJSONIntegerArray(selectors, &v6);
  v5.receiver = self;
  v5.super_class = RWIProtocolCSSRuleMatch;
  [(RWIProtocolJSONObject *)&v5 setJSONArray:&v6 forKey:@"matchingSelectors"];
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    if (*v4 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v4;
    }
  }
}

- (NSArray)matchingSelectors
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSRuleMatch;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"matchingSelectors"];
  v2 = Inspector::toObjCIntegerArray(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

@end