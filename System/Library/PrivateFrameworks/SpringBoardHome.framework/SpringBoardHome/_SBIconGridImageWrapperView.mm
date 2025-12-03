@interface _SBIconGridImageWrapperView
- (SBFolderIconImageView)folderIconImageView;
- (void)positionAtRow:(unint64_t)row;
- (void)reposition;
- (void)setElement:(id)element;
@end

@implementation _SBIconGridImageWrapperView

- (void)setElement:(id)element
{
  elementCopy = element;
  if (self->_element != elementCopy)
  {
    v10 = elementCopy;
    objc_storeStrong(&self->_element, element);
    gridImage = [(_SBFolderPageElement *)v10 gridImage];
    if (!gridImage)
    {
      if ([(_SBFolderPageElement *)v10 isGridImagePossible])
      {
        folderIconImageView = [(_SBIconGridImageWrapperView *)self folderIconImageView];
        [folderIconImageView fulfillGridImageForPageElement:v10];
        gridImage = [(_SBFolderPageElement *)v10 gridImage];
      }

      else
      {
        gridImage = 0;
      }
    }

    [(_SBIconGridImageWrapperView *)self setImage:gridImage];
    [gridImage size];
    [(_SBIconGridImageWrapperView *)self setBounds:0.0, 0.0, v8, v9];
    [(_SBIconGridImageWrapperView *)self reposition];

    elementCopy = v10;
  }
}

- (void)reposition
{
  element = [(_SBIconGridImageWrapperView *)self element];

  if (element)
  {
    element2 = [(_SBIconGridImageWrapperView *)self element];
    gridImage = [element2 gridImage];

    [gridImage size];
    v6 = v5;
    listLayout = [gridImage listLayout];
    v8 = objc_opt_class();
    element3 = [(_SBIconGridImageWrapperView *)self element];
    [v8 rectAtIndex:objc_msgSend(element3 inLayout:"firstVisibleMiniIconIndex") maxCount:{listLayout, objc_msgSend(gridImage, "numberOfCells")}];
    v11 = v10;

    [objc_opt_class() sizeForLayout:listLayout];
    v12 = fmax(fmin(v11 / v6, 1.0), 0.0);
    v14 = fmax(fmin(v13 / v6, 1.0), 0.0);
    layer = [(_SBIconGridImageWrapperView *)self layer];
    [layer setContentsRect:{0.0, v12, 1.0, v14}];
  }
}

- (void)positionAtRow:(unint64_t)row
{
  element = [(_SBIconGridImageWrapperView *)self element];
  [element setVisibleRow:row];

  [(_SBIconGridImageWrapperView *)self reposition];
}

- (SBFolderIconImageView)folderIconImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_folderIconImageView);

  return WeakRetained;
}

@end