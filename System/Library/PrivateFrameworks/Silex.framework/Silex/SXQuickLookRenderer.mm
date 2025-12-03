@interface SXQuickLookRenderer
- (SXQuickLookRenderer)initWithStyler:(id)styler;
- (void)render:(id)render attributes:(id)attributes;
- (void)renderThumbnailImage:(id)image view:(id)view;
@end

@implementation SXQuickLookRenderer

- (SXQuickLookRenderer)initWithStyler:(id)styler
{
  stylerCopy = styler;
  v9.receiver = self;
  v9.super_class = SXQuickLookRenderer;
  v6 = [(SXQuickLookRenderer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styler, styler);
  }

  return v7;
}

- (void)render:(id)render attributes:(id)attributes
{
  attributesCopy = attributes;
  renderCopy = render;
  thumbnailControl = [renderCopy thumbnailControl];
  [attributesCopy thumbnailFrame];
  [thumbnailControl setFrame:?];

  thumbnailImageView = [renderCopy thumbnailImageView];
  [attributesCopy thumbnailFrame];
  [thumbnailImageView setFrame:?];

  errorLabel = [renderCopy errorLabel];
  [attributesCopy errorLabelFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [errorLabel setFrame:{v12, v14, v16, v18}];
  styler = [(SXQuickLookRenderer *)self styler];
  [styler styleViewController:renderCopy];
}

- (void)renderThumbnailImage:(id)image view:(id)view
{
  viewCopy = view;
  [viewCopy setImage:image forState:0];
  [viewCopy setContentMode:1];
}

@end