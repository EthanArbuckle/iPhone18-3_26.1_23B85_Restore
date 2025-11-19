@interface _PXDefaultAudioCueProvider
- (_PXDefaultAudioCueProvider)init;
- (id)_cueProviderForCatalog:(int64_t)a3;
- (id)requestCuesForAudioAsset:(id)a3 resultHandler:(id)a4;
@end

@implementation _PXDefaultAudioCueProvider

- (id)_cueProviderForCatalog:(int64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__182236;
  v11 = __Block_byref_object_dispose__182237;
  v12 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53___PXDefaultAudioCueProvider__cueProviderForCatalog___block_invoke;
  block[3] = &unk_1E77477B8;
  block[4] = self;
  block[5] = &v7;
  block[6] = a3;
  dispatch_sync(stateQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)requestCuesForAudioAsset:(id)a3 resultHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = -[_PXDefaultAudioCueProvider _cueProviderForCatalog:](self, "_cueProviderForCatalog:", [v7 catalog]);
  v9 = os_signpost_id_make_with_pointer(self->_log, v8);
  v10 = self->_log;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "requestAudioCues", "", buf, 2u);
  }

  v12 = self->_log;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __69___PXDefaultAudioCueProvider_requestCuesForAudioAsset_resultHandler___block_invoke;
  v17[3] = &unk_1E7740E60;
  v19 = v6;
  v20 = v9;
  v18 = v12;
  v13 = v6;
  v14 = v12;
  v15 = [v8 requestCuesForAudioAsset:v7 resultHandler:v17];

  return v15;
}

- (_PXDefaultAudioCueProvider)init
{
  v6.receiver = self;
  v6.super_class = _PXDefaultAudioCueProvider;
  v2 = [(_PXDefaultAudioCueProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    providersByCatalog = v2->_providersByCatalog;
    v2->_providersByCatalog = v3;

    px_dispatch_queue_create_serial();
  }

  return 0;
}

@end