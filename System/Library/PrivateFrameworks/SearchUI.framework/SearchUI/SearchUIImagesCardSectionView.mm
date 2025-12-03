@interface SearchUIImagesCardSectionView
+ (BOOL)fillsBackgroundWithContentForRowModel:(id)model;
- (id)setupContentView;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIImagesCardSectionView

+ (BOOL)fillsBackgroundWithContentForRowModel:(id)model
{
  modelCopy = model;
  cardSection = [modelCopy cardSection];
  if ([cardSection borderless])
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___SearchUIImagesCardSectionView;
    v6 = objc_msgSendSuper2(&v8, sel_fillsBackgroundWithContentForRowModel_, modelCopy);
  }

  return v6;
}

- (id)setupContentView
{
  v2 = objc_opt_new();

  return v2;
}

- (void)updateWithRowModel:(id)model
{
  v10.receiver = self;
  v10.super_class = SearchUIImagesCardSectionView;
  modelCopy = model;
  [(SearchUICardSectionView *)&v10 updateWithRowModel:modelCopy];
  cardSection = [modelCopy cardSection];

  contentView = [(SearchUICardSectionView *)self contentView];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__SearchUIImagesCardSectionView_updateWithRowModel___block_invoke;
  v8[3] = &unk_1E85B2540;
  v8[4] = self;
  v9 = cardSection;
  v7 = cardSection;
  [contentView performBatchUpdates:v8];
}

void __52__SearchUIImagesCardSectionView_updateWithRowModel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) images];
  v3 = [SearchUITLKImageConverter imagesForSFImages:v2];
  v4 = [*(a1 + 32) contentView];
  [v4 setImages:v3];

  v5 = [*(a1 + 40) borderless];
  v6 = [*(a1 + 32) contentView];
  [v6 setPaddingDisabled:v5];
}

@end