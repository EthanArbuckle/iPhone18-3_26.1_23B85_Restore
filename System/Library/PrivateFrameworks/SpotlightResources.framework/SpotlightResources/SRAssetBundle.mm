@interface SRAssetBundle
- (BOOL)shouldUpdateForBundleVersions:(id)a3;
- (NSArray)contentTypes;
- (SRAssetBundle)initWithLocale:(id)a3 bundleVersions:(id)a4;
- (id)assetsWithContentType:(id)a3;
- (void)loadAssetsWithContentType:(id)a3 contentName:(id)a4 contentPath:(id)a5;
@end

@implementation SRAssetBundle

- (SRAssetBundle)initWithLocale:(id)a3 bundleVersions:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SRAssetBundle;
  v9 = [(SRAssetBundle *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_locale, a3);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    contents = v10->_contents;
    v10->_contents = v11;

    objc_storeStrong(&v10->_bundleVersions, a4);
    v10->_contentsLock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (BOOL)shouldUpdateForBundleVersions:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__SRAssetBundle_shouldUpdateForBundleVersions___block_invoke;
  v6[3] = &unk_1E7A2AD48;
  v6[4] = self;
  v6[5] = &v7;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
  LOBYTE(self) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return self;
}

void __47__SRAssetBundle_shouldUpdateForBundleVersions___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v7];

  if (v9)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__SRAssetBundle_shouldUpdateForBundleVersions___block_invoke_2;
    v12[3] = &unk_1E7A2AD20;
    v12[4] = *(a1 + 32);
    v10 = v7;
    v11 = *(a1 + 40);
    v13 = v10;
    v14 = v11;
    v15 = a4;
    [v8 enumerateKeysAndObjectsUsingBlock:v12];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __47__SRAssetBundle_shouldUpdateForBundleVersions___block_invoke_2(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v9 = [v8 objectForKeyedSubscript:v14];

  if (v9)
  {
    v10 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
    v11 = [v10 objectForKeyedSubscript:v14];

    if (!v11 || v7 && [v11 compare:v7])
    {
      v12 = a1[7];
      *(*(a1[6] + 8) + 24) = 1;
      *v12 = 1;
      *a4 = 1;
    }
  }

  else
  {
    v13 = a1[7];
    *(*(a1[6] + 8) + 24) = 1;
    *v13 = 1;
    *a4 = 1;
  }
}

- (void)loadAssetsWithContentType:(id)a3 contentName:(id)a4 contentPath:(id)a5
{
  v13 = a3;
  v8 = a5;
  v9 = a4;
  os_unfair_lock_lock(&self->_contentsLock);
  v10 = [(NSMutableDictionary *)self->_contents objectForKeyedSubscript:v13];

  if (!v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSMutableDictionary *)self->_contents setObject:v11 forKeyedSubscript:v13];
  }

  v12 = [(NSMutableDictionary *)self->_contents objectForKeyedSubscript:v13];
  [v12 setObject:v8 forKeyedSubscript:v9];

  os_unfair_lock_unlock(&self->_contentsLock);
}

- (NSArray)contentTypes
{
  os_unfair_lock_lock(&self->_contentsLock);
  v3 = [(NSMutableDictionary *)self->_contents allKeys];
  os_unfair_lock_unlock(&self->_contentsLock);

  return v3;
}

- (id)assetsWithContentType:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_contentsLock);
  v5 = [(NSMutableDictionary *)self->_contents objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_contents objectForKeyedSubscript:v4];
    v7 = [v6 allValues];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  os_unfair_lock_unlock(&self->_contentsLock);

  return v7;
}

@end