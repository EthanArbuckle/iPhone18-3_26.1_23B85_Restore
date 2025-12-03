@interface PGKeySongExtractor
+ (id)_keySongIDFromMemory:(id)memory forSongCatalog:(id)catalog;
+ (id)appleMusicKeySongIDFromMemory:(id)memory;
+ (id)flexMusicKeySongIDFromMemory:(id)memory;
@end

@implementation PGKeySongExtractor

+ (id)_keySongIDFromMemory:(id)memory forSongCatalog:(id)catalog
{
  v20 = *MEMORY[0x277D85DE8];
  catalogCopy = catalog;
  photosGraphProperties = [memory photosGraphProperties];
  v7 = photosGraphProperties;
  if (photosGraphProperties)
  {
    v8 = [photosGraphProperties objectForKeyedSubscript:@"storyRecipeData"];
    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277D3B500]);
      v17 = 0;
      v10 = [v9 unarchivedRecipeWithData:v8 error:&v17];
      v11 = v17;
      if (v10)
      {
        seedSongIdentifiersByCatalog = [v10 seedSongIdentifiersByCatalog];
        v13 = [seedSongIdentifiersByCatalog objectForKeyedSubscript:catalogCopy];
      }

      else
      {
        v14 = +[PGLogging sharedLogging];
        seedSongIdentifiersByCatalog = [v14 loggingConnection];

        if (os_log_type_enabled(seedSongIdentifiersByCatalog, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v19 = v11;
          _os_log_error_impl(&dword_22F0FC000, seedSongIdentifiersByCatalog, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Failed to unarchive recipe from recipe data, error: %@", buf, 0xCu);
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

+ (id)flexMusicKeySongIDFromMemory:(id)memory
{
  memoryCopy = memory;
  v4 = [objc_opt_class() _keySongIDFromMemory:memoryCopy forSongCatalog:*MEMORY[0x277D3B5D8]];

  return v4;
}

+ (id)appleMusicKeySongIDFromMemory:(id)memory
{
  memoryCopy = memory;
  v4 = [objc_opt_class() _keySongIDFromMemory:memoryCopy forSongCatalog:*MEMORY[0x277D3B5D0]];

  return v4;
}

@end