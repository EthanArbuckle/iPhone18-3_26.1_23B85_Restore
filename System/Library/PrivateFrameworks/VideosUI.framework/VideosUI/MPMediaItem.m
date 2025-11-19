@interface MPMediaItem
@end

@implementation MPMediaItem

id __36__MPMediaItem_VideosUI__vui_credits__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) vui_stringForKey:{@"name", v11}];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

uint64_t __60__MPMediaItem_VideosUI__vui_isLocalCheckingSidebandLibrary___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) downloadState];
  *(*(*(a1 + 40) + 8) + 24) = result == 2;
  return result;
}

uint64_t __64__MPMediaItem_VideosUI__vui_isDownloadedOrDownloadingOrEnqueued__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) downloadState];
  v4 = result == 2 || (result & 0xFFFFFFFFFFFFFFFDLL) == 1;
  *(*(*(a1 + 40) + 8) + 24) = v4;
  return result;
}

void __59__MPMediaItem_VideosUI___vui_imageIdentifierWithImageType___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = [v0 initWithObjects:{*MEMORY[0x1E696FA48], *MEMORY[0x1E696FA98], 0}];
  v2 = _vui_imageIdentifierWithImageType____propertiesToFetch;
  _vui_imageIdentifierWithImageType____propertiesToFetch = v1;
}

@end