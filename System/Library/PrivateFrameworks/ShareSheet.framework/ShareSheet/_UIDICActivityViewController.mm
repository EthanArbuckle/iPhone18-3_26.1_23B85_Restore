@interface _UIDICActivityViewController
- (_UIDICActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities options:(unint64_t)options;
- (_UIDICActivityViewControllerDelegate)documentInteractionActivityDelegate;
- (void)_handleDidFinishPerformingActivityType:(id)type completed:(BOOL)completed resultItems:(id)items activityError:(id)error;
- (void)_performActivity:(id)activity;
- (void)_prepareActivity:(id)activity;
- (void)_willPerformInServiceActivityType:(id)type activitySpecificMetadata:(id)metadata;
- (void)setDocumentInteractionActivityDelegate:(id)delegate;
@end

@implementation _UIDICActivityViewController

- (_UIDICActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities options:(unint64_t)options
{
  v9.receiver = self;
  v9.super_class = _UIDICActivityViewController;
  v6 = [(UIActivityViewController *)&v9 initWithActivityItems:items applicationActivities:activities];
  v7 = v6;
  if (v6)
  {
    v6->_options = options;
    [(UIActivityViewController *)v6 setIsContentManaged:options & 1];
  }

  return v7;
}

- (void)setDocumentInteractionActivityDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_documentInteractionActivityDelegate, delegateCopy);
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71___UIDICActivityViewController_setDocumentInteractionActivityDelegate___block_invoke;
  v5[3] = &unk_1E71FB4B8;
  objc_copyWeak(&v6, &location);
  [(UIActivityViewController *)self setCompletionWithItemsHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_prepareActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  v5 = [activityType isEqualToString:@"com.apple.UIKit.activity.Mail"];

  v6 = activityCopy;
  if (v5)
  {
    v7 = activityCopy;
    subject = [v7 subject];

    if (!subject)
    {
      documentInteractionActivityDelegate = [(_UIDICActivityViewController *)self documentInteractionActivityDelegate];
      name = [documentInteractionActivityDelegate name];
      [v7 setSubject:name];
    }

    v6 = activityCopy;
  }
}

- (void)_performActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = _UIDICActivityViewController;
  [(UIActivityViewController *)&v5 _performActivity:activity];
  WeakRetained = objc_loadWeakRetained(&self->_documentInteractionActivityDelegate);
  [(_UIDICActivityViewController *)self setDocumentInteractionActivityDelegateRetained:WeakRetained];

  [(_UIDICActivityViewController *)self setIsPerformingActivity:1];
}

- (void)_willPerformInServiceActivityType:(id)type activitySpecificMetadata:(id)metadata
{
  typeCopy = type;
  metadataCopy = metadata;
  if (_UIActivityOpenInApplicationTypeForActivityType(typeCopy))
  {
    v8 = [metadataCopy objectForKeyedSubscript:@"applicationIdentifier"];
    openActivityTargetApplicationIdentifier = self->_openActivityTargetApplicationIdentifier;
    self->_openActivityTargetApplicationIdentifier = v8;
  }

  if ([(NSString *)self->_openActivityTargetApplicationIdentifier length])
  {
    documentInteractionActivityDelegate = [(_UIDICActivityViewController *)self documentInteractionActivityDelegate];
    [documentInteractionActivityDelegate activityViewController:self openActivityWillBeginSendingToApplication:self->_openActivityTargetApplicationIdentifier];
  }

  v11.receiver = self;
  v11.super_class = _UIDICActivityViewController;
  [(UIActivityViewController *)&v11 _willPerformInServiceActivityType:typeCopy activitySpecificMetadata:metadataCopy];
}

- (void)_handleDidFinishPerformingActivityType:(id)type completed:(BOOL)completed resultItems:(id)items activityError:(id)error
{
  completedCopy = completed;
  typeCopy = type;
  itemsCopy = items;
  errorCopy = error;
  documentInteractionActivityDelegate = [(_UIDICActivityViewController *)self documentInteractionActivityDelegate];
  [documentInteractionActivityDelegate activityViewController:self didFinishPresentingActivityType:typeCopy];
  if ([(_UIDICActivityViewController *)self isPerformingActivity])
  {
    [(_UIDICActivityViewController *)self setIsPerformingActivity:0];
    [(_UIDICActivityViewController *)self setDocumentInteractionActivityDelegateRetained:0];
  }

  [documentInteractionActivityDelegate activityViewController:self didFinishPerformingActivityType:typeCopy completed:completedCopy items:itemsCopy error:errorCopy];
  if (self->_openActivityTargetApplicationIdentifier)
  {
    [documentInteractionActivityDelegate activityViewController:self openActivityDidEndSendingToApplication:?];
    openActivityTargetApplicationIdentifier = self->_openActivityTargetApplicationIdentifier;
    self->_openActivityTargetApplicationIdentifier = 0;
  }
}

- (_UIDICActivityViewControllerDelegate)documentInteractionActivityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_documentInteractionActivityDelegate);

  return WeakRetained;
}

@end