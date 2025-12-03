@interface PXSurveyQuestionPlaceholderGadget
- (CGSize)sizeThatFits:(CGSize)result;
- (PXGadgetDelegate)delegate;
- (UIViewController)overrideContainerViewController;
- (void)placeholderGadgetView:(id)view invokeActionWithCompletionHandler:(id)handler;
- (void)placeholderGadgetViewSizeThatFitsDidChange:(id)change;
- (void)prepareCollectionViewItem:(id)item;
@end

@implementation PXSurveyQuestionPlaceholderGadget

- (UIViewController)overrideContainerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_overrideContainerViewController);

  return WeakRetained;
}

- (PXGadgetDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)placeholderGadgetViewSizeThatFitsDidChange:(id)change
{
  delegate = [(PXSurveyQuestionPlaceholderGadget *)self delegate];
  [delegate gadget:self didChange:64];
}

- (void)placeholderGadgetView:(id)view invokeActionWithCompletionHandler:(id)handler
{
  viewCopy = view;
  handlerCopy = handler;
  if (viewCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionPlaceholderGadget.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"view"}];

    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionPlaceholderGadget.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  delegate = [(PXSurveyQuestionPlaceholderGadget *)self delegate];
  v9 = [delegate presentationEnvironmentForGadget:self];

  PXGenerateSurveyQuestionsWithOptions(533075965, -1, v9, handlerCopy);
}

- (void)prepareCollectionViewItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v16 = NSStringFromClass(v17);
    px_descriptionForAssertionMessage = [(PXSurveyQuestionPlaceholderGadgetView *)itemCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionPlaceholderGadget.m" lineNumber:50 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"collectionViewItem", v16, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionPlaceholderGadget.m" lineNumber:50 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"collectionViewItem", v16}];
  }

LABEL_3:
  view = self->_view;
  self->_view = itemCopy;

  emptyConfiguration = [MEMORY[0x1E69DC8C8] emptyConfiguration];
  v7 = PXLocalizedStringFromTable(@"PXForYouPhotosChallengePlaceholderTitle", @"PhotosUICore");
  [emptyConfiguration setText:v7];

  v8 = PXLocalizedStringFromTable(@"PXForYouPhotosChallengePlaceholderMessage", @"PhotosUICore");
  [emptyConfiguration setSecondaryText:v8];

  v9 = PXLocalizedStringFromTable(@"PXForYouPhotosChallengePlaceholderButtonTitle", @"PhotosUICore");
  buttonProperties = [emptyConfiguration buttonProperties];
  configuration = [buttonProperties configuration];
  [configuration setTitle:v9];

  [(PXSurveyQuestionPlaceholderGadgetView *)self->_view setPlaceholderContentUnavailableConfiguration:emptyConfiguration];
  loadingConfiguration = [MEMORY[0x1E69DC8C8] loadingConfiguration];
  v13 = PXLocalizedStringFromTable(@"PXForYouPhotosChallengePlaceholderActivityTitle", @"PhotosUICore");
  [loadingConfiguration setText:v13];

  [(PXSurveyQuestionPlaceholderGadgetView *)self->_view setLoadingContentUnavailableConfiguration:loadingConfiguration];
  [(PXSurveyQuestionPlaceholderGadgetView *)self->_view setDelegate:self];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  width = result.width;
  result.height = width;
  return result;
}

@end