@interface PXSharedAlbumContactMatcher
+ (id)sharedMatcher;
- (PXSharedAlbumContactMatcher)init;
- (id)_fetchContactMatchingIdentifier:(id)a3 keysToFetch:(id)a4;
- (id)_fetchContactsMatchingIdentifiers:(id)a3 keysToFetch:(id)a4;
- (id)contactsMatchingSubscriberInfos:(id)a3 keysToFetch:(id)a4;
- (void)_observeContactStoreNotifications;
- (void)contactsDidChange:(id)a3;
- (void)requestContactPhotoForContact:(id)a3 diameter:(double)a4 resultHandler:(id)a5;
@end

@implementation PXSharedAlbumContactMatcher

- (void)contactsDidChange:(id)a3
{
  [(NSCache *)self->_contactIdentifiersBySubscriberIdentifiers removeAllObjects];
  contactPhotosCache = self->_contactPhotosCache;

  [(NSCache *)contactPhotosCache removeAllObjects];
}

- (id)_fetchContactsMatchingIdentifiers:(id)a3 keysToFetch:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695CD58];
  v7 = a4;
  v8 = [v6 predicateForContactsWithIdentifiers:a3];
  contactStore = self->_contactStore;
  v14 = 0;
  v10 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:v8 keysToFetch:v7 error:&v14];

  v11 = v14;
  if (v11)
  {
    v12 = PLUIGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[PXSharedAlbumContactMatcher _fetchContactsMatchingIdentifiers:keysToFetch:]";
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "%s: Error while fetching contacts: %@", buf, 0x16u);
    }
  }

  return v10;
}

- (id)_fetchContactMatchingIdentifier:(id)a3 keysToFetch:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  contactStore = self->_contactStore;
  v9 = 0;
  v5 = [(CNContactStore *)contactStore unifiedContactWithIdentifier:a3 keysToFetch:a4 error:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[PXSharedAlbumContactMatcher _fetchContactMatchingIdentifier:keysToFetch:]";
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "%s: Error while fetching contact: %@", buf, 0x16u);
    }
  }

  return v5;
}

- (void)requestContactPhotoForContact:(id)a3 diameter:(double)a4 resultHandler:(id)a5
{
  v28[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [v8 identifier];
  v11 = [v10 stringByAppendingFormat:@"-%d", a4];

  v12 = [(NSCache *)self->_contactPhotosCache objectForKey:v11];
  if (v12)
  {
    v9[2](v9, v12);
  }

  else
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v14 = [(NSCache *)self->_avatarRendererByContactImageDiameter objectForKey:v13];
    if (!v14)
    {
      v15 = objc_alloc(MEMORY[0x1E695D098]);
      v16 = [MEMORY[0x1E695D0A8] defaultSettings];
      v14 = [v15 initWithSettings:v16];

      [(NSCache *)self->_avatarRendererByContactImageDiameter setObject:v14 forKey:v13];
    }

    v17 = [MEMORY[0x1E69DCEB0] px_mainScreen];
    [v17 scale];
    v19 = v18;

    v20 = [MEMORY[0x1E69DC668] sharedApplication];
    v21 = [v20 userInterfaceLayoutDirection] == 1;

    v22 = [MEMORY[0x1E695D0B0] scopeWithPointSize:v21 scale:0 rightToLeft:a4 style:{a4, v19}];
    v28[0] = v8;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __84__PXSharedAlbumContactMatcher_requestContactPhotoForContact_diameter_resultHandler___block_invoke;
    v25[3] = &unk_1E772F100;
    v25[4] = self;
    v26 = v11;
    v27 = v9;
    v24 = [v14 renderAvatarsForContacts:v23 scope:v22 imageHandler:v25];
  }
}

void __84__PXSharedAlbumContactMatcher_requestContactPhotoForContact_diameter_resultHandler___block_invoke(void *a1, id a2)
{
  v4 = a2;
  v7 = a2;
  v5 = [v7 CGImage];
  Height = CGImageGetHeight(v5);
  [*(a1[4] + 32) setObject:v7 forKey:a1[5] cost:CGImageGetBytesPerRow(v5) * Height];
  (*(a1[6] + 16))();
}

