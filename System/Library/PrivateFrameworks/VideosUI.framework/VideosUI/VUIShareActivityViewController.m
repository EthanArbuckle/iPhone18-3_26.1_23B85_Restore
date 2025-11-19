@interface VUIShareActivityViewController
@end

@implementation VUIShareActivityViewController

uint64_t __178__VUIShareActivityViewController_iOS_shareMediaItem_previewURLString_title_subtitle_imageURLStr_groupActivityMetadata_sourceView_sourceRect_userInterfaceStyle_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void __57__VUIShareActivityViewController_iOS_updateActivityItems__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateActivityItems:*(a1 + 32)];
}

void __66__VUIShareActivityViewController_iOS__prepareActivity_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v9)
    {
      v4 = [WeakRetained itemTitle];
      if (v4)
      {
        v5 = [*(a1 + 32) mailComposeViewController];
        [v5 setSubject:v4];
      }

      v6 = [*(a1 + 32) mailComposeViewController];
      [v6 setMessageBody:v9 isHTML:1];

      v7 = *(a1 + 40);
      if (v7)
      {
        (*(v7 + 16))();
      }
    }

    else
    {
      v8 = *(a1 + 40);
      if (v8)
      {
        (*(v8 + 16))();
      }
    }
  }
}

@end