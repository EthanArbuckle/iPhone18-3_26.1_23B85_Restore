@interface TVPMediaItemPromoInfo
- (CGSize)_calculateImageSize;
- (CGSize)expectedImageSize;
- (TVPMediaItemPromoInfo)initWithTitleImageURL:(id)a3 originalTitleImageWidth:(double)a4 originalTitleImageHeight:(double)a5 title:(id)a6 genre:(id)a7 ratingDisplayName:(id)a8 ratingSystem:(id)a9 movieRuntime:(id)a10 canonicalId:(id)a11 isAddedToUpNext:(BOOL)a12 addToUpNextLabelString:(id)a13 addedToUpNextLabelString:(id)a14;
- (void)_loadImage;
- (void)getTitleImageUsingCompletionHandler:(id)a3;
@end

@implementation TVPMediaItemPromoInfo

- (TVPMediaItemPromoInfo)initWithTitleImageURL:(id)a3 originalTitleImageWidth:(double)a4 originalTitleImageHeight:(double)a5 title:(id)a6 genre:(id)a7 ratingDisplayName:(id)a8 ratingSystem:(id)a9 movieRuntime:(id)a10 canonicalId:(id)a11 isAddedToUpNext:(BOOL)a12 addToUpNextLabelString:(id)a13 addedToUpNextLabelString:(id)a14
{
  v36 = a3;
  obj = a6;
  v23 = a6;
  v33 = a7;
  v24 = a7;
  v38 = a8;
  v34 = a9;
  v37 = a9;
  v35 = a10;
  v25 = a10;
  v26 = a11;
  v27 = a13;
  v28 = a14;
  v39.receiver = self;
  v39.super_class = TVPMediaItemPromoInfo;
  v29 = [(TVPMediaItemPromoInfo *)&v39 init];
  v30 = v29;
  if (v29)
  {
    objc_storeStrong(&v29->_titleImageURLString, a3);
    v30->_originalTitleImageWidth = a4;
    v30->_originalTitleImageHeight = a5;
    objc_storeStrong(&v30->_title, obj);
    objc_storeStrong(&v30->_genre, v33);
    objc_storeStrong(&v30->_ratingDisplayName, a8);
    objc_storeStrong(&v30->_ratingSystem, v34);
    objc_storeStrong(&v30->_movieRuntime, v35);
    objc_storeStrong(&v30->_canonicalId, a11);
    v30->_isAddedToUpNext = a12;
    objc_storeStrong(&v30->_addToUpNextLabelString, a13);
    objc_storeStrong(&v30->_addedToUpNextLabelString, a14);
    *&v30->_promoViewWidth = xmmword_26CF4C4A0;
    [(TVPMediaItemPromoInfo *)v30 _loadImage];
  }

  return v30;
}

- (void)getTitleImageUsingCompletionHandler:(id)a3
{
  v6 = a3;
  v4 = [(TVPMediaItemPromoInfo *)self titleImage];

  if (v4)
  {
    v5 = [(TVPMediaItemPromoInfo *)self titleImage];
    v6[2](v6, v5);
  }

  else
  {
    [(TVPMediaItemPromoInfo *)self setImageCompletionHandler:v6];
  }
}

- (void)_loadImage
{
  [(TVPMediaItemPromoInfo *)self _calculateImageSize];
  v4 = v3;
  v6 = v5;
  [(TVPMediaItemPromoInfo *)self setExpectedImageSize:?];
  v7 = objc_alloc(MEMORY[0x277D6C498]);
  v8 = [(TVPMediaItemPromoInfo *)self titleImageURLString];
  v9 = [v7 initUrlWithProperties:v8 imageSize:0 focusSizeIncrease:@"png" cropCode:v4 urlFormat:v6, 0.0];

  v10 = [MEMORY[0x277D6C4B0] imageURLWithDescription:v9];
  v11 = objc_alloc(MEMORY[0x277D6C490]);
  v12 = [MEMORY[0x277D6C4A0] sharedInstance];
  v13 = [v11 initWithObject:v10 imageLoader:v12 groupType:0];

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