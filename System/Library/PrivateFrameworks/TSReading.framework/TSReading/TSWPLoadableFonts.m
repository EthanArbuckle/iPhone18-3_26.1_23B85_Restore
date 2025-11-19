@interface TSWPLoadableFonts
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)sharedInstance;
- (TSWPLoadableFonts)init;
- (void)dealloc;
- (void)loadFontWithName:(id)a3;
- (void)loadFontsForGroup:(id)a3;
- (void)p_loadFontWithInfo:(id)a3;
- (void)pauseBackgroundLoading;
- (void)registerFontName:(id)a3 forPath:(id)a4 forGroup:(id)a5 isObfuscated:(BOOL)a6 backgroundLoad:(BOOL)a7;
- (void)resumeBackgroundLoading;
- (void)unregisterFontsForGroup:(id)a3;
@end

@implementation TSWPLoadableFonts

+ (id)_singletonAlloc
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___TSWPLoadableFonts;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)sharedInstance
{
  result = +[TSWPLoadableFonts sharedInstance]::sSingletonInstance;
  if (!+[TSWPLoadableFonts sharedInstance]::sSingletonInstance)
  {
    objc_sync_enter(a1);
    if (!+[TSWPLoadableFonts sharedInstance]::sSingletonInstance)
    {
      v4 = [objc_msgSend(a1 "_singletonAlloc")];
      __dmb(0xBu);
      +[TSWPLoadableFonts sharedInstance]::sSingletonInstance = v4;
      if (!v4)
      {
        v5 = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPLoadableFonts sharedInstance]"];
        [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLoadableFonts.mm"), 138, @"Couldn't create singleton instance of %@", a1}];
      }
    }

    objc_sync_exit(a1);
    return +[TSWPLoadableFonts sharedInstance]::sSingletonInstance;
  }

  return result;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPLoadableFonts allocWithZone:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLoadableFonts.mm"), 138, @"Don't alloc a singleton"}];
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

- (void)loadFontWithName:(id)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLoadableFonts loadFontWithName:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLoadableFonts.mm"), 198, @"invalid nil value for '%s'", "fontName"}];
  }

  if ([(NSMutableDictionary *)self->_loadableFonts count])
  {
    v7 = [a3 lowercaseString];
    objc_sync_enter(self);
    v8 = [(NSOperationQueue *)self->_fontQueue isSuspended];
    [(NSOperationQueue *)self->_fontQueue setSuspended:1];
    objc_opt_class();
    [(NSMutableDictionary *)self->_loadableFonts objectForKey:v7];
    v9 = TSUDynamicCast();
    if (v9 || (objc_opt_class(), -[NSMutableDictionary objectForKey:](self->_loadableFontFamilies, "objectForKey:", v7), (v9 = [TSUDynamicCast() anyObject]) != 0))
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

    [(NSOperationQueue *)self->_fontQueue setSuspended:v8];
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

- (void)loadFontsForGroup:(id)a3
{
  objc_sync_enter(self);
  v5 = [(NSMutableDictionary *)self->_loadableFonts allValues];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__TSWPLoadableFonts_loadFontsForGroup___block_invoke;
  v6[3] = &unk_279D4A208;
  v6[4] = a3;
  v6[5] = self;
  [v5 enumerateObjectsUsingBlock:v6];
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

- (void)registerFontName:(id)a3 forPath:(id)a4 forGroup:(id)a5 isObfuscated:(BOOL)a6 backgroundLoad:(BOOL)a7
{
  v8 = a6;
  objc_sync_enter(self);
  v13 = objc_alloc_init(TSWPLoadableFontInfo);
  v14 = [a3 lowercaseString];
  [(TSWPLoadableFontInfo *)v13 setFontName:v14];
  [(TSWPLoadableFontInfo *)v13 setGroupUID:a5];
  [(TSWPLoadableFontInfo *)v13 setFontPath:a4];
  [(TSWPLoadableFontInfo *)v13 setObfuscated:v8];
  loadableFonts = self->_loadableFonts;
  if (!loadableFonts)
  {
    loadableFonts = objc_alloc_init(MEMORY[0x277CBEB38]);
    self->_loadableFonts = loadableFonts;
  }

  if (![(NSMutableDictionary *)loadableFonts objectForKey:v14])
  {
    [(NSMutableDictionary *)self->_loadableFonts setObject:v13 forKey:v14];
    if (a7)
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

      v17 = [v14 rangeOfString:@"-"];
      if (v18)
      {
        v14 = [v14 substringToIndex:v17];
      }

      [(TSWPLoadableFontInfo *)v13 setFontFamily:v14];
      objc_opt_class();
      [(NSMutableDictionary *)self->_loadableFontFamilies objectForKey:v14];
      v19 = TSUDynamicCast();
      if (!v19)
      {
        v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
        [(NSMutableDictionary *)self->_loadableFontFamilies setObject:v19 forKey:v14];
      }

      if ([v19 containsObject:v13])
      {
        v20 = [MEMORY[0x277D6C290] currentHandler];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLoadableFonts registerFontName:forPath:forGroup:isObfuscated:backgroundLoad:]"];
        [v20 handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLoadableFonts.mm"), 316, @"Already added this font to this family."}];
      }

      [v19 addObject:v13];
    }
  }

  objc_sync_exit(self);
}

- (void)unregisterFontsForGroup:(id)a3
{
  objc_sync_enter(self);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(NSMutableDictionary *)self->_loadableFonts allValues];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__TSWPLoadableFonts_unregisterFontsForGroup___block_invoke;
  v7[3] = &unk_279D4A208;
  v7[4] = a3;
  v7[5] = v5;
  [v6 enumerateObjectsUsingBlock:v7];
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

- (void)p_loadFontWithInfo:(id)a3
{
  if ((atomic_fetch_or(a3 + 48, 1u) & 1) == 0)
  {
    error = 0;
    if ([a3 groupUID] && objc_msgSend(a3, "obfuscated"))
    {
      Sequential = CGDataProviderCreateSequential(-[TSWPObfuscatedFontDataProvider initWithPath:groupUID:]([TSWPObfuscatedFontDataProvider alloc], "initWithPath:groupUID:", [a3 fontPath], objc_msgSend(a3, "groupUID")), &-[TSWPLoadableFonts p_loadFontWithInfo:]::unobfuscate);
    }

    else
    {
      Sequential = CGDataProviderCreateWithURL([MEMORY[0x277CBEBC0] fileURLWithPath:{objc_msgSend(a3, "fontPath")}]);
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
      v12 = [MEMORY[0x277D6C290] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLoadableFonts p_loadFontWithInfo:]"];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLoadableFonts.mm"];
      v15 = [a3 fontName];
      v16 = [a3 fontPath];
      [v12 handleFailureInFunction:v13 file:v14 lineNumber:478 description:{@"failed to load and register font %@ at %@ with error %@", v15, v16, error}];
      return;
    }

    v7 = v6;
    v8 = CTFontManagerRegisterGraphicsFont(v6, &error);
    if (v8)
    {
      [a3 setCgFont:v7];
    }

    else
    {
      v9 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLoadableFonts p_loadFontWithInfo:]"];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLoadableFonts.mm"];
      [v9 handleFailureInFunction:v10 file:v11 lineNumber:418 description:{@"CTFontManagerRegisterGraphicsFont couldn't register font - %@", error}];
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