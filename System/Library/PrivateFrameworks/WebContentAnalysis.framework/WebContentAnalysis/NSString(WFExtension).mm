@interface NSString(WFExtension)
+ (id)WF_stringFromArray:()WFExtension;
+ (uint64_t)WF_ignorableCharacterSet;
- (id)WF_fuzzyStringWithWordLength:()WFExtension;
- (uint64_t)WF_numericCompare:()WFExtension;
- (uint64_t)WF_rangeOfWord:()WFExtension;
- (uint64_t)WF_stringByProperlyFixingPercentEscapesUsingEncoding:()WFExtension;
- (uint64_t)WF_stringWithMostSignificatDomainPart;
- (uint64_t)_isIPv4DomainAddress;
- (void)WF_stringByRemovingWord:()WFExtension;
- (void)WF_stringByReplacingString:()WFExtension withString:;
@end

@implementation NSString(WFExtension)

+ (uint64_t)WF_ignorableCharacterSet
{
  v6 = *MEMORY[0x277D85DE8];
  result = ignorableCharacterSet_NSString;
  if (!ignorableCharacterSet_NSString)
  {
    ignorableCharacterSet_NSString = objc_opt_new();
    [ignorableCharacterSet_NSString formUnionWithCharacterSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet")}];
    [ignorableCharacterSet_NSString formUnionWithCharacterSet:{objc_msgSend(MEMORY[0x277CCA900], "symbolCharacterSet")}];
    [ignorableCharacterSet_NSString formUnionWithCharacterSet:{objc_msgSend(MEMORY[0x277CCA900], "characterSetWithCharactersInString:", @"., -_!?*&")}];
    v1 = __WFDefaultLog();
    v2 = os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG);
    result = ignorableCharacterSet_NSString;
    if (v2)
    {
      v4 = 138412290;
      v5 = ignorableCharacterSet_NSString;
      _os_log_debug_impl(&dword_272D73000, v1, OS_LOG_TYPE_DEBUG, "ignorableCharacterSet_NSString %@", &v4, 0xCu);
      result = ignorableCharacterSet_NSString;
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)WF_stringFromArray:()WFExtension
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(a3);
        }

        [v4 appendFormat:@"%@\n", *(*(&v11 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  result = v4;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)WF_rangeOfWord:()WFExtension
{
  v5 = [a3 length];
  v6 = [self length];
  v7 = [self length];
  v8 = 0;
  while (1)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    if (v7 < v5)
    {
      break;
    }

    v10 = [self rangeOfString:a3 options:1 range:{v8, v7}];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v12 = v10;
    v8 = v10 + v5;
    if (v10)
    {
      v13 = v10 - 1;
    }

    else
    {
      v13 = 0;
    }

    if (v10)
    {
      v14 = v11 + 1;
    }

    else
    {
      v14 = v11;
    }

    v7 = v6 - v8;
    if (v6 <= v8)
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 + 1;
    }

    v16 = [self substringWithRange:{v13, v15}];
    if (![objc_msgSend(v16 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x277CCACA8], "WF_ignorableCharacterSet")), "caseInsensitiveCompare:", a3}])
    {
      return v12;
    }
  }

  return v9;
}

- (void)WF_stringByRemovingWord:()WFExtension
{
  selfCopy = self;
  v5 = [self WF_rangeOfWord:?];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = v5; i != 0x7FFFFFFFFFFFFFFFLL; i = [selfCopy WF_rangeOfWord:a3])
    {
      v8 = i + v6;
      v9 = [selfCopy length] - (i + v6);
      selfCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", objc_msgSend(selfCopy, "substringWithRange:", 0, i), objc_msgSend(selfCopy, "substringWithRange:", v8, v9)];
    }
  }

  return selfCopy;
}

- (void)WF_stringByReplacingString:()WFExtension withString:
{
  v7 = [MEMORY[0x277CCAB68] stringWithString:&stru_28826CB10];
  v8 = [self componentsSeparatedByString:a3];
  v9 = [v8 count];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    do
    {
      [v7 appendString:{objc_msgSend(v8, "objectAtIndex:", v11)}];
      if (v10 != 1)
      {
        [v7 appendString:a4];
      }

      ++v11;
      --v10;
    }

    while (v10);
  }

  return v7;
}

- (id)WF_fuzzyStringWithWordLength:()WFExtension
{
  v5 = objc_opt_new();
  v6 = 0;
  v7 = [self length] - a3 + 1;
  do
  {
    [v5 appendString:{objc_msgSend(self, "substringWithRange:", v6, a3)}];
    [v5 appendString:@" "];
    ++v6;
  }

  while (v7 != v6);

  return v5;
}

- (uint64_t)WF_numericCompare:()WFExtension
{
  v5 = [self length];

  return [self compare:a3 options:64 range:{0, v5}];
}

- (uint64_t)WF_stringByProperlyFixingPercentEscapesUsingEncoding:()WFExtension
{
  selfCopy = [self stringByReplacingPercentEscapesUsingEncoding:4];
  if (!selfCopy)
  {
    selfCopy = self;
  }

  return [selfCopy stringByAddingPercentEscapesUsingEncoding:4];
}

- (uint64_t)_isIPv4DomainAddress
{
  v2 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:self];
  v5 = 0;
  if ([v2 scanCharactersFromSet:objc_msgSend(MEMORY[0x277CCA900] intoString:{"characterSetWithCharactersInString:", @".0123456789", &v5}])
  {
    v3 = [v5 isEqualToString:self];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)WF_stringWithMostSignificatDomainPart
{
  v2 = [MEMORY[0x277CBEB18] arrayWithArray:{objc_msgSend(self, "componentsSeparatedByString:", @"."}];
  if ([v2 count] < 3 || (objc_msgSend(self, "_isIPv4DomainAddress") & 1) != 0)
  {
    return self;
  }

  lastObject = [v2 lastObject];
  [v2 removeLastObject];
  lastObject2 = [v2 lastObject];
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", lastObject2, lastObject];
}

@end