@interface TVPMediaItemPromoInfo
- (CGSize)_calculateImageSize;
- (CGSize)expectedImageSize;
- (TVPMediaItemPromoInfo)initWithTitleImageURL:(id)l originalTitleImageWidth:(double)width originalTitleImageHeight:(double)height title:(id)title genre:(id)genre ratingDisplayName:(id)name ratingSystem:(id)system movieRuntime:(id)self0 canonicalId:(id)self1 isAddedToUpNext:(BOOL)self2 addToUpNextLabelString:(id)self3 addedToUpNextLabelString:(id)self4;
- (void)_loadImage;
- (void)getTitleImageUsingCompletionHandler:(id)handler;
@end

@implementation TVPMediaItemPromoInfo

- (TVPMediaItemPromoInfo)initWithTitleImageURL:(id)l originalTitleImageWidth:(double)width originalTitleImageHeight:(double)height title:(id)title genre:(id)genre ratingDisplayName:(id)name ratingSystem:(id)system movieRuntime:(id)self0 canonicalId:(id)self1 isAddedToUpNext:(BOOL)self2 addToUpNextLabelString:(id)self3 addedToUpNextLabelString:(id)self4
{
  lCopy = l;
  obj = title;
  titleCopy = title;
  genreCopy = genre;
  genreCopy2 = genre;
  nameCopy = name;
  systemCopy = system;
  systemCopy2 = system;
  runtimeCopy = runtime;
  runtimeCopy2 = runtime;
  idCopy = id;
  stringCopy = string;
  labelStringCopy = labelString;
  v39.receiver = self;
  v39.super_class = TVPMediaItemPromoInfo;
  v29 = [(TVPMediaItemPromoInfo *)&v39 init];
  v30 = v29;
  if (v29)
  {
    objc_storeStrong(&v29->_titleImageURLString, l);
    v30->_originalTitleImageWidth = width;
    v30->_originalTitleImageHeight = height;
    objc_storeStrong(&v30->_title, obj);
    objc_storeStrong(&v30->_genre, genreCopy);
    objc_storeStrong(&v30->_ratingDisplayName, name);
    objc_storeStrong(&v30->_ratingSystem, systemCopy);
    objc_storeStrong(&v30->_movieRuntime, runtimeCopy);
    objc_storeStrong(&v30->_canonicalId, id);
    v30->_isAddedToUpNext = next;
    objc_storeStrong(&v30->_addToUpNextLabelString, string);
    objc_storeStrong(&v30->_addedToUpNextLabelString, labelString);
    *&v30->_promoViewWidth = xmmword_26CF4C4A0;
    [(TVPMediaItemPromoInfo *)v30 _loadImage];
  }

  return v30;
}

- (void)getTitleImageUsingCompletionHandler:(id)handler
{
  handlerCopy = handler;
  titleImage = [(TVPMediaItemPromoInfo *)self titleImage];

  if (titleImage)
  {
    titleImage2 = [(TVPMediaItemPromoInfo *)self titleImage];
    handlerCopy[2](handlerCopy, titleImage2);
  }

  else
  {
    [(TVPMediaItemPromoInfo *)self setImageCompletionHandler:handlerCopy];
  }
}

- (void)_loadImage
{
  [(TVPMediaItemPromoInfo *)self _calculateImageSize];
  v4 = v3;
  v6 = v5;
  [(TVPMediaItemPromoInfo *)self setExpectedImageSize:?];
  v7 = objc_alloc(MEMORY[0x277D6C498]);
  titleImageURLString = [(TVPMediaItemPromoInfo *)self titleImageURLString];
  v9 = [v7 initUrlWithProperties:titleImageURLString imageSize:0 focusSizeIncrease:@"png" cropCode:v4 urlFormat:v6, 0.0];

  v10 = [MEMORY[0x277D6C4B0] imageURLWithDescription:v9];
  v11 = objc_alloc(MEMORY[0x277D6C490]);
  mEMORY[0x277D6C4A0] = [MEMORY[0x277D6C4A0] sharedInstance];
  v13 = [v11 initWithObject:v10 imageLoader:mEMORY[0x277D6C4A0] groupType:0];

  if (v13)
  {
    objc_initWeak(&location, self);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __35__TVPMediaItemPromoInfo__loadImage__block_invoke;
    v17 = &unk_279D7BA80;
    objc_copyWeak(&v18, &location);
    [v13 setCompletionHandler:&v14];
    [(TVPMediaItemPromoInfo *)self setImageProxy:v13, v14, v15, v16, v17];
    [v13 load];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __35__TVPMediaItemPromoInfo__loadImage__block_invoke(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v6 = a2;
  v7 = [v6 uiImage];

  if (v7 && a4)
  {
    v8 = [v6 uiImage];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __35__TVPMediaItemPromoInfo__loadImage__block_invoke_2;
    v10[3] = &unk_279D7BA58;
    objc_copyWeak(&v12, (a1 + 32));
    v11 = v8;
    v9 = v8;
    dispatch_async(MEMORY[0x277D85CD0], v10);

    objc_destroyWeak(&v12);
  }
}

void __35__TVPMediaItemPromoInfo__loadImage__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setTitleImage:*(a1 + 32)];
  v2 = [WeakRetained imageCompletionHandler];

  if (v2)
  {
    v3 = [WeakRetained imageCompletionHandler];
    v3[2](v3, *(a1 + 32));
  }
}

- (CGSize)_calculateImageSize
{
  [(TVPMediaItemPromoInfo *)self originalTitleImageWidth];
  v4 = v3;
  [(TVPMediaItemPromoInfo *)self originalTitleImageHeight];
  v6 = v4 / v5;
  [(TVPMediaItemPromoInfo *)self promoViewWidth];
  v8 = v7 / v6;
  [(TVPMediaItemPromoInfo *)self maxImageHeight];
  if (v8 >= v9)
  {
    [(TVPMediaItemPromoInfo *)self maxImageHeight];
    v11 = v6 * v12;
    [(TVPMediaItemPromoInfo *)self maxImageHeight];
    v8 = v13;
  }

  else
  {
    [(TVPMediaItemPromoInfo *)self promoViewWidth];
    v11 = v10;
  }

  v14 = v11;
  v15 = v8;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)expectedImageSize
{
  width = self->_expectedImageSize.width;
  height = self->_expectedImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end