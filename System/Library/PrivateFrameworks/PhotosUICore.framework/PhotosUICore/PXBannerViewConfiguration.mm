@interface PXBannerViewConfiguration
- (BOOL)wantsActionButton;
- (BOOL)wantsCancelButton;
- (PXBannerViewConfiguration)init;
- (PXBannerViewConfiguration)initWithTitle:(id)title subtitle:(id)subtitle actionButtonTitle:(id)buttonTitle cancelButtonTitle:(id)cancelButtonTitle actionButtonHandler:(id)handler cancelButtonHandler:(id)buttonHandler primaryActionIdentifier:(id)identifier cancelActionIdentifier:(id)self0;
@end

@implementation PXBannerViewConfiguration

- (BOOL)wantsActionButton
{
  actionButtonTitle = [(PXBannerViewConfiguration *)self actionButtonTitle];
  if (actionButtonTitle)
  {
    actionButtonHandler = [(PXBannerViewConfiguration *)self actionButtonHandler];
    v5 = actionButtonHandler != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)wantsCancelButton
{
  cancelButtonHandler = [(PXBannerViewConfiguration *)self cancelButtonHandler];
  v3 = cancelButtonHandler != 0;

  return v3;
}

- (PXBannerViewConfiguration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXBannerView.m" lineNumber:57 description:{@"%s is not available as initializer", "-[PXBannerViewConfiguration init]"}];

  abort();
}

- (PXBannerViewConfiguration)initWithTitle:(id)title subtitle:(id)subtitle actionButtonTitle:(id)buttonTitle cancelButtonTitle:(id)cancelButtonTitle actionButtonHandler:(id)handler cancelButtonHandler:(id)buttonHandler primaryActionIdentifier:(id)identifier cancelActionIdentifier:(id)self0
{
  titleCopy = title;
  subtitleCopy = subtitle;
  buttonTitleCopy = buttonTitle;
  cancelButtonTitleCopy = cancelButtonTitle;
  handlerCopy = handler;
  buttonHandlerCopy = buttonHandler;
  identifierCopy = identifier;
  actionIdentifierCopy = actionIdentifier;
  v46.receiver = self;
  v46.super_class = PXBannerViewConfiguration;
  v25 = [(PXBannerViewConfiguration *)&v46 init];
  if (!v25)
  {
    goto LABEL_7;
  }

  if (!titleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:v25 file:@"PXBannerView.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"title != nil"}];

    if (subtitleCopy)
    {
      goto LABEL_4;
    }

LABEL_9:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:v25 file:@"PXBannerView.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"subtitle != nil"}];

    goto LABEL_4;
  }

  if (!subtitleCopy)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((buttonTitleCopy == 0) != (handlerCopy == 0))
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:v25 file:@"PXBannerView.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"(actionButtonTitle == nil) == (actionButtonHandler == nil)"}];
  }

  v26 = [titleCopy copy];
  title = v25->_title;
  v25->_title = v26;

  v28 = [subtitleCopy copy];
  subtitle = v25->_subtitle;
  v25->_subtitle = v28;

  v30 = [buttonTitleCopy copy];
  actionButtonTitle = v25->_actionButtonTitle;
  v25->_actionButtonTitle = v30;

  v32 = [cancelButtonTitleCopy copy];
  cancelButtonTitle = v25->_cancelButtonTitle;
  v25->_cancelButtonTitle = v32;

  v34 = [handlerCopy copy];
  actionButtonHandler = v25->_actionButtonHandler;
  v25->_actionButtonHandler = v34;

  v36 = [buttonHandlerCopy copy];
  cancelButtonHandler = v25->_cancelButtonHandler;
  v25->_cancelButtonHandler = v36;

  v38 = [identifierCopy copy];
  primaryActionIdentifier = v25->_primaryActionIdentifier;
  v25->_primaryActionIdentifier = v38;

  v40 = [actionIdentifierCopy copy];
  cancelActionIdentifier = v25->_cancelActionIdentifier;
  v25->_cancelActionIdentifier = v40;

LABEL_7:
  return v25;
}

@end