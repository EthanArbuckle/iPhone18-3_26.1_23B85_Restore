@interface CopyURLAction
@end

@implementation CopyURLAction

uint64_t ___CopyURLAction_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
  v5 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v4];

  v6 = [v5 sharedLibrary];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 shareURL];
    v9 = v8;
    if (v8)
    {
      PXCopyURL(v8);
      v10 = [v9 absoluteString];
      _PresentAlert(@"URL Copied to Pasteboard", v10, v3);
    }

    else
    {
      _PresentAlert(@"Failed to Copy URL", @"No URL", v3);
    }
  }

  else
  {
    _PresentAlert(@"Failed to Copy URL", @"No Shared Library", v3);
  }

  return 1;
}

@end