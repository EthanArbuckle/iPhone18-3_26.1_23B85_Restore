@interface PXCMMInvitationViewModel
- (PXCMMInvitationViewModel)init;
- (void)performChanges:(id)changes;
- (void)setAttributedPosterTitle:(id)title;
- (void)setAttributedSubtitle1:(id)subtitle1;
- (void)setAttributedSubtitle2:(id)subtitle2;
- (void)setAttributedTitle:(id)title;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIsNew:(BOOL)new;
- (void)setOpaqueAncestorBackgroundColor:(id)color;
- (void)setOwner:(id)owner;
- (void)setPosterAsset:(id)asset;
- (void)setPosterMediaProvider:(id)provider;
- (void)setPosterSubtitle:(id)subtitle;
- (void)setPosterTitle:(id)title;
@end

@implementation PXCMMInvitationViewModel

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    [(PXCMMInvitationViewModel *)self signalChange:512];
  }
}

- (void)setOpaqueAncestorBackgroundColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMInvitationViewModel.m" lineNumber:173 description:{@"Invalid parameter not satisfying: %@", @"opaqueAncestorBackgroundColor"}];
  }

  v6 = self->_opaqueAncestorBackgroundColor;
  v7 = v6;
  if (v6 == colorCopy)
  {
  }

  else
  {
    v8 = [(UIColor *)v6 isEqual:?];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_opaqueAncestorBackgroundColor, color);
      [(PXCMMInvitationViewModel *)self signalChange:256];
    }
  }
}

- (void)setAttributedSubtitle2:(id)subtitle2
{
  subtitle2Copy = subtitle2;
  attributedSubtitle2 = self->_attributedSubtitle2;
  if (attributedSubtitle2 != subtitle2Copy)
  {
    v9 = subtitle2Copy;
    v6 = [(NSAttributedString *)attributedSubtitle2 isEqual:subtitle2Copy];
    subtitle2Copy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSAttributedString *)v9 copy];
      v8 = self->_attributedSubtitle2;
      self->_attributedSubtitle2 = v7;

      [(PXCMMInvitationViewModel *)self signalChange:128];
      subtitle2Copy = v9;
    }
  }
}

- (void)setAttributedSubtitle1:(id)subtitle1
{
  subtitle1Copy = subtitle1;
  attributedSubtitle1 = self->_attributedSubtitle1;
  if (attributedSubtitle1 != subtitle1Copy)
  {
    v9 = subtitle1Copy;
    v6 = [(NSAttributedString *)attributedSubtitle1 isEqual:subtitle1Copy];
    subtitle1Copy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSAttributedString *)v9 copy];
      v8 = self->_attributedSubtitle1;
      self->_attributedSubtitle1 = v7;

      [(PXCMMInvitationViewModel *)self signalChange:64];
      subtitle1Copy = v9;
    }
  }
}

- (void)setAttributedTitle:(id)title
{
  titleCopy = title;
  attributedTitle = self->_attributedTitle;
  if (attributedTitle != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSAttributedString *)attributedTitle isEqual:titleCopy];
    titleCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSAttributedString *)v9 copy];
      v8 = self->_attributedTitle;
      self->_attributedTitle = v7;

      [(PXCMMInvitationViewModel *)self signalChange:32];
      titleCopy = v9;
    }
  }
}

- (void)setAttributedPosterTitle:(id)title
{
  titleCopy = title;
  attributedPosterTitle = self->_attributedPosterTitle;
  if (attributedPosterTitle != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSAttributedString *)attributedPosterTitle isEqual:titleCopy];
    titleCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSAttributedString *)v9 copy];
      v8 = self->_attributedPosterTitle;
      self->_attributedPosterTitle = v7;

      [(PXCMMInvitationViewModel *)self signalChange:2];
      titleCopy = v9;
    }
  }
}

- (void)setPosterMediaProvider:(id)provider
{
  providerCopy = provider;
  if (self->_posterMediaProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_posterMediaProvider, provider);
    [(PXCMMInvitationViewModel *)self signalChange:16];
    providerCopy = v6;
  }
}

- (void)setPosterAsset:(id)asset
{
  assetCopy = asset;
  if (self->_posterAsset != assetCopy)
  {
    v6 = assetCopy;
    objc_storeStrong(&self->_posterAsset, asset);
    [(PXCMMInvitationViewModel *)self signalChange:8];
    assetCopy = v6;
  }
}

- (void)setPosterSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  if (!subtitleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMInvitationViewModel.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"posterSubtitle"}];

    subtitleCopy = 0;
  }

  if (self->_posterSubtitle != subtitleCopy)
  {
    v10 = subtitleCopy;
    v6 = [(NSString *)subtitleCopy isEqualToString:?];
    subtitleCopy = v10;
    if (!v6)
    {
      v7 = [(NSString *)v10 copy];
      posterSubtitle = self->_posterSubtitle;
      self->_posterSubtitle = v7;

      [(PXCMMInvitationViewModel *)self signalChange:4];
      subtitleCopy = v10;
    }
  }
}

- (void)setPosterTitle:(id)title
{
  titleCopy = title;
  if (!titleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMInvitationViewModel.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"posterTitle"}];

    titleCopy = 0;
  }

  if (self->_posterTitle != titleCopy)
  {
    v10 = titleCopy;
    v6 = [(NSString *)titleCopy isEqualToString:?];
    titleCopy = v10;
    if (!v6)
    {
      v7 = [(NSString *)v10 copy];
      posterTitle = self->_posterTitle;
      self->_posterTitle = v7;

      [(PXCMMInvitationViewModel *)self signalChange:2];
      titleCopy = v10;
    }
  }
}

- (void)setOwner:(id)owner
{
  ownerCopy = owner;
  if (self->_owner != ownerCopy)
  {
    v6 = ownerCopy;
    objc_storeStrong(&self->_owner, owner);
    [(PXCMMInvitationViewModel *)self signalChange:1024];
    ownerCopy = v6;
  }
}

- (void)setIsNew:(BOOL)new
{
  if (self->_isNew != new)
  {
    self->_isNew = new;
    [(PXCMMInvitationViewModel *)self signalChange:1];
  }
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXCMMInvitationViewModel;
  [(PXCMMInvitationViewModel *)&v3 performChanges:changes];
}

- (PXCMMInvitationViewModel)init
{
  v9.receiver = self;
  v9.super_class = PXCMMInvitationViewModel;
  v2 = [(PXCMMInvitationViewModel *)&v9 init];
  v3 = v2;
  if (v2)
  {
    posterTitle = v2->_posterTitle;
    v2->_posterTitle = &stru_1F1741150;

    posterSubtitle = v3->_posterSubtitle;
    v3->_posterSubtitle = &stru_1F1741150;

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    opaqueAncestorBackgroundColor = v3->_opaqueAncestorBackgroundColor;
    v3->_opaqueAncestorBackgroundColor = clearColor;
  }

  return v3;
}

@end