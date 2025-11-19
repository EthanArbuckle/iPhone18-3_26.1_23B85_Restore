@interface TVRUIRoleHorizontalCell
@end

@implementation TVRUIRoleHorizontalCell

void __46___TVRUIRoleHorizontalCell__updateUIWithRole___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained imageView];
    [v6 setImage:v7];

    [v5 setNeedsLayout];
    [v5 layoutIfNeeded];
    if (!v7)
    {
      [v5 _updateFallbackImageForRole:*(a1 + 32)];
    }
  }
}

void __56___TVRUIRoleHorizontalCell__updateFallbackImageForRole___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained role];
    v9 = [v8 canonicalID];
    v10 = [v12 isEqualToString:v9];

    if (v10)
    {
      v11 = [v7 imageView];
      [v11 setImage:v5];
    }
  }
}

@end