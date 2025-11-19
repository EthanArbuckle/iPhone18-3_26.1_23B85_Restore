@interface _SBIconGridLiveWrapperView
- (SBFolderIconImageView)folderIconImageView;
- (void)layoutSubviews;
- (void)positionAtRow:(unint64_t)a3;
- (void)setElement:(id)a3;
@end

@implementation _SBIconGridLiveWrapperView

- (SBFolderIconImageView)folderIconImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_folderIconImageView);

  return WeakRetained;
}

- (void)setElement:(id)a3
{
  v5 = a3;
  element = self->_element;
  if (element != v5)
  {
    v11 = v5;
    v7 = [(_SBFolderPageElement *)element gridView];
    [v7 removeFromSuperview];
    objc_storeStrong(&self->_element, a3);
    v8 = [(_SBFolderPageElement *)v11 gridView];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      if (![(_SBFolderPageElement *)v11 isGridImagePossible])
      {
        goto LABEL_7;
      }

      v10 = [(_SBIconGridLiveWrapperView *)self folderIconImageView];
      [v10 fulfillGridViewForPageElement:v11];
      v9 = [(_SBFolderPageElement *)v11 gridView];

      if (!v9)
      {
        goto LABEL_7;
      }
    }

    [v9 bounds];
    [(_SBIconGridLiveWrapperView *)self setBounds:?];
    UIRectGetCenter();
    [v9 setCenter:?];
    [(_SBIconGridLiveWrapperView *)self addSubview:v9];

LABEL_7:
    [(_SBIconGridLiveWrapperView *)self setNeedsLayout];

    v5 = v11;
  }

  MEMORY[0x1EEE66BB8](element, v5);
}

- (void)positionAtRow:(unint64_t)a3
{
  v4 = [(_SBIconGridLiveWrapperView *)self element];
  [v4 setVisibleRow:a3];
}

- (void)layoutSubviews
{
  v4 = [(_SBIconGridLiveWrapperView *)self element];
  v3 = [v4 gridView];
  [(_SBIconGridLiveWrapperView *)self bounds];
  UIRectGetCenter();
  [v3 setCenter:?];
}

@end