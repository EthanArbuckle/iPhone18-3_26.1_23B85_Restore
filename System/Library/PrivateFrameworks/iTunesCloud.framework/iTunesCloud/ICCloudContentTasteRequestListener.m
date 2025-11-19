@interface ICCloudContentTasteRequestListener
+ (id)sharedCloudContentTasteRequestListener;
- (ICCloudContentTasteRequestListener)init;
- (id)_init;
- (void)_setupContentTasteServiceConnection;
- (void)setContentTaste:(int64_t)a3 forAlbumStoreID:(int64_t)a4 configuration:(id)a5 withCompletionHandler:(id)a6;
- (void)setContentTaste:(int64_t)a3 forAlbumStoreID:(int64_t)a4 persistentID:(int64_t)a5 timeStamp:(id)a6 configuration:(id)a7 withCompletionHandler:(id)a8;
- (void)setContentTaste:(int64_t)a3 forAlbumStoreID:(int64_t)a4 withCompletionHandler:(id)a5;
- (void)setContentTaste:(int64_t)a3 forArtistStoreID:(int64_t)a4 configuration:(id)a5 withCompletionHandler:(id)a6;
- (void)setContentTaste:(int64_t)a3 forArtistStoreID:(int64_t)a4 persistentID:(int64_t)a5 timeStamp:(id)a6 configuration:(id)a7 withCompletionHandler:(id)a8;
- (void)setContentTaste:(int64_t)a3 forArtistStoreID:(int64_t)a4 withCompletionHandler:(id)a5;
- (void)setContentTaste:(int64_t)a3 forMediaItem:(int64_t)a4 storeIdentifier:(int64_t)a5 configuration:(id)a6 timeStamp:(id)a7 withCompletionHandler:(id)a8;
- (void)setContentTaste:(int64_t)a3 forMediaItem:(int64_t)a4 storeIdentifier:(int64_t)a5 persistentID:(int64_t)a6 timeStamp:(id)a7 configuration:(id)a8 withCompletionHandler:(id)a9;
- (void)setContentTaste:(int64_t)a3 forMediaItem:(int64_t)a4 storeIdentifier:(int64_t)a5 timeStamp:(id)a6 withCompletionHandler:(id)a7;
- (void)setContentTaste:(int64_t)a3 forPlaylistGlobalID:(id)a4 configuration:(id)a5 withCompletionHandler:(id)a6;
- (void)setContentTaste:(int64_t)a3 forPlaylistGlobalID:(id)a4 persistentID:(int64_t)a5 timeStamp:(id)a6 configuration:(id)a7 withCompletionHandler:(id)a8;
- (void)setContentTaste:(int64_t)a3 forPlaylistGlobalID:(id)a4 withCompletionHandler:(id)a5;
- (void)updateContentTasteForMediaItemsAndInvalidateLocalCache:(BOOL)a3 configuration:(id)a4 withCompletionHandler:(id)a5;
- (void)updateContentTasteForMediaItemsAndInvalidateLocalCache:(BOOL)a3 withCompletionHandler:(id)a4;
@end

@implementation ICCloudContentTasteRequestListener

- (void)_setupContentTasteServiceConnection
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.itunescloud.contenttaste" options:0];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = v3;

  [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CCF058];
  [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v5];
  [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:&__block_literal_global_82];
  [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:&__block_literal_global_85];
  [(NSXPCConnection *)self->_xpcConnection resume];
}

void __73__ICCloudContentTasteRequestListener__setupContentTasteServiceConnection__block_invoke_83()
{
  v0 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B4491000, v0, OS_LOG_TYPE_DEFAULT, "Connection to media content taste service invalidated", v1, 2u);
  }
}

void __73__ICCloudContentTasteRequestListener__setupContentTasteServiceConnection__block_invoke()
{
  v0 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B4491000, v0, OS_LOG_TYPE_DEFAULT, "Connection to media content taste service interrupted", v1, 2u);
  }
}

- (void)updateContentTasteForMediaItemsAndInvalidateLocalCache:(BOOL)a3 withCompletionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [ICConnectionConfiguration alloc];
  v8 = +[ICUserIdentity activeAccount];
  v9 = +[ICUserIdentityStore defaultIdentityStore];
  v10 = [(ICConnectionConfiguration *)v7 initWithUserIdentity:v8 userIdentityStore:v9];

  [(ICCloudContentTasteRequestListener *)self updateContentTasteForMediaItemsAndInvalidateLocalCache:v4 configuration:v10 withCompletionHandler:v6];
}

- (void)setContentTaste:(int64_t)a3 forArtistStoreID:(int64_t)a4 withCompletionHandler:(id)a5
{
  v8 = a5;
  v9 = [ICConnectionConfiguration alloc];
  v10 = +[ICUserIdentity activeAccount];
  v11 = +[ICUserIdentityStore defaultIdentityStore];
  v12 = [(ICConnectionConfiguration *)v9 initWithUserIdentity:v10 userIdentityStore:v11];

  [(ICCloudContentTasteRequestListener *)self setContentTaste:a3 forArtistStoreID:a4 configuration:v12 withCompletionHandler:v8];
}

- (void)setContentTaste:(int64_t)a3 forAlbumStoreID:(int64_t)a4 withCompletionHandler:(id)a5
{
  v8 = a5;
  v9 = [ICConnectionConfiguration alloc];
  v10 = +[ICUserIdentity activeAccount];
  v11 = +[ICUserIdentityStore defaultIdentityStore];
  v12 = [(ICConnectionConfiguration *)v9 initWithUserIdentity:v10 userIdentityStore:v11];

  [(ICCloudContentTasteRequestListener *)self setContentTaste:a3 forAlbumStoreID:a4 configuration:v12 withCompletionHandler:v8];
}

- (void)setContentTaste:(int64_t)a3 forPlaylistGlobalID:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [ICConnectionConfiguration alloc];
  v11 = +[ICUserIdentity activeAccount];
  v12 = +[ICUserIdentityStore defaultIdentityStore];
  v13 = [(ICConnectionConfiguration *)v10 initWithUserIdentity:v11 userIdentityStore:v12];

  [(ICCloudContentTasteRequestListener *)self setContentTaste:a3 forPlaylistGlobalID:v9 configuration:v13 withCompletionHandler:v8];
}

- (void)setContentTaste:(int64_t)a3 forMediaItem:(int64_t)a4 storeIdentifier:(int64_t)a5 timeStamp:(id)a6 withCompletionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = [ICConnectionConfiguration alloc];
  v15 = +[ICUserIdentity activeAccount];
  v16 = +[ICUserIdentityStore defaultIdentityStore];
  v17 = [(ICConnectionConfiguration *)v14 initWithUserIdentity:v15 userIdentityStore:v16];

  [(ICCloudContentTasteRequestListener *)self setContentTaste:a3 forMediaItem:a4 storeIdentifier:a5 configuration:v17 timeStamp:v13 withCompletionHandler:v12];
}

- (void)updateContentTasteForMediaItemsAndInvalidateLocalCache:(BOOL)a3 configuration:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  accessQueue = self->_accessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __129__ICCloudContentTasteRequestListener_updateContentTasteForMediaItemsAndInvalidateLocalCache_configuration_withCompletionHandler___block_invoke;
  v13[3] = &unk_1E7BF9B18;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v13[4] = self;
  v11 = v8;
  v12 = v9;
  dispatch_async(accessQueue, v13);
}

void __129__ICCloudContentTasteRequestListener_updateContentTasteForMediaItemsAndInvalidateLocalCache_configuration_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __129__ICCloudContentTasteRequestListener_updateContentTasteForMediaItemsAndInvalidateLocalCache_configuration_withCompletionHandler___block_invoke_2;
  v8[3] = &unk_1E7BF77C0;
  v9 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v8];
  v4 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __129__ICCloudContentTasteRequestListener_updateContentTasteForMediaItemsAndInvalidateLocalCache_configuration_withCompletionHandler___block_invoke_11;
  v6[3] = &unk_1E7BF77C0;
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  [v3 updateContentTasteForMediaItemsAndInvalidateLocalCache:v4 configuration:v5 withCompletionHandler:v6];
}

void __129__ICCloudContentTasteRequestListener_updateContentTasteForMediaItemsAndInvalidateLocalCache_configuration_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Error %{public}@ setting running content taste operation", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __129__ICCloudContentTasteRequestListener_updateContentTasteForMediaItemsAndInvalidateLocalCache_configuration_withCompletionHandler___block_invoke_11(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Finished running content taste update operation with error %{public}@.", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)setContentTaste:(int64_t)a3 forArtistStoreID:(int64_t)a4 persistentID:(int64_t)a5 timeStamp:(id)a6 configuration:(id)a7 withCompletionHandler:(id)a8
{
  v14 = a6;
  v15 = a7;
  v16 = a8;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __130__ICCloudContentTasteRequestListener_setContentTaste_forArtistStoreID_persistentID_timeStamp_configuration_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7BF7798;
  v25 = a4;
  v26 = a3;
  v27 = a5;
  block[4] = self;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v18 = v15;
  v19 = v14;
  v20 = v16;
  dispatch_async(accessQueue, block);
}

void __130__ICCloudContentTasteRequestListener_setContentTaste_forArtistStoreID_persistentID_timeStamp_configuration_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __130__ICCloudContentTasteRequestListener_setContentTaste_forArtistStoreID_persistentID_timeStamp_configuration_withCompletionHandler___block_invoke_2;
  v15[3] = &unk_1E7BF7658;
  v3 = *(a1 + 56);
  v17 = *(a1 + 64);
  v16 = v3;
  v4 = [v2 remoteObjectProxyWithErrorHandler:v15];
  v6 = *(a1 + 64);
  v5 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __130__ICCloudContentTasteRequestListener_setContentTaste_forArtistStoreID_persistentID_timeStamp_configuration_withCompletionHandler___block_invoke_10;
  v10[3] = &unk_1E7BF7770;
  v13 = v6;
  v14 = v7;
  v11 = v8;
  v12 = *(a1 + 56);
  [v4 setContentTaste:v5 forArtistStoreID:v6 persistentID:v7 timeStamp:v11 configuration:v9 withCompletionHandler:v10];
}

void __130__ICCloudContentTasteRequestListener_setContentTaste_forArtistStoreID_persistentID_timeStamp_configuration_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Error %{public}@ setting content taste type on artist %lld.", &v7, 0x16u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void __130__ICCloudContentTasteRequestListener_setContentTaste_forArtistStoreID_persistentID_timeStamp_configuration_withCompletionHandler___block_invoke_10(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[6];
    v6 = a1[7];
    v7 = a1[4];
    v9 = 134218754;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Set content taste type on artist storeID %lld, persistentID %lld, timeStamp %{public}@ with error %{public}@.", &v9, 0x2Au);
  }

  v8 = a1[5];
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }
}

- (void)setContentTaste:(int64_t)a3 forArtistStoreID:(int64_t)a4 configuration:(id)a5 withCompletionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__ICCloudContentTasteRequestListener_setContentTaste_forArtistStoreID_configuration_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7BF7748;
  v17 = v11;
  v18 = a4;
  v19 = a3;
  block[4] = self;
  v16 = v10;
  v13 = v10;
  v14 = v11;
  dispatch_async(accessQueue, block);
}

void __107__ICCloudContentTasteRequestListener_setContentTaste_forArtistStoreID_configuration_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __107__ICCloudContentTasteRequestListener_setContentTaste_forArtistStoreID_configuration_withCompletionHandler___block_invoke_2;
  v11[3] = &unk_1E7BF7658;
  v3 = *(a1 + 48);
  v13 = *(a1 + 56);
  v12 = v3;
  v4 = [v2 remoteObjectProxyWithErrorHandler:v11];
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __107__ICCloudContentTasteRequestListener_setContentTaste_forArtistStoreID_configuration_withCompletionHandler___block_invoke_9;
  v8[3] = &unk_1E7BF7658;
  v10 = v6;
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  [v4 setContentTaste:v5 forArtistStoreID:v6 configuration:v7 withCompletionHandler:v8];
}

void __107__ICCloudContentTasteRequestListener_setContentTaste_forArtistStoreID_configuration_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Error %{public}@ setting content taste type on artist %lld.", &v7, 0x16u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void __107__ICCloudContentTasteRequestListener_setContentTaste_forArtistStoreID_configuration_withCompletionHandler___block_invoke_9(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v7 = 134218242;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Set content taste type on artist %lld with error %{public}@.", &v7, 0x16u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

- (void)setContentTaste:(int64_t)a3 forAlbumStoreID:(int64_t)a4 persistentID:(int64_t)a5 timeStamp:(id)a6 configuration:(id)a7 withCompletionHandler:(id)a8
{
  v14 = a6;
  v15 = a7;
  v16 = a8;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __129__ICCloudContentTasteRequestListener_setContentTaste_forAlbumStoreID_persistentID_timeStamp_configuration_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7BF7798;
  v25 = a4;
  v26 = a3;
  v27 = a5;
  block[4] = self;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v18 = v15;
  v19 = v14;
  v20 = v16;
  dispatch_async(accessQueue, block);
}

void __129__ICCloudContentTasteRequestListener_setContentTaste_forAlbumStoreID_persistentID_timeStamp_configuration_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __129__ICCloudContentTasteRequestListener_setContentTaste_forAlbumStoreID_persistentID_timeStamp_configuration_withCompletionHandler___block_invoke_2;
  v15[3] = &unk_1E7BF7658;
  v3 = *(a1 + 56);
  v17 = *(a1 + 64);
  v16 = v3;
  v4 = [v2 remoteObjectProxyWithErrorHandler:v15];
  v6 = *(a1 + 64);
  v5 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __129__ICCloudContentTasteRequestListener_setContentTaste_forAlbumStoreID_persistentID_timeStamp_configuration_withCompletionHandler___block_invoke_8;
  v10[3] = &unk_1E7BF7770;
  v13 = v6;
  v14 = v7;
  v11 = v8;
  v12 = *(a1 + 56);
  [v4 setContentTaste:v5 forAlbumStoreID:v6 persistentID:v7 timeStamp:v11 configuration:v9 withCompletionHandler:v10];
}

void __129__ICCloudContentTasteRequestListener_setContentTaste_forAlbumStoreID_persistentID_timeStamp_configuration_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Error %{public}@ setting content taste type on album %lld.", &v7, 0x16u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void __129__ICCloudContentTasteRequestListener_setContentTaste_forAlbumStoreID_persistentID_timeStamp_configuration_withCompletionHandler___block_invoke_8(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[6];
    v6 = a1[7];
    v7 = a1[4];
    v9 = 134218754;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Set content taste type on album storeID %lld, persistentID %lld, timeStamp %{public}@ with error %{public}@.", &v9, 0x2Au);
  }

  v8 = a1[5];
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }
}

- (void)setContentTaste:(int64_t)a3 forAlbumStoreID:(int64_t)a4 configuration:(id)a5 withCompletionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__ICCloudContentTasteRequestListener_setContentTaste_forAlbumStoreID_configuration_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7BF7748;
  v17 = v11;
  v18 = a4;
  v19 = a3;
  block[4] = self;
  v16 = v10;
  v13 = v10;
  v14 = v11;
  dispatch_async(accessQueue, block);
}

void __106__ICCloudContentTasteRequestListener_setContentTaste_forAlbumStoreID_configuration_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __106__ICCloudContentTasteRequestListener_setContentTaste_forAlbumStoreID_configuration_withCompletionHandler___block_invoke_2;
  v11[3] = &unk_1E7BF7658;
  v3 = *(a1 + 48);
  v13 = *(a1 + 56);
  v12 = v3;
  v4 = [v2 remoteObjectProxyWithErrorHandler:v11];
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __106__ICCloudContentTasteRequestListener_setContentTaste_forAlbumStoreID_configuration_withCompletionHandler___block_invoke_7;
  v8[3] = &unk_1E7BF7658;
  v10 = v6;
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  [v4 setContentTaste:v5 forAlbumStoreID:v6 configuration:v7 withCompletionHandler:v8];
}

void __106__ICCloudContentTasteRequestListener_setContentTaste_forAlbumStoreID_configuration_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Error %{public}@ setting content taste type on album %lld.", &v7, 0x16u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void __106__ICCloudContentTasteRequestListener_setContentTaste_forAlbumStoreID_configuration_withCompletionHandler___block_invoke_7(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v7 = 134218242;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Set content taste type on album %lld with error %{public}@.", &v7, 0x16u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

- (void)setContentTaste:(int64_t)a3 forPlaylistGlobalID:(id)a4 persistentID:(int64_t)a5 timeStamp:(id)a6 configuration:(id)a7 withCompletionHandler:(id)a8
{
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __133__ICCloudContentTasteRequestListener_setContentTaste_forPlaylistGlobalID_persistentID_timeStamp_configuration_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7BF7720;
  block[4] = self;
  v24 = v14;
  v27 = v17;
  v28 = a3;
  v29 = a5;
  v25 = v15;
  v26 = v16;
  v19 = v16;
  v20 = v15;
  v21 = v17;
  v22 = v14;
  dispatch_async(accessQueue, block);
}

void __133__ICCloudContentTasteRequestListener_setContentTaste_forPlaylistGlobalID_persistentID_timeStamp_configuration_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __133__ICCloudContentTasteRequestListener_setContentTaste_forPlaylistGlobalID_persistentID_timeStamp_configuration_withCompletionHandler___block_invoke_2;
  v15[3] = &unk_1E7BFA490;
  v16 = *(a1 + 40);
  v17 = *(a1 + 64);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v15];
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __133__ICCloudContentTasteRequestListener_setContentTaste_forPlaylistGlobalID_persistentID_timeStamp_configuration_withCompletionHandler___block_invoke_6;
  v11[3] = &unk_1E7BF76F8;
  v9 = v6;
  v10 = *(a1 + 80);
  v12 = v9;
  v14 = v10;
  v13 = *(a1 + 64);
  [v3 setContentTaste:v4 forPlaylistGlobalID:v9 persistentID:v5 timeStamp:v7 configuration:v8 withCompletionHandler:v11];
}

void __133__ICCloudContentTasteRequestListener_setContentTaste_forPlaylistGlobalID_persistentID_timeStamp_configuration_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Error %{public}@ setting content taste type on playlist %{public}@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void __133__ICCloudContentTasteRequestListener_setContentTaste_forPlaylistGlobalID_persistentID_timeStamp_configuration_withCompletionHandler___block_invoke_6(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[6];
    v8 = 138543874;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Set content taste type on global playlist %{public}@, persistentID %lld with error %{public}@.", &v8, 0x20u);
  }

  v7 = a1[5];
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

- (void)setContentTaste:(int64_t)a3 forPlaylistGlobalID:(id)a4 configuration:(id)a5 withCompletionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __110__ICCloudContentTasteRequestListener_setContentTaste_forPlaylistGlobalID_configuration_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7BF76D0;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a3;
  v19 = v11;
  v14 = v11;
  v15 = v12;
  v16 = v10;
  dispatch_async(accessQueue, block);
}

void __110__ICCloudContentTasteRequestListener_setContentTaste_forPlaylistGlobalID_configuration_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __110__ICCloudContentTasteRequestListener_setContentTaste_forPlaylistGlobalID_configuration_withCompletionHandler___block_invoke_2;
  v10[3] = &unk_1E7BFA490;
  v11 = *(a1 + 40);
  v12 = *(a1 + 56);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v10];
  v4 = *(a1 + 64);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __110__ICCloudContentTasteRequestListener_setContentTaste_forPlaylistGlobalID_configuration_withCompletionHandler___block_invoke_5;
  v7[3] = &unk_1E7BFA490;
  v8 = v5;
  v9 = *(a1 + 56);
  [v3 setContentTaste:v4 forPlaylistGlobalID:v8 configuration:v6 withCompletionHandler:v7];
}

void __110__ICCloudContentTasteRequestListener_setContentTaste_forPlaylistGlobalID_configuration_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Error %{public}@ setting content taste type on playlist %{public}@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void __110__ICCloudContentTasteRequestListener_setContentTaste_forPlaylistGlobalID_configuration_withCompletionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Set content taste type on global playlist %{public}@ with error %{public}@.", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

- (void)setContentTaste:(int64_t)a3 forMediaItem:(int64_t)a4 storeIdentifier:(int64_t)a5 persistentID:(int64_t)a6 timeStamp:(id)a7 configuration:(id)a8 withCompletionHandler:(id)a9
{
  v15 = a7;
  v16 = a8;
  v17 = a9;
  accessQueue = self->_accessQueue;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __142__ICCloudContentTasteRequestListener_setContentTaste_forMediaItem_storeIdentifier_persistentID_timeStamp_configuration_withCompletionHandler___block_invoke;
  v22[3] = &unk_1E7BF76A8;
  v26 = a5;
  v27 = a3;
  v28 = a4;
  v29 = a6;
  v22[4] = self;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v19 = v16;
  v20 = v15;
  v21 = v17;
  dispatch_async(accessQueue, v22);
}

void __142__ICCloudContentTasteRequestListener_setContentTaste_forMediaItem_storeIdentifier_persistentID_timeStamp_configuration_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __142__ICCloudContentTasteRequestListener_setContentTaste_forMediaItem_storeIdentifier_persistentID_timeStamp_configuration_withCompletionHandler___block_invoke_2;
  v14[3] = &unk_1E7BF7658;
  v3 = *(a1 + 56);
  v16 = *(a1 + 64);
  v15 = v3;
  v4 = [v2 remoteObjectProxyWithErrorHandler:v14];
  v6 = *(a1 + 64);
  v5 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a1 + 88);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __142__ICCloudContentTasteRequestListener_setContentTaste_forMediaItem_storeIdentifier_persistentID_timeStamp_configuration_withCompletionHandler___block_invoke_4;
  v11[3] = &unk_1E7BF7658;
  v13 = v6;
  v12 = *(a1 + 56);
  [v4 setContentTaste:v5 forMediaItem:v7 storeIdentifier:v6 persistentID:v8 timeStamp:v9 configuration:v10 withCompletionHandler:v11];
}

void __142__ICCloudContentTasteRequestListener_setContentTaste_forMediaItem_storeIdentifier_persistentID_timeStamp_configuration_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Error %{public}@ setting content taste type on item %lld.", &v7, 0x16u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void __142__ICCloudContentTasteRequestListener_setContentTaste_forMediaItem_storeIdentifier_persistentID_timeStamp_configuration_withCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v7 = 134218242;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Set content taste type on media item with storeID %lld with error %{public}@.", &v7, 0x16u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

- (void)setContentTaste:(int64_t)a3 forMediaItem:(int64_t)a4 storeIdentifier:(int64_t)a5 configuration:(id)a6 timeStamp:(id)a7 withCompletionHandler:(id)a8
{
  v13 = a6;
  v14 = a7;
  v15 = a8;
  accessQueue = self->_accessQueue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __129__ICCloudContentTasteRequestListener_setContentTaste_forMediaItem_storeIdentifier_configuration_timeStamp_withCompletionHandler___block_invoke;
  v20[3] = &unk_1E7BF7680;
  v24 = a5;
  v25 = a3;
  v20[4] = self;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v17 = v14;
  v18 = v13;
  v19 = v15;
  dispatch_async(accessQueue, v20);
}

void __129__ICCloudContentTasteRequestListener_setContentTaste_forMediaItem_storeIdentifier_configuration_timeStamp_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __129__ICCloudContentTasteRequestListener_setContentTaste_forMediaItem_storeIdentifier_configuration_timeStamp_withCompletionHandler___block_invoke_2;
  v12[3] = &unk_1E7BF7658;
  v3 = *(a1 + 56);
  v14 = *(a1 + 64);
  v13 = v3;
  v4 = [v2 remoteObjectProxyWithErrorHandler:v12];
  v6 = *(a1 + 64);
  v5 = *(a1 + 72);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __129__ICCloudContentTasteRequestListener_setContentTaste_forMediaItem_storeIdentifier_configuration_timeStamp_withCompletionHandler___block_invoke_3;
  v9[3] = &unk_1E7BF7658;
  v11 = v6;
  v10 = *(a1 + 56);
  [v4 setContentTaste:v5 forMediaItem:0 storeIdentifier:v6 configuration:v7 timeStamp:v8 withCompletionHandler:v9];
}

void __129__ICCloudContentTasteRequestListener_setContentTaste_forMediaItem_storeIdentifier_configuration_timeStamp_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Error %{public}@ setting content taste type on item %lld.", &v7, 0x16u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void __129__ICCloudContentTasteRequestListener_setContentTaste_forMediaItem_storeIdentifier_configuration_timeStamp_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v7 = 134218242;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Set content taste type on item %lld with error %{public}@.", &v7, 0x16u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

- (ICCloudContentTasteRequestListener)init
{
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_ERROR, "-init is not supported - use sharedCloudContentTasteRequestListener", v5, 2u);
  }

  return 0;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = ICCloudContentTasteRequestListener;
  v2 = [(ICCloudContentTasteRequestListener *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesCloud.ICCloudContentTasteRequestListener.MediaContentTaste", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    [(ICCloudContentTasteRequestListener *)v2 _setupContentTasteServiceConnection];
  }

  return v2;
}

+ (id)sharedCloudContentTasteRequestListener
{
  if (sharedCloudContentTasteRequestListener_onceToken != -1)
  {
    dispatch_once(&sharedCloudContentTasteRequestListener_onceToken, &__block_literal_global_29461);
  }

  v3 = sharedCloudContentTasteRequestListener__sharedInstance;

  return v3;
}

uint64_t __76__ICCloudContentTasteRequestListener_sharedCloudContentTasteRequestListener__block_invoke()
{
  v0 = [[ICCloudContentTasteRequestListener alloc] _init];
  v1 = sharedCloudContentTasteRequestListener__sharedInstance;
  sharedCloudContentTasteRequestListener__sharedInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end