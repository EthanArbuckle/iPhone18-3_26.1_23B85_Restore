@interface VKIconManager
+ (id)sharedManager;
- (BOOL)isCachingAtlases;
- (VKIconManager)init;
- (id).cxx_construct;
- (id)_internalIconManager;
- (id)balloonIconForStyleAttributes:(id)attributes withStylesheetName:(id)name contentScale:(float)scale sizeGroup:(int64_t)group modifiers:(id)modifiers;
- (id)imageForDataID:(unsigned int)d text:(id)text contentScale:(float)scale sizeGroup:(int64_t)group modifiers:(id)modifiers;
- (id)imageForIconID:(unsigned int)d contentScale:(float)scale sizeGroup:(int64_t)group modifiers:(id)modifiers;
- (id)imageForImageSourceKey:(id)key;
- (id)imageForKey:(unsigned int)key value:(unsigned int)value contentScale:(float)scale sizeGroup:(int64_t)group modifiers:(id)modifiers;
- (id)imageForName:(id)name contentScale:(float)scale sizeGroup:(int64_t)group modifiers:(id)modifiers;
- (id)imageForStyleAttributes:(id)attributes styleManager:(shared_ptr<gss:(float)manager :(int64_t)a6 StylesheetManager<gss:(id)gss :PropertyID>>)a4 contentScale:sizeGroup:modifiers:;
- (id)imageForStyleAttributes:(id)attributes withStylesheetName:(id)name contentScale:(float)scale sizeGroup:(int64_t)group modifiers:(id)modifiers;
- (unsigned)darkVariant;
- (unsigned)styleAttributeTransitSystemTypeKey;
- (unsigned)styleAttributeTransitTypeKey;
- (unsigned)trafficIncidentTypeKey;
- (void)dealloc;
- (void)purge;
- (void)setIsCachingAtlases:(BOOL)atlases;
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
      iconManager = v3;
      goto LABEL_6;
    }
  }

  iconManager = [v5 iconManager];
LABEL_6:
  v8 = iconManager;
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

- (void)setIsCachingAtlases:(BOOL)atlases
{
  atlasesCopy = atlases;
  _internalIconManager = [(VKIconManager *)self _internalIconManager];
  [_internalIconManager setIsCachingAtlases:atlasesCopy];
}

- (BOOL)isCachingAtlases
{
  _internalIconManager = [(VKIconManager *)self _internalIconManager];
  isCachingAtlases = [_internalIconManager isCachingAtlases];

  return isCachingAtlases;
}

- (unsigned)darkVariant
{
  _internalIconManager = [(VKIconManager *)self _internalIconManager];
  darkVariant = [_internalIconManager darkVariant];

  return darkVariant;
}

- (unsigned)trafficIncidentTypeKey
{
  _internalIconManager = [(VKIconManager *)self _internalIconManager];
  trafficIncidentTypeKey = [_internalIconManager trafficIncidentTypeKey];

  return trafficIncidentTypeKey;
}

- (unsigned)styleAttributeTransitSystemTypeKey
{
  _internalIconManager = [(VKIconManager *)self _internalIconManager];
  styleAttributeTransitSystemTypeKey = [_internalIconManager styleAttributeTransitSystemTypeKey];

  return styleAttributeTransitSystemTypeKey;
}

- (unsigned)styleAttributeTransitTypeKey
{
  _internalIconManager = [(VKIconManager *)self _internalIconManager];
  styleAttributeTransitTypeKey = [_internalIconManager styleAttributeTransitTypeKey];

  return styleAttributeTransitTypeKey;
}

- (id)imageForIconID:(unsigned int)d contentScale:(float)scale sizeGroup:(int64_t)group modifiers:(id)modifiers
{
  v8 = *&d;
  modifiersCopy = modifiers;
  _internalIconManager = [(VKIconManager *)self _internalIconManager];
  *&v12 = scale;
  v13 = [_internalIconManager imageForIconID:v8 contentScale:group sizeGroup:modifiersCopy modifiers:v12];

  return v13;
}

- (id)imageForName:(id)name contentScale:(float)scale sizeGroup:(int64_t)group modifiers:(id)modifiers
{
  nameCopy = name;
  modifiersCopy = modifiers;
  _internalIconManager = [(VKIconManager *)self _internalIconManager];
  *&v13 = scale;
  v14 = [_internalIconManager imageForName:nameCopy contentScale:group sizeGroup:modifiersCopy modifiers:v13];

  return v14;
}

- (id)imageForKey:(unsigned int)key value:(unsigned int)value contentScale:(float)scale sizeGroup:(int64_t)group modifiers:(id)modifiers
{
  v9 = *&value;
  v10 = *&key;
  modifiersCopy = modifiers;
  _internalIconManager = [(VKIconManager *)self _internalIconManager];
  *&v14 = scale;
  v15 = [_internalIconManager imageForKey:v10 value:v9 contentScale:group sizeGroup:modifiersCopy modifiers:v14];

  return v15;
}

- (id)imageForDataID:(unsigned int)d text:(id)text contentScale:(float)scale sizeGroup:(int64_t)group modifiers:(id)modifiers
{
  v10 = *&d;
  textCopy = text;
  modifiersCopy = modifiers;
  _internalIconManager = [(VKIconManager *)self _internalIconManager];
  *&v15 = scale;
  v16 = [_internalIconManager imageForDataID:v10 text:textCopy contentScale:group sizeGroup:modifiersCopy modifiers:v15];

  return v16;
}

- (id)imageForStyleAttributes:(id)attributes withStylesheetName:(id)name contentScale:(float)scale sizeGroup:(int64_t)group modifiers:(id)modifiers
{
  attributesCopy = attributes;
  nameCopy = name;
  modifiersCopy = modifiers;
  _internalIconManager = [(VKIconManager *)self _internalIconManager];
  *&v16 = scale;
  v17 = [_internalIconManager imageForStyleAttributes:attributesCopy withStylesheetName:nameCopy contentScale:group sizeGroup:modifiersCopy modifiers:v16];

  return v17;
}

- (id)imageForStyleAttributes:(id)attributes styleManager:(shared_ptr<gss:(float)manager :(int64_t)a6 StylesheetManager<gss:(id)gss :PropertyID>>)a4 contentScale:sizeGroup:modifiers:
{
  cntrl = a4.__cntrl_;
  ptr = a4.__ptr_;
  attributesCopy = attributes;
  v13 = a6;
  _internalIconManager = [(VKIconManager *)self _internalIconManager];
  v16 = _internalIconManager;
  v17 = ptr[1];
  v20 = *ptr;
  v21 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v15 = manager;
  v18 = [_internalIconManager imageForStyleAttributes:attributesCopy styleManager:&v20 contentScale:cntrl sizeGroup:v13 modifiers:v15];
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  return v18;
}

- (id)balloonIconForStyleAttributes:(id)attributes withStylesheetName:(id)name contentScale:(float)scale sizeGroup:(int64_t)group modifiers:(id)modifiers
{
  attributesCopy = attributes;
  nameCopy = name;
  modifiersCopy = modifiers;
  _internalIconManager = [(VKIconManager *)self _internalIconManager];
  *&v16 = scale;
  v17 = [_internalIconManager balloonIconForStyleAttributes:attributesCopy withStylesheetName:nameCopy contentScale:group sizeGroup:modifiersCopy modifiers:v16];

  return v17;
}

- (id)imageForImageSourceKey:(id)key
{
  keyCopy = key;
  _internalIconManager = [(VKIconManager *)self _internalIconManager];
  v6 = [_internalIconManager imageForImageSourceKey:keyCopy];

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