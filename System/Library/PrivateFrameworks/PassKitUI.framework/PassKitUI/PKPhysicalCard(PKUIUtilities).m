@interface PKPhysicalCard(PKUIUtilities)
- (id)artworkImage:()PKUIUtilities;
- (void)_downloadImageFromURL:()PKUIUtilities completion:;
@end

@implementation PKPhysicalCard(PKUIUtilities)

- (id)artworkImage:()PKUIUtilities
{
  v4 = a3;
  v5 = [a1 frontFaceImage];
  if (v5)
  {
    v6 = [MEMORY[0x1E69DCAB8] imageWithPKImage:v5];
    if (v4)
    {
      v4[2](v4, 0, v6);
    }
  }

  else
  {
    v7 = [a1 frontFaceImageURL];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __46__PKPhysicalCard_PKUIUtilities__artworkImage___block_invoke;
    v9[3] = &unk_1E80144C0;
    v9[4] = a1;
    v10 = v4;
    [a1 _downloadImageFromURL:v7 completion:v9];

    v6 = 0;
  }

  return v6;
}

- (void)_downloadImageFromURL:()PKUIUtilities completion:
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69B8A08] sharedImageAssetDownloader];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__PKPhysicalCard_PKUIUtilities___downloadImageFromURL_completion___block_invoke;
  v10[3] = &unk_1E8014D80;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 downloadFromUrl:v9 completionHandler:v10];
}

@end