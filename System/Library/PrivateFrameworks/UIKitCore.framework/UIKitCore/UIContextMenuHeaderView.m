@interface UIContextMenuHeaderView
@end

@implementation UIContextMenuHeaderView

void __42___UIContextMenuHeaderView_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 _titleFont];
  v3 = [v4 titleLabel];
  [v3 setFont:v2];

  [v4 _updateCompositingFilterForCurrentState];
}

void __42___UIContextMenuHeaderView_initWithFrame___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 _titleLabelNumberOfLines];
  v3 = [v4 titleLabel];
  [v3 setNumberOfLines:v2];

  [v4 _updateLayoutMargins];
}

id __50___UIContextMenuHeaderView__createAccessoryButton__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 mutableCopy];

  [v5 setObject:*(a1 + 32) forKeyedSubscript:*off_1E70EC918];
  if (WeakRetained)
  {
    v6 = [WeakRetained tintColor];
    [v5 setObject:v6 forKeyedSubscript:*off_1E70EC920];
  }

  v7 = [v5 copy];

  return v7;
}

@end