@interface SearchUILocalImage
- (void)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style completionHandler:(id)handler;
@end

@implementation SearchUILocalImage

- (void)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style completionHandler:(id)handler
{
  handlerCopy = handler;
  sfImage = [(SearchUIImage *)self sfImage];
  localImageType = [sfImage localImageType];

  if (localImageType == 3)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71__SearchUILocalImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke;
    v9[3] = &unk_1E85B3CC8;
    v10 = handlerCopy;
    [_TtC8SearchUI28SearchUICalculateUIUtilities currencyConversionProviderImageWithCompletionHandler:v9];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 1);
  }
}

@end