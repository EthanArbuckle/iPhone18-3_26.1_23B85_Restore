@interface FPSharedCache
+ (id)sharedCacheForDyldSnapshot:(dyld_process_snapshot_s *)snapshot;
@end

@implementation FPSharedCache

+ (id)sharedCacheForDyldSnapshot:(dyld_process_snapshot_s *)snapshot
{
  v22[2] = *MEMORY[0x29EDCA608];
  if (dyld_process_snapshot_get_shared_cache() && (dyld_shared_cache_is_mapped_private() & 1) == 0)
  {
    v22[0] = 0;
    v22[1] = 0;
    dyld_shared_cache_copy_uuid();
    v4 = [objc_alloc(MEMORY[0x29EDBA140]) initWithUUIDBytes:v22];
    base_address = dyld_shared_cache_get_base_address();
    mapped_size = dyld_shared_cache_get_mapped_size();
    v7 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v4, "hash") ^ base_address}];
    os_unfair_lock_lock(&unk_2A18AA180);
    v8 = sub_297E36CF8();
    v3 = [v8 objectForKeyedSubscript:v7];

    if (!v3)
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 0;
      v16 = MEMORY[0x29EDCA5F8];
      dyld_shared_cache_for_each_file();
      v9 = v18[3];
      if (base_address < v9)
      {
        _os_assert_log();
        _os_crash();
        __break(1u);
      }

      if (v9)
      {
        v10 = base_address - v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = sub_297E36CF8();
      v3 = [FPSharedCache alloc];
      v12 = v4;
      if (v3)
      {
        v21.receiver = v3;
        v21.super_class = FPSharedCache;
        v13 = objc_msgSendSuper2(&v21, sel_init, v16, 3221225472, sub_297E36D50, &unk_29EE85478, &v17);
        v3 = v13;
        if (v13)
        {
          objc_storeStrong(v13 + 2, v4);
          v3->_baseAddress = base_address;
          v3->_mappedSize = mapped_size;
          v3->_slide = v10;
          v3->_alignment = 4096;
        }
      }

      [v11 setObject:v3 forKeyedSubscript:v7];
      _Block_object_dispose(&v17, 8);
    }

    os_unfair_lock_unlock(&unk_2A18AA180);
  }

  else
  {
    v3 = 0;
  }

  v14 = *MEMORY[0x29EDCA608];

  return v3;
}

@end