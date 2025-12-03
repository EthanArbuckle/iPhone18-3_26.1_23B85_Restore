@interface TSWPFontHeightCache
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)sharedCache;
- ($8502DCEA08BBBE1AB2005217B3838BBD)fontHeightInfoForFont:(SEL)font;
- (BOOL)p_findEntryForFont:(__CTFont *)font outHeightInfo:(id *)info collision:(BOOL *)collision;
- (TSWPFontHeightCache)init;
- (id).cxx_construct;
- (void)dealloc;
@end

@implementation TSWPFontHeightCache

+ (id)_singletonAlloc
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___TSWPFontHeightCache;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)sharedCache
{
  result = +[TSWPFontHeightCache sharedCache]::sSingletonInstance;
  if (!+[TSWPFontHeightCache sharedCache]::sSingletonInstance)
  {
    objc_sync_enter(self);
    if (!+[TSWPFontHeightCache sharedCache]::sSingletonInstance)
    {
      v4 = [objc_msgSend(self "_singletonAlloc")];
      __dmb(0xBu);
      +[TSWPFontHeightCache sharedCache]::sSingletonInstance = v4;
      if (!v4)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPFontHeightCache sharedCache]"];
        [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFontHeightCache.mm"), 34, @"Couldn't create singleton instance of %@", self}];
      }
    }

    objc_sync_exit(self);
    return +[TSWPFontHeightCache sharedCache]::sSingletonInstance;
  }

  return result;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPFontHeightCache allocWithZone:]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFontHeightCache.mm"), 34, @"Don't alloc a singleton"}];
  return 0;
}

- (TSWPFontHeightCache)init
{
  v5.receiver = self;
  v5.super_class = TSWPFontHeightCache;
  v2 = [(TSWPFontHeightCache *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_maxCacheSize = 32;
    pthread_rwlock_init(&v2->_lock, 0);
  }

  return v3;
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->_lock);
  begin_node = self->_fontHashToInfoMap.__tree_.__begin_node_;
  if (begin_node != &self->_fontHashToInfoMap.__tree_.__end_node_)
  {
    do
    {
      CFRelease(begin_node[13].__left_);
      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v5 = left;
          left = left->super.isa;
        }

        while (left);
      }

      else
      {
        do
        {
          v5 = begin_node[2].__left_;
          v6 = v5->super.isa == begin_node;
          begin_node = v5;
        }

        while (!v6);
      }

      begin_node = v5;
    }

    while (v5 != &self->_fontHashToInfoMap.__tree_.__end_node_);
  }

  v7.receiver = self;
  v7.super_class = TSWPFontHeightCache;
  [(TSWPFontHeightCache *)&v7 dealloc];
}

- ($8502DCEA08BBBE1AB2005217B3838BBD)fontHeightInfoForFont:(SEL)font
{
  *retstr = *gZeroHeightInfo;
  if (!a4)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFontHeightCache fontHeightInfoForFont:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFontHeightCache.mm"), 67, @"invalid nil value for '%s'", "font"}];
  }

  pthread_rwlock_rdlock(&self->_lock);
  v17 = 0;
  v9 = [(TSWPFontHeightCache *)self p_findEntryForFont:a4 outHeightInfo:retstr collision:&v17];
  result = pthread_rwlock_unlock(&self->_lock);
  if (!v9)
  {
    pthread_rwlock_wrlock(&self->_lock);
    if (![(TSWPFontHeightCache *)self p_findEntryForFont:a4 outHeightInfo:retstr collision:&v17])
    {
      Size = TSWPDefaultLineHeightForFont(a4);
      retstr->var2 = CTFontGetAscent(a4);
      retstr->var3 = CTFontGetDescent(a4);
      retstr->var7 = CTFontGetCapHeight(a4);
      Leading = CTFontGetLeading(a4);
      var2 = retstr->var2;
      var3 = retstr->var3;
      if (var2 == 0.0 && var3 == 0.0 && Leading == 0.0)
      {
        currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFontHeightCache fontHeightInfoForFont:]"];
        [currentHandler2 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFontHeightCache.mm"), 95, @"Bad metrics for font %@", a4}];
        Size = CTFontGetSize(a4);
        var3 = Size * 0.5;
        retstr->var2 = Size * 0.5;
        retstr->var3 = Size * 0.5;
        var2 = Size * 0.5;
      }

      retstr->var4 = Size - var2 - var3 - Leading;
      retstr->var5 = Leading;
      if ((v17 & 1) == 0)
      {
        [(TSWPFontHeightCache *)self p_addEntryForFont:a4 heightInfo:retstr];
      }
    }

    return pthread_rwlock_unlock(&self->_lock);
  }

  return result;
}

- (BOOL)p_findEntryForFont:(__CTFont *)font outHeightInfo:(id *)info collision:(BOOL *)collision
{
  if (!info)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFontHeightCache p_findEntryForFont:outHeightInfo:collision:]"];
    [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFontHeightCache.mm"), 119, @"invalid nil value for '%s'", "heightInfo"}];
  }

  v11 = CFHash(font);
  left = self->_fontHashToInfoMap.__tree_.__end_node_.__left_;
  p_end_node = &self->_fontHashToInfoMap.__tree_.__end_node_;
  v12 = left;
  if (!left)
  {
    goto LABEL_11;
  }

  v15 = p_end_node;
  do
  {
    v16 = *(v12 + 4);
    v17 = v16 >= v11;
    v18 = v16 < v11;
    if (v17)
    {
      v15 = v12;
    }

    v12 = *(v12 + v18);
  }

  while (v12);
  if (v15 != p_end_node && v11 >= v15[4].__left_)
  {
    *collision = 0;
    v20 = v15[13].__left_;
    if (v20 == font || (v19 = CFEqual(v20, font)) != 0)
    {
      v21 = *&v15[5].__left_;
      v22 = *&v15[7].__left_;
      v23 = *&v15[11].__left_;
      *&info->var4 = *&v15[9].__left_;
      *&info->var6 = v23;
      *&info->var0 = v21;
      *&info->var2 = v22;
      LOBYTE(v19) = 1;
    }

    else
    {
      *collision = 1;
    }
  }

  else
  {
LABEL_11:
    LOBYTE(v19) = 0;
    *collision = 0;
  }

  return v19;
}

- (id).cxx_construct
{
  *(self + 1) = self + 8;
  *(self + 2) = self + 8;
  *(self + 6) = 0;
  *(self + 5) = 0;
  *(self + 3) = 0;
  *(self + 4) = self + 40;
  return self;
}

@end