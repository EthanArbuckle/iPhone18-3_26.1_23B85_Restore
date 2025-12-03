@interface SASharedCache
+ (id)currentSharedCacheWithDataGatheringOptions:(uint64_t)options;
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
+ (id)sharedCacheWithCSSymbolicator:(uint64_t)symbolicator dataGatheringOptions:(uint64_t)options;
+ (id)sharedCacheWithDyldSharedCache:(__int16)cache dataGatheringOptions:;
+ (id)sharedCacheWithUUID:(uint64_t)d slide:(uint64_t)slide binaryLoadInfos:;
+ (id)sharedCacheWithUUID:(uint64_t)d slide:(uint64_t)slide slidBaseAddress:(uint64_t)address dataGatheringOptions:;
+ (uint64_t)applyBinaryLoadInfos:(uint64_t)infos sharedCacheUUID:(uint64_t)d slide:(uint64_t)slide slidBaseAddress:;
+ (void)_applyBaseAddress:(void *)address toSharedCaches:;
+ (void)_applyLoadInfos:(uint64_t)infos withSlide:(uint64_t)slide andSlidBaseAddress:(void *)address toSharedCaches:;
+ (void)_doDscSymDirsWork:(uint64_t)work;
+ (void)_doSharedCachesWork:(id)work;
+ (void)_findLoadInfosForSharedCaches:(uint64_t)caches;
+ (void)addDSCSymData:(id)data;
+ (void)addDscSymDir:(id)dir;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (BOOL)matchesUUID:(unsigned __int8)d[16] slide:(unint64_t)slide slidBaseAddress:(unint64_t)address;
- (NSString)debugDescription;
- (id)initWithUUID:(void *)d slide:(void *)slide slidBaseAddress:;
- (uint64_t)setSlidBaseAddress:(uint64_t)result;
- (uint64_t)setSlide:(uint64_t)result;
- (unint64_t)endAddress;
- (unint64_t)startAddress;
- (void)_applyLoadInfos:(uint64_t)infos withSlide:(uint64_t)slide andSlidBaseAddress:;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)writeJSONDictionaryEntriesToStream:(id)stream;
@end

@implementation SASharedCache

- (unint64_t)startAddress
{
  firstObject = [(NSArray *)self->_binaryLoadInfos firstObject];
  v3 = firstObject;
  if (firstObject)
  {
    loadAddress = [firstObject loadAddress];
  }

  else
  {
    loadAddress = -1;
  }

  return loadAddress;
}

- (unint64_t)endAddress
{
  lastObject = [(NSArray *)self->_binaryLoadInfos lastObject];
  v3 = lastObject;
  if (lastObject)
  {
    v4 = [lastObject length];
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0x10000000;
    }

    v6 = v5 + [v3 loadAddress];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)initWithUUID:(void *)d slide:(void *)slide slidBaseAddress:
{
  if (!self)
  {
    return 0;
  }

  v10.receiver = self;
  v10.super_class = SASharedCache;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(v7 + 5, a2);
    v8[1] = d;
    v8[2] = slide;
  }

  return v8;
}

+ (void)_doDscSymDirsWork:(uint64_t)work
{
  objc_opt_self();
  if (qword_1EDD03228 != -1)
  {
    dispatch_once(&qword_1EDD03228, &__block_literal_global_467);
  }

  obj = qword_1EDD03220;
  objc_sync_enter(obj);
  (*(a2 + 16))(a2, qword_1EDD03220);
  objc_sync_exit(obj);
}

void __35__SASharedCache__doDscSymDirsWork___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  v1 = qword_1EDD03220;
  qword_1EDD03220 = v0;
}

+ (void)_doSharedCachesWork:(id)work
{
  if (qword_1EDD03238 != -1)
  {
    dispatch_once(&qword_1EDD03238, &__block_literal_global_469);
  }

  obj = qword_1EDD03230;
  objc_sync_enter(obj);
  (*(work + 2))(work, qword_1EDD03230);
  objc_sync_exit(obj);
}

void __37__SASharedCache__doSharedCachesWork___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  v1 = qword_1EDD03230;
  qword_1EDD03230 = v0;
}

+ (void)addDscSymDir:(id)dir
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__SASharedCache_addDscSymDir___block_invoke;
  v5[3] = &unk_1E86F6B70;
  v5[4] = dir;
  v5[5] = &v6;
  [(SASharedCache *)self _doDscSymDirsWork:v5];
  if (*(v7 + 24) == 1)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __30__SASharedCache_addDscSymDir___block_invoke_2;
    v4[3] = &__block_descriptor_40_e29_v16__0__NSMutableDictionary_8l;
    v4[4] = self;
    [self _doSharedCachesWork:v4];
  }

  _Block_object_dispose(&v6, 8);
}

uint64_t __30__SASharedCache_addDscSymDir___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 containsObject:*(a1 + 32)];
  if ((result & 1) == 0)
  {
    result = [a2 addObject:*(a1 + 32)];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __30__SASharedCache_addDscSymDir___block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __30__SASharedCache_addDscSymDir___block_invoke_3;
  v3[3] = &__block_descriptor_40_e39_v32__0__NSUUID_8__NSMutableArray_16_B24l;
  v3[4] = *(a1 + 32);
  return [a2 enumerateKeysAndObjectsUsingBlock:v3];
}

+ (void)_findLoadInfosForSharedCaches:(uint64_t)caches
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  firstObject = [a2 firstObject];
  binaryLoadInfos = [firstObject binaryLoadInfos];
  v6 = [binaryLoadInfos count];

  if (!v6)
  {
    *uu = 0;
    v36 = 0;
    uuid = [firstObject uuid];
    [uuid getUUIDBytes:uu];

    if (!uuid_is_null(uu))
    {
      slide = [firstObject slide];
      if (slide == -1)
      {
        v9 = 0;
      }

      else
      {
        v9 = slide;
      }

      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2560];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __47__SASharedCache__findLoadInfosForSharedCaches___block_invoke;
      v30[3] = &unk_1E86F6D10;
      v32 = v9;
      v11 = v10;
      v31 = v11;
      v12 = MEMORY[0x1E12EBE50](v30);
      v29 = -1;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v13 = objc_opt_self();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = __Block_byref_object_copy__2;
      v38 = __Block_byref_object_dispose__2;
      v39 = 0;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __27__SASharedCache_dscSymDirs__block_invoke;
      v33[3] = &unk_1E86F6928;
      v33[4] = buf;
      [(SASharedCache *)v13 _doDscSymDirsWork:v33];
      v14 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);

      v15 = [v14 countByEnumeratingWithState:&v25 objects:v34 count:16];
      if (v15)
      {
        v16 = *v26;
        while (2)
        {
          v17 = 0;
          do
          {
            if (*v26 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v25 + 1) + 8 * v17);
            [v18 UTF8String];
            if (!dscsym_iterate())
            {

              goto LABEL_19;
            }

            [v11 removeAllObjects];
            ++v17;
          }

          while (v15 != v17);
          v15 = [v14 countByEnumeratingWithState:&v25 objects:v34 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      if (dscsym_iterate())
      {
        v19 = *__error();
        v20 = _sa_logt();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68157954;
          *&buf[4] = 16;
          *&buf[8] = 2096;
          *&buf[10] = uu;
          _os_log_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_DEFAULT, "WARNING: Unable to find shared cache mapping for %{uuid_t}.16P", buf, 0x12u);
        }

        *__error() = v19;
      }

      else
      {
LABEL_19:
        objc_opt_self();
        [v11 sortUsingComparator:&__block_literal_global_361];
        v21 = *__error();
        v22 = _sa_logt();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v24 = [v11 count];
          *buf = 134218498;
          *&buf[4] = v24;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          *&buf[18] = 2096;
          *&buf[20] = uu;
          _os_log_debug_impl(&dword_1E0E2F000, v22, OS_LOG_TYPE_DEBUG, "%lu binaries in shared cache %{uuid_t}.16P", buf, 0x1Cu);
        }

        *__error() = v21;
        [(SASharedCache *)v3 _applyLoadInfos:v11 withSlide:v9 andSlidBaseAddress:v29 + v9 toSharedCaches:a2];
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __27__SASharedCache_dscSymDirs__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (id)currentSharedCacheWithDataGatheringOptions:(uint64_t)options
{
  v3 = objc_opt_self();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__SASharedCache_currentSharedCacheWithDataGatheringOptions___block_invoke;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  v6[4] = v3;
  v6[5] = a2;
  if (qword_1EDD03258 != -1)
  {
    dispatch_once(&qword_1EDD03258, v6);
  }

  if (qword_1EDD03240)
  {
    v4 = [SASharedCache sharedCacheWithUUID:qword_1EDD03250 slide:qword_1EDD03248 slidBaseAddress:a2 dataGatheringOptions:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __60__SASharedCache_currentSharedCacheWithDataGatheringOptions___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  if (!CopyDyldSnapshotForPid(v2))
  {
    goto LABEL_13;
  }

  shared_cache = dyld_process_snapshot_get_shared_cache();
  if (!shared_cache)
  {
    v7 = *__error();
    v8 = _sa_logt();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "No shared cache for current process", buf, 2u);
    }

    *__error() = v7;
    goto LABEL_12;
  }

  v19 = [(SASharedCache *)*(a1 + 32) sharedCacheWithDyldSharedCache:*(a1 + 40) dataGatheringOptions:?];
  if (!v19)
  {
    *uu = 0;
    v25 = 0;
    dyld_shared_cache_copy_uuid();
    v9 = *__error();
    v10 = _sa_logt();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      add_explicit = atomic_fetch_add_explicit(&uuid_string_index, 1u, memory_order_relaxed);
      v13 = add_explicit & 3;
      v15 = -add_explicit;
      v14 = v15 < 0;
      v16 = v15 & 3;
      if (v14)
      {
        v17 = v13;
      }

      else
      {
        v17 = -v16;
      }

      v18 = &uuid_string_string + 37 * v17;
      uuid_unparse(uu, v18);
      *buf = 136446466;
      v21 = v18;
      v22 = 2082;
      v23 = dyld_shared_cache_file_path();
      _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "Unable to find current processes' shared cache (%{public}s: %{public}s) (via dyld introspection)", buf, 0x16u);
    }

    *__error() = v9;
