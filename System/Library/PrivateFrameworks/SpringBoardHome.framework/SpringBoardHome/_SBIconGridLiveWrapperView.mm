@interface _SBIconGridLiveWrapperView
- (SBFolderIconImageView)folderIconImageView;
- (void)layoutSubviews;
- (void)positionAtRow:(unint64_t)row;
- (void)setElement:(id)element;
@end

@implementation _SBIconGridLiveWrapperView

- (SBFolderIconImageView)folderIconImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_folderIconImageView);

  return WeakRetained;
}

- (void)setElement:(id)element
{
  elementCopy = element;
  element = self->_element;
  if (element != elementCopy)
  {
    v11 = elementCopy;
    gridView = [(_SBFolderPageElement *)element gridView];
    [gridView removeFromSuperview];
    objc_storeStrong(&self->_element, element);
    gridView2 = [(_SBFolderPageElement *)v11 gridView];
    if (gridView2)
    {
      gridView3 = gridView2;
    }

    else
    {
      if (![(_SBFolderPageElement *)v11 isGridImagePossible])
      {
        goto LABEL_7;
      }

      folderIconImageView = [(_SBIconGridLiveWrapperView *)self folderIconImageView];
      [folderIconImageView fulfillGridViewForPageElement:v11];
      gridView3 = [(_SBFolderPageElement *)v11 gridView];

      if (!gridView3)
      {
        goto LABEL_7;
      }
    }

    [gridView3 bounds];
    [(_SBIconGridLiveWrapperView *)self setBounds:?];
    UIRectGetCenter();
    [gridView3 setCenter:?];
    [(_SBIconGridLiveWrapperView *)self addSubview:gridView3];

LABEL_7:
    [(_SBIconGridLiveWrapperView *)self setNeedsLayout];

    elementCopy = v11;
  }

  MEMORY[0x1EEE66BB8](element, elementCopy);
}

- (void)positionAtRow:(unint64_t)row
{
  element = [(_SBIconGridLiveWrapperView *)self element];
  [element setVisibleRow:row];
}

- (void)layoutSubviews
{
  element = [(_SBIconGridLiveWrapperView *)self element];
  gridView = [element gridView];
  [(_SBIconGridLiveWrapperView *)self bounds];
  UIRectGetCenter();
  [gridView setCenter:?];
}

@end