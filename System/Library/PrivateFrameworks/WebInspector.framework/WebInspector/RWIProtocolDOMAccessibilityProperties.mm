@interface RWIProtocolDOMAccessibilityProperties
- (BOOL)busy;
- (BOOL)disabled;
- (BOOL)exists;
- (BOOL)expanded;
- (BOOL)focused;
- (BOOL)hidden;
- (BOOL)ignored;
- (BOOL)ignoredByDefault;
- (BOOL)isPopUpButton;
- (BOOL)liveRegionAtomic;
- (BOOL)pressed;
- (BOOL)readonly;
- (BOOL)required;
- (BOOL)selected;
- (NSArray)childNodeIds;
- (NSArray)controlledNodeIds;
- (NSArray)flowedNodeIds;
- (NSArray)liveRegionRelevant;
- (NSArray)ownedNodeIds;
- (NSArray)selectedChildNodeIds;
- (NSString)label;
- (NSString)role;
- (double)headingLevel;
- (double)hierarchyLevel;
- (int)activeDescendantNodeId;
- (int)mouseEventNodeId;
- (int)nodeId;
- (int)parentNodeId;
- (int64_t)checked;
- (int64_t)current;
- (int64_t)invalid;
- (int64_t)liveRegionStatus;
- (int64_t)switchState;
- (void)setChecked:(int64_t)a3;
- (void)setChildNodeIds:(id)a3;
- (void)setControlledNodeIds:(id)a3;
- (void)setCurrent:(int64_t)a3;
- (void)setFlowedNodeIds:(id)a3;
- (void)setHeadingLevel:(double)a3;
- (void)setHierarchyLevel:(double)a3;
- (void)setInvalid:(int64_t)a3;
- (void)setLabel:(id)a3;
- (void)setLiveRegionRelevant:(id)a3;
- (void)setLiveRegionStatus:(int64_t)a3;
- (void)setOwnedNodeIds:(id)a3;
- (void)setRole:(id)a3;
- (void)setSelectedChildNodeIds:(id)a3;
- (void)setSwitchState:(int64_t)a3;
@end

@implementation RWIProtocolDOMAccessibilityProperties

- (int)activeDescendantNodeId
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"activeDescendantNodeId"];
}

- (BOOL)busy
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"busy"];
}

- (void)setChecked:(int64_t)a3
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
  v5.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"checked"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)checked
{
  v8.receiver = self;
  v8.super_class = RWIProtocolDOMAccessibilityProperties;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"checked"];
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

  v5 = &Inspector::fromProtocolString<RWIProtocolDOMAccessibilityPropertiesChecked>(WTF::String const&)::mappings;
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

- (void)setChildNodeIds:(id)a3
{
  Inspector::toJSONIntegerArray(a3, &v6);
  v5.receiver = self;
  v5.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v5 setJSONArray:&v6 forKey:@"childNodeIds"];
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

- (NSArray)childNodeIds
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"childNodeIds"];
  v2 = Inspector::toObjCIntegerArray(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setControlledNodeIds:(id)a3
{
  Inspector::toJSONIntegerArray(a3, &v6);
  v5.receiver = self;
  v5.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v5 setJSONArray:&v6 forKey:@"controlledNodeIds"];
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

- (NSArray)controlledNodeIds
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"controlledNodeIds"];
  v2 = Inspector::toObjCIntegerArray(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setCurrent:(int64_t)a3
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
  v5.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"current"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)current
{
  v8.receiver = self;
  v8.super_class = RWIProtocolDOMAccessibilityProperties;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"current"];
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

  v5 = &Inspector::fromProtocolString<RWIProtocolDOMAccessibilityPropertiesCurrent>(WTF::String const&)::mappings;
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

- (BOOL)disabled
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"disabled"];
}

- (void)setHeadingLevel:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"headingLevel" forKey:a3];
}

- (double)headingLevel
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"headingLevel"];
  return result;
}

- (void)setHierarchyLevel:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"hierarchyLevel" forKey:a3];
}

- (double)hierarchyLevel
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"hierarchyLevel"];
  return result;
}

- (BOOL)isPopUpButton
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isPopUpButton"];
}

- (BOOL)exists
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"exists"];
}

