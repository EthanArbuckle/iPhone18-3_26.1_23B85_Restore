@interface _TVListView
- (CGSize)tv_sizeThatFits:(CGSize)a3 withContentInset:(UIEdgeInsets)a4;
- (void)setConfigureForStackTemplate:(BOOL)a3;
@end

@implementation _TVListView

- (CGSize)tv_sizeThatFits:(CGSize)a3 withContentInset:(UIEdgeInsets)a4
{
  bottom = a4.bottom;
  top = a4.top;
  width = a3.width;
  v8 = [(_TVListView *)self delegate:a3.width];
  v9 = [(_TVListView *)self collectionViewLayout];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v9 = 0;
  }

  v10 = top + bottom;
  [v9 itemSize];
  v39 = v11;
  [v9 sectionInset];
  v42 = v12;
  v14 = v13;
  [v9 headerReferenceSize];
  v16 = v15;
  [v9 minimumLineSpacing];
  v18 = v17;
  v41 = objc_opt_respondsToSelector();
  v40 = objc_opt_respondsToSelector();
  v19 = objc_opt_respondsToSelector();
  v20 = objc_opt_respondsToSelector();
  if ([(_TVListView *)self numberOfSections]>= 1)
  {
    v21 = 0;
    do
    {
      v22 = v42;
      v23 = v14;
      if (v40)
      {
        [v8 collectionView:self layout:v9 insetForSectionAtIndex:v21];
        v22 = v24;
        v23 = v25;
      }

      v26 = v16;
      if (v19)
      {
        [v8 collectionView:self layout:v9 referenceSizeForHeaderInSection:v21];
        v26 = v27;
      }

      v28 = v18;
      if (v20)
      {
        [v8 collectionView:self layout:v9 minimumLineSpacingForSectionAtIndex:v21];
        v28 = v29;
      }

      v30 = [(_TVListView *)self numberOfItemsInSection:v21];
      v31 = v30;
      v32 = v28 * (v30 - 1);
      if (v30 <= 0)
      {
        v32 = 0.0;
      }

      v10 = v10 + v22 + v23 + v26 + v32;
      if (v41)
      {
        if (v30 >= 1)
        {
          v33 = 0;
          do
          {
            v34 = [MEMORY[0x277CCAA70] indexPathForItem:v33 inSection:v21];
            [v8 collectionView:self layout:v9 sizeForItemAtIndexPath:v34];
            v10 = v10 + v35;

            ++v33;
          }

          while (v31 != v33);
        }
      }

      else
      {
        v10 = v10 + v30 * v39;
      }

      ++v21;
    }

    while (v21 < [(_TVListView *)self numberOfSections]);
  }

  v36 = v38;
  v37 = v10;
  result.height = v37;
  result.width = v36;
  return result;
}

- (void)setConfigureForStackTemplate:(BOOL)a3
{
  if (self->_configureForStackTemplate != a3)
  {
    self->_configureForStackTemplate = a3;
    [(_TVCollectionView *)self setScrollEnabled:!a3];
    configureForStackTemplate = self->_configureForStackTemplate;

    [(_TVListView *)self _setShouldDeriveVisibleBoundsFromContainingScrollView:configureForStackTemplate];
  }
}

@end