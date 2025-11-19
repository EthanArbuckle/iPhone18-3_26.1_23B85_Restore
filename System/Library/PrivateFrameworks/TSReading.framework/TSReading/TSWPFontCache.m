@interface TSWPFontCache
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)sharedCache;
- (TSWPFontCache)init;
- (__CTFont)_createFontWithName:(id)a3 size:(double)a4 weight:(double)a5;
- (__CTFont)createFontWithName:(id)a3 size:(double)a4 weight:(double)a5 attributes:(id)a6;
- (id)availableMembersOfFontFamily:(id)a3;
- (id)displayNameForFontFamily:(id)a3;
- (id)p_excludedFamilyNames;
- (id)sortedFontFamilies;
- (id)sortedFontFamilyEntriesForStylesheet:(id)a3;
- (void)dealloc;
- (void)p_FontWasDownloaded:(id)a3;
@end

@implementation TSWPFontCache

+ (id)_singletonAlloc
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___TSWPFontCache;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)sharedCache
{
  result = +[TSWPFontCache sharedCache]::sSingletonInstance;
  if (!+[TSWPFontCache sharedCache]::sSingletonInstance)
  {
    objc_sync_enter(a1);
    if (!+[TSWPFontCache sharedCache]::sSingletonInstance)
    {
      v4 = [objc_msgSend(a1 "_singletonAlloc")];
      __dmb(0xBu);
      +[TSWPFontCache sharedCache]::sSingletonInstance = v4;
      if (!v4)
      {
        v5 = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPFontCache sharedCache]"];
        [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFontCache.mm"), 65, @"Couldn't create singleton instance of %@", a1}];
      }
    }

    objc_sync_exit(a1);
    return +[TSWPFontCache sharedCache]::sSingletonInstance;
  }

  return result;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPFontCache allocWithZone:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFontCache.mm"), 65, @"Don't alloc a singleton"}];
  return 0;
}

- (TSWPFontCache)init
{
  v4.receiver = self;
  v4.super_class = TSWPFontCache;
  v2 = [(TSWPFontCache *)&v4 init];
  if (v2)
  {
    v2->_fontCache = [objc_alloc(MEMORY[0x277D6C308]) initWithMaxSize:32];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }

  return v2;
}

- (void)dealloc
{
  self->_fontCache = 0;
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v3.receiver = self;
  v3.super_class = TSWPFontCache;
  [(TSWPFontCache *)&v3 dealloc];
}

- (__CTFont)createFontWithName:(id)a3 size:(double)a4 weight:(double)a5 attributes:(id)a6
{
  if (a6)
  {
    v9 = [a6 mutableCopy];
    v10 = *MEMORY[0x277CC4950];
    v11 = [objc_msgSend(a6 objectForKeyedSubscript:{*MEMORY[0x277CC4950]), "mutableCopy"}];
    if (!v11)
    {
      v11 = objc_opt_new();
    }

    v12 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
    [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x277CC49B8]];
    if (v11)
    {
      [v9 setObject:v11 forKeyedSubscript:v10];
    }

    v13 = CTFontDescriptorCreateWithAttributes(v9);
    if (v13)
    {
      v14 = v13;
      v15 = CTFontCreateWithFontDescriptor(v13, a4, 0);
      CFRelease(v14);
    }

    else
    {
      v15 = 0;
    }

    return v15;
  }

  else
  {

    return [TSWPFontCache _createFontWithName:"_createFontWithName:size:weight:" size:a3 weight:?];
  }
}