- (BOOL)expanded
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"expanded"];
}

- (void)setFlowedNodeIds:(id)a3
{
  Inspector::toJSONIntegerArray(a3, &v6);
  v5.receiver = self;
  v5.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v5 setJSONArray:&v6 forKey:@"flowedNodeIds"];
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

- (NSArray)flowedNodeIds
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"flowedNodeIds"];
  v2 = Inspector::toObjCIntegerArray(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (BOOL)focused
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"focused"];
}

- (BOOL)ignored
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"ignored"];
}

- (BOOL)ignoredByDefault
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"ignoredByDefault"];
}

- (void)setInvalid:(int64_t)a3
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
  v5.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"invalid"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)invalid
{
  v8.receiver = self;
  v8.super_class = RWIProtocolDOMAccessibilityProperties;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"invalid"];
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

  v5 = &Inspector::fromProtocolString<RWIProtocolDOMAccessibilityPropertiesInvalid>(WTF::String const&)::mappings;
  v6 = 96;
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

- (BOOL)hidden
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"hidden"];
}

- (void)setLabel:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"label"];
}

- (NSString)label
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMAccessibilityProperties;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"label"];

  return v2;
}

- (BOOL)liveRegionAtomic
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"liveRegionAtomic"];
}

- (void)setLiveRegionRelevant:(id)a3
{
  Inspector::toJSONStringArray(a3, &v6);
  v5.receiver = self;
  v5.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v5 setJSONArray:&v6 forKey:@"liveRegionRelevant"];
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

- (NSArray)liveRegionRelevant
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"liveRegionRelevant"];
  v2 = Inspector::toObjCStringArray(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setLiveRegionStatus:(int64_t)a3
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
  v5.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"liveRegionStatus"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)liveRegionStatus
{
  v8.receiver = self;
  v8.super_class = RWIProtocolDOMAccessibilityProperties;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"liveRegionStatus"];
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

  v5 = &Inspector::fromProtocolString<RWIProtocolDOMAccessibilityPropertiesLiveRegionStatus>(WTF::String const&)::mappings;
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

- (int)mouseEventNodeId
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"mouseEventNodeId"];
}

- (int)nodeId
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"nodeId"];
}

- (void)setOwnedNodeIds:(id)a3
{
  Inspector::toJSONIntegerArray(a3, &v6);
  v5.receiver = self;
  v5.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v5 setJSONArray:&v6 forKey:@"ownedNodeIds"];
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

- (NSArray)ownedNodeIds
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"ownedNodeIds"];
  v2 = Inspector::toObjCIntegerArray(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (int)parentNodeId
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"parentNodeId"];
}

- (BOOL)pressed
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"pressed"];
}

- (BOOL)readonly
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"readonly"];
}

- (BOOL)required
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"required"];
}

- (void)setRole:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"role"];
}

- (NSString)role
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMAccessibilityProperties;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"role"];

  return v2;
}

- (BOOL)selected
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAccessibilityProperties;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"selected"];
}

- (void)setSelectedChildNodeIds:(id)a3
{
  Inspector::toJSONIntegerArray(a3, &v6);
  v5.receiver = self;
  v5.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v5 setJSONArray:&v6 forKey:@"selectedChildNodeIds"];
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

- (NSArray)selectedChildNodeIds
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"selectedChildNodeIds"];
  v2 = Inspector::toObjCIntegerArray(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setSwitchState:(int64_t)a3
{
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v4 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    MEMORY[0x2743DB4B0](&v7, v4);
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }

  else
  {
    v7 = &stru_2882B1C88;
  }

  v6.receiver = self;
  v6.super_class = RWIProtocolDOMAccessibilityProperties;
  [(RWIProtocolJSONObject *)&v6 setString:v7 forKey:@"switchState"];
  [RWIProtocolDOMNode setPseudoType:?];
}

- (int64_t)switchState
{
  v8.receiver = self;
  v8.super_class = RWIProtocolDOMAccessibilityProperties;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"switchState"];
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

  v5 = &Inspector::fromProtocolString<RWIProtocolDOMAccessibilityPropertiesSwitchState>(WTF::String const&)::mappings;
  v6 = 48;
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