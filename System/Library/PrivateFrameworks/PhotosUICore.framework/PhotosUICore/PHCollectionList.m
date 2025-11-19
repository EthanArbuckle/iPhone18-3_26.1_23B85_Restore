@interface PHCollectionList
@end

@implementation PHCollectionList

void __109__PHCollectionList_PhotosUICore__px_otherAlbumsCollectionListIncludeDeleted_includeHidden_includeDuplicates___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = px_otherAlbumsCollectionListIncludeDeleted_includeHidden_includeDuplicates__otherAlbumsCollectionDictionary;
  px_otherAlbumsCollectionListIncludeDeleted_includeHidden_includeDuplicates__otherAlbumsCollectionDictionary = v0;
}

void __79__PHCollectionList_PhotosUICore__px_transientIdentifierForWellKnownFolderName___block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v2[0] = @"media-types";
  v2[1] = @"shared-albums";
  v3[0] = @"PXMediaTypesVirtualCollection";
  v3[1] = @"PXSharedAlbumsAndActivityVirtualCollection";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = px_transientIdentifierForWellKnownFolderName__transientIdentifiers;
  px_transientIdentifierForWellKnownFolderName__transientIdentifiers = v0;
}

@end