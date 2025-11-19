@interface PXPlaceholder
+ (id)featureNotEnabledWithDocumentationURLString:(id)a3;
+ (id)featureNotImplementedWithTrackingRadar:(int64_t)a3;
- (PXPlaceholder)init;
- (PXPlaceholder)initWithTitle:(id)a3 subtitle:(id)a4 fallbackActionTitle:(id)a5 url:(id)a6;
- (PXPlaceholder)initWithTitle:(id)a3 trackingRadar:(int64_t)a4;
- (void)performFallbackAction;
@end

@implementation PXPlaceholder

- (void)performFallbackAction
{
  v2 = [(PXPlaceholder *)self url];
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__PXPlaceholder_performFallbackAction__block_invoke;
  v5[3] = &unk_1E774B308;
  v6 = v2;
  v4 = v2;
  [v3 openURL:v4 options:MEMORY[0x1E695E0F8] completionHandler:v5];
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

- (PXPlaceholder)initWithTitle:(id)a3 subtitle:(id)a4 fallbackActionTitle:(id)a5 url:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = PXPlaceholder;
  v14 = [(PXPlaceholder *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    title = v14->_title;
    v14->_title = v15;

    v17 = [v11 copy];
    subtitle = v14->_subtitle;
    v14->_subtitle = v17;

    v19 = [v12 copy];
    fallbackActionTitle = v14->_fallbackActionTitle;
    v14->_fallbackActionTitle = v19;

    v21 = [v13 copy];
    url = v14->_url;
    v14->_url = v21;
  }

  return v14;
}

- (PXPlaceholder)initWithTitle:(id)a3 trackingRadar:(int64_t)a4
{
  v7 = a3;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Tracked with rdar://%ti", a4];
  v9 = MEMORY[0x1E695DFF8];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rdar://%ti", a4];
  v11 = [v9 URLWithString:v10];

  if (!v11)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXPlaceholder.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"url != nil"}];
  }

  v12 = [(PXPlaceholder *)self initWithTitle:v7 subtitle:v8 fallbackActionTitle:@"Show Radar" url:v11];

  return v12;
}

- (PXPlaceholder)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPlaceholder.m" lineNumber:41 description:{@"%s is not available as initializer", "-[PXPlaceholder init]"}];

  abort();
}

+ (id)featureNotEnabledWithDocumentationURLString:(id)a3
{
  v5 = [MEMORY[0x1E695DFF8] URLWithString:a3];
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"PXPlaceholder.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"url != nil"}];
  }

  v6 = [[a1 alloc] initWithTitle:@"Feature Not Enabled" subtitle:0 fallbackActionTitle:@"How To Enable" url:v5];

  return v6;
}

+ (id)featureNotImplementedWithTrackingRadar:(int64_t)a3
{
  v3 = [[a1 alloc] initWithTitle:@"Not Implemented Yet" trackingRadar:a3];

  return v3;
}

@end