@interface _VFXUIKitSourceRegistry
+ (id)sharedInstance;
+ (void)registerUIKitSource:(id)source;
+ (void)unregisterUIKitSource:(id)source;
- (_VFXUIKitSourceRegistry)init;
- (void)add:(id)add;
- (void)apply:(id)apply;
- (void)dealloc;
- (void)remove:(id)remove;
@end

@implementation _VFXUIKitSourceRegistry

+ (id)sharedInstance
{
  if (qword_1EB658820 != -1)
  {
    sub_1AFDF3AF8();
  }

  return qword_1EB658828;
}

- (_VFXUIKitSourceRegistry)init
{
  v4.receiver = self;
  v4.super_class = _VFXUIKitSourceRegistry;
  v2 = [(_VFXUIKitSourceRegistry *)&v4 init];
  if (v2)
  {
    v2->_sources = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _VFXUIKitSourceRegistry;
  [(_VFXUIKitSourceRegistry *)&v3 dealloc];
}

- (void)add:(id)add
{
  objc_sync_enter(self);
  objc_msgSend_addObject_(self->_sources, v5, add, v6);

  objc_sync_exit(self);
}

- (void)remove:(id)remove
{
  objc_sync_enter(self);
  objc_msgSend_removeObject_(self->_sources, v5, remove, v6);

  objc_sync_exit(self);
}

- (void)apply:(id)apply
{
  v16 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sources = self->_sources;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(sources, v6, &v11, v15, 16);
  if (v7)
  {
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(sources);
        }

        (*(apply + 2))(apply, *(*(&v11 + 1) + 8 * i));
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(sources, v10, &v11, v15, 16);
    }

    while (v7);
  }

  objc_sync_exit(self);
}

+ (void)registerUIKitSource:(id)source
{
  v5 = objc_msgSend_sharedInstance(self, a2, source, v3);

  MEMORY[0x1EEE66B58](v5, sel_add_, source, v6);
}

+ (void)unregisterUIKitSource:(id)source
{
  v5 = objc_msgSend_sharedInstance(self, a2, source, v3);

  MEMORY[0x1EEE66B58](v5, sel_remove_, source, v6);
}

@end