LABEL_12:
    dyld_process_snapshot_dispose();
LABEL_13:
    v11 = *MEMORY[0x1E69E9840];
    return;
  }

  dyld_process_snapshot_dispose();
  v4 = [v19 uuid];
  v5 = qword_1EDD03240;
  qword_1EDD03240 = v4;

  qword_1EDD03250 = [v19 slide];
  qword_1EDD03248 = [v19 slidBaseAddress];
  v6 = *MEMORY[0x1E69E9840];
}

+ (id)sharedCacheWithDyldSharedCache:(__int16)cache dataGatheringOptions:
{
  v33 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  memset(uu, 0, sizeof(uu));
  dyld_shared_cache_copy_uuid();
  if (uuid_is_null(uu))
  {
    v4 = 0;
  }

  else
  {
    v5 = uuidForBytes(uu);
    base_address = dyld_shared_cache_get_base_address();
    v7 = [SASharedCache sharedCacheWithUUID:v5 slide:-1 slidBaseAddress:base_address dataGatheringOptions:2048];
    v4 = v7;
    if ((cache & 0x800) == 0)
    {
      if ([v7 slide] == -1)
      {
        v26 = 0;
        v27 = &v26;
        v28 = 0x2020000000;
        v29 = 0;
        v22 = 0;
        v23 = &v22;
        v24 = 0x2020000000;
        v25 = 0;
        dyld_for_each_installed_shared_cache();
        if (*(v27 + 24) == 1)
        {
          [(SASharedCache *)v4 setSlide:?];
        }

        else
        {
          dscsym_iterate();
          v8 = *__error();
          v9 = _sa_logt();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v18 = [v4 debugDescription];
            *buf = 138412290;
            v32 = v18;
            _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "Unable to find shared cache %@ in live system nor via dscsym", buf, 0xCu);
          }

          *__error() = v8;
        }

        _Block_object_dispose(&v22, 8);
        _Block_object_dispose(&v26, 8);
      }

      binaryLoadInfos = [v4 binaryLoadInfos];
      v11 = [binaryLoadInfos count] == 0;

      if (v11)
      {
        v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v26 = 0;
        v27 = &v26;
        v28 = 0x2020000000;
        v29 = 0;
        v19 = MEMORY[0x1E69E9820];
        v13 = v12;
        v20 = v13;
        v14 = v4;
        v21 = v14;
        dyld_shared_cache_for_each_image();
        if ((v27[3] & 1) == 0 && [v13 count])
        {
          objc_opt_self();
          [v13 sortUsingComparator:&__block_literal_global_361];
          uuid = [v14 uuid];
          +[SASharedCache applyBinaryLoadInfos:sharedCacheUUID:slide:slidBaseAddress:](SASharedCache, v13, uuid, [v14 slide], objc_msgSend(v14, "slidBaseAddress"));
        }

        _Block_object_dispose(&v26, 8);
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)sharedCacheWithCSSymbolicator:(uint64_t)symbolicator dataGatheringOptions:(uint64_t)options
{
  v5 = objc_opt_self();
  SharedCacheUUID = CSSymbolicatorGetSharedCacheUUID();
  if (SharedCacheUUID && (v7 = SharedCacheUUID, !uuid_is_null(SharedCacheUUID)))
  {
    v9 = uuidForBytes(v7);
    if ((options & 0x800) != 0)
    {
      SharedCacheBaseAddress = CSSymbolicatorGetSharedCacheBaseAddress();
      if (SharedCacheBaseAddress)
      {
        v11 = SharedCacheBaseAddress;
        v12 = objc_opt_self();
        v8 = [(SASharedCache *)v12 sharedCacheWithUUID:v9 slide:-1 slidBaseAddress:v11 dataGatheringOptions:options];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 0;
      dscsym_iterate();
      if (*(v19 + 24) == 1)
      {
        v8 = [(SASharedCache *)v5 sharedCacheWithUUID:v9 slide:v15[3] slidBaseAddress:v15[3] - 1 dataGatheringOptions:options];
      }

      else
      {
        v8 = 0;
      }

      _Block_object_dispose(&v14, 8);
      _Block_object_dispose(&v18, 8);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)sharedCacheWithUUID:(uint64_t)d slide:(uint64_t)slide slidBaseAddress:(uint64_t)address dataGatheringOptions:
{
  v9 = objc_opt_self();
  if ((slide & d) == 0xFFFFFFFFFFFFFFFFLL)
  {
    v12 = *__error();
    v13 = _sa_logt();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "Trying to find shared cache with unknown slide and unknown slidBaseAddress", buf, 2u);
    }

    *__error() = v12;
    _SASetCrashLogMessage(3708, "Trying to find shared cache with unknown slide and unknown slidBaseAddress", v14, v15, v16, v17, v18, v19, v20[0]);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *buf = 0;
    v22 = buf;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__2;
    v25 = __Block_byref_object_dispose__2;
    v26 = 0;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __80__SASharedCache_sharedCacheWithUUID_slide_slidBaseAddress_dataGatheringOptions___block_invoke;
    v20[3] = &unk_1E86F6C28;
    v20[6] = d;
    v20[7] = slide;
    v20[4] = a2;
    v20[5] = buf;
    v20[8] = v9;
    v20[9] = address;
    [v9 _doSharedCachesWork:v20];
    v10 = *(v22 + 5);
    _Block_object_dispose(buf, 8);

    return v10;
  }

  return result;
}

uint64_t __68__SASharedCache_sharedCacheWithCSSymbolicator_dataGatheringOptions___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  CSSymbolicatorGetSymbolOwnerWithCFUUIDBytesAtTime();
  if (CSIsNull())
  {
    v5 = 0;
  }

  else
  {
    v7 = *(a1 + 32);
    SASymbolOwnerForeachSegment();
    v5 = *(*(*(a1 + 32) + 8) + 24);
  }

  objc_autoreleasePoolPop(v2);
  return v5;
}

uint64_t __68__SASharedCache_sharedCacheWithCSSymbolicator_dataGatheringOptions___block_invoke_2(uint64_t result)
{
  if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = CSRegionGetName();
    if (result)
    {
      v2 = result;
      v3 = strlen(*(v1 + 48));
      result = strncmp(v2, *(v1 + 48), v3);
      if (!result)
      {
        *(*(*(v1 + 32) + 8) + 24) = 1;
        result = CSRegionGetRange();
        *(*(*(v1 + 40) + 8) + 24) = result - *(v1 + 56);
      }
    }
  }

  return result;
}

