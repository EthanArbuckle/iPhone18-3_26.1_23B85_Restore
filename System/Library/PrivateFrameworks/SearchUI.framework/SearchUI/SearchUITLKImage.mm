@interface SearchUITLKImage
- (BOOL)hasMultipleRepresentations;
- (SearchUITLKImage)initWithSearchUIImage:(id)a3;
- (double)aspectRatio;
- (void)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation SearchUITLKImage

- (BOOL)hasMultipleRepresentations
{
  v2 = [(SearchUITLKImage *)self searchUIImage];
  v3 = [v2 hasMultipleRepresentations];

  return v3;
}

- (SearchUITLKImage)initWithSearchUIImage:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SearchUITLKImage;
  v5 = [(TLKImage *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SearchUITLKImage *)v5 setSearchUIImage:v4];
  }

  return v6;
}

- (void)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(SearchUITLKImage *)self searchUIImage];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__SearchUITLKImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke;
  v11[3] = &unk_1E85B4478;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v9 loadImageWithScale:v5 isDarkStyle:v11 completionHandler:a3];
}

void __69__SearchUITLKImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) searchUIImage];
  v7 = [v6 shouldReadTemplateStatusFromLoadedImage];

  if (v7)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__SearchUITLKImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_2;
    v8[3] = &unk_1E85B44A0;
    v8[4] = *(a1 + 32);
    v9 = v5;
    v10 = *(a1 + 40);
    v11 = a3;
    [SearchUIUtilities dispatchMainIfNecessary:v8];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __69__SearchUITLKImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setIsTemplate:{objc_msgSend(MEMORY[0x1E69D9168], "isTemplateImage:", *(a1 + 40))}];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (double)aspectRatio
{
  v2 = [(SearchUITLKImage *)self searchUIImage];
  [v2 aspectRatio];
  v4 = v3;

  return v4;
}

@end