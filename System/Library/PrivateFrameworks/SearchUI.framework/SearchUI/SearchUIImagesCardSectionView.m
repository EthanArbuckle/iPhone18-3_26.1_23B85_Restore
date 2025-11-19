@interface SearchUIImagesCardSectionView
+ (BOOL)fillsBackgroundWithContentForRowModel:(id)a3;
- (id)setupContentView;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUIImagesCardSectionView

+ (BOOL)fillsBackgroundWithContentForRowModel:(id)a3
{
  v4 = a3;
  v5 = [v4 cardSection];
  if ([v5 borderless])
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___SearchUIImagesCardSectionView;
    v6 = objc_msgSendSuper2(&v8, sel_fillsBackgroundWithContentForRowModel_, v4);
  }

  return v6;
}

- (id)setupContentView
{
  v2 = objc_opt_new();

  return v2;
}

- (void)updateWithRowModel:(id)a3
{
  v10.receiver = self;
  v10.super_class = SearchUIImagesCardSectionView;
  v4 = a3;
  [(SearchUICardSectionView *)&v10 updateWithRowModel:v4];
  v5 = [v4 cardSection];

  v6 = [(SearchUICardSectionView *)self contentView];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__SearchUIImagesCardSectionView_updateWithRowModel___block_invoke;
  v8[3] = &unk_1E85B2540;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 performBatchUpdates:v8];
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