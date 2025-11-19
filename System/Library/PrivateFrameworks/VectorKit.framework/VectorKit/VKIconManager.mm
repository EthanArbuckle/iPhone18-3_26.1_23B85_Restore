@interface VKIconManager
+ (id)sharedManager;
- (BOOL)isCachingAtlases;
- (VKIconManager)init;
- (id).cxx_construct;
- (id)_internalIconManager;
- (id)balloonIconForStyleAttributes:(id)a3 withStylesheetName:(id)a4 contentScale:(float)a5 sizeGroup:(int64_t)a6 modifiers:(id)a7;
- (id)imageForDataID:(unsigned int)a3 text:(id)a4 contentScale:(float)a5 sizeGroup:(int64_t)a6 modifiers:(id)a7;
- (id)imageForIconID:(unsigned int)a3 contentScale:(float)a4 sizeGroup:(int64_t)a5 modifiers:(id)a6;
- (id)imageForImageSourceKey:(id)a3;
- (id)imageForKey:(unsigned int)a3 value:(unsigned int)a4 contentScale:(float)a5 sizeGroup:(int64_t)a6 modifiers:(id)a7;
- (id)imageForName:(id)a3 contentScale:(float)a4 sizeGroup:(int64_t)a5 modifiers:(id)a6;
- (id)imageForStyleAttributes:(id)a3 styleManager:(shared_ptr<gss:(float)a5 :(int64_t)a6 StylesheetManager<gss:(id)a7 :PropertyID>>)a4 contentScale:sizeGroup:modifiers:;
- (id)imageForStyleAttributes:(id)a3 withStylesheetName:(id)a4 contentScale:(float)a5 sizeGroup:(int64_t)a6 modifiers:(id)a7;
- (unsigned)darkVariant;
- (unsigned)styleAttributeTransitSystemTypeKey;
- (unsigned)styleAttributeTransitTypeKey;
- (unsigned)trafficIncidentTypeKey;
- (void)dealloc;
- (void)purge;
- (void)setIsCachingAtlases:(BOOL)a3;
@end

@implementation VKIconManager

+ (id)sharedManager
{
  if (+[VKIconManager sharedManager]::_once != -1)
  {
    dispatch_once(&+[VKIconManager sharedManager]::_once, &__block_literal_global_11923);
  }

  v3 = +[VKIconManager sharedManager]::singleton;

  return v3;
}

- (id)_internalIconManager
{
  std::mutex::lock((self + 32));
  v3 = *(self + 2);
  if (v3)
  {
    goto LABEL_2;
  }

  v5 = *(self + 1);
  if (!v5)
  {
    v6 = [VKSharedResourcesManager sharedResourcesCreateIfNil:0 addResourceUser:1];
    v7 = *(self + 1);
    *(self + 1) = v6;

    v5 = *(self + 1);
    if (!v5)
    {
      v19 = objc_alloc_init(VKInternalIconManager);
      v20 = *(self + 2);
      *(self + 2) = v19;

      v3 = *(self + 2);
LABEL_2:
      v4 = v3;
      goto LABEL_6;
    }
  }

  v4 = [v5 iconManager];
LABEL_6:
  v8 = v4;
  v9 = *(self + 12);
  if (v9)
  {
    dispatch_source_cancel(v9);
    v10 = *(self + 12);
    *(self + 12) = 0;
  }

  v11 = dispatch_get_global_queue(-32768, 0);
  v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v11);
  v13 = *(self + 12);
  *(self + 12) = v12;

  v14 = *(self + 26) + 1;
  *(self + 26) = v14;
  objc_initWeak(&location, self);
  v15 = *(self + 12);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __37__VKIconManager__internalIconManager__block_invoke;
  handler[3] = &unk_1E7B34AA8;
  objc_copyWeak(&v22, &location);
  v23 = v14;
  dispatch_source_set_event_handler(v15, handler);
  v16 = *(self + 12);
  v17 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v16, v17, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
  dispatch_resume(*(self + 12));
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
  std::mutex::unlock((self + 32));

  return v8;
}

void __37__VKIconManager__internalIconManager__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    std::mutex::lock((WeakRetained + 32));
    if (*(v8 + 26) == *(a1 + 40))
    {
      v3 = *(v8 + 12);
      if (v3)
      {
        dispatch_source_cancel(v3);
        v4 = *(v8 + 12);
        *(v8 + 12) = 0;
      }

      v5 = *(v8 + 2);
      if (v5)
      {
        [v5 purgeNonsharedResources];
        v6 = *(v8 + 2);
        *(v8 + 2) = 0;
      }

      v7 = *(v8 + 1);
      if (v7)
      {
        *(v8 + 1) = 0;

        +[VKSharedResourcesManager removeResourceUser];
      }
    }

    std::mutex::unlock((v8 + 32));
    WeakRetained = v8;
  }
}

- (id).cxx_construct
{
  *(self + 4) = 850045863;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 11) = 0;
  return self;
}

- (void)purge
{
  std::mutex::lock((self + 32));
  v3 = *(self + 2);
  if (v3)
  {
    [v3 purgeNonsharedResources];
  }

  std::mutex::unlock((self + 32));
}

- (void)setIsCachingAtlases:(BOOL)a3
{
  v3 = a3;
  v4 = [(VKIconManager *)self _internalIconManager];
  [v4 setIsCachingAtlases:v3];
}

- (BOOL)isCachingAtlases
{
  v2 = [(VKIconManager *)self _internalIconManager];
  v3 = [v2 isCachingAtlases];

  return v3;
}

- (unsigned)darkVariant
{
  v2 = [(VKIconManager *)self _internalIconManager];
  v3 = [v2 darkVariant];

  return v3;
}

