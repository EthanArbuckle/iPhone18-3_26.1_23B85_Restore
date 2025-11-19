@interface TSDFrameImageCache
+ (TSDFrameImageCache)sharedFrameImageCache;
- (CGImage)newCachedImageForFrame:(id)a3 size:(CGSize)a4 viewScale:(double)a5 forCALayer:(BOOL)a6 mask:(BOOL)a7;
- (CGImage)setCachedImage:(CGImage *)a3 forFrame:(id)a4 size:(CGSize)a5 viewScale:(double)a6 forCALayer:(BOOL)a7 mask:(BOOL)a8;
- (TSDFrameImageCache)init;
- (id)p_newEntryForFrame:(id)a3 size:(CGSize)a4 viewScale:(double)a5 createIfNeeded:(BOOL)a6;
- (void)p_flush;
@end

@implementation TSDFrameImageCache

+ (TSDFrameImageCache)sharedFrameImageCache
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2766BB998;
  block[3] = &unk_27A6CC4B8;
  block[4] = a1;
  if (qword_280A4C278 != -1)
  {
    dispatch_once(&qword_280A4C278, block);
  }

  v2 = qword_280A4C270;

  return v2;
}

- (TSDFrameImageCache)init
{
  v14.receiver = self;
  v14.super_class = TSDFrameImageCache;
  v2 = [(TSDFrameImageCache *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mEntries = v2->mEntries;
    v2->mEntries = v3;

    v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v5, v6);
    v8 = *MEMORY[0x277D76670];
    v11 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], v9, v10);
    objc_msgSend_addObserver_selector_name_object_(v7, v12, v2, sel_p_didReceiveMemoryWarning_, v8, v11);
  }

  return v2;
}

- (CGImage)newCachedImageForFrame:(id)a3 size:(CGSize)a4 viewScale:(double)a5 forCALayer:(BOOL)a6 mask:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  height = a4.height;
  width = a4.width;
  v13 = a3;
  v14 = self;
  objc_sync_enter(v14);
  IfNeeded = objc_msgSend_p_newEntryForFrame_size_viewScale_createIfNeeded_(v14, v15, v13, 0, width, height, a5);
  v18 = IfNeeded;
  if (IfNeeded)
  {
    v19 = objc_msgSend_newImageForCALayer_mask_(IfNeeded, v17, v8, v7);
  }

  else
  {
    v19 = 0;
  }

  objc_sync_exit(v14);
  return v19;
}

- (CGImage)setCachedImage:(CGImage *)a3 forFrame:(id)a4 size:(CGSize)a5 viewScale:(double)a6 forCALayer:(BOOL)a7 mask:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  height = a5.height;
  width = a5.width;
  v15 = a4;
  v16 = self;
  objc_sync_enter(v16);
  IfNeeded = objc_msgSend_p_newEntryForFrame_size_viewScale_createIfNeeded_(v16, v17, v15, 1, width, height, a6);
  objc_msgSend_setImage_forCALayer_mask_(IfNeeded, v19, a3, v9, v8);
  v21 = objc_msgSend_newImageForCALayer_mask_(IfNeeded, v20, v9, v8);

  objc_sync_exit(v16);
  return v21;
}

- (id)p_newEntryForFrame:(id)a3 size:(CGSize)a4 viewScale:(double)a5 createIfNeeded:(BOOL)a6
{
  v6 = a6;
  height = a4.height;
  width = a4.width;
  v11 = a3;
  v15 = objc_msgSend_count(self->mEntries, v12, v13);
  if (v15)
  {
    v16 = 0;
    while (1)
    {
      v17 = objc_msgSend_objectAtIndexedSubscript_(self->mEntries, v14, v16);
      v20 = objc_msgSend_frameSpec(v17, v18, v19);
      v25 = objc_msgSend_frameSpec(v11, v21, v22);
      if (v20 == v25 && (objc_msgSend_assetScale(v17, v23, v24), v27 = v26, objc_msgSend_assetScale(v11, v28, v29), v27 == v32) && ((objc_msgSend_size(v17, v30, v31), v36 == width) ? (v37 = v35 == height) : (v37 = 0), v37))
      {
        objc_msgSend_viewScale(v17, v33, v34);
        v39 = v38;

        if (v39 == a5)
        {
          mEntries = self->mEntries;
          v15 = v17;
          objc_msgSend_removeObjectAtIndex_(mEntries, v41, v16);
          objc_msgSend_insertObject_atIndex_(self->mEntries, v42, v15, 0);

          break;
        }
      }

      else
      {
      }

      if (v15 == ++v16)
      {
        v15 = 0;
        break;
      }
    }
  }

  if (!v15 && v6)
  {
    v43 = [TSDFrameImageCacheEntry alloc];
    v15 = objc_msgSend_initWithFrame_size_viewScale_(v43, v44, v11, width, height, a5);
    if (objc_msgSend_count(self->mEntries, v45, v46) >= 0xA)
    {
      do
      {
        objc_msgSend_removeLastObject(self->mEntries, v47, v48);
      }

      while (objc_msgSend_count(self->mEntries, v49, v50) > 9);
    }

    objc_msgSend_insertObject_atIndex_(self->mEntries, v47, v15, 0);
  }

  return v15;
}

- (void)p_flush
{
  obj = self;
  objc_sync_enter(obj);
  objc_msgSend_removeAllObjects(obj->mEntries, v2, v3);
  objc_sync_exit(obj);
}

@end