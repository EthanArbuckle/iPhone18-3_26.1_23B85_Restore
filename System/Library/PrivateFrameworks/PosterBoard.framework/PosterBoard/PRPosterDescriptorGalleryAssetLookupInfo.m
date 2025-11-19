@interface PRPosterDescriptorGalleryAssetLookupInfo
@end

@implementation PRPosterDescriptorGalleryAssetLookupInfo

id __94__PRPosterDescriptorGalleryAssetLookupInfo_Project__pbf_imageFromBundle_displayContext_error___block_invoke(void *a1)
{
  v2 = [MEMORY[0x277D75C80] pbf_traitCollectionForDisplayContext:a1[4]];
  v3 = [objc_opt_class() _assetManagerCache];
  v4 = [v3 objectForKey:a1[6]];
  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277D75DE0]);
    v6 = a1[6];
    v7 = [v2 userInterfaceIdiom];
    v8 = *(a1[8] + 8);
    obj = *(v8 + 40);
    v4 = [v5 initWithURL:v6 idiom:v7 error:&obj];
    objc_storeStrong((v8 + 40), obj);
    [v3 setObject:v4 forKey:a1[6]];
  }

  v9 = [v4 imageNamed:a1[7] withTrait:v2];

  return v9;
}

@end