@interface TSWPLoadableFonts
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)sharedInstance;
- (TSWPLoadableFonts)init;
- (void)dealloc;
- (void)loadFontWithName:(id)name;
- (void)loadFontsForGroup:(id)group;
- (void)p_loadFontWithInfo:(id)info;
- (void)pauseBackgroundLoading;
- (void)registerFontName:(id)name forPath:(id)path forGroup:(id)group isObfuscated:(BOOL)obfuscated backgroundLoad:(BOOL)load;
- (void)resumeBackgroundLoading;
- (void)unregisterFontsForGroup:(id)group;
@end

@implementation TSWPLoadableFonts

+ (id)_singletonAlloc
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___TSWPLoadableFonts;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)sharedInstance
{
  result = +[TSWPLoadableFonts sharedInstance]::sSingletonInstance;
  if (!+[TSWPLoadableFonts sharedInstance]::sSingletonInstance)
  {
    objc_sync_enter(self);
    if (!+[TSWPLoadableFonts sharedInstance]::sSingletonInstance)
    {
      v4 = [objc_msgSend(self "_singletonAlloc")];
      __dmb(0xBu);
      +[TSWPLoadableFonts sharedInstance]::sSingletonInstance = v4;
      if (!v4)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPLoadableFonts sharedInstance]"];
        [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLoadableFonts.mm"), 138, @"Couldn't create singleton instance of %@", self}];
      }
    }

    objc_sync_exit(self);
    return +[TSWPLoadableFonts sharedInstance]::sSingletonInstance;
  }

  return result;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPLoadableFonts allocWithZone:]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLoadableFonts.mm"), 138, @"Don't alloc a singleton"}];
  return 0;
}

- (TSWPLoadableFonts)init
{
  v5.receiver = self;
  v5.super_class = TSWPLoadableFonts;
  v2 = [(TSWPLoadableFonts *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v2->_fontQueue = v3;
    [(NSOperationQueue *)v3 setName:@"com.apple.thunderfish.loadablefonts"];
    [(NSOperationQueue *)v2->_fontQueue setMaxConcurrentOperationCount:-1];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPLoadableFonts;
  [(TSWPLoadableFonts *)&v3 dealloc];
}

- (void)pauseBackgroundLoading
{
  objc_sync_enter(self);
  [(NSOperationQueue *)self->_fontQueue setSuspended:1];

  objc_sync_exit(self);
}

- (void)resumeBackgroundLoading
{
  objc_sync_enter(self);
  [(NSOperationQueue *)self->_fontQueue setSuspended:0];

  objc_sync_exit(self);
}

- (void)loadFontWithName:(id)name
{
  if (!name)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLoadableFonts loadFontWithName:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLoadableFonts.mm"), 198, @"invalid nil value for '%s'", "fontName"}];
  }

  if ([(NSMutableDictionary *)self->_loadableFonts count])
  {
    lowercaseString = [name lowercaseString];
    objc_sync_enter(self);
    isSuspended = [(NSOperationQueue *)self->_fontQueue isSuspended];
    [(NSOperationQueue *)self->_fontQueue setSuspended:1];
    objc_opt_class();
    [(NSMutableDictionary *)self->_loadableFonts objectForKey:lowercaseString];
    v9 = TSUDynamicCast();
    if (v9 || (objc_opt_class(), -[NSMutableDictionary objectForKey:](self->_loadableFontFamilies, "objectForKey:", lowercaseString), (v9 = [TSUDynamicCast() anyObject]) != 0))
    {
      [(TSWPLoadableFonts *)self p_loadFontWithInfo:v9];
    }

    if ([v9 fontFamily])
    {
      objc_opt_class();
      -[NSMutableDictionary objectForKey:](self->_loadableFontFamilies, "objectForKey:", [v9 fontFamily]);
      v10 = TSUDynamicCast();
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __38__TSWPLoadableFonts_loadFontWithName___block_invoke;
      v11[3] = &unk_279D491B8;
      v11[4] = v9;
      v11[5] = self;
      [v10 enumerateObjectsUsingBlock:v11];
    }

    [(NSOperationQueue *)self->_fontQueue setSuspended:isSuspended];
    objc_sync_exit(self);
  }
}

uint64_t __38__TSWPLoadableFonts_loadFontWithName___block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 32) != a2)
  {
    return [*(result + 40) p_loadFontWithInfo:a2];
  }

  return result;
}

- (void)loadFontsForGroup:(id)group
{
  objc_sync_enter(self);
  allValues = [(NSMutableDictionary *)self->_loadableFonts allValues];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__TSWPLoadableFonts_loadFontsForGroup___block_invoke;
  v6[3] = &unk_279D4A208;
  v6[4] = group;
  v6[5] = self;
  [allValues enumerateObjectsUsingBlock:v6];
  objc_sync_exit(self);
}

uint64_t __39__TSWPLoadableFonts_loadFontsForGroup___block_invoke(uint64_t a1, void *a2)
{
  result = [objc_msgSend(a2 "groupUID")];
  if (result)
  {
    v5 = *(a1 + 40);

    return [v5 p_loadFontWithInfo:a2];
  }

  return result;
}

