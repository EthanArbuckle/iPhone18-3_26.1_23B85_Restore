@interface TSDImageProviderPool
+ (Class)p_providerClassForData:(id)a3;
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)sharedPool;
- (TSDImageProviderPool)init;
- (id)p_providerForData:(id)a3 temporary:(BOOL)a4 shouldValidate:(BOOL)a5;
- (unint64_t)p_removeProvidersWithZeroInterest;
- (void)addInterestInProviderForData:(id)a3;
- (void)dealloc;
- (void)flushImageProviders;
- (void)p_freeFileDescriptorsWithProviderCount:(unint64_t)a3;
- (void)p_updateFileDescriptorLimit;
- (void)removeInterestInProviderForData:(id)a3;
- (void)willCloseDocumentContext:(id)a3;
- (void)willCullData:(id)a3;
@end

@implementation TSDImageProviderPool

+ (id)_singletonAlloc
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___TSDImageProviderPool;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)sharedPool
{
  result = sharedPool_sSingletonInstance;
  if (!sharedPool_sSingletonInstance)
  {
    objc_sync_enter(a1);
    if (!sharedPool_sSingletonInstance)
    {
      v4 = [objc_msgSend(a1 "_singletonAlloc")];
      __dmb(0xBu);
      sharedPool_sSingletonInstance = v4;
      if (!v4)
      {
        v5 = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDImageProviderPool sharedPool]"];
        [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageProviderPool.m"), 50, @"Couldn't create singleton instance of %@", a1}];
      }
    }

    objc_sync_exit(a1);
    return sharedPool_sSingletonInstance;
  }

  return result;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDImageProviderPool allocWithZone:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageProviderPool.m"), 50, @"Don't alloc a singleton"}];
  return 0;
}

- (TSDImageProviderPool)init
{
  v5.receiver = self;
  v5.super_class = TSDImageProviderPool;
  v2 = [(TSDImageProviderPool *)&v5 init];
  if (v2)
  {
    v2->mImageDataToImageProviderMap = objc_alloc_init(MEMORY[0x277D6C348]);
    [(TSDImageProviderPool *)v2 p_updateFileDescriptorLimit];
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_p_didReceiveMemoryWarning_ name:*MEMORY[0x277D76670] object:{objc_msgSend(MEMORY[0x277D75128], "sharedApplication")}];
    [TSPData addCullingListener:v2];
  }

  return v2;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  [TSPData removeCullingListener:self];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(TSUPointerKeyDictionary *)self->mImageDataToImageProviderMap objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeOwner];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = TSDImageProviderPool;
  [(TSDImageProviderPool *)&v8 dealloc];
}

+ (Class)p_providerClassForData:(id)a3
{
  v4 = [a3 isLengthLikelyToBeGreaterThan:TSDImageMaxAllowedDataLength()];
  v5 = 0;
  if (+[TSPData null]== a3 || (v4 & 1) != 0)
  {
    return v5;
  }

  v6 = [a3 type];
  if (UTTypeConformsTo(v6, *MEMORY[0x277CC2110]))
  {
    return 0;
  }

  if (!-[__CFString isEqualToString:](v6, "isEqualToString:", @"com.adobe.illustrator.ai-image") && !UTTypeConformsTo(v6, *MEMORY[0x277CC20B0]) && !UTTypeConformsTo(v6, [*MEMORY[0x277CE1E08] identifier]))
  {
    v16 = 0;
    v15 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__TSDImageProviderPool_p_providerClassForData___block_invoke;
    v10[3] = &unk_279D48B88;
    v10[4] = &v11;
    v10[5] = &v15;
    [a3 performInputStreamReadWithAccessor:v10];
    if (*(v12 + 24) == 1 && (v15 == 1178882085 ? (v8 = v16 == 45) : (v8 = 0), v8))
    {
      v5 = objc_opt_class();
    }

    else
    {
      v9 = [a3 newCGImage];
      if (v9)
      {
        v5 = objc_opt_class();
        CGImageRelease(v9);
      }

      else
      {
        v5 = 0;
      }
    }

    _Block_object_dispose(&v11, 8);
    return v5;
  }

  return objc_opt_class();
}

uint64_t __47__TSDImageProviderPool_p_providerClassForData___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  v5 = 5;
  while (1)
  {
    result = [a2 readToBuffer:v4 size:v5];
    v5 -= result;
    if (v5 == 5)
    {
      break;
    }

    v4 += v5;
    if (!v5)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      return result;
    }
  }

  return result;
}