- (__CTFont)_createFontWithName:(id)a3 size:(double)a4 weight:(double)a5
{
  v22[2] = *MEMORY[0x277D85DE8];
  v9 = [TSWPFontCacheKey cacheKeyWithFontName:"cacheKeyWithFontName:size:weight:" size:? weight:?];
  objc_sync_enter(self);
  objc_opt_class();
  [(TSULRUCache *)self->_fontCache objectForKey:v9];
  v10 = TSUDynamicCast();
  if (v10)
  {
    objc_sync_exit(self);
  }

  else
  {
    if ([a3 hasPrefix:@".System-"])
    {
      v11 = *MEMORY[0x277CC4968];
      v12 = *MEMORY[0x277CC49B8];
      v21[0] = *MEMORY[0x277CC4980];
      v21[1] = v12;
      v22[0] = v11;
      v22[1] = [MEMORY[0x277CCABB0] numberWithDouble:a5];
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
      v19 = *MEMORY[0x277CC4950];
      v20 = v13;
      v14 = CTFontDescriptorCreateWithAttributes([MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1]);
      v15 = CTFontCreateWithFontDescriptor(v14, a4, 0);
      CFRelease(v14);
    }

    else
    {
      v15 = CTFontCreateWithName(a3, a4, 0);
    }

    v10 = [TSWPFontCacheValue cacheValueWithCTFont:v15];
    if (v15)
    {
      CFRelease(v15);
    }

    [(TSULRUCache *)self->_fontCache setObject:v10 forKey:v9];
    objc_sync_exit(self);
    if (!v10)
    {
      v16 = [MEMORY[0x277D6C290] currentHandler];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFontCache _createFontWithName:size:weight:]"];
      [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFontCache.mm"), 165, @"invalid nil value for '%s'", "cacheValue"}];
      v10 = 0;
    }
  }

  if ([(TSWPFontCacheValue *)v10 ctFont])
  {
    CFRetain([(TSWPFontCacheValue *)v10 ctFont]);
  }

  return [(TSWPFontCacheValue *)v10 ctFont];
}

- (id)p_excludedFamilyNames
{
  if (([TSWPFontCache p_excludedFamilyNames]::sInitialized & 1) == 0)
  {
    [TSWPFontCache p_excludedFamilyNames]::sInitialized = 1;
    v2 = [TSWPBundle() pathForResource:@"FontExclusionList" ofType:@"plist"];
    if (v2)
    {
      -[TSWPFontCache p_excludedFamilyNames]::sExcludedFontFamilies = [objc_alloc(MEMORY[0x277CBEA60]) initWithContentsOfFile:v2];
    }
  }

  return [TSWPFontCache p_excludedFamilyNames]::sExcludedFontFamilies;
}

- (id)sortedFontFamilies
{
  v22[1] = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  if (!self->_familyNames)
  {
    v21 = *MEMORY[0x277CC4848];
    v22[0] = MEMORY[0x277CBEC38];
    v3 = CTFontCollectionCreateFromAvailableFonts([MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1]);
    v4 = v3;
    if (v3)
    {
      MatchingFontDescriptors = CTFontCollectionCreateMatchingFontDescriptors(v3);
      if (MatchingFontDescriptors)
      {
        v6 = [(TSWPFontCache *)self p_excludedFamilyNames];
        v7 = [MEMORY[0x277CBEB58] setWithCapacity:CFArrayGetCount(MatchingFontDescriptors)];
        cf = v4;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = [(__CFArray *)MatchingFontDescriptors countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          v9 = *v17;
          v10 = *MEMORY[0x277CC48B8];
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v17 != v9)
              {
                objc_enumerationMutation(MatchingFontDescriptors);
              }

              v12 = CTFontDescriptorCopyAttribute(*(*(&v16 + 1) + 8 * i), v10);
              v13 = v12;
              if (v12)
              {
                if (!CFStringHasPrefix(v12, @".") && ([v6 containsObject:v13] & 1) == 0)
                {
                  [v7 addObject:v13];
                }

                CFRelease(v13);
              }
            }

            v8 = [(__CFArray *)MatchingFontDescriptors countByEnumeratingWithState:&v16 objects:v20 count:16];
          }

          while (v8);
        }

        CFRelease(MatchingFontDescriptors);
        v4 = cf;
      }

      else
      {
        v7 = 0;
      }

      CFRelease(v4);
    }

    else
    {
      v7 = 0;
    }

    self->_familyNames = [objc_msgSend(v7 "allObjects")];
  }

  objc_sync_exit(self);
  return self->_familyNames;
}

