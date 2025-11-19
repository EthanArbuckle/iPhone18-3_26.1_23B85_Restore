@interface RWIProtocolDOMNode
- (NSArray)attributes;
- (NSArray)children;
- (NSArray)layoutFlags;
- (NSArray)pseudoElements;
- (NSArray)shadowRoots;
- (NSString)baseURL;
- (NSString)contentSecurityPolicyHash;
- (NSString)documentURL;
- (NSString)frameId;
- (NSString)localName;
- (NSString)name;
- (NSString)nodeName;
- (NSString)nodeValue;
- (NSString)publicId;
- (NSString)systemId;
- (NSString)value;
- (NSString)xmlVersion;
- (RWIProtocolDOMNode)contentDocument;
- (RWIProtocolDOMNode)templateContent;
- (int)childNodeCount;
- (int)nodeId;
- (int)nodeType;
- (int64_t)customElementState;
- (int64_t)pseudoType;
- (int64_t)shadowRootType;
- (void)setAttributes:(id)a3;
- (void)setBaseURL:(id)a3;
- (void)setChildren:(id)a3;
- (void)setContentDocument:(id)a3;
- (void)setContentSecurityPolicyHash:(id)a3;
- (void)setCustomElementState:(int64_t)a3;
- (void)setDocumentURL:(id)a3;
- (void)setFrameId:(id)a3;
- (void)setLayoutFlags:(id)a3;
- (void)setLocalName:(id)a3;
- (void)setName:(id)a3;
- (void)setNodeName:(id)a3;
- (void)setNodeValue:(id)a3;
- (void)setPseudoElements:(id)a3;
- (void)setPseudoType:(int64_t)a3;
- (void)setPublicId:(id)a3;
- (void)setShadowRootType:(int64_t)a3;
- (void)setShadowRoots:(id)a3;
- (void)setSystemId:(id)a3;
- (void)setTemplateContent:(id)a3;
- (void)setValue:(id)a3;
- (void)setXmlVersion:(id)a3;
@end

@implementation RWIProtocolDOMNode

- (int)nodeId
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"nodeId"];
}

- (int)nodeType
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"nodeType"];
}

- (void)setNodeName:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"nodeName"];
}

- (NSString)nodeName
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"nodeName"];

  return v2;
}

- (void)setLocalName:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"localName"];
}

- (NSString)localName
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"localName"];

  return v2;
}

- (void)setNodeValue:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"nodeValue"];
}

- (NSString)nodeValue
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"nodeValue"];

  return v2;
}

- (void)setFrameId:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"frameId"];
}

- (NSString)frameId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"frameId"];

  return v2;
}

- (int)childNodeCount
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"childNodeCount"];
}

- (void)setChildren:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = a3;
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
  v15.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v15 setJSONArray:&v16 forKey:@"children"];
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

- (NSArray)children
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"children"];
  v2 = Inspector::toObjCArray<RWIProtocolDOMNode>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setAttributes:(id)a3
{
  Inspector::toJSONStringArray(a3, &v6);
  v5.receiver = self;
  v5.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v5 setJSONArray:&v6 forKey:@"attributes"];
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

- (NSArray)attributes
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"attributes"];
  v2 = Inspector::toObjCStringArray(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setDocumentURL:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"documentURL"];
}

- (NSString)documentURL
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"documentURL"];

  return v2;
}

- (void)setBaseURL:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"baseURL"];
}

- (NSString)baseURL
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"baseURL"];

  return v2;
}

- (void)setPublicId:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"publicId"];
}

- (NSString)publicId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"publicId"];

  return v2;
}

- (void)setSystemId:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"systemId"];
}

- (NSString)systemId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"systemId"];

  return v2;
}

- (void)setXmlVersion:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"xmlVersion"];
}

- (NSString)xmlVersion
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"xmlVersion"];

  return v2;
}

- (void)setName:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"name"];
}

- (NSString)name
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"name"];

  return v2;
}

- (void)setValue:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"value"];
}

- (NSString)value
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"value"];

  return v2;
}

- (void)setPseudoType:(int64_t)a3
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
  v6.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v6 setString:v7 forKey:@"pseudoType"];
  [RWIProtocolDOMNode setPseudoType:?];
}

- (int64_t)pseudoType
{
  v8.receiver = self;
  v8.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"pseudoType"];
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

  v5 = &Inspector::fromProtocolString<RWIProtocolDOMPseudoType>(WTF::String const&)::mappings;
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

- (void)setShadowRootType:(int64_t)a3
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
  v5.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"shadowRootType"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)shadowRootType
{
  v8.receiver = self;
  v8.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"shadowRootType"];
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

  v5 = &Inspector::fromProtocolString<RWIProtocolDOMShadowRootType>(WTF::String const&)::mappings;
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

- (void)setCustomElementState:(int64_t)a3
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
  v5.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"customElementState"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)customElementState
{
  v8.receiver = self;
  v8.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"customElementState"];
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

  v5 = &Inspector::fromProtocolString<RWIProtocolDOMCustomElementState>(WTF::String const&)::mappings;
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

- (void)setContentDocument:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setObject:a3 forKey:@"contentDocument"];
}

- (RWIProtocolDOMNode)contentDocument
{
  v14.receiver = self;
  v14.super_class = RWIProtocolDOMNode;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"contentDocument"];
  if (v3)
  {
    v4 = [RWIProtocolDOMNode alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolDOMNode;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"contentDocument"];
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

- (void)setShadowRoots:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = a3;
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
  v15.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v15 setJSONArray:&v16 forKey:@"shadowRoots"];
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

- (NSArray)shadowRoots
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"shadowRoots"];
  v2 = Inspector::toObjCArray<RWIProtocolDOMNode>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setTemplateContent:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setObject:a3 forKey:@"templateContent"];
}

- (RWIProtocolDOMNode)templateContent
{
  v14.receiver = self;
  v14.super_class = RWIProtocolDOMNode;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"templateContent"];
  if (v3)
  {
    v4 = [RWIProtocolDOMNode alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolDOMNode;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"templateContent"];
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

- (void)setPseudoElements:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = a3;
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
  v15.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v15 setJSONArray:&v16 forKey:@"pseudoElements"];
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

- (NSArray)pseudoElements
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"pseudoElements"];
  v2 = Inspector::toObjCArray<RWIProtocolDOMNode>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setContentSecurityPolicyHash:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"contentSecurityPolicyHash"];
}

- (NSString)contentSecurityPolicyHash
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"contentSecurityPolicyHash"];

  return v2;
}

- (void)setLayoutFlags:(id)a3
{
  Inspector::toJSONStringArray(a3, &v6);
  v5.receiver = self;
  v5.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v5 setJSONArray:&v6 forKey:@"layoutFlags"];
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

- (NSArray)layoutFlags
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMNode;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"layoutFlags"];
  v2 = Inspector::toObjCStringArray(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setPseudoType:(void *)a1 .cold.1(void **a1)
{
  OUTLINED_FUNCTION_5_1(a1);

  if ((v2 & 1) == 0 && atomic_fetch_add_explicit(v1, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v1, v4);
  }
}

@end