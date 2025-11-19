@interface PLAllowedForCameraPreviewSortDescriptors
@end

@implementation PLAllowedForCameraPreviewSortDescriptors

void ___PLAllowedForCameraPreviewSortDescriptors_block_invoke()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = [PLFetchingAlbum sortDescriptorsForAlbumKind:1613];
  v1 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = v0;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 key];

        if (v8)
        {
          v9 = MEMORY[0x1E696AEB0];
          v10 = [v7 key];
          v11 = [v9 sortDescriptorWithKey:v10 ascending:{objc_msgSend(v7, "ascending") ^ 1}];
          [v1 addObject:v11];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v12 = _PLAllowedForCameraPreviewSortDescriptors_s_descriptors;
  _PLAllowedForCameraPreviewSortDescriptors_s_descriptors = v1;
}

@end