- (id)sortedFontFamilyEntriesForStylesheet:(id)a3
{
  v4 = self;
  v32 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  if (!v4->_familyFonts)
  {
    v21 = v4;
    obj = [(TSWPFontCache *)v4 sortedFontFamilies];
    v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(obj, "count")}];
    v20 = a3;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v5)
    {
      v6 = *v26;
      v7 = *MEMORY[0x277CC48B8];
      v8 = *MEMORY[0x277CC4908];
      do
      {
        v9 = 0;
        do
        {
          if (*v26 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v25 + 1) + 8 * v9);
          v29 = v7;
          v30 = v10;
          v11 = CTFontDescriptorCreateWithAttributes([MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1]);
          v12 = v11;
          if (v11)
          {
            v13 = CTFontDescriptorCopyAttribute(v11, v8);
            if (v13)
            {
              [(NSArray *)v22 addObject:[TSWPFont fontWithName:v13]];

              CFRelease(v12);
            }

            else
            {
              v16 = [MEMORY[0x277D6C290] currentHandler];
              v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFontCache sortedFontFamilyEntriesForStylesheet:]"];
              [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFontCache.mm"), 314, @"Could not determine font name for descriptor: %@", v12}];
            }
          }

          else
          {
            v14 = [MEMORY[0x277D6C290] currentHandler];
            v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFontCache sortedFontFamilyEntriesForStylesheet:]"];
            [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFontCache.mm"), 310, @"invalid nil value for '%s'", "desc"}];
          }

          ++v9;
        }

        while (v5 != v9);
        v5 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v5);
    }

    v4 = v21;
    v21->_familyFonts = v22;
    a3 = v20;
  }

  objc_sync_exit(v4);
  v18 = [(NSArray *)v4->_familyFonts mutableCopy];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __54__TSWPFontCache_sortedFontFamilyEntriesForStylesheet___block_invoke;
  v24[3] = &unk_279D48130;
  v24[4] = v18;
  [a3 enumerateCascadedStylesUsingBlock:v24];
  [v18 sortUsingComparator:&__block_literal_global_63];
  return v18;
}

uint64_t __54__TSWPFontCache_sortedFontFamilyEntriesForStylesheet___block_invoke(uint64_t a1, void *a2)
{
  if (([a2 overridesProperty:46] & 1) != 0 || (result = objc_msgSend(a2, "overridesProperty:", 16), result))
  {
    objc_opt_class();
    [a2 valueForProperty:46];
    v5 = TSUDynamicCast();
    objc_opt_class();
    [a2 valueForProperty:16];
    result = TSUDynamicCast();
    if (result)
    {
      v6 = [TSWPFont fontWithName:result compatibilityName:v5];
      v7 = *(a1 + 32);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __54__TSWPFontCache_sortedFontFamilyEntriesForStylesheet___block_invoke_2;
      v8[3] = &unk_279D485B8;
      v8[4] = v6;
      result = [v7 indexOfObjectPassingTest:v8];
      if (result == 0x7FFFFFFFFFFFFFFFLL)
      {
        return [*(a1 + 32) addObject:v6];
      }
    }
  }

  return result;
}

uint64_t __54__TSWPFontCache_sortedFontFamilyEntriesForStylesheet___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (v6)
  {
    v7 = v6;
    result = [objc_msgSend(v6 "familyName")];
    if (result)
    {
      if (![*(a1 + 32) compatibilityName] || (result = objc_msgSend(objc_msgSend(v7, "compatibilityName"), "isEqualToString:", objc_msgSend(*(a1 + 32), "compatibilityName")), result))
      {
        result = 1;
        if (a4)
        {
          *a4 = 1;
        }
      }
    }
  }

  else
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFontCache sortedFontFamilyEntriesForStylesheet:]_block_invoke_2"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFontCache.mm"), 347, @"invalid nil value for '%s'", "existingFont"}];
    return 0;
  }

  return result;
}

uint64_t __54__TSWPFontCache_sortedFontFamilyEntriesForStylesheet___block_invoke_3()
{
  objc_opt_class();
  v0 = TSUDynamicCast();
  objc_opt_class();
  v1 = TSUDynamicCast();
  v2 = [v0 displayName];
  v3 = [v1 displayName];

  return [v2 compare:v3];
}

