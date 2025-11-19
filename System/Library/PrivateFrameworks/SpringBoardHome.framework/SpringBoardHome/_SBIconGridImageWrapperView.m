@interface _SBIconGridImageWrapperView
- (SBFolderIconImageView)folderIconImageView;
- (void)positionAtRow:(unint64_t)a3;
- (void)reposition;
- (void)setElement:(id)a3;
@end

@implementation _SBIconGridImageWrapperView

- (void)setElement:(id)a3
{
  v5 = a3;
  if (self->_element != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_element, a3);
    v6 = [(_SBFolderPageElement *)v10 gridImage];
    if (!v6)
    {
      if ([(_SBFolderPageElement *)v10 isGridImagePossible])
      {
        v7 = [(_SBIconGridImageWrapperView *)self folderIconImageView];
        [v7 fulfillGridImageForPageElement:v10];
        v6 = [(_SBFolderPageElement *)v10 gridImage];
      }

      else
      {
        v6 = 0;
      }
    }

    [(_SBIconGridImageWrapperView *)self setImage:v6];
    [v6 size];
    [(_SBIconGridImageWrapperView *)self setBounds:0.0, 0.0, v8, v9];
    [(_SBIconGridImageWrapperView *)self reposition];

    v5 = v10;
  }
}

- (void)reposition
{
  v3 = [(_SBIconGridImageWrapperView *)self element];

  if (v3)
  {
    v4 = [(_SBIconGridImageWrapperView *)self element];
    v16 = [v4 gridImage];

    [v16 size];
    v6 = v5;
    v7 = [v16 listLayout];
    v8 = objc_opt_class();
    v9 = [(_SBIconGridImageWrapperView *)self element];
    [v8 rectAtIndex:objc_msgSend(v9 inLayout:"firstVisibleMiniIconIndex") maxCount:{v7, objc_msgSend(v16, "numberOfCells")}];
    v11 = v10;

    [objc_opt_class() sizeForLayout:v7];
    v12 = fmax(fmin(v11 / v6, 1.0), 0.0);
    v14 = fmax(fmin(v13 / v6, 1.0), 0.0);
    v15 = [(_SBIconGridImageWrapperView *)self layer];
    [v15 setContentsRect:{0.0, v12, 1.0, v14}];
  }
}

- (void)positionAtRow:(unint64_t)a3
{
  v5 = [(_SBIconGridImageWrapperView *)self element];
  [v5 setVisibleRow:a3];

  [(_SBIconGridImageWrapperView *)self reposition];
}

- (SBFolderIconImageView)folderIconImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_folderIconImageView);

  return WeakRetained;
}

@end