@interface NSFileManager
@end

@implementation NSFileManager

uint64_t __63__NSFileManager_PosterFoundation__pf_replaceURL_withURL_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeItemAtURL:*(a1 + 40) error:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 removeItemAtURL:v3 error:0];
}

uint64_t __63__NSFileManager_PosterFoundation__pf_replaceURL_withURL_error___block_invoke_2(uint64_t result)
{
  v1 = result;
  if (*(*(*(result + 64) + 8) + 24) == 1)
  {
    result = [*(result + 32) moveItemAtURL:*(result + 40) toURL:*(result + 48) error:0];
  }

  if (*(*(*(v1 + 72) + 8) + 24) == 1)
  {
    result = [*(v1 + 32) moveItemAtURL:*(v1 + 56) toURL:*(v1 + 40) error:0];
  }

  if (*(*(*(v1 + 80) + 8) + 24) == 1)
  {
    v2 = *(v1 + 32);
    v3 = *(v1 + 48);

    return [v2 removeItemAtURL:v3 error:0];
  }

  return result;
}

@end