- (id)displayNameForFontFamily:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  familyDisplayNames = self->_familyDisplayNames;
  if (familyDisplayNames)
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  familyDisplayNames = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSArray count](self->_familyNames, "count")}];
  self->_familyDisplayNames = familyDisplayNames;
  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_3:
  v6 = [(NSMutableDictionary *)familyDisplayNames objectForKeyedSubscript:a3];
  if (!v6)
  {
    v7 = *MEMORY[0x277CC48B8];
    v15 = *MEMORY[0x277CC48B8];
    v16[0] = a3;
    v8 = CTFontDescriptorCreateWithAttributes([MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1]);
    v9 = v8;
    if (v8)
    {
      v6 = CTFontDescriptorCopyLocalizedAttribute(v8, v7, 0);
      CFRelease(v9);
      if (v6)
      {
        [(NSMutableDictionary *)self->_familyDisplayNames setObject:v6 forKeyedSubscript:a3];

        goto LABEL_9;
      }
    }

    else
    {
      v11 = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFontCache displayNameForFontFamily:]"];
      [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFontCache.mm"), 403, @"invalid nil value for '%s'", "desc"}];
    }

    objc_sync_exit(self);
    v13 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFontCache displayNameForFontFamily:]"];
    [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFontCache.mm"), 422, @"Couldn't generate a display name for font family: %@", a3}];
    return 0;
  }

LABEL_9:
  objc_sync_exit(self);
  return v6;
}

- (id)availableMembersOfFontFamily:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v21 = objc_opt_class();
  objc_sync_enter(v21);
  if (![(NSString *)self->_cachedMembersFamilyName isEqualToString:a3])
  {

    self->_cachedMembersFamilyName = 0;
    self->_cachedAvailableMembers = 0;
    v5 = objc_alloc(MEMORY[0x277CBEAC0]);
    v6 = [v5 initWithObjectsAndKeys:{a3, *MEMORY[0x277CC48B8], 0}];
    v7 = CTFontDescriptorCreateWithAttributes(v6);
    v8 = v7;
    if (v7)
    {
      obj = CTFontDescriptorCreateMatchingFontDescriptors(v7, 0);
      if (obj)
      {
        self->_cachedMembersFamilyName = a3;
        v20 = v8;
        self->_cachedAvailableMembers = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[__CFArray count](obj, "count")}];
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v9 = [(__CFArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v9)
        {
          v10 = *v24;
          v11 = *MEMORY[0x277CC4940];
          v12 = *MEMORY[0x277CC4908];
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v24 != v10)
              {
                objc_enumerationMutation(obj);
              }

              v14 = *(*(&v23 + 1) + 8 * i);
              v15 = CTFontDescriptorCopyLocalizedAttribute(v14, v11, 0);
              v16 = CTFontDescriptorCopyAttribute(v14, v12);
              cachedAvailableMembers = self->_cachedAvailableMembers;
              v27[0] = v16;
              v27[1] = v15;
              -[NSMutableArray addObject:](cachedAvailableMembers, "addObject:", [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2]);
            }

            v9 = [(__CFArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
          }

          while (v9);
        }

        v8 = v20;
      }

      CFRelease(v8);
    }
  }

  v18 = [(NSMutableArray *)self->_cachedAvailableMembers copy];
  objc_sync_exit(v21);
  return v18;
}

- (void)p_FontWasDownloaded:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v5 = [a3 object];
  v6 = [v5 valueForKey:*MEMORY[0x277CC4858]];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v7)
  {
    v21 = *v31;
    obj = v6;
    attribute = *MEMORY[0x277CC4908];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v9 = CTFontDescriptorCopyAttribute(*(*(&v30 + 1) + 8 * i), attribute);
        v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v11 = [(TSULRUCache *)self->_fontCache allKeys];
        v12 = [v11 countByEnumeratingWithState:&v26 objects:v35 count:16];
        if (v12)
        {
          v13 = *v27;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v27 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v15 = *(*(&v26 + 1) + 8 * j);
              if ([objc_msgSend(v15 "fontName")])
              {
                [v10 addObject:v15];
              }
            }

            v12 = [v11 countByEnumeratingWithState:&v26 objects:v35 count:16];
          }

          while (v12);
        }

        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v16 = [v10 countByEnumeratingWithState:&v22 objects:v34 count:16];
        if (v16)
        {
          v17 = *v23;
          do
          {
            for (k = 0; k != v16; ++k)
            {
              if (*v23 != v17)
              {
                objc_enumerationMutation(v10);
              }

              [(TSULRUCache *)self->_fontCache removeObjectForKey:*(*(&v22 + 1) + 8 * k)];
            }

            v16 = [v10 countByEnumeratingWithState:&v22 objects:v34 count:16];
          }

          while (v16);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v7);
  }

  self->_familyNames = 0;
  objc_sync_exit(self);
}

@end