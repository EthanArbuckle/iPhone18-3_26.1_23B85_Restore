@interface SXQuickLookRenderer
- (SXQuickLookRenderer)initWithStyler:(id)a3;
- (void)render:(id)a3 attributes:(id)a4;
- (void)renderThumbnailImage:(id)a3 view:(id)a4;
@end

@implementation SXQuickLookRenderer

- (SXQuickLookRenderer)initWithStyler:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXQuickLookRenderer;
  v6 = [(SXQuickLookRenderer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styler, a3);
  }

  return v7;
}

- (void)render:(id)a3 attributes:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 thumbnailControl];
  [v6 thumbnailFrame];
  [v8 setFrame:?];

  v9 = [v7 thumbnailImageView];
  [v6 thumbnailFrame];
  [v9 setFrame:?];

  v10 = [v7 errorLabel];
  [v6 errorLabelFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v10 setFrame:{v12, v14, v16, v18}];
  v19 = [(SXQuickLookRenderer *)self styler];
  [v19 styleViewController:v7];
}

- (void)renderThumbnailImage:(id)a3 view:(id)a4
{
  v5 = a4;
  [v5 setImage:a3 forState:0];
  [v5 setContentMode:1];
}

@end