- (id)p_providerForData:(id)a3 temporary:(BOOL)a4 shouldValidate:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  if (!a3)
  {
    goto LABEL_4;
  }

  v8 = a4;
  if ([a3 needsDownload])
  {
    v6 = 0;
LABEL_4:
    mOpenFileDescriptorLimit = 0;
    v10 = 0;
    goto LABEL_10;
  }

  objc_sync_enter(self);
  mOpenFileDescriptorLimit = self->mOpenFileDescriptorLimit;
  v11 = [(TSUPointerKeyDictionary *)self->mImageDataToImageProviderMap objectForKey:v6];
  v10 = v11;
  if (v11 || (objc_sync_exit(self), objc_sync_enter(self), v11 = [(TSUPointerKeyDictionary *)self->mImageDataToImageProviderMap objectForKey:v6], (v10 = v11) != 0))
  {
    [(TSDImageProvider *)v11 ownerAccess];
    v12 = [(TSUPointerKeyDictionary *)self->mImageDataToImageProviderMap count];
  }

  else
  {
    v14 = [objc_opt_class() p_providerClassForData:v6];
    if (!v14)
    {
      v6 = 0;
      v10 = 0;
      goto LABEL_9;
    }

    v15 = [[v14 alloc] initWithImageData:v6];
    v10 = v15;
    if (!v15)
    {
      v6 = 0;
      goto LABEL_9;
    }

    if (v8)
    {
      v16 = v15;
    }

    else
    {
      [(TSDImageProvider *)v15 addOwner];
      [(TSUPointerKeyDictionary *)self->mImageDataToImageProviderMap setObject:v10 forUncopiedKey:v6];
      [(TSDImageProvider *)v10 ownerAccess];
    }

    v12 = [(TSUPointerKeyDictionary *)self->mImageDataToImageProviderMap count];
  }

  v6 = v12;
LABEL_9:
  objc_sync_exit(self);
LABEL_10:
  [(TSDImageProvider *)v10 addInterest];
  [(TSUPointerKeyDictionary *)self->mImageDataToImageProviderMap count];
  [(TSDImageProviderPool *)self p_didReceiveMemoryWarning:0];
  [(TSDImageProvider *)v10 removeInterest];
  if (v10)
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = +[TSDErrorImageProvider sharedInstance];
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  if (![(TSDErrorImageProvider *)v10 isValid])
  {
    v10 = +[TSDErrorImageProvider sharedInstance];
  }

LABEL_16:
  if (v6 > [(TSDImageProviderPool *)self p_providerLimitForFileDescriptorLimit:mOpenFileDescriptorLimit])
  {
    [(TSDImageProviderPool *)self p_freeFileDescriptorsWithProviderCount:v6];
  }

  return v10;
}

- (void)addInterestInProviderForData:(id)a3
{
  if (a3)
  {
    v3 = [(TSDImageProviderPool *)self providerForData:a3 shouldValidate:0];

    [v3 addInterest];
  }

  else
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageProviderPool addInterestInProviderForData:]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageProviderPool.m"), 267, @"invalid nil value for '%s'", "imageData"}];
  }
}

- (void)removeInterestInProviderForData:(id)a3
{
  if (a3)
  {
    objc_sync_enter(self);
    [-[TSUPointerKeyDictionary objectForKey:](self->mImageDataToImageProviderMap objectForKey:{a3), "removeInterest"}];

    objc_sync_exit(self);
  }

  else
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageProviderPool removeInterestInProviderForData:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageProviderPool.m"), 276, @"invalid nil value for '%s'", "imageData"}];
  }
}

- (void)willCloseDocumentContext:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(TSUPointerKeyDictionary *)self->mImageDataToImageProviderMap objectEnumerator];
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 imageData];
        if (v11 && [v11 context] == a3)
        {
          if (!v6)
          {
            v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v6 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = *v18;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v15 = *(*(&v17 + 1) + 8 * j);
        [v15 removeOwner];
        v16 = [v15 imageData];
        if (v16)
        {
          [(TSUPointerKeyDictionary *)self->mImageDataToImageProviderMap removeObjectForKey:v16];
        }
      }

      v12 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  objc_sync_exit(self);
}

