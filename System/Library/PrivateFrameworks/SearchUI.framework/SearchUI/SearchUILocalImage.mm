@interface SearchUILocalImage
- (void)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation SearchUILocalImage

- (void)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = [(SearchUIImage *)self sfImage];
  v8 = [v7 localImageType];

  if (v8 == 3)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71__SearchUILocalImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke;
    v9[3] = &unk_1E85B3CC8;
    v10 = v6;
    [_TtC8SearchUI28SearchUICalculateUIUtilities currencyConversionProviderImageWithCompletionHandler:v9];
  }

  else
  {
    (*(v6 + 2))(v6, 0, 1);
  }
}

@end