@interface PXPlaceholder
+ (id)featureNotEnabledWithDocumentationURLString:(id)string;
+ (id)featureNotImplementedWithTrackingRadar:(int64_t)radar;
- (PXPlaceholder)init;
- (PXPlaceholder)initWithTitle:(id)title subtitle:(id)subtitle fallbackActionTitle:(id)actionTitle url:(id)url;
- (PXPlaceholder)initWithTitle:(id)title trackingRadar:(int64_t)radar;
- (void)performFallbackAction;
@end

@implementation PXPlaceholder

- (void)performFallbackAction
{
  v2 = [(PXPlaceholder *)self url];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__PXPlaceholder_performFallbackAction__block_invoke;
  v5[3] = &unk_1E774B308;
  v6 = v2;
  v4 = v2;
  [mEMORY[0x1E69DC668] openURL:v4 options:MEMORY[0x1E695E0F8] completionHandler:v5];
}

void __38__PXPlaceholder_performFallbackAction__block_invoke(uint64_t a1, char a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v3 = objc_alloc(MEMORY[0x1E69CD9F8]);
    v9[0] = *(a1 + 32);
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v5 = [v3 initWithActivityItems:v4 applicationActivities:0];

    v6 = [MEMORY[0x1E69DC668] sharedApplication];
    v7 = [v6 px_firstKeyWindow];
    v8 = [v7 rootViewController];
    [v8 px_presentOverTopmostPresentedViewController:v5 animated:1 completion:0];
  }
}

- (PXPlaceholder)initWithTitle:(id)title subtitle:(id)subtitle fallbackActionTitle:(id)actionTitle url:(id)url
{
  titleCopy = title;
  subtitleCopy = subtitle;
  actionTitleCopy = actionTitle;
  urlCopy = url;
  v24.receiver = self;
  v24.super_class = PXPlaceholder;
  v14 = [(PXPlaceholder *)&v24 init];
  if (v14)
  {
    v15 = [titleCopy copy];
    title = v14->_title;
    v14->_title = v15;

    v17 = [subtitleCopy copy];
    subtitle = v14->_subtitle;
    v14->_subtitle = v17;

    v19 = [actionTitleCopy copy];
    fallbackActionTitle = v14->_fallbackActionTitle;
    v14->_fallbackActionTitle = v19;

    v21 = [urlCopy copy];
    url = v14->_url;
    v14->_url = v21;
  }

  return v14;
}

- (PXPlaceholder)initWithTitle:(id)title trackingRadar:(int64_t)radar
{
  titleCopy = title;
  radar = [MEMORY[0x1E696AEC0] stringWithFormat:@"Tracked with rdar://%ti", radar];
  v9 = MEMORY[0x1E695DFF8];
  radar2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rdar://%ti", radar];
  v11 = [v9 URLWithString:radar2];

  if (!v11)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlaceholder.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"url != nil"}];
  }

  v12 = [(PXPlaceholder *)self initWithTitle:titleCopy subtitle:radar fallbackActionTitle:@"Show Radar" url:v11];

  return v12;
}

- (PXPlaceholder)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlaceholder.m" lineNumber:41 description:{@"%s is not available as initializer", "-[PXPlaceholder init]"}];

  abort();
}

+ (id)featureNotEnabledWithDocumentationURLString:(id)string
{
  v5 = [MEMORY[0x1E695DFF8] URLWithString:string];
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlaceholder.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"url != nil"}];
  }

  v6 = [[self alloc] initWithTitle:@"Feature Not Enabled" subtitle:0 fallbackActionTitle:@"How To Enable" url:v5];

  return v6;
}

+ (id)featureNotImplementedWithTrackingRadar:(int64_t)radar
{
  v3 = [[self alloc] initWithTitle:@"Not Implemented Yet" trackingRadar:radar];

  return v3;
}

@end