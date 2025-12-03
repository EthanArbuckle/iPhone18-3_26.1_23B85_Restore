@interface WebCache
+ (CGImage)imageForURL:(id)l;
+ (id)statistics;
+ (void)clearCachedCredentials;
+ (void)empty;
+ (void)setDisabled:(BOOL)disabled;
+ (void)sizeOfDeadResources:(int *)resources;
@end

@implementation WebCache

+ (id)statistics
{
  v27[4] = *MEMORY[0x1E69E9840];
  v2 = WebCore::MemoryCache::singleton(self);
  WebCore::MemoryCache::getStatistics(&v4, v2);
  v25[0] = @"Images";
  v26[0] = [MEMORY[0x1E696AD98] numberWithInt:v4];
  v25[1] = @"CSS";
  v26[1] = [MEMORY[0x1E696AD98] numberWithInt:v7];
  v25[2] = @"XSL";
  v26[2] = [MEMORY[0x1E696AD98] numberWithInt:v15];
  v25[3] = @"JavaScript";
  v26[3] = [MEMORY[0x1E696AD98] numberWithInt:v11];
  v27[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];
  v23[0] = @"Images";
  v24[0] = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(v4)];
  v23[1] = @"CSS";
  v24[1] = [MEMORY[0x1E696AD98] numberWithInt:v8];
  v23[2] = @"XSL";
  v24[2] = [MEMORY[0x1E696AD98] numberWithInt:v16];
  v23[3] = @"JavaScript";
  v24[3] = [MEMORY[0x1E696AD98] numberWithInt:v12];
  v27[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:4];
  v21[0] = @"Images";
  v22[0] = [MEMORY[0x1E696AD98] numberWithInt:v5];
  v21[1] = @"CSS";
  v22[1] = [MEMORY[0x1E696AD98] numberWithInt:v9];
  v21[2] = @"XSL";
  v22[2] = [MEMORY[0x1E696AD98] numberWithInt:v17];
  v21[3] = @"JavaScript";
  v22[3] = [MEMORY[0x1E696AD98] numberWithInt:v13];
  v27[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v19[0] = @"Images";
  v20[0] = [MEMORY[0x1E696AD98] numberWithInt:v6];
  v19[1] = @"CSS";
  v20[1] = [MEMORY[0x1E696AD98] numberWithInt:v10];
  v19[2] = @"XSL";
  v20[2] = [MEMORY[0x1E696AD98] numberWithInt:v18];
  v19[3] = @"JavaScript";
  v20[3] = [MEMORY[0x1E696AD98] numberWithInt:v14];
  v27[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
}

+ (void)empty
{
  v2 = +[WebView _cacheModel];
  [WebView _setCacheModel:0];
  v3 = WebCore::CrossOriginPreflightResultCache::singleton([WebView _setCacheModel:v2]);

  MEMORY[0x1EEE59E20](v3);
}

uint64_t __34__WebCache_emptyInMemoryResources__block_invoke()
{
  v0 = +[WebView _cacheModel];
  [WebView _setCacheModel:0];
  v1 = WebCore::MemoryCache::singleton([WebView _setCacheModel:v0]);

  return MEMORY[0x1EEE54800](v1, 1);
}

+ (void)sizeOfDeadResources:(int *)resources
{
  v4 = WebCore::MemoryCache::singleton(self);
  WebCore::MemoryCache::getStatistics(v6, v4);
  if (resources)
  {
    v5 = vadd_s32(vadd_s32(*&v6[4], v7), vadd_s32(v9, v8));
    *resources = vsub_s32(v5, vdup_lane_s32(v5, 1)).u32[0];
  }
}

+ (CGImage)imageForURL:(id)l
{
  if (!l)
  {
    return 0;
  }

  MEMORY[0x1CCA63960](v21, l);
  WebCore::ResourceRequestBase::RequestData::RequestData(v22, v21, 0);
  v24 = 0;
  v4 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v25 = v4;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = v29 & 0xE0 | 5;
  v23 |= 2u;
  v30 = 0;
  v5 = v21[0];
  v21[0] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v5 = WTF::StringImpl::destroy(v5, v3);
  }

  WebCore::MemoryCache::singleton(v5);
  v6 = WebCore::MemoryCache::resourceForRequest();
  if (!v6 || (*(v6 + 572) & 0x1F) != 1 || !*(v6 + 704) || (v8 = WebCore::CachedImage::image(v6), v9 = WebCore::DestinationColorSpace::SRGB(v8), (*(*v8 + 304))(v21, v8, v9), !v21[0]))
  {
    v10 = 0;
LABEL_18:
    v14 = v30;
    v30 = 0;
    if (v14)
    {
LABEL_19:
    }

    goto LABEL_20;
  }

  v10 = *WebCore::NativeImage::platformImage(v21[0]);
  v11 = v21[0];
  v21[0] = 0;
  if (!v11)
  {
    goto LABEL_18;
  }

  do
  {
    v12 = v11[1];
    if ((v12 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(v11[1], v7);
      v14 = v30;
      v30 = 0;
      if (v14)
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    v13 = v11[1];
    atomic_compare_exchange_strong_explicit(v11 + 1, &v13, v12 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v13 != v12);
  if (v12 != 3)
  {
    goto LABEL_18;
  }

  (*(*v11 + 8))(v11);
  v14 = v30;
  v30 = 0;
  if (v14)
  {
    goto LABEL_19;
  }

LABEL_20:
  v15 = v26;
  v26 = 0;
  if (!v15)
  {
    goto LABEL_23;
  }

  if (*v15 != 1)
  {
    --*v15;
LABEL_23:
    v16 = v25;
    v25 = 0;
    if (!v16)
    {
      goto LABEL_29;
    }

LABEL_27:
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v7);
    }

    goto LABEL_29;
  }

  v18 = MEMORY[0x1CCA67F60]();
  bmalloc::api::tzoneFree(v18, v19);
  v16 = v25;
  v25 = 0;
  if (v16)
  {
    goto LABEL_27;
  }

LABEL_29:
  v20 = v24;
  v24 = 0;
  if (v20)
  {
    if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v7);
    }
  }

  WebCore::ResourceRequestBase::RequestData::~RequestData(v22, v7);
  return v10;
}

+ (void)setDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v5 = pthread_main_np();
  if (v5)
  {
    v6 = WebCore::MemoryCache::singleton(v5);

    MEMORY[0x1EEE547E0](v6, disabledCopy);
  }

  else
  {
    _webkit_invokeOnMainThread = [self _webkit_invokeOnMainThread];

    [_webkit_invokeOnMainThread setDisabled:disabledCopy];
  }
}

+ (void)clearCachedCredentials
{
  v2 = [WebView _makeAllWebViewsPerformSelector:sel__clearCredentials];
  v4 = NetworkStorageSessionMap::defaultStorageSession(v2, v3) + 112;

  MEMORY[0x1EEE56AA0](v4);
}

@end