@interface _SBFolderPageElement
- (SBFolderIcon)folderIcon;
- (SBHIconImageAppearance)imageAppearance;
- (SBIconGridImage)gridImage;
- (unint64_t)firstVisibleMiniIconIndex;
- (void)setIconImageInfo:(SBIconImageInfo *)info;
@end

@implementation _SBFolderPageElement

- (unint64_t)firstVisibleMiniIconIndex
{
  gridImage = [(_SBFolderPageElement *)self gridImage];
  visibleRow = [(_SBFolderPageElement *)self visibleRow];
  v5 = [gridImage numberOfColumns] * visibleRow;

  return v5;
}

- (SBIconGridImage)gridImage
{
  image = [(_SBFolderPageElement *)self image];
  v3 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v4 = image;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (SBHIconImageAppearance)imageAppearance
{
  gridImage = [(_SBFolderPageElement *)self gridImage];
  v4 = gridImage;
  if (gridImage)
  {
    imageAppearance = [gridImage imageAppearance];
  }

  else
  {
    gridView = [(_SBFolderPageElement *)self gridView];
    imageAppearance = [gridView imageAppearance];
  }

  return imageAppearance;
}

- (SBFolderIcon)folderIcon
{
  WeakRetained = objc_loadWeakRetained(&self->_folderIcon);

  return WeakRetained;
}

- (void)setIconImageInfo:(SBIconImageInfo *)info
{
  self->_iconImageInfo.size.width = v3;
  self->_iconImageInfo.size.height = v4;
  self->_iconImageInfo.scale = v5;
  self->_iconImageInfo.continuousCornerRadius = v6;
}

@end