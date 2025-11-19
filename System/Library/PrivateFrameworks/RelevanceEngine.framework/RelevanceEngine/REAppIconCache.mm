@interface REAppIconCache
- (id)_init;
- (void)_loadIconForIdentifier:(id)a3 completion:(id)a4;
- (void)_loadRemoteIconForIdentifier:(id)a3 completion:(id)a4;
- (void)iconForApplicationWithIdentifier:(id)a3 completion:(id)a4;
@end

@implementation REAppIconCache

- (id)_init
{
  v9.receiver = self;
  v9.super_class = REAppIconCache;
  v2 = [(RESingleton *)&v9 _init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.RelevanceEngine", v3);
    v5 = v2[2];
    v2[2] = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEA78]);
    v7 = v2[1];
    v2[1] = v6;
  }

  return v2;
}

- (void)iconForApplicationWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  IsRemote = REApplicationIsRemote(v6);
  v9 = [[_REAppKey alloc] initWithIdentifier:v6 remote:IsRemote];
  v10 = [(NSCache *)self->_imageCache objectForKey:v9];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __62__REAppIconCache_iconForApplicationWithIdentifier_completion___block_invoke;
  v18[3] = &unk_2785FA6C0;
  v18[4] = self;
  v11 = v9;
  v19 = v11;
  v12 = v7;
  v20 = v12;
  v13 = MEMORY[0x22AABC5E0](v18);
  if (v10)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__REAppIconCache_iconForApplicationWithIdentifier_completion___block_invoke_2;
    block[3] = &unk_2785FA150;
    v17 = v12;
    v16 = v10;
    dispatch_async(queue, block);
  }

  else if (IsRemote)
  {
    [(REAppIconCache *)self _loadRemoteIconForIdentifier:v6 completion:v13];
  }

  else
  {
    [(REAppIconCache *)self _loadIconForIdentifier:v6 completion:v13];
  }
}

void __62__REAppIconCache_iconForApplicationWithIdentifier_completion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [*(a1[4] + 8) setObject:v3 forKey:a1[5]];
  }

  (*(a1[6] + 16))();
}

- (void)_loadRemoteIconForIdentifier:(id)a3 completion:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v19 = 0;
  if (!RelevanceEngineUILibraryCore_frameworkLibrary)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __RelevanceEngineUILibraryCore_block_invoke;
    v23 = &__block_descriptor_40_e5_v8__0l;
    v24 = &v19;
    v25 = xmmword_2785FA720;
    v26 = 0;
    RelevanceEngineUILibraryCore_frameworkLibrary = _sl_dlopen();
    v8 = v19;
    if (RelevanceEngineUILibraryCore_frameworkLibrary)
    {
      if (!v19)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v8 = abort_report_np();
      __break(1u);
    }

    free(v8);
  }

LABEL_4:
  v9 = REDeviceScreenScale();
  *&v25 = 0;
  *(&v25 + 1) = &v25;
  v26 = 0x2050000000;
  v10 = getNanoResourceGrabberClass_softClass;
  v27 = getNanoResourceGrabberClass_softClass;
  if (!getNanoResourceGrabberClass_softClass)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __getNanoResourceGrabberClass_block_invoke;
    v23 = &unk_2785F9BC0;
    v24 = &v25;
    __getNanoResourceGrabberClass_block_invoke(&v20);
    v10 = *(*(&v25 + 1) + 24);
  }

  if (v9 < 3.0)
  {
    v11 = 47;
  }

  else
  {
    v11 = 48;
  }

  v12 = v10;
  _Block_object_dispose(&v25, 8);
  v13 = [v10 sharedInstance];
  queue = self->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__REAppIconCache__loadRemoteIconForIdentifier_completion___block_invoke;
  v17[3] = &unk_2785FA6E8;
  v18 = v7;
  v15 = v7;
  [v13 getIconForBundleID:v6 iconVariant:v11 queue:queue block:v17 timeout:0.0];

  v16 = *MEMORY[0x277D85DE8];
}

void __58__REAppIconCache__loadRemoteIconForIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [REImage imageWithImage:a2];
  (*(*(a1 + 32) + 16))();
}

- (void)_loadIconForIdentifier:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__REAppIconCache__loadIconForIdentifier_completion___block_invoke;
  v9[3] = &unk_2785F9A40;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __52__REAppIconCache__loadIconForIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = REDeviceScreenScale();
  v3 = _REIconDescriptionForDevice(0, 0, v2);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = getISIconClass_softClass;
  v12 = getISIconClass_softClass;
  if (!getISIconClass_softClass)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getISIconClass_block_invoke;
    v8[3] = &unk_2785F9BC0;
    v8[4] = &v9;
    __getISIconClass_block_invoke(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  v6 = [[v4 alloc] initWithBundleIdentifier:*(a1 + 32)];
  v7 = [v6 CGImageForImageDescriptor:v3];
  if (v7)
  {
    v7 = [REImage imageWithCGImage:v7 scale:REDeviceScreenScale()];
  }

  (*(*(a1 + 40) + 16))();
}

@end