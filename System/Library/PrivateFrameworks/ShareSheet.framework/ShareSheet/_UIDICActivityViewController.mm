@interface _UIDICActivityViewController
- (_UIDICActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4 options:(unint64_t)a5;
- (_UIDICActivityViewControllerDelegate)documentInteractionActivityDelegate;
- (void)_handleDidFinishPerformingActivityType:(id)a3 completed:(BOOL)a4 resultItems:(id)a5 activityError:(id)a6;
- (void)_performActivity:(id)a3;
- (void)_prepareActivity:(id)a3;
- (void)_willPerformInServiceActivityType:(id)a3 activitySpecificMetadata:(id)a4;
- (void)setDocumentInteractionActivityDelegate:(id)a3;
@end

@implementation _UIDICActivityViewController

- (_UIDICActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4 options:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = _UIDICActivityViewController;
  v6 = [(UIActivityViewController *)&v9 initWithActivityItems:a3 applicationActivities:a4];
  v7 = v6;
  if (v6)
  {
    v6->_options = a5;
    [(UIActivityViewController *)v6 setIsContentManaged:a5 & 1];
  }

  return v7;
}

- (void)setDocumentInteractionActivityDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_documentInteractionActivityDelegate, v4);
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

- (void)_prepareActivity:(id)a3
{
  v11 = a3;
  v4 = [v11 activityType];
  v5 = [v4 isEqualToString:@"com.apple.UIKit.activity.Mail"];

  v6 = v11;
  if (v5)
  {
    v7 = v11;
    v8 = [v7 subject];

    if (!v8)
    {
      v9 = [(_UIDICActivityViewController *)self documentInteractionActivityDelegate];
      v10 = [v9 name];
      [v7 setSubject:v10];
    }

    v6 = v11;
  }
}

- (void)_performActivity:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIDICActivityViewController;
  [(UIActivityViewController *)&v5 _performActivity:a3];
  WeakRetained = objc_loadWeakRetained(&self->_documentInteractionActivityDelegate);
  [(_UIDICActivityViewController *)self setDocumentInteractionActivityDelegateRetained:WeakRetained];

  [(_UIDICActivityViewController *)self setIsPerformingActivity:1];
}

- (void)_willPerformInServiceActivityType:(id)a3 activitySpecificMetadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_UIActivityOpenInApplicationTypeForActivityType(v6))
  {
    v8 = [v7 objectForKeyedSubscript:@"applicationIdentifier"];
    openActivityTargetApplicationIdentifier = self->_openActivityTargetApplicationIdentifier;
    self->_openActivityTargetApplicationIdentifier = v8;
  }

  if ([(NSString *)self->_openActivityTargetApplicationIdentifier length])
  {
    v10 = [(_UIDICActivityViewController *)self documentInteractionActivityDelegate];
    [v10 activityViewController:self openActivityWillBeginSendingToApplication:self->_openActivityTargetApplicationIdentifier];
  }

  v11.receiver = self;
  v11.super_class = _UIDICActivityViewController;
  [(UIActivityViewController *)&v11 _willPerformInServiceActivityType:v6 activitySpecificMetadata:v7];
}

- (void)_handleDidFinishPerformingActivityType:(id)a3 completed:(BOOL)a4 resultItems:(id)a5 activityError:(id)a6
{
  v8 = a4;
  v14 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [(_UIDICActivityViewController *)self documentInteractionActivityDelegate];
  [v12 activityViewController:self didFinishPresentingActivityType:v14];
  if ([(_UIDICActivityViewController *)self isPerformingActivity])
  {
    [(_UIDICActivityViewController *)self setIsPerformingActivity:0];
    [(_UIDICActivityViewController *)self setDocumentInteractionActivityDelegateRetained:0];
  }

  [v12 activityViewController:self didFinishPerformingActivityType:v14 completed:v8 items:v10 error:v11];
  if (self->_openActivityTargetApplicationIdentifier)
  {
    [v12 activityViewController:self openActivityDidEndSendingToApplication:?];
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