+ (void)_applyBaseAddress:(void *)address toSharedCaches:
{
  v56 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(address, "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  addressCopy = address;
  v6 = [address copy];
  v7 = [v6 countByEnumeratingWithState:&v41 objects:v55 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v42;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v41 + 1) + 8 * i);
        slide = [v11 slide];
        slidBaseAddress = [v11 slidBaseAddress];
        if (slide == -1)
        {
          v15 = slidBaseAddress - a2;
          v16 = 8;
LABEL_12:
          *&v11[v16] = v15;
          goto LABEL_13;
        }

        if (slidBaseAddress == -1)
        {
          v15 = [v11 slide] + a2;
          v16 = 16;
          goto LABEL_12;
        }

        slidBaseAddress2 = [v11 slidBaseAddress];
        if (slidBaseAddress2 - [v11 slide] != a2)
        {
          v21 = *__error();
          v22 = _sa_logt();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            slide2 = [v11 slide];
            slidBaseAddress3 = [v11 slidBaseAddress];
            slidBaseAddress4 = [v11 slidBaseAddress];
            v27 = slidBaseAddress4 - [v11 slide];
            uuid = [v11 uuid];
            uUIDString = [uuid UUIDString];
            uTF8String = [uUIDString UTF8String];
            *buf = 134219010;
            v46 = slide2;
            v47 = 2048;
            v48 = slidBaseAddress3;
            v49 = 2048;
            v50 = v27;
            v51 = 2048;
            v52 = a2;
            v53 = 2080;
            v54 = uTF8String;
            _os_log_error_impl(&dword_1E0E2F000, v22, OS_LOG_TYPE_ERROR, "Mismatch shared cache info: existing slide 0x%llx, slidBaseAddress 0x%llx (base address 0x%llx) vs applied base address 0x%llx for %s", buf, 0x34u);
          }

          *__error() = v21;
          slide3 = [v11 slide];
          [v11 slidBaseAddress];
          [v11 slidBaseAddress];
          [v11 slide];
          uuid2 = [v11 uuid];
          uUIDString2 = [uuid2 UUIDString];
          [uUIDString2 UTF8String];
          _SASetCrashLogMessage(3608, "Mismatch shared cache info: existing slide 0x%llx, slidBaseAddress 0x%llx (base address 0x%llx) vs applied base address 0x%llx for %s", v34, v35, v36, v37, v38, v39, slide3);

          _os_crash();
          __break(1u);
        }

LABEL_13:
        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v11, "slide")}];
        v18 = [v5 containsObject:v17];

        if (v18)
        {
          if (v11)
          {
            v11[24] = 1;
          }

          [addressCopy removeObject:v11];
        }

        else
        {
          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v11, "slide")}];
          [v5 addObject:v19];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v41 objects:v55 count:16];
    }

    while (v8);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_applyLoadInfos:(uint64_t)infos withSlide:(uint64_t)slide andSlidBaseAddress:
{
  v89 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_64;
  }

  if ((slide & infos) == 0xFFFFFFFFFFFFFFFFLL)
  {
    a2 = *__error();
    selfCopy = _sa_logt();
    if (os_log_type_enabled(selfCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, selfCopy, OS_LOG_TYPE_ERROR, "applying load infos with unknown slide and unknown slidBaseAddress", buf, 2u);
    }

    *__error() = a2;
    _SASetCrashLogMessage(3622, "applying load infos with unknown slide and unknown slidBaseAddress", v59, v60, v61, v62, v63, v64, v65);
    _os_crash();
    __break(1u);
    goto LABEL_70;
  }

  selfCopy = self;
  if (![(objc_class *)self[6].isa count])
  {
    if (qword_1EDD03260 == -1)
    {
LABEL_8:
      v67 = selfCopy;
      if (infos == -1 || !_MergedGlobals_5)
      {
        goto LABEL_41;
      }

      v66 = a2;
      firstObject = [a2 firstObject];
      loadAddress = [firstObject loadAddress];
      if (loadAddress >= 0x300000001)
      {
        firstObject2 = [a2 firstObject];
        if (!([firstObject2 loadAddress] >> 34))
        {

LABEL_13:
          v11 = *__error();
          v12 = _sa_logt();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            firstObject3 = [v66 firstObject];
            v58 = [firstObject3 debugDescription];
            *buf = 138412290;
            v81 = v58;
            _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "Detected bad shared cache load infos (%@) see rdar://93325284", buf, 0xCu);
          }

          *__error() = v11;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v13 = v66;
          v14 = [v13 countByEnumeratingWithState:&v75 objects:v88 count:16];
          if (v14)
          {
            v15 = *v76;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v76 != v15)
                {
                  objc_enumerationMutation(v13);
                }

                v17 = *(*(&v75 + 1) + 8 * i);
                loadAddress2 = [v17 loadAddress];
                v19 = *__error();
                v20 = _sa_logt();
                v21 = (infos + ((loadAddress2 - infos) >> 1));
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                {
                  v22 = [v17 debugDescription];
                  *buf = 134218242;
                  v81 = v21;
                  v82 = 2112;
                  v83 = v22;
                  _os_log_debug_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_DEBUG, "0x%llx <- %@", buf, 0x16u);
                }

                *__error() = v19;
                if (v17)
                {
                  v17[3] = v21;
                }
              }

              v14 = [v13 countByEnumeratingWithState:&v75 objects:v88 count:16];
            }

            while (v14);
          }

LABEL_40:
          a2 = v66;
          selfCopy = v67;
LABEL_41:
          if (infos == -1 || (v33 = selfCopy[1].isa, v33 == -1))
          {
            if (slide == -1 || (isa = selfCopy[2].isa, isa == -1))
            {
              v51 = a2;
              v52 = *__error();
              v53 = _sa_logt();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
              {
                v54 = [v67 debugDescription];
                v55 = [v51 count];
                *buf = 138413058;
                v81 = v54;
                v82 = 2048;
                v83 = v55;
                v84 = 2048;
                infosCopy = infos;
                v86 = 2048;
                slideCopy = slide;
                _os_log_impl(&dword_1E0E2F000, v53, OS_LOG_TYPE_DEFAULT, "WARNING: Unable to calculate appropriate load addresses for shared cache %@ when applying %lu load infos with slide #%llx and slidbaseAddress 0x%llx", buf, 0x2Au);
              }

              *__error() = v52;
              goto LABEL_64;
            }

            v34 = isa - slide;
          }

          else
          {
            v34 = v33 - infos;
          }

          v69 = selfCopy;
          objc_sync_enter(v69);
          if (v34)
          {
            v36 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a2, "count")}];
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            obj = a2;
            v37 = [obj countByEnumeratingWithState:&v71 objects:v79 count:16];
            if (v37)
            {
              v38 = *v72;
              do
              {
                for (j = 0; j != v37; ++j)
                {
                  if (*v72 != v38)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v40 = *(*(&v71 + 1) + 8 * j);
                  loadAddress3 = [v40 loadAddress];
                  segment = [v40 segment];

                  if (segment)
                  {
                    segment2 = [v40 segment];
                    isInKernelAddressSpace = [v40 isInKernelAddressSpace];
                    exclave = [v40 exclave];
                    [SABinaryLoadInfo binaryLoadInfoWithSegment:segment2 loadAddress:&v34[loadAddress3] isInKernelAddressSpace:isInKernelAddressSpace exclave:exclave];
                  }

                  else
                  {
                    segment2 = [v40 binary];
                    isInKernelAddressSpace2 = [v40 isInKernelAddressSpace];
                    exclave = [v40 exclave];
                    [SABinaryLoadInfo binaryLoadInfoWithBinary:segment2 loadAddress:&v34[loadAddress3] isInKernelAddressSpace:isInKernelAddressSpace2 exclave:exclave];
                  }
                  v47 = ;

                  [(objc_class *)v36 addObject:v47];
                }

                v37 = [obj countByEnumeratingWithState:&v71 objects:v79 count:16];
              }

              while (v37);
            }

            v48 = [(objc_class *)v36 copy];
            v49 = v67[6].isa;
            v67[6].isa = v48;
          }

          else
          {
            v50 = [a2 copy];
            v36 = selfCopy[6].isa;
            selfCopy[6].isa = v50;
          }

          objc_sync_exit(v69);
