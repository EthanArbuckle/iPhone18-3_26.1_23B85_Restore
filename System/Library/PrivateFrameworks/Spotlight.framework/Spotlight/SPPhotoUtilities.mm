@interface SPPhotoUtilities
+ (BOOL)isImageOrVideoIdentifier:(id)identifier;
+ (id)allPhotoBundles;
+ (id)bundlesIndexingPhotos;
@end

@implementation SPPhotoUtilities

+ (id)bundlesIndexingPhotos
{
  if (bundlesIndexingPhotos_onceToken != -1)
  {
    +[SPPhotoUtilities bundlesIndexingPhotos];
  }

  v3 = bundlesIndexingPhotos_bundlesIndexingPhotos;

  return v3;
}

void __41__SPPhotoUtilities_bundlesIndexingPhotos__block_invoke()
{
  v5[5] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D65AE0];
  v5[0] = *MEMORY[0x277D65B58];
  v5[1] = v0;
  v1 = *MEMORY[0x277D65AA0];
  v5[2] = *MEMORY[0x277D65C00];
  v5[3] = v1;
  v5[4] = *MEMORY[0x277D65AB0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:5];
  v3 = bundlesIndexingPhotos_bundlesIndexingPhotos;
  bundlesIndexingPhotos_bundlesIndexingPhotos = v2;

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)allPhotoBundles
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SPPhotoUtilities_allPhotoBundles__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (allPhotoBundles_onceToken != -1)
  {
    dispatch_once(&allPhotoBundles_onceToken, block);
  }

  v2 = allPhotoBundles_allPhotoBundles;

  return v2;
}

void __35__SPPhotoUtilities_allPhotoBundles__block_invoke(uint64_t a1)
{
  v5 = SSBundleIdentifiersForSyndicatedPhotos();
  v2 = [*(a1 + 32) bundlesIndexingPhotos];
  v3 = [v5 arrayByAddingObjectsFromArray:v2];
  v4 = allPhotoBundles_allPhotoBundles;
  allPhotoBundles_allPhotoBundles = v3;
}

+ (BOOL)isImageOrVideoIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v4 = [MEMORY[0x277CE1CB8] typeWithIdentifier:identifierCopy];
  }

  else
  {
    v4 = 0;
  }

  if ([v4 conformsToType:*MEMORY[0x277CE1E00]])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 conformsToType:*MEMORY[0x277CE1DB0]];
  }

  return v5;
}

@end