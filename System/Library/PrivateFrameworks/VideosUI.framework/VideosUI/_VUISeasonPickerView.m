@interface _VUISeasonPickerView
- (_VUISeasonPickerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation _VUISeasonPickerView

- (_VUISeasonPickerView)initWithFrame:(CGRect)a3
{
  v18[3] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = _VUISeasonPickerView;
  v3 = [(_VUISeasonPickerView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
    [(_VUISeasonPickerView *)v3 setBackgroundColor:v4];

    v5 = objc_alloc_init(MEMORY[0x1E69DC840]);
    [v5 setScrollDirection:0];
    [v5 setMinimumLineSpacing:0.0];
    v6 = objc_alloc(MEMORY[0x1E69DC7F0]);
    v7 = [v6 initWithFrame:v5 collectionViewLayout:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    collectionView = v3->_collectionView;
    v3->_collectionView = v7;

    [(UICollectionView *)v3->_collectionView setAlwaysBounceVertical:1];
    v9 = v3->_collectionView;
    v10 = [MEMORY[0x1E69DC888] clearColor];
    [(UICollectionView *)v9 setBackgroundColor:v10];

    [(_VUISeasonPickerView *)v3 addSubview:v3->_collectionView];
    objc_initWeak(&location, v3);
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __38___VUISeasonPickerView_initWithFrame___block_invoke;
    v14[3] = &unk_1E872E760;
    objc_copyWeak(&v15, &location);
    v12 = [(_VUISeasonPickerView *)v3 registerForTraitChanges:v11 withHandler:v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)layoutSubviews
{
  collectionView = self->_collectionView;
  [(_VUISeasonPickerView *)self bounds];

  [(UICollectionView *)collectionView setFrame:?];
}

@end