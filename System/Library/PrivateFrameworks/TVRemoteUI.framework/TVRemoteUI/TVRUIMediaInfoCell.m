@interface TVRUIMediaInfoCell
@end

@implementation TVRUIMediaInfoCell

void __36___TVRUIMediaInfoCell_setMediaInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained mediaInfo];
    v9 = [v8 identifier];
    v10 = [v12 isEqualToString:v9];

    if (v10)
    {
      v11 = [v7 imageView];
      [v11 setImage:v5];
    }
  }
}

@end