LABEL_64:
          v56 = *MEMORY[0x1E69E9840];
          return;
        }
      }

      firstObject4 = [a2 firstObject];
      if ([firstObject4 loadAddress] >> 32 || selfCopy[2].isa == -1)
      {

        if (loadAddress < 0x300000001)
        {
          goto LABEL_36;
        }
      }

      else
      {
        firstObject5 = [a2 firstObject];
        if ([firstObject5 loadAddress] > selfCopy[2].isa + 436207616)
        {
          v25 = loadAddress > 0x300000000;
          firstObject6 = [a2 firstObject];
          loadAddress4 = [firstObject6 loadAddress];
          v28 = v67[2].isa + 2315255808u;

          if (v25)
          {
          }

          if (loadAddress4 < v28)
          {
            goto LABEL_13;
          }

LABEL_37:
          v29 = *__error();
          v30 = _sa_logt();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            firstObject7 = [v66 firstObject];
            v32 = [firstObject7 debugDescription];
            *buf = 138412290;
            v81 = v32;
            _os_log_impl(&dword_1E0E2F000, v30, OS_LOG_TYPE_INFO, "Detected ok shared cache load infos (%@) see rdar://93325284", buf, 0xCu);
          }

          *__error() = v29;
          goto LABEL_40;
        }

        if (loadAddress <= 0x300000000)
        {
LABEL_36:

          goto LABEL_37;
        }
      }

      goto LABEL_36;
    }

LABEL_70:
    dispatch_once(&qword_1EDD03260, &__block_literal_global_482);
    goto LABEL_8;
  }

  [(objc_class *)selfCopy[6].isa count];
  v8 = *MEMORY[0x1E69E9840];

  [a2 count];
}

char *__62__SASharedCache__applyLoadInfos_withSlide_andSlidBaseAddress___block_invoke()
{
  result = getenv("SA_WORKAROUND_93250769");
  if (result)
  {
    v1 = *result != 48 || result[1] != 0;
    _MergedGlobals_5 = v1;
  }

  return result;
}

