@interface PGKeySongExtractor
+ (id)_keySongIDFromMemory:(id)a3 forSongCatalog:(id)a4;
+ (id)appleMusicKeySongIDFromMemory:(id)a3;
+ (id)flexMusicKeySongIDFromMemory:(id)a3;
@end

@implementation PGKeySongExtractor

+ (id)_keySongIDFromMemory:(id)a3 forSongCatalog:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a3 photosGraphProperties];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"storyRecipeData"];
    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277D3B500]);
      v17 = 0;
      v10 = [v9 unarchivedRecipeWithData:v8 error:&v17];
      v11 = v17;
      if (v10)
      {
        v12 = [v10 seedSongIdentifiersByCatalog];
        v13 = [v12 objectForKeyedSubscript:v5];
      }

      else
      {
        v14 = +[PGLogging sharedLogging];
        v12 = [v14 loggingConnection];

        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v19 = v11;
          _os_log_error_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Failed to unarchive recipe from recipe data, error: %@", buf, 0xCu);
        }

        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)flexMusicKeySongIDFromMemory:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _keySongIDFromMemory:v3 forSongCatalog:*MEMORY[0x277D3B5D8]];

  return v4;
}

+ (id)appleMusicKeySongIDFromMemory:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _keySongIDFromMemory:v3 forSongCatalog:*MEMORY[0x277D3B5D0]];

  return v4;
}

@end