- (unsigned)trafficIncidentTypeKey
{
  v2 = [(VKIconManager *)self _internalIconManager];
  v3 = [v2 trafficIncidentTypeKey];

  return v3;
}

- (unsigned)styleAttributeTransitSystemTypeKey
{
  v2 = [(VKIconManager *)self _internalIconManager];
  v3 = [v2 styleAttributeTransitSystemTypeKey];

  return v3;
}

- (unsigned)styleAttributeTransitTypeKey
{
  v2 = [(VKIconManager *)self _internalIconManager];
  v3 = [v2 styleAttributeTransitTypeKey];

  return v3;
}

- (id)imageForIconID:(unsigned int)a3 contentScale:(float)a4 sizeGroup:(int64_t)a5 modifiers:(id)a6
{
  v8 = *&a3;
  v10 = a6;
  v11 = [(VKIconManager *)self _internalIconManager];
  *&v12 = a4;
  v13 = [v11 imageForIconID:v8 contentScale:a5 sizeGroup:v10 modifiers:v12];

  return v13;
}

- (id)imageForName:(id)a3 contentScale:(float)a4 sizeGroup:(int64_t)a5 modifiers:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(VKIconManager *)self _internalIconManager];
  *&v13 = a4;
  v14 = [v12 imageForName:v10 contentScale:a5 sizeGroup:v11 modifiers:v13];

  return v14;
}

- (id)imageForKey:(unsigned int)a3 value:(unsigned int)a4 contentScale:(float)a5 sizeGroup:(int64_t)a6 modifiers:(id)a7
{
  v9 = *&a4;
  v10 = *&a3;
  v12 = a7;
  v13 = [(VKIconManager *)self _internalIconManager];
  *&v14 = a5;
  v15 = [v13 imageForKey:v10 value:v9 contentScale:a6 sizeGroup:v12 modifiers:v14];

  return v15;
}

- (id)imageForDataID:(unsigned int)a3 text:(id)a4 contentScale:(float)a5 sizeGroup:(int64_t)a6 modifiers:(id)a7
{
  v10 = *&a3;
  v12 = a4;
  v13 = a7;
  v14 = [(VKIconManager *)self _internalIconManager];
  *&v15 = a5;
  v16 = [v14 imageForDataID:v10 text:v12 contentScale:a6 sizeGroup:v13 modifiers:v15];

  return v16;
}

- (id)imageForStyleAttributes:(id)a3 withStylesheetName:(id)a4 contentScale:(float)a5 sizeGroup:(int64_t)a6 modifiers:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [(VKIconManager *)self _internalIconManager];
  *&v16 = a5;
  v17 = [v15 imageForStyleAttributes:v12 withStylesheetName:v13 contentScale:a6 sizeGroup:v14 modifiers:v16];

  return v17;
}

- (id)imageForStyleAttributes:(id)a3 styleManager:(shared_ptr<gss:(float)a5 :(int64_t)a6 StylesheetManager<gss:(id)a7 :PropertyID>>)a4 contentScale:sizeGroup:modifiers:
{
  cntrl = a4.__cntrl_;
  ptr = a4.__ptr_;
  v12 = a3;
  v13 = a6;
  v14 = [(VKIconManager *)self _internalIconManager];
  v16 = v14;
  v17 = ptr[1];
  v20 = *ptr;
  v21 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v15 = a5;
  v18 = [v14 imageForStyleAttributes:v12 styleManager:&v20 contentScale:cntrl sizeGroup:v13 modifiers:v15];
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  return v18;
}

- (id)balloonIconForStyleAttributes:(id)a3 withStylesheetName:(id)a4 contentScale:(float)a5 sizeGroup:(int64_t)a6 modifiers:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [(VKIconManager *)self _internalIconManager];
  *&v16 = a5;
  v17 = [v15 balloonIconForStyleAttributes:v12 withStylesheetName:v13 contentScale:a6 sizeGroup:v14 modifiers:v16];

  return v17;
}

- (id)imageForImageSourceKey:(id)a3
{
  v4 = a3;
  v5 = [(VKIconManager *)self _internalIconManager];
  v6 = [v5 imageForImageSourceKey:v4];

  return v6;
}

- (void)dealloc
{
  v3 = *(self + 2);
  if (v3)
  {
    [v3 purgeNonsharedResources];
    v4 = *(self + 2);
    *(self + 2) = 0;
  }

  v5 = *(self + 1);
  if (v5)
  {
    *(self + 1) = 0;

    +[VKSharedResourcesManager removeResourceUser];
  }

  v6 = *(self + 12);
  if (v6)
  {
    dispatch_source_cancel(v6);
    v7 = *(self + 12);
    *(self + 12) = 0;
  }

  v8.receiver = self;
  v8.super_class = VKIconManager;
  [(VKIconManager *)&v8 dealloc];
}

- (VKIconManager)init
{
  v10.receiver = self;
  v10.super_class = VKIconManager;
  v2 = [(VKIconManager *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 12);
    *(v2 + 12) = 0;

    v5 = *(v3 + 2);
    *(v3 + 2) = 0;

    v6 = *(v3 + 1);
    *(v3 + 1) = 0;

    v7 = +[VKSharedResourcesManager sharedManager];
    *(v3 + 24) = [v7 hasResources];
    v8 = v3;
  }

  return v3;
}

void __30__VKIconManager_sharedManager__block_invoke()
{
  if (!+[VKIconManager sharedManager]::singleton)
  {
    v0 = objc_alloc_init(VKIconManager);
    v1 = +[VKIconManager sharedManager]::singleton;
    +[VKIconManager sharedManager]::singleton = v0;
  }
}

@end