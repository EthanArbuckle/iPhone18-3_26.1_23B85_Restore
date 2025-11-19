@interface MTImageAnalyzer
- (MTImageAnalyzer)init;
- (id)addImage:(id)a3 forKey:(id)a4;
- (id)colorThemeForArtwork:(id)a3;
- (id)colorThemeForPodcastUuid:(id)a3;
@end

@implementation MTImageAnalyzer

- (MTImageAnalyzer)init
{
  v6.receiver = self;
  v6.super_class = MTImageAnalyzer;
  v2 = [(MTImageAnalyzer *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    memoryCache = v2->_memoryCache;
    v2->_memoryCache = v3;
  }

  return v2;
}

- (id)colorThemeForPodcastUuid:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [v5 BOOLForKey:*MEMORY[0x277D3DDA8]];

  if (v6)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__7;
    v26 = __Block_byref_object_dispose__7;
    v27 = [(NSCache *)self->_memoryCache objectForKey:v4];
    v7 = v23[5];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v9 = [MEMORY[0x277D3DAE8] sharedInstance];
      v10 = [v9 mainOrPrivateContext];

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __44__MTImageAnalyzer_colorThemeForPodcastUuid___block_invoke;
      v18[3] = &unk_2782BE6A8;
      v21 = &v22;
      v11 = v10;
      v19 = v11;
      v12 = v4;
      v20 = v12;
      [v11 performBlockAndWait:v18];
      v13 = v23[5];
      if (v13)
      {
        [(NSCache *)self->_memoryCache setObject:v13 forKey:v12];
        v8 = v23[5];
      }

      else
      {
        v14 = _MTLogCategoryDefault();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v29 = v12;
          _os_log_impl(&dword_21B365000, v14, OS_LOG_TYPE_DEFAULT, "Artwork has not yet been analyzed for podcast with uuid: %@", buf, 0xCu);
        }

        v15 = +[MTImageStore defaultStore];
        v16 = [v15 imageForKey:v12];

        v8 = [(MTImageAnalyzer *)self addImage:v16 forKey:v12];
      }
    }

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __44__MTImageAnalyzer_colorThemeForPodcastUuid___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) colorThemeForUuid:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)addImage:(id)a3 forKey:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if ([v7 length])
    {
      v9 = [v6 squareImage];

      [v9 scale];
      v11 = v10;
      [v9 size];
      v13 = v12;
      v15 = v14;
      v16 = v11 * v14;
      if (v11 * v12 <= 3000.0 && v16 <= 3000.0)
      {
        v18 = [(MTImageAnalyzer *)self colorThemeForArtwork:v9];
        if (v18)
        {
          v20 = [MEMORY[0x277D3DAE8] sharedInstance];
          v21 = [v20 privateQueueContext];

          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __35__MTImageAnalyzer_addImage_forKey___block_invoke;
          v26[3] = &unk_2782BDDB8;
          v22 = v18;
          v27 = v22;
          v23 = v8;
          v28 = v23;
          v29 = v21;
          v24 = v21;
          [v24 performBlock:v26];
          [(NSCache *)self->_memoryCache setObject:v22 forKey:v23];
          v18 = v22;
        }

        v19 = v18;
      }

      else
      {
        v18 = _MTLogCategoryDefault();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v31 = v8;
          v32 = 2048;
          v33 = v13;
          v34 = 2048;
          v35 = v15;
          v36 = 2048;
          v37 = 0x40A7700000000000;
          _os_log_impl(&dword_21B365000, v18, OS_LOG_TYPE_DEFAULT, "Skipping color analysis for %@ since its too big ({%f,%f} > max size (px) of %f)...", buf, 0x2Au);
        }

        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
      v9 = v6;
    }
  }

  else
  {
    v9 = 0;
    v19 = 0;
  }

  return v19;
}

uint64_t __35__MTImageAnalyzer_addImage_forKey___block_invoke(void *a1)
{
  result = [MEMORY[0x277D3DB50] createOrUpdateTheme:a1[4] forUuid:a1[5] inMOC:a1[6]];
  if (result)
  {
    v3 = a1[6];

    return [v3 saveInCurrentBlock];
  }

  return result;
}

- (id)colorThemeForArtwork:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CD5D58];
    v4 = a3;
    v5 = [[v3 alloc] initWithImage:v4 algorithm:1];

    v6 = [v5 analyze];
    if (v6)
    {
      v7 = objc_opt_new();
      v8 = [v6 backgroundColor];
      [v7 setBackgroundColor:v8];

      v9 = [v6 primaryTextColor];
      [v7 setPrimaryTextColor:v9];

      v10 = [v6 secondaryTextColor];
      [v7 setSecondaryTextColor:v10];

      [v7 setIsBackgroundLight:{objc_msgSend(v6, "isBackgroundColorLight")}];
    }

    else
    {
      v11 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_21B365000, v11, OS_LOG_TYPE_DEFAULT, "Unable to analyze image colors.", v13, 2u);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end