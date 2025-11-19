@interface PHMemoryChangeRequest
@end

@implementation PHMemoryChangeRequest

id __115__PHMemoryChangeRequest_PhotosUICore__px_creationRequestForAssetCollection_displayTitleInfo_people_ignoreCuration___block_invoke(void *a1)
{
  v2 = *(*(a1[6] + 8) + 40);
  if (!v2)
  {
    v3 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:a1[4] options:a1[5]];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(a1[6] + 8) + 40);
  }

  return v2;
}

@end