- (void)registerFontName:(id)name forPath:(id)path forGroup:(id)group isObfuscated:(BOOL)obfuscated backgroundLoad:(BOOL)load
{
  obfuscatedCopy = obfuscated;
  objc_sync_enter(self);
  v13 = objc_alloc_init(TSWPLoadableFontInfo);
  lowercaseString = [name lowercaseString];
  [(TSWPLoadableFontInfo *)v13 setFontName:lowercaseString];
  [(TSWPLoadableFontInfo *)v13 setGroupUID:group];
  [(TSWPLoadableFontInfo *)v13 setFontPath:path];
  [(TSWPLoadableFontInfo *)v13 setObfuscated:obfuscatedCopy];
  loadableFonts = self->_loadableFonts;
  if (!loadableFonts)
  {
    loadableFonts = objc_alloc_init(MEMORY[0x277CBEB38]);
    self->_loadableFonts = loadableFonts;
  }

  if (![(NSMutableDictionary *)loadableFonts objectForKey:lowercaseString])
  {
    [(NSMutableDictionary *)self->_loadableFonts setObject:v13 forKey:lowercaseString];
    if (load)
    {
      fontQueue = self->_fontQueue;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __83__TSWPLoadableFonts_registerFontName_forPath_forGroup_isObfuscated_backgroundLoad___block_invoke;
      v22[3] = &unk_279D47708;
      v22[4] = self;
      v22[5] = v13;
      [(NSOperationQueue *)fontQueue addOperationWithBlock:v22];
    }

    else
    {
      if (!self->_loadableFontFamilies)
      {
        self->_loadableFontFamilies = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v17 = [lowercaseString rangeOfString:@"-"];
      if (v18)
      {
        lowercaseString = [lowercaseString substringToIndex:v17];
      }

      [(TSWPLoadableFontInfo *)v13 setFontFamily:lowercaseString];
      objc_opt_class();
      [(NSMutableDictionary *)self->_loadableFontFamilies objectForKey:lowercaseString];
      v19 = TSUDynamicCast();
      if (!v19)
      {
        v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
        [(NSMutableDictionary *)self->_loadableFontFamilies setObject:v19 forKey:lowercaseString];
      }

      if ([v19 containsObject:v13])
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLoadableFonts registerFontName:forPath:forGroup:isObfuscated:backgroundLoad:]"];
        [currentHandler handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLoadableFonts.mm"), 316, @"Already added this font to this family."}];
      }

      [v19 addObject:v13];
    }
  }

  objc_sync_exit(self);
}

- (void)unregisterFontsForGroup:(id)group
{
  objc_sync_enter(self);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  allValues = [(NSMutableDictionary *)self->_loadableFonts allValues];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__TSWPLoadableFonts_unregisterFontsForGroup___block_invoke;
  v7[3] = &unk_279D4A208;
  v7[4] = group;
  v7[5] = v5;
  [allValues enumerateObjectsUsingBlock:v7];
  [(NSMutableDictionary *)self->_loadableFonts removeObjectsForKeys:v5];

  objc_sync_exit(self);
}

uint64_t __45__TSWPLoadableFonts_unregisterFontsForGroup___block_invoke(uint64_t a1, void *a2)
{
  result = [objc_msgSend(a2 "groupUID")];
  if (result)
  {
    v5 = *(a1 + 40);
    v6 = [a2 fontName];

    return [v5 addObject:v6];
  }

  return result;
}

- (void)p_loadFontWithInfo:(id)info
{
  if ((atomic_fetch_or(info + 48, 1u) & 1) == 0)
  {
    error = 0;
    if ([info groupUID] && objc_msgSend(info, "obfuscated"))
    {
      Sequential = CGDataProviderCreateSequential(-[TSWPObfuscatedFontDataProvider initWithPath:groupUID:]([TSWPObfuscatedFontDataProvider alloc], "initWithPath:groupUID:", [info fontPath], objc_msgSend(info, "groupUID")), &-[TSWPLoadableFonts p_loadFontWithInfo:]::unobfuscate);
    }

    else
    {
      Sequential = CGDataProviderCreateWithURL([MEMORY[0x277CBEBC0] fileURLWithPath:{objc_msgSend(info, "fontPath")}]);
    }

    v5 = Sequential;
    if (!Sequential)
    {
      goto LABEL_13;
    }

    v6 = CGFontCreateWithDataProvider(Sequential);
    if (!v6)
    {
      CGDataProviderRelease(v5);
LABEL_13:
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLoadableFonts p_loadFontWithInfo:]"];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLoadableFonts.mm"];
      fontName = [info fontName];
      fontPath = [info fontPath];
      [currentHandler handleFailureInFunction:v13 file:v14 lineNumber:478 description:{@"failed to load and register font %@ at %@ with error %@", fontName, fontPath, error}];
      return;
    }

    v7 = v6;
    v8 = CTFontManagerRegisterGraphicsFont(v6, &error);
    if (v8)
    {
      [info setCgFont:v7];
    }

    else
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLoadableFonts p_loadFontWithInfo:]"];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLoadableFonts.mm"];
      [currentHandler2 handleFailureInFunction:v10 file:v11 lineNumber:418 description:{@"CTFontManagerRegisterGraphicsFont couldn't register font - %@", error}];
    }

    CGFontRelease(v7);
    CGDataProviderRelease(v5);
    if (!v8)
    {
      goto LABEL_13;
    }
  }
}

@end