+ (void)_applyLoadInfos:(uint64_t)infos withSlide:(uint64_t)slide andSlidBaseAddress:(void *)address toSharedCaches:
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = objc_opt_self();
  if (infos != -1 && slide != -1)
  {
    [(SASharedCache *)v9 _applyBaseAddress:address toSharedCaches:?];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  addressCopy = address;
  v11 = [addressCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(addressCopy);
        }

        [(SASharedCache *)*(*(&v16 + 1) + 8 * v14++) _applyLoadInfos:a2 withSlide:infos andSlidBaseAddress:slide];
      }

      while (v12 != v14);
      v12 = [addressCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __80__SASharedCache_sharedCacheWithUUID_slide_slidBaseAddress_dataGatheringOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a1;
  v112 = *MEMORY[0x1E69E9840];
  v4 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    [a2 setObject:v4 forKeyedSubscript:*(v3 + 32)];
  }

  v5 = buf;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v92 objects:v111 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v93;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v93 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v92 + 1) + 8 * v10);
      if (*(v3 + 48) != -1 && [*(*(&v92 + 1) + 8 * v10) slide] == *(v3 + 48))
      {
        break;
      }

      v12 = *(v3 + 56);
      if (v12 != -1 && v11[2] == v12)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v92 objects:v111 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:

    v13 = [[SASharedCache alloc] initWithUUID:*(v3 + 48) slide:*(v3 + 56) slidBaseAddress:?];
    v14 = *(*(v3 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = [v6 firstObject];
    [v6 addObject:*(*(*(v3 + 40) + 8) + 40)];
    if (!v16)
    {
LABEL_32:
      if ((*(v3 + 73) & 8) == 0)
      {
        [(SASharedCache *)*(v3 + 64) _findLoadInfosForSharedCaches:v6];
      }

      v16 = 0;
      goto LABEL_58;
    }

    if ([v16 slide] == -1 || objc_msgSend(v16, "slidBaseAddress") == -1)
    {
      goto LABEL_55;
    }

    v17 = [*(*(*(v3 + 40) + 8) + 40) slide];
    v18 = [*(*(*(v3 + 40) + 8) + 40) slidBaseAddress];
    v19 = v18;
    if (v17 == -1)
    {
      goto LABEL_52;
    }

    if (v18 == -1)
    {
      v80 = [v16 slidBaseAddress];
      v81 = v80 - [v16 slide];
      v78 = v81 + [*(*(*(v3 + 40) + 8) + 40) slide];
      v79 = 16;
      goto LABEL_54;
    }

    v20 = [*(*(*(v3 + 40) + 8) + 40) slidBaseAddress];
    v21 = v20 - [*(*(*(v3 + 40) + 8) + 40) slide];
    v22 = [v16 slidBaseAddress];
    if (v21 == v22 - [v16 slide])
    {
LABEL_55:
      v82 = [v16 binaryLoadInfos];
      if ([v82 count])
      {
        -[SASharedCache _applyLoadInfos:withSlide:andSlidBaseAddress:](*(*(*(v3 + 40) + 8) + 40), v82, [v16 slide], objc_msgSend(v16, "slidBaseAddress"));
      }

      goto LABEL_58;
    }

    v87 = *__error();
    v23 = _sa_logt();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v86 = [*(*(*(v3 + 40) + 8) + 40) uuid];
      v24 = [v86 UUIDString];
      v85 = [v24 UTF8String];
      v84 = [*(*(*(v3 + 40) + 8) + 40) slide];
      v25 = [*(*(*(v3 + 40) + 8) + 40) slidBaseAddress];
      v26 = [*(*(*(v3 + 40) + 8) + 40) slidBaseAddress];
      v27 = v26 - [*(*(*(v3 + 40) + 8) + 40) slide];
      v28 = [v16 slide];
      v29 = [v16 slidBaseAddress];
      v30 = [v16 slidBaseAddress];
      v31 = [v16 slide];
      *buf = 136316674;
      v97 = v85;
      v98 = 2048;
      v99 = v84;
      v100 = 2048;
      v101 = v25;
      v102 = 2048;
      v103 = v27;
      v104 = 2048;
      v105 = v28;
      v106 = 2048;
      v107 = v29;
      v108 = 2048;
      v109 = v30 - v31;
      _os_log_error_impl(&dword_1E0E2F000, v23, OS_LOG_TYPE_ERROR, "Mismatch shared cache %s info: requested slide 0x%llx, slidBaseAddress 0x%llx (base address 0x%llx) vs existing shared cache with slide 0x%llx, slidBaseAddress 0x%llx (base address 0x%llx)", buf, 0x48u);
    }

    *__error() = v87;
    v6 = [*(*(*(v3 + 40) + 8) + 40) uuid];
    v11 = [v6 UUIDString];
    v32 = [v11 UTF8String];
    [*(*(*(v3 + 40) + 8) + 40) slide];
    v5 = [*(*(*(v3 + 40) + 8) + 40) slidBaseAddress];
    v33 = [*(*(*(v3 + 40) + 8) + 40) slidBaseAddress];
    v34 = v33 - [*(*(*(v3 + 40) + 8) + 40) slide];
    v3 = [v16 slide];
    [v16 slidBaseAddress];
    [v16 slidBaseAddress];
    [v16 slide];
    _SASetCrashLogMessage(3759, "Mismatch shared cache %s info: requested slide 0x%llx, slidBaseAddress 0x%llx (base address 0x%llx) vs existing shared cache with slide 0x%llx, slidBaseAddress 0x%llx (base address 0x%llx)", v35, v36, v37, v38, v39, v40, v32);

    _os_crash();
    __break(1u);
  }

  objc_storeStrong((*(*(v3 + 40) + 8) + 40), v11);
  v16 = v6;
  if (*(v3 + 48) == -1)
  {
    goto LABEL_58;
  }

  v16 = v6;
  if (*(v3 + 56) == -1)
  {
    goto LABEL_58;
  }

  if ([*(*(*(v3 + 40) + 8) + 40) slide] != -1 && objc_msgSend(*(*(*(v3 + 40) + 8) + 40), "slidBaseAddress") != -1)
  {
    if ([*(*(*(v3 + 40) + 8) + 40) slide] == *(v3 + 48))
    {
      v16 = v6;
      if ([*(*(*(v3 + 40) + 8) + 40) slidBaseAddress] == *(v3 + 56))
      {
        goto LABEL_58;
      }
    }

    v41 = *__error();
    v42 = _sa_logt();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = [*(*(*(v3 + 40) + 8) + 40) slide];
      v44 = [*(*(*(v3 + 40) + 8) + 40) slidBaseAddress];
      v45 = *(v3 + 48);
      v46 = *(v3 + 56);
      v47 = [*(v3 + 32) UUIDString];
      v48 = [v47 UTF8String];
      *buf = 134219010;
      *(v5 + 4) = v43;
      v98 = 2048;
      *(v5 + 14) = v44;
      v100 = 2048;
      v101 = v45;
      v102 = 2048;
      *(v5 + 34) = v46;
      v104 = 2080;
      *(v5 + 44) = v48;
      _os_log_error_impl(&dword_1E0E2F000, v42, OS_LOG_TYPE_ERROR, "Mismatch shared cache info: existing slide 0x%llx, slidBaseAddress 0x%llx vs requested slide 0x%llx, slidBaseAddress 0x%llx for %s", buf, 0x34u);
    }

    *__error() = v41;
    v6 = [*(*(*(v3 + 40) + 8) + 40) slide];
    [*(*(*(v3 + 40) + 8) + 40) slidBaseAddress];
    v49 = *(v3 + 48);
    v50 = *(v3 + 56);
    v3 = [*(v3 + 32) UUIDString];
    [v3 UTF8String];
    _SASetCrashLogMessage(3736, "Mismatch shared cache info: existing slide 0x%llx, slidBaseAddress 0x%llx vs requested slide 0x%llx, slidBaseAddress 0x%llx for %s", v51, v52, v53, v54, v55, v56, v6);

    _os_crash();
    __break(1u);
    goto LABEL_32;
  }

  [(SASharedCache *)*(v3 + 64) _applyBaseAddress:v6 toSharedCaches:?];
  v57 = *(*(*(v3 + 40) + 8) + 40);
  v16 = v6;
  if (v57)
  {
    v16 = v6;
    if (*(v57 + 24))
    {
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v16 = v6;
      v58 = [v16 countByEnumeratingWithState:&v88 objects:v110 count:16];
      if (v58)
      {
        v59 = v58;
        v60 = *v89;
        while (2)
        {
          for (i = 0; i != v59; ++i)
          {
            if (*v89 != v60)
            {
              objc_enumerationMutation(v16);
            }

            v62 = *(*(&v88 + 1) + 8 * i);
            if ([v62 slide] == *(v3 + 48))
            {
              objc_storeStrong((*(*(v3 + 40) + 8) + 40), v62);
              goto LABEL_47;
            }
          }

          v59 = [v16 countByEnumeratingWithState:&v88 objects:v110 count:16];
          if (v59)
          {
            continue;
          }

          break;
        }
      }

LABEL_47:

      v63 = *(*(*(v3 + 40) + 8) + 40);
      if (v63)
      {
        if (*(v63 + 24))
        {
          v64 = *__error();
          v65 = _sa_logt();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            v66 = [*(*(*(v3 + 40) + 8) + 40) slide];
            v67 = [*(*(*(v3 + 40) + 8) + 40) slidBaseAddress];
            v68 = [*(*(*(v3 + 40) + 8) + 40) uuid];
            v69 = [v68 UUIDString];
            v70 = [v69 UTF8String];
            *buf = 134218498;
            *(v5 + 4) = v66;
            v98 = 2048;
            *(v5 + 14) = v67;
            v100 = 2080;
            v101 = v70;
            _os_log_error_impl(&dword_1E0E2F000, v65, OS_LOG_TYPE_ERROR, "No matching shared cache for defunct 0x%llx 0x%llx %s", buf, 0x20u);
          }

          *__error() = v64;
          v6 = [*(*(*(v3 + 40) + 8) + 40) slide];
          v16 = [*(*(*(v3 + 40) + 8) + 40) slidBaseAddress];
          v3 = [*(*(*(v3 + 40) + 8) + 40) uuid];
          v19 = [v3 UUIDString];
          [v19 UTF8String];
          _SASetCrashLogMessage(3733, "No matching shared cache for defunct 0x%llx 0x%llx %s", v71, v72, v73, v74, v75, v76, v6);

          _os_crash();
          __break(1u);
LABEL_52:
          v77 = [v16 slidBaseAddress];
          v78 = v19 + [v16 slide] - v77;
          v79 = 8;
LABEL_54:
          *(*(*(*(v3 + 40) + 8) + 40) + v79) = v78;
          goto LABEL_55;
        }
      }
    }
  }

LABEL_58:

  v83 = *MEMORY[0x1E69E9840];
}

uint64_t __69__SASharedCache_sharedCacheWithDyldSharedCache_dataGatheringOptions___block_invoke(uint64_t result)
{
  v5 = *MEMORY[0x1E69E9840];
  if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    *uu2 = 0;
    v4 = 0;
    dyld_shared_cache_copy_uuid();
    result = uuid_compare((v1 + 48), uu2);
    if (!result)
    {
      result = dyld_shared_cache_get_base_address();
      *(*(*(v1 + 40) + 8) + 24) = result;
      *(*(*(v1 + 32) + 8) + 24) = 1;
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)setSlide:(uint64_t)result
{
  v24 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if (a2 == -1 || ((v4 = *(result + 8), v4 != a2) ? (v5 = v4 == -1) : (v5 = 1), !v5 || (v6 = *(result + 16), v6 == -1)))
    {
      v8 = *__error();
      v9 = _sa_logt();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v3 debugDescription];
        *buf = 136315394;
        uTF8String = [v10 UTF8String];
        v22 = 2048;
        v23 = a2;
        _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "Changing %s slide to 0x%llx", buf, 0x16u);
      }

      *__error() = v8;
      v11 = [v3 debugDescription];
      uTF8String2 = [v11 UTF8String];
      _SASetCrashLogMessage(3916, "Changing %s slide to 0x%llx", v13, v14, v15, v16, v17, v18, uTF8String2);

      _os_crash();
      __break(1u);
    }

    if (v4 != a2)
    {
      *(result + 8) = a2;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __26__SASharedCache_setSlide___block_invoke;
      v19[3] = &unk_1E86F6CE8;
      v19[4] = result;
      v19[5] = v6 - a2;
      result = [SASharedCache _doSharedCachesWork:v19];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __69__SASharedCache_sharedCacheWithDyldSharedCache_dataGatheringOptions___block_invoke_495(uint64_t a1, uint64_t a2)
{
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v3 = [SABinaryLoadInfo addBinaryLoadInfoForDyldImage:a2 toLoadInfos:*(a1 + 32) isKernel:0 dataGatheringOptions:0];
  }
}