- (void)flushImageProviders
{
  v13 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(TSUPointerKeyDictionary *)self->mImageDataToImageProviderMap objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [v7 flush];
        [v7 removeOwner];
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  self->mImageDataToImageProviderMap = 0;
  objc_sync_exit(self);
}

- (void)willCullData:(id)a3
{
  objc_sync_enter(self);
  v5 = [(TSUPointerKeyDictionary *)self->mImageDataToImageProviderMap objectForKey:a3];
  if (v5)
  {
    [v5 removeOwner];
    [(TSUPointerKeyDictionary *)self->mImageDataToImageProviderMap removeObjectForKey:a3];
  }

  [TSDBitmapImageProvider clearCacheForData:a3];

  objc_sync_exit(self);
}

- (void)p_freeFileDescriptorsWithProviderCount:(unint64_t)a3
{
  v35 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  obj = self;
  [(TSDImageProviderPool *)self p_updateFileDescriptorLimit];
  v5 = [(TSDImageProviderPool *)self p_providerLimitForFileDescriptorLimit:self->mOpenFileDescriptorLimit];
  if (v5 < a3)
  {
    a3 -= [(TSDImageProviderPool *)self p_removeProvidersWithZeroInterest];
  }

  if (a3 > v5 && !self->mHaveRaisedFileDescriptorLimit && self->mOpenFileDescriptorLimit <= 0x7FF)
  {
    v6 = 2048;
    do
    {
      v32.rlim_cur = 0;
      v32.rlim_max = 0;
      if (getrlimit(8, &v32) || v32.rlim_cur >= v6)
      {
        break;
      }

      v32.rlim_cur = 2048;
      if (setrlimit(8, &v32))
      {
        v6 -= 256;
      }

      else
      {
        self->mOpenFileDescriptorLimit = v32.rlim_cur;
        v5 = [(TSDImageProviderPool *)self p_providerLimitForFileDescriptorLimit:?];
      }
    }

    while (self->mOpenFileDescriptorLimit < v6);
    self->mHaveRaisedFileDescriptorLimit = 1;
  }

  if (a3 > v5)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = [(TSUPointerKeyDictionary *)self->mImageDataToImageProviderMap objectEnumerator];
    v9 = [v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v9)
    {
      v10 = a3 - ((3 * v5) >> 2);
      v11 = *v29;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          v14 = [v7 count];
          v15 = v14;
          if (v14 >= v10)
          {
            if (v14)
            {
              v16 = 0;
              do
              {
                v17 = [objc_msgSend(v7 objectAtIndex:{v16), "interest"}];
                if (v17 > [v13 interest])
                {
                  [v7 replaceObjectAtIndex:v16 withObject:v13];
                }

                ++v16;
              }

              while (v15 != v16);
            }
          }

          else
          {
            [v7 addObject:v13];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v9);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = [v7 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v18)
    {
      v19 = *v25;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v7);
          }

          v21 = *(*(&v24 + 1) + 8 * j);
          [v21 removeOwner];
          v22 = [v21 imageData];
          if (v22)
          {
            [(TSUPointerKeyDictionary *)obj->mImageDataToImageProviderMap removeObjectForKey:v22];
          }
        }

        v18 = [v7 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v18);
    }
  }

  objc_sync_exit(obj);
}

- (unint64_t)p_removeProvidersWithZeroInterest
{
  v26 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [(TSUPointerKeyDictionary *)self->mImageDataToImageProviderMap objectEnumerator];
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        if ([v8 interest] <= 0)
        {
          if (!v4)
          {
            v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v4 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v9)
  {
    v10 = *v17;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v16 + 1) + 8 * j);
        [v12 removeOwner];
        v13 = [v12 imageData];
        if (v13)
        {
          [(TSUPointerKeyDictionary *)self->mImageDataToImageProviderMap removeObjectForKey:v13];
        }
      }

      v9 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v9);
  }

  v14 = [v4 count];

  objc_sync_exit(self);
  return v14;
}

- (void)p_updateFileDescriptorLimit
{
  v6.rlim_cur = 0;
  v6.rlim_max = 0;
  if (getrlimit(8, &v6))
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageProviderPool p_updateFileDescriptorLimit]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageProviderPool.m"), 512, @"Failed to get fd limit: getrlimit set errno to %d. Assuming limit of 256.", *__error()}];
    rlim_cur = 256;
  }

  else
  {
    rlim_cur = v6.rlim_cur;
  }

  self->mOpenFileDescriptorLimit = rlim_cur;
}

@end