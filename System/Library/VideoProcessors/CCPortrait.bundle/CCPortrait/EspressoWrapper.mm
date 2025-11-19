@interface EspressoWrapper
+ (id)cache;
+ (id)cachedEspressoWrapper:(id)a3;
+ (id)pathFromBaseName:(id)a3;
+ (void)clearCache;
- (BOOL)hasBlob:(const char *)a3;
- (EspressoWrapper)initWithPath:(id)a3;
- (int)bind:(const char *)a3 buffer:(__CVBuffer *)a4;
- (int)execute;
- (int)executeAsync:(id)a3;
- (void)buildAsync;
- (void)dealloc;
@end

@implementation EspressoWrapper

+ (id)cache
{
  if (qword_2A18BA2D8 != -1)
  {
    sub_2956CDDB8();
  }

  v3 = qword_2A18BA2E0;

  return v3;
}

- (EspressoWrapper)initWithPath:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = EspressoWrapper;
  v5 = [(EspressoWrapper *)&v13 init];
  path = v5->_path;
  v5->_path = v4;
  v7 = v4;

  v8 = dispatch_queue_create("EspressoWrapper", 0);
  queue = v5->_queue;
  v5->_queue = v8;

  objc_msgSend_buildAsync(v5, v10, v11);
  return v5;
}

+ (id)cachedEspressoWrapper:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_cache(a1, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, v4);

  if (!v9)
  {
    v10 = [a1 alloc];
    v9 = objc_msgSend_initWithPath_(v10, v11, v4);
    if (v9)
    {
      v14 = objc_msgSend_cache(a1, v12, v13);
      objc_msgSend_setObject_forKey_(v14, v15, v9, v4);
    }
  }

  return v9;
}

+ (void)clearCache
{
  v5 = objc_msgSend_cache(a1, a2, v2);
  objc_msgSend_removeAllObjects(v5, v3, v4);
}

+ (id)pathFromBaseName:(id)a3
{
  v3 = a3;
  v4 = NSClassFromString(&cfstr_Bwespressoinfe.isa);
  v5 = NSSelectorFromString(&cfstr_Espressonetwor.isa);
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v8 = objc_msgSend_methodForSelector_(v4, v6, v5)) == 0 || (v8(v4, v5, v3, 1), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend_path(v9, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), v9, !v12))
  {
    v13 = objc_msgSend_defaultManager(MEMORY[0x29EDB9FB8], v6, v7);
    objc_msgSend_contentsOfDirectoryAtPath_error_(v13, v14, @"/System/Library/ImagingNetworks", 0);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = v28 = 0u;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v25, v24, 16);
    if (v17)
    {
      v19 = v17;
      v20 = *v26;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v15);
          }

          v22 = *(*(&v25 + 1) + 8 * i);
          if (objc_msgSend_hasPrefix_(v22, v18, v3) && (objc_msgSend_hasSuffix_(v22, v18, @".espresso.net") & 1) != 0)
          {
            v12 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v18, @"/System/Library/ImagingNetworks/%@", v22);
            goto LABEL_15;
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v25, v24, 16);
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_15:
  }

  return v12;
}

- (void)dealloc
{
  espresso_plan_destroy();
  espresso_context_destroy();
  self->_ctx = 0;
  self->_plan = 0;
  v3.receiver = self;
  v3.super_class = EspressoWrapper;
  [(EspressoWrapper *)&v3 dealloc];
}

- (void)buildAsync
{
  queue = self->_queue;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_2956B4AD4;
  block[3] = &unk_29EDD47F0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (int)bind:(const char *)a3 buffer:(__CVBuffer *)a4
{
  if (!self->_built)
  {
    return -1;
  }

  v8 = objc_msgSend_plan(self, a2, a3);
  v11 = objc_msgSend_planIdx(self, v9, v10);

  return MEMORY[0x2A1C5FF20](v8, v11, a3, 0, a4);
}

- (BOOL)hasBlob:(const char *)a3
{
  if (!self->_built)
  {
    return 0;
  }

  objc_msgSend_plan(self, a2, a3);
  objc_msgSend_planIdx(self, v4, v5);
  return espresso_network_query_blob_shape() == 0;
}

- (int)execute
{
  if (!self->_built)
  {
    return -1;
  }

  v5 = objc_msgSend_plan(self, a2, v2);
  objc_msgSend_planIdx(self, v6, v7);

  return MEMORY[0x2A1C5FF60](v5);
}

- (int)executeAsync:(id)a3
{
  v6 = a3;
  if (self->_built)
  {
    objc_msgSend_plan(self, v4, v5);
    objc_msgSend_planIdx(self, v7, v8);
    v9 = dispatch_queue_create(0, 0);
    v12 = v6;
    v10 = espresso_plan_submit();
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

@end