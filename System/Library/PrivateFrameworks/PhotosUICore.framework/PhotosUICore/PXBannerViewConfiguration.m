@interface PXBannerViewConfiguration
- (BOOL)wantsActionButton;
- (BOOL)wantsCancelButton;
- (PXBannerViewConfiguration)init;
- (PXBannerViewConfiguration)initWithTitle:(id)a3 subtitle:(id)a4 actionButtonTitle:(id)a5 cancelButtonTitle:(id)a6 actionButtonHandler:(id)a7 cancelButtonHandler:(id)a8 primaryActionIdentifier:(id)a9 cancelActionIdentifier:(id)a10;
@end

@implementation PXBannerViewConfiguration

- (BOOL)wantsActionButton
{
  v3 = [(PXBannerViewConfiguration *)self actionButtonTitle];
  if (v3)
  {
    v4 = [(PXBannerViewConfiguration *)self actionButtonHandler];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)wantsCancelButton
{
  v2 = [(PXBannerViewConfiguration *)self cancelButtonHandler];
  v3 = v2 != 0;

  return v3;
}

- (PXBannerViewConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXBannerView.m" lineNumber:57 description:{@"%s is not available as initializer", "-[PXBannerViewConfiguration init]"}];

  abort();
}

- (PXBannerViewConfiguration)initWithTitle:(id)a3 subtitle:(id)a4 actionButtonTitle:(id)a5 cancelButtonTitle:(id)a6 actionButtonHandler:(id)a7 cancelButtonHandler:(id)a8 primaryActionIdentifier:(id)a9 cancelActionIdentifier:(id)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v46.receiver = self;
  v46.super_class = PXBannerViewConfiguration;
  v25 = [(PXBannerViewConfiguration *)&v46 init];
  if (!v25)
  {
    goto LABEL_7;
  }

  if (!v17)
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    [v43 handleFailureInMethod:a2 object:v25 file:@"PXBannerView.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"title != nil"}];

    if (v18)
    {
      goto LABEL_4;
    }

LABEL_9:
    v44 = [MEMORY[0x1E696AAA8] currentHandler];
    [v44 handleFailureInMethod:a2 object:v25 file:@"PXBannerView.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"subtitle != nil"}];

    goto LABEL_4;
  }

  if (!v18)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v19 == 0) != (v21 == 0))
  {
    v45 = [MEMORY[0x1E696AAA8] currentHandler];
    [v45 handleFailureInMethod:a2 object:v25 file:@"PXBannerView.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"(actionButtonTitle == nil) == (actionButtonHandler == nil)"}];
  }

  v26 = [v17 copy];
  title = v25->_title;
  v25->_title = v26;

  v28 = [v18 copy];
  subtitle = v25->_subtitle;
  v25->_subtitle = v28;

  v30 = [v19 copy];
  actionButtonTitle = v25->_actionButtonTitle;
  v25->_actionButtonTitle = v30;

  v32 = [v20 copy];
  cancelButtonTitle = v25->_cancelButtonTitle;
  v25->_cancelButtonTitle = v32;

  v34 = [v21 copy];
  actionButtonHandler = v25->_actionButtonHandler;
  v25->_actionButtonHandler = v34;

  v36 = [v22 copy];
  cancelButtonHandler = v25->_cancelButtonHandler;
  v25->_cancelButtonHandler = v36;

  v38 = [v23 copy];
  primaryActionIdentifier = v25->_primaryActionIdentifier;
  v25->_primaryActionIdentifier = v38;

  v40 = [v24 copy];
  cancelActionIdentifier = v25->_cancelActionIdentifier;
  v25->_cancelActionIdentifier = v40;

LABEL_7:
  return v25;
}

@end