+ (uint64_t)applyBinaryLoadInfos:(uint64_t)infos sharedCacheUUID:(uint64_t)d slide:(uint64_t)slide slidBaseAddress:
{
  v9 = objc_opt_self();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__SASharedCache_applyBinaryLoadInfos_sharedCacheUUID_slide_slidBaseAddress___block_invoke;
  v11[3] = &unk_1E86F6DB0;
  v11[6] = d;
  v11[7] = slide;
  v11[4] = infos;
  v11[5] = a2;
  v11[8] = v9;
  return [SASharedCache _doSharedCachesWork:v11];
}

- (BOOL)matchesUUID:(unsigned __int8)d[16] slide:(unint64_t)slide slidBaseAddress:(unint64_t)address
{
  v30 = *MEMORY[0x1E69E9840];
  if ((address & slide) == 0xFFFFFFFFFFFFFFFFLL)
  {
    v18 = *__error();
    v19 = _sa_logt();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *uu1 = 0;
      _os_log_error_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_ERROR, "matching shared cache with both slide and slidBaseAddress unknown", uu1, 2u);
    }

    *__error() = v18;
    _SASetCrashLogMessage(3868, "matching shared cache with both slide and slidBaseAddress unknown", v20, v21, v22, v23, v24, v25, v26);
    _os_crash();
    __break(1u);
  }

  if (slide == -1 || (slide = self->_slide, slide == -1))
  {
    v10 = 0;
    if (address == -1)
    {
      goto LABEL_21;
    }

    slidBaseAddress = self->_slidBaseAddress;
    if (slidBaseAddress == -1 || slidBaseAddress != address)
    {
      goto LABEL_21;
    }
  }

  else if (slide != slide)
  {
    v10 = 0;
    goto LABEL_21;
  }

  *uu1 = 0;
  v29 = 0;
  [(NSUUID *)self->_uuid getUUIDBytes:uu1];
  v13 = uuid_compare(uu1, d);
  v10 = v13 == 0;
  if (slide != -1 && address != -1 && !v13 && (self->_slide == -1 || self->_slidBaseAddress == -1))
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __51__SASharedCache_matchesUUID_slide_slidBaseAddress___block_invoke;
    v27[3] = &unk_1E86F6CC0;
    v27[4] = self;
    v27[5] = address;
    v27[6] = slide;
    [SASharedCache _doSharedCachesWork:v27];
    v14 = self->_slide;
    v15 = self->_slidBaseAddress;
    if (v14 == -1)
    {
      self->_slide = slide - address + v15;
    }

    else if (v15 == -1)
    {
      self->_slidBaseAddress = address - slide + v14;
    }
  }

LABEL_21:
  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

void __51__SASharedCache_matchesUUID_slide_slidBaseAddress___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) uuid];
  v5 = [a2 objectForKeyedSubscript:v4];

  [SASharedCache _applyBaseAddress:v5 toSharedCaches:?];
}

void __26__SASharedCache_setSlide___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) uuid];
  v5 = [a2 objectForKeyedSubscript:v4];

  [SASharedCache _applyBaseAddress:v5 toSharedCaches:?];
}

- (uint64_t)setSlidBaseAddress:(uint64_t)result
{
  v24 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if (a2 == -1 || ((v4 = *(result + 16), v4 != a2) ? (v5 = v4 == -1) : (v5 = 1), !v5 || (v6 = *(result + 8), v6 == -1)))
    {
      v8 = *__error();
      v9 = _sa_logt();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v3 debugDescription];
        *buf = 136315394;
        uTF8String = [v10 UTF8String];
        v22 = 2048;
        v23 = a2;
        _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "Changing %s slidBaseAddress to 0x%llx", buf, 0x16u);
      }

      *__error() = v8;
      v11 = [v3 debugDescription];
      uTF8String2 = [v11 UTF8String];
      _SASetCrashLogMessage(3933, "Changing %s slidBaseAddress to 0x%llx", v13, v14, v15, v16, v17, v18, uTF8String2);

      _os_crash();
      __break(1u);
    }

    if (v4 != a2)
    {
      *(result + 16) = a2;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __36__SASharedCache_setSlidBaseAddress___block_invoke;
      v19[3] = &unk_1E86F6CE8;
      v19[4] = result;
      v19[5] = a2 - v6;
      result = [SASharedCache _doSharedCachesWork:v19];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __36__SASharedCache_setSlidBaseAddress___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) uuid];
  v5 = [a2 objectForKeyedSubscript:v4];

  [SASharedCache _applyBaseAddress:v5 toSharedCaches:?];
}

uint64_t __47__SASharedCache__findLoadInfosForSharedCaches___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3, char *a4, uint64_t a5, NSObject *a6)
{
  v12 = objc_autoreleasePoolPush();
  if (!SAShouldIgnoreSegmentWithCName(a4))
  {
    v13 = uuidForBytes(a2);
    v14 = SAFilepathForCString(a3);
    if ([v14 isAbsolutePath])
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [SABinary binaryWithUUID:v13 absolutePath:v15];
    v17 = SANSStringForCString(a4);
    v18 = [(SABinary *)v16 segmentWithCleanName:v17 length:a6 offsetIntoBinary:0x7FFFFFFFFFFFFFFFLL];

    v19 = [SABinaryLoadInfo binaryLoadInfoWithSegment:v18 loadAddress:*(a1 + 40) + a5 isInKernelAddressSpace:0 exclave:0];
    [*(a1 + 32) addObject:v19];
  }

  objc_autoreleasePoolPop(v12);
  return 0;
}

+ (void)addDSCSymData:(id)data
{
  v35 = *MEMORY[0x1E69E9840];
  *uu = 0;
  v34 = 0;
  v30 = -1;
  dataCopy = data;
  [data bytes];
  [data length];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __31__SASharedCache_addDSCSymData___block_invoke;
  v28[3] = &unk_1E86F6840;
  v28[4] = v29;
  [self _doSharedCachesWork:v28];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2560];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __31__SASharedCache_addDSCSymData___block_invoke_3;
  v25 = &unk_1E86F6D60;
  v27 = v29;
  v7 = v6;
  v26 = v7;
  v8 = dscsym_iterate_buffer();
  if (v8)
  {
    v9 = *__error();
    v10 = _sa_logt();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v32 = v8;
      _os_log_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_DEFAULT, "WARNING: Error parsing dsc buffer: %d", buf, 8u);
    }

    *__error() = v9;
  }

  else if (uuid_is_null(uu))
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_DEFAULT, "WARNING: NULL UUID for dscsym", buf, 2u);
    }

    *__error() = v11;
  }

  else
  {
    objc_opt_self();
    [v7 sortUsingComparator:&__block_literal_global_361];
    v13 = uuidForBytes(uu);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __31__SASharedCache_addDSCSymData___block_invoke_502;
    v16[3] = &unk_1E86F6D88;
    v14 = v13;
    v17 = v14;
    v19 = v29;
    v20 = v30;
    v18 = v7;
    selfCopy = self;
    [SASharedCache _doSharedCachesWork:v16];
  }

  _Block_object_dispose(v29, 8);
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __31__SASharedCache_addDSCSymData___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __31__SASharedCache_addDSCSymData___block_invoke_2;
  v3[3] = &unk_1E86F6D38;
  v3[4] = *(a1 + 32);
  return [a2 enumerateKeysAndObjectsUsingBlock:v3];
}

