@interface _TVCollectionViewCell
- (TVAuxiliaryViewSelecting)selectingView;
- (UIEdgeInsets)selectionMarginsForSize:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation _TVCollectionViewCell

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = _TVCollectionViewCell;
  [(_TVCollectionViewCell *)&v4 layoutSubviews];
  v3 = [(_TVCollectionViewCell *)self selectingView];
  [(_TVCollectionViewCell *)self bounds];
  [v3 setFrame:?];
  [v3 layoutIfNeeded];
}

- (TVAuxiliaryViewSelecting)selectingView
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_selectingView);

  if (!WeakRetained)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [(_TVCollectionViewCell *)self contentView];
    v5 = [v4 subviews];

    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([v10 conformsToProtocol:&unk_287E58AD8])
          {
            objc_storeWeak(&self->_selectingView, v10);
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v11 = objc_loadWeakRetained(&self->_selectingView);

  return v11;
}

- (UIEdgeInsets)selectionMarginsForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  WeakRetained = objc_loadWeakRetained(&self->_selectingView);
  [WeakRetained selectionMarginsForSize:{width, height}];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

@end