@interface PXCMMInvitationViewModel
- (PXCMMInvitationViewModel)init;
- (void)performChanges:(id)a3;
- (void)setAttributedPosterTitle:(id)a3;
- (void)setAttributedSubtitle1:(id)a3;
- (void)setAttributedSubtitle2:(id)a3;
- (void)setAttributedTitle:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setIsNew:(BOOL)a3;
- (void)setOpaqueAncestorBackgroundColor:(id)a3;
- (void)setOwner:(id)a3;
- (void)setPosterAsset:(id)a3;
- (void)setPosterMediaProvider:(id)a3;
- (void)setPosterSubtitle:(id)a3;
- (void)setPosterTitle:(id)a3;
@end

@implementation PXCMMInvitationViewModel

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
    [(PXCMMInvitationViewModel *)self signalChange:512];
  }
}

- (void)setOpaqueAncestorBackgroundColor:(id)a3
{
  v10 = a3;
  if (!v10)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXCMMInvitationViewModel.m" lineNumber:173 description:{@"Invalid parameter not satisfying: %@", @"opaqueAncestorBackgroundColor"}];
  }

  v6 = self->_opaqueAncestorBackgroundColor;
  v7 = v6;
  if (v6 == v10)
  {
  }

  else
  {
    v8 = [(UIColor *)v6 isEqual:?];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_opaqueAncestorBackgroundColor, a3);
      [(PXCMMInvitationViewModel *)self signalChange:256];
    }
  }
}

- (void)setAttributedSubtitle2:(id)a3
{
  v4 = a3;
  attributedSubtitle2 = self->_attributedSubtitle2;
  if (attributedSubtitle2 != v4)
  {
    v9 = v4;
    v6 = [(NSAttributedString *)attributedSubtitle2 isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSAttributedString *)v9 copy];
      v8 = self->_attributedSubtitle2;
      self->_attributedSubtitle2 = v7;

      [(PXCMMInvitationViewModel *)self signalChange:128];
      v4 = v9;
    }
  }
}

- (void)setAttributedSubtitle1:(id)a3
{
  v4 = a3;
  attributedSubtitle1 = self->_attributedSubtitle1;
  if (attributedSubtitle1 != v4)
  {
    v9 = v4;
    v6 = [(NSAttributedString *)attributedSubtitle1 isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSAttributedString *)v9 copy];
      v8 = self->_attributedSubtitle1;
      self->_attributedSubtitle1 = v7;

      [(PXCMMInvitationViewModel *)self signalChange:64];
      v4 = v9;
    }
  }
}

- (void)setAttributedTitle:(id)a3
{
  v4 = a3;
  attributedTitle = self->_attributedTitle;
  if (attributedTitle != v4)
  {
    v9 = v4;
    v6 = [(NSAttributedString *)attributedTitle isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSAttributedString *)v9 copy];
      v8 = self->_attributedTitle;
      self->_attributedTitle = v7;

      [(PXCMMInvitationViewModel *)self signalChange:32];
      v4 = v9;
    }
  }
}

- (void)setAttributedPosterTitle:(id)a3
{
  v4 = a3;
  attributedPosterTitle = self->_attributedPosterTitle;
  if (attributedPosterTitle != v4)
  {
    v9 = v4;
    v6 = [(NSAttributedString *)attributedPosterTitle isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSAttributedString *)v9 copy];
      v8 = self->_attributedPosterTitle;
      self->_attributedPosterTitle = v7;

      [(PXCMMInvitationViewModel *)self signalChange:2];
      v4 = v9;
    }
  }
}

- (void)setPosterMediaProvider:(id)a3
{
  v5 = a3;
  if (self->_posterMediaProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_posterMediaProvider, a3);
    [(PXCMMInvitationViewModel *)self signalChange:16];
    v5 = v6;
  }
}

- (void)setPosterAsset:(id)a3
{
  v5 = a3;
  if (self->_posterAsset != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_posterAsset, a3);
    [(PXCMMInvitationViewModel *)self signalChange:8];
    v5 = v6;
  }
}

- (void)setPosterSubtitle:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXCMMInvitationViewModel.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"posterSubtitle"}];

    v5 = 0;
  }

  if (self->_posterSubtitle != v5)
  {
    v10 = v5;
    v6 = [(NSString *)v5 isEqualToString:?];
    v5 = v10;
    if (!v6)
    {
      v7 = [(NSString *)v10 copy];
      posterSubtitle = self->_posterSubtitle;
      self->_posterSubtitle = v7;

      [(PXCMMInvitationViewModel *)self signalChange:4];
      v5 = v10;
    }
  }
}

- (void)setPosterTitle:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXCMMInvitationViewModel.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"posterTitle"}];

    v5 = 0;
  }

  if (self->_posterTitle != v5)
  {
    v10 = v5;
    v6 = [(NSString *)v5 isEqualToString:?];
    v5 = v10;
    if (!v6)
    {
      v7 = [(NSString *)v10 copy];
      posterTitle = self->_posterTitle;
      self->_posterTitle = v7;

      [(PXCMMInvitationViewModel *)self signalChange:2];
      v5 = v10;
    }
  }
}

- (void)setOwner:(id)a3
{
  v5 = a3;
  if (self->_owner != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_owner, a3);
    [(PXCMMInvitationViewModel *)self signalChange:1024];
    v5 = v6;
  }
}

- (void)setIsNew:(BOOL)a3
{
  if (self->_isNew != a3)
  {
    self->_isNew = a3;
    [(PXCMMInvitationViewModel *)self signalChange:1];
  }
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXCMMInvitationViewModel;
  [(PXCMMInvitationViewModel *)&v3 performChanges:a3];
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

    v6 = [MEMORY[0x1E69DC888] clearColor];
    opaqueAncestorBackgroundColor = v3->_opaqueAncestorBackgroundColor;
    v3->_opaqueAncestorBackgroundColor = v6;
  }

  return v3;
}

@end