void __31__SASharedCache_addDSCSymData___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 slide] != -1)
        {
          *(*(*(a1 + 32) + 8) + 24) = [v11 slide];
          *a4 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __31__SASharedCache_addDSCSymData___block_invoke_3(uint64_t a1, uint64_t a2, _BYTE *a3, char *a4, uint64_t a5, NSObject *a6)
{
  v12 = objc_autoreleasePoolPush();
  if (!SAShouldIgnoreSegmentWithCName(a4))
  {
    v13 = uuidForBytes(a2);
    v14 = SAFilepathForCString(a3);
    if ([v14 isAbsolutePath])
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [SABinary binaryWithUUID:v13 absolutePath:v15];
    v17 = [v16 path];
    v18 = v17;
    if (a3 && !v17)
    {
      if (!*a3)
      {
LABEL_11:
        v20 = SANSStringForCString(a4);
        v21 = [(SABinary *)v16 segmentWithCleanName:v20 length:a6 offsetIntoBinary:0x7FFFFFFFFFFFFFFFLL];

        v22 = [SABinaryLoadInfo binaryLoadInfoWithSegment:v21 loadAddress:*(*(*(a1 + 40) + 8) + 24) + a5 isInKernelAddressSpace:0 exclave:0];
        [*(a1 + 32) addObject:v22];

        goto LABEL_12;
      }

      v18 = SANSStringForCString(a3);
      if (v16)
      {
        objc_setProperty_atomic_copy(v16, v19, v18, 80);
      }
    }

    goto LABEL_11;
  }

LABEL_12:
  objc_autoreleasePoolPop(v12);
  return 0;
}

void __31__SASharedCache_addDSCSymData___block_invoke_502(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  if (v4)
  {
    v13 = v4;
    v5 = [v4 firstObject];
    v6 = [v5 binaryLoadInfos];
    v7 = [v6 count];

    if (!v7)
    {
      v8 = *(*(*(a1 + 48) + 8) + 24);
      [(SASharedCache *)*(a1 + 64) _applyLoadInfos:v8 withSlide:*(a1 + 56) + v8 andSlidBaseAddress:v13 toSharedCaches:?];
    }
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    [a2 setObject:v13 forKeyedSubscript:*(a1 + 32)];
    v9 = [SASharedCache alloc];
    v10 = *(*(*(a1 + 48) + 8) + 24);
    v11 = [(SASharedCache *)v9 initWithUUID:v10 slide:&v10[*(a1 + 56)] slidBaseAddress:?];
    [v13 addObject:v11];
    v12 = [*(a1 + 40) copy];
    [v11 setBinaryLoadInfos:v12];
  }
}

+ (id)sharedCacheWithUUID:(uint64_t)d slide:(uint64_t)slide binaryLoadInfos:
{
  v7 = objc_opt_self();
  [(SASharedCache *)v7 applyBinaryLoadInfos:slide sharedCacheUUID:a2 slide:d slidBaseAddress:-1];
  v8 = objc_opt_self();

  return [(SASharedCache *)v8 sharedCacheWithUUID:a2 slide:d slidBaseAddress:-1 dataGatheringOptions:0];
}

void __76__SASharedCache_applyBinaryLoadInfos_sharedCacheUUID_slide_slidBaseAddress___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  if (v4)
  {
    v7 = v4;
    [(SASharedCache *)*(a1 + 64) _applyLoadInfos:*(a1 + 48) withSlide:*(a1 + 56) andSlidBaseAddress:v4 toSharedCaches:?];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    [a2 setObject:v7 forKeyedSubscript:*(a1 + 32)];
    v5 = [[SASharedCache alloc] initWithUUID:*(a1 + 48) slide:*(a1 + 56) slidBaseAddress:?];
    [v7 addObject:v5];
    v6 = [*(a1 + 40) copy];
    [v5 setBinaryLoadInfos:v6];
  }
}

- (NSString)debugDescription
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"0x%llx (slide 0x%llx slidBaseAddress 0x%llx) Shared cache <%@> (%lu binaries)", -[SASharedCache startAddress](self, "startAddress"), self->_slide, self->_slidBaseAddress, self->_uuid, -[NSArray count](self->_binaryLoadInfos, "count")];

  return v2;
}

- (void)writeJSONDictionaryEntriesToStream:(id)stream
{
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  SAJSONWriteDictionaryFirstEntry(stream, @"uuid", uUIDString);

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_slide];
  SAJSONWriteDictionaryEntry(stream, @"slide", v6);

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_slidBaseAddress];
  SAJSONWriteDictionaryEntry(stream, @"slidBaseAddress", v7);
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v40 = *MEMORY[0x1E69E9840];
  *&buffer->var0 = 1025;
  *(&buffer->var3 + 1) = self->_slide;
  [(NSUUID *)self->_uuid getUUIDBytes:buffer->var2];
  if ([(SASharedCache *)self sizeInBytesForSerializedVersion]== length)
  {
    if ([(NSArray *)self->_binaryLoadInfos count]< 0xFFFF)
    {
      v10 = [(NSArray *)self->_binaryLoadInfos count];
      buffer->var3 = v10;
      SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&buffer->var4 + 4, v10, self->_binaryLoadInfos, dictionary);
      var3 = buffer->var3;
      goto LABEL_8;
    }

    v13 = *__error();
    v20 = _sa_logt();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [(SASharedCache *)self debugDescription];
      *buf = 136315394;
      lengthCopy = [v21 UTF8String];
      v38 = 1024;
      LODWORD(v39) = 0xFFFF;
      _os_log_error_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_ERROR, "%s: more than %d binaries", buf, 0x12u);
    }

    *__error() = v13;
    v22 = [(SASharedCache *)self debugDescription];
    uTF8String = [v22 UTF8String];
    _SASetCrashLogMessage(5298, "%s: more than %d binaries", v24, v25, v26, v27, v28, v29, uTF8String);

    v12 = _os_crash();
    __break(1u);
LABEL_12:
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v38 = 2048;
      v39 = 28;
      _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "bufferLength %lu != serialized SASharedCache struct %lu", buf, 0x16u);
    }

    *__error() = v5;
    _SASetCrashLogMessage(5303, "bufferLength %lu != serialized SASharedCache struct %lu", v30, v31, v32, v33, v34, v35, length);
    _os_crash();
    __break(1u);
  }

  v5 = *__error();
  v12 = _sa_logt();
  v13 = v12;
  if (length <= 0x2C)
  {
    goto LABEL_12;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(SASharedCache *)self debugDescription];
    v15 = [(NSArray *)self->_binaryLoadInfos count];
    *buf = 138412546;
    lengthCopy = v14;
    v38 = 2048;
    v39 = v15;
    _os_log_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_DEFAULT, "WARNING: SASharedCache %@ got its %lu binaries after starting serialization!", buf, 0x16u);
  }

  v16 = __error();
  var3 = 0;
  *v16 = v5;
  buffer->var3 = 0;
LABEL_8:
  v17 = &buffer->var4 + 8 * var3 + 4;
  *v17 = self->_slidBaseAddress;
  *(v17 + 1) = self->_flags;
  v17[16] = v17[16] & 0xFE | self->_isExclaveSharedCache;
  v18 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v18 = *MEMORY[0x1E69E9840];
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = self->_binaryLoadInfos;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v13 + 1) + 8 * v11++) addSelfToSerializationDictionary:{dictionary, v13}];
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  *&v71[13] = *MEMORY[0x1E69E9840];
  if (*buffer >= 5u)
  {
    goto LABEL_35;
  }

  if (length <= 0x1B)
  {
    v20 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy5 = length;
      v70 = 2048;
      *v71 = 28;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASharedCache struct %lu", buf, 0x16u);
    }

    *__error() = v20;
    _SASetCrashLogMessage(5331, "bufferLength %lu < serialized SASharedCache struct %lu", v21, v22, v23, v24, v25, v26, length);
    _os_crash();
    __break(1u);
    goto LABEL_23;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 9) + 28 > length)
  {
LABEL_23:
    v27 = *__error();
    v28 = _sa_logt();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = *(bufferCopy + 18);
      *buf = 134218496;
      lengthCopy5 = length;
      v70 = 1024;
      *v71 = v29;
      v71[2] = 2048;
      *&v71[3] = 8 * v29 + 28;
      _os_log_error_impl(&dword_1E0E2F000, v28, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASharedCache struct plus %u load infos %lu", buf, 0x1Cu);
    }

    *__error() = v27;
    v64 = *(bufferCopy + 18);
    _SASetCrashLogMessage(5332, "bufferLength %lu < serialized SASharedCache struct plus %u load infos %lu", v30, v31, v32, v33, v34, v35, length);
    _os_crash();
    __break(1u);
LABEL_26:
    v36 = *__error();
    v37 = _sa_logt();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = *(bufferCopy + 18);
      *buf = 134218496;
      lengthCopy5 = length;
      v70 = 1024;
      *v71 = v38;
      v71[2] = 2048;
      *&v71[3] = 9 * v38 + 28;
      _os_log_error_impl(&dword_1E0E2F000, v37, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASharedCache struct plus %u load infos %lu", buf, 0x1Cu);
    }

    *__error() = v36;
    v65 = *(bufferCopy + 18);
    _SASetCrashLogMessage(5340, "bufferLength %lu < serialized SASharedCache struct plus %u load infos %lu", v39, v40, v41, v42, v43, v44, length);
    _os_crash();
    __break(1u);
LABEL_29:
    v45 = *__error();
    v46 = _sa_logt();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = *(bufferCopy + 18);
      *buf = 134218496;
      lengthCopy5 = length;
      v70 = 1024;
      *v71 = v47;
      v71[2] = 2048;
      *&v71[3] = 9 * v47 + 28;
      _os_log_error_impl(&dword_1E0E2F000, v46, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASharedCache struct plus %u load infos %lu", buf, 0x1Cu);
    }

    *__error() = v45;
    v66 = *(bufferCopy + 18);
    _SASetCrashLogMessage(5347, "bufferLength %lu < serialized SASharedCache struct plus %u load infos %lu", v48, v49, v50, v51, v52, v53, length);
    _os_crash();
    __break(1u);
LABEL_32:
    v54 = *__error();
    v55 = _sa_logt();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v56 = *(bufferCopy + 18);
      *buf = 134218496;
      lengthCopy5 = length;
      v70 = 1024;
      *v71 = v56;
      v71[2] = 2048;
      *&v71[3] = 9 * v56 + 28;
      _os_log_error_impl(&dword_1E0E2F000, v55, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASharedCache struct plus %u load infos %lu", buf, 0x1Cu);
    }

    *__error() = v54;
    v67 = *(bufferCopy + 18);
    _SASetCrashLogMessage(5353, "bufferLength %lu < serialized SASharedCache struct plus %u load infos %lu", v57, v58, v59, v60, v61, v62, length);
    _os_crash();
    __break(1u);
LABEL_35:
    v63 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SASharedCache version" userInfo:0];
    objc_exception_throw(v63);
  }

  v6 = uuidForBytes(buffer + 2);
  v7 = *(bufferCopy + 1);
  if (v7 < 2)
  {
    v14 = 0;
    v11 = -1;
    goto LABEL_9;
  }

  v8 = *(bufferCopy + 18);
  v9 = 8 * v8;
  if (8 * v8 + 36 > length)
  {
    goto LABEL_26;
  }

  v10 = bufferCopy + 8 * v8;
  v13 = *(v10 + 28);
  v12 = v10 + 28;
  v11 = v13;
  if (v7 == 2)
  {
    v14 = 0;
LABEL_9:
    v15 = 1;
    goto LABEL_10;
  }

  if (v9 + 44 > length)
  {
    goto LABEL_29;
  }

  v14 = *(v12 + 8);
  if (v7 < 4)
  {
    goto LABEL_9;
  }

  if (v9 + 45 > length)
  {
    goto LABEL_32;
  }

  v15 = *(v12 + 16) ^ 1;
LABEL_10:
  v16 = [SASharedCache sharedCacheWithUUID:v6 slide:*(bufferCopy + 20) slidBaseAddress:v11 dataGatheringOptions:2048];
  v17 = v16;
  if (v14)
  {
    if (!v16)
    {
      goto LABEL_15;
    }

    *(v16 + 28) = v14;
  }

  if (!(v15 & 1 | (v16 == 0)))
  {
    *(v16 + 25) = 1;
  }

LABEL_15:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  *&v39[13] = *MEMORY[0x1E69E9840];
  if (*buffer >= 5u)
  {
    goto LABEL_14;
  }

  if (length <= 0x1B)
  {
    v16 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v38 = 2048;
      *v39 = 28;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASharedCache struct %lu", buf, 0x16u);
    }

    *__error() = v16;
    _SASetCrashLogMessage(5379, "bufferLength %lu < serialized SASharedCache struct %lu", v17, v18, v19, v20, v21, v22, length);
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 9) + 28 > length)
  {
LABEL_11:
    v23 = *__error();
    v24 = _sa_logt();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = *(bufferCopy + 18);
      *buf = 134218496;
      lengthCopy2 = length;
      v38 = 1024;
      *v39 = v25;
      v39[2] = 2048;
      *&v39[3] = 8 * v25 + 28;
      _os_log_error_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASharedCache struct plus %u load infos %lu", buf, 0x1Cu);
    }

    *__error() = v23;
    v33 = *(bufferCopy + 18);
    _SASetCrashLogMessage(5380, "bufferLength %lu < serialized SASharedCache struct plus %u load infos %lu", v26, v27, v28, v29, v30, v31, length);
    _os_crash();
    __break(1u);
LABEL_14:
    v32 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAInstruction version" userInfo:0];
    objc_exception_throw(v32);
  }

  if (![(NSArray *)self->_binaryLoadInfos count])
  {
    v11 = *(bufferCopy + 18);
    if (*(bufferCopy + 18))
    {
      v12 = objc_opt_class();
      v13 = SASerializableNewMutableArrayFromIndexList(bufferCopy + 28, v11, dictionary, bufferDictionary, v12);
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __128__SASharedCache_Serialization__populateReferencesUsingBuffer_bufferLength_andDeserializationDictionary_andDataBufferDictionary___block_invoke;
      v34[3] = &unk_1E86F6E68;
      v34[4] = self;
      v35 = v13;
      v14 = v13;
      [SASharedCache _doSharedCachesWork:v34];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __128__SASharedCache_Serialization__populateReferencesUsingBuffer_bufferLength_andDeserializationDictionary_andDataBufferDictionary___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) uuid];
  v17 = [a2 objectForKeyedSubscript:v4];

  if (![v17 count])
  {
    v6 = *__error();
    v7 = _sa_logt();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) debugDescription];
      *buf = 136315138;
      v19 = [v8 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_ERROR, "In deserialization, no shared caches in cache for shared cache %s", buf, 0xCu);
    }

    *__error() = v6;
    v9 = [*(a1 + 32) debugDescription];
    v10 = [v9 UTF8String];
    _SASetCrashLogMessage(5389, "In deserialization, no shared caches in cache for shared cache %s", v11, v12, v13, v14, v15, v16, v10);

    _os_crash();
    __break(1u);
  }

  +[SASharedCache _applyLoadInfos:withSlide:andSlidBaseAddress:toSharedCaches:](SASharedCache, *(a1 + 40), [*(a1 + 32) slide], objc_msgSend(*(a1 + 32), "slidBaseAddress"), v17);
  v5 = *MEMORY[0x1E69E9840];
}

@end