- (id)contactsMatchingSubscriberInfos:(id)a3 keysToFetch:(id)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v47 = a4;
  v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v58 objects:v63 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v59;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v59 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v58 + 1) + 8 * i);
        v14 = [v13 identifier];
        if (v14)
        {
          v15 = [(NSCache *)self->_contactIdentifiersBySubscriberIdentifiers objectForKey:v14];
          v16 = v15;
          if (v15)
          {
            v17 = v15 == @"PXSharedAlbumContactNotFoundIdentifier";
          }

          else
          {
            v17 = 1;
          }

          if (!v17)
          {
            [v6 addObject:v15];
            [v7 addObject:v13];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v58 objects:v63 count:16];
    }

    while (v10);
  }

  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = self;
  v43 = v6;
  v20 = [(PXSharedAlbumContactMatcher *)self _fetchContactsMatchingIdentifiers:v6 keysToFetch:v47];
  v21 = [v7 count];
  if (v21 == [v20 count])
  {
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __75__PXSharedAlbumContactMatcher_contactsMatchingSubscriberInfos_keysToFetch___block_invoke;
    v54[3] = &unk_1E772F0D8;
    v55 = v18;
    v56 = v7;
    v57 = v20;
    [v57 enumerateObjectsUsingBlock:v54];
  }

  v41 = v20;
  v42 = v7;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v22 = v8;
  v23 = [v22 countByEnumeratingWithState:&v50 objects:v62 count:16];
  v24 = v46;
  if (v23)
  {
    v25 = v23;
    v49 = *v51;
    v44 = v22;
    v45 = v18;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v51 != v49)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v50 + 1) + 8 * j);
        v28 = [v27 identifier];
        v29 = [v18 objectForKeyedSubscript:v28];
        v30 = [(NSCache *)v19->_contactIdentifiersBySubscriberIdentifiers objectForKey:v28];
        v31 = v30;
        if (v29)
        {
          [v24 addObject:v29];
        }

        else if (v30 != @"PXSharedAlbumContactNotFoundIdentifier")
        {
          v32 = [(PXSharedAlbumContactMatcher *)v19 _fetchContactMatchingSubscriberInfo:v27 keysToFetch:v47];
          if (v32)
          {
            [v24 addObject:v32];
          }

          contactIdentifiersBySubscriberIdentifiers = v19->_contactIdentifiersBySubscriberIdentifiers;
          v34 = [v32 identifier];
          v35 = v34;
          if (v34)
          {
            v36 = v34;
          }

          else
          {
            v36 = @"PXSharedAlbumContactNotFoundIdentifier";
          }

          v37 = [v27 identifier];
          v38 = contactIdentifiersBySubscriberIdentifiers;
          v24 = v46;
          v39 = v36;
          v19 = self;
          [(NSCache *)v38 setObject:v39 forKey:v37];

          v22 = v44;
          v18 = v45;
        }
      }

      v25 = [v22 countByEnumeratingWithState:&v50 objects:v62 count:16];
    }

    while (v25);
  }

  return v24;
}

void __75__PXSharedAlbumContactMatcher_contactsMatchingSubscriberInfos_keysToFetch___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [*(a1 + 48) objectAtIndexedSubscript:?];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  v7 = [v6 identifier];
  [v5 setObject:v8 forKeyedSubscript:v7];
}

- (void)_observeContactStoreNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_contactsDidChange_ name:*MEMORY[0x1E695C3D8] object:self->_contactStore];
}

- (PXSharedAlbumContactMatcher)init
{
  v12.receiver = self;
  v12.super_class = PXSharedAlbumContactMatcher;
  v2 = [(PXSharedAlbumContactMatcher *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    contactIdentifiersBySubscriberIdentifiers = v2->_contactIdentifiersBySubscriberIdentifiers;
    v2->_contactIdentifiersBySubscriberIdentifiers = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    contactPhotosCache = v2->_contactPhotosCache;
    v2->_contactPhotosCache = v5;

    [(NSCache *)v2->_contactPhotosCache setTotalCostLimit:0x200000];
    v7 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    avatarRendererByContactImageDiameter = v2->_avatarRendererByContactImageDiameter;
    v2->_avatarRendererByContactImageDiameter = v7;

    v9 = +[PXPeopleUtilities sharedContactStore];
    contactStore = v2->_contactStore;
    v2->_contactStore = v9;

    [(PXSharedAlbumContactMatcher *)v2 _observeContactStoreNotifications];
  }

  return v2;
}

+ (id)sharedMatcher
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__PXSharedAlbumContactMatcher_sharedMatcher__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedMatcher_onceToken != -1)
  {
    dispatch_once(&sharedMatcher_onceToken, block);
  }

  v2 = sharedMatcher_sharedMatcher;

  return v2;
}

void __44__PXSharedAlbumContactMatcher_sharedMatcher__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedMatcher_sharedMatcher;
  sharedMatcher_sharedMatcher = v1;
}

@end