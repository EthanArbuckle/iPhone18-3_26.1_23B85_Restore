@interface _SBFolderPageElement
- (SBFolderIcon)folderIcon;
- (SBHIconImageAppearance)imageAppearance;
- (SBIconGridImage)gridImage;
- (unint64_t)firstVisibleMiniIconIndex;
- (void)setIconImageInfo:(SBIconImageInfo *)a3;
@end

@implementation _SBFolderPageElement

- (unint64_t)firstVisibleMiniIconIndex
{
  v3 = [(_SBFolderPageElement *)self gridImage];
  v4 = [(_SBFolderPageElement *)self visibleRow];
  v5 = [v3 numberOfColumns] * v4;

  return v5;
}

- (SBIconGridImage)gridImage
{
  v2 = [(_SBFolderPageElement *)self image];
  v3 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v4 = v2;
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
  v3 = [(_SBFolderPageElement *)self gridImage];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 imageAppearance];
  }

  else
  {
    v6 = [(_SBFolderPageElement *)self gridView];
    v5 = [v6 imageAppearance];
  }

  return v5;
}

- (SBFolderIcon)folderIcon
{
  WeakRetained = objc_loadWeakRetained(&self->_folderIcon);

  return WeakRetained;
}

- (void)setIconImageInfo:(SBIconImageInfo *)a3
{
  self->_iconImageInfo.size.width = v3;
  self->_iconImageInfo.size.height = v4;
  self->_iconImageInfo.scale = v5;
  self->_iconImageInfo.continuousCornerRadius = v6;
}

@end