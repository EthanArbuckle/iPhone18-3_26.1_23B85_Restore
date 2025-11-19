@interface PXSurveyQuestionPlaceholderGadget
- (CGSize)sizeThatFits:(CGSize)result;
- (PXGadgetDelegate)delegate;
- (UIViewController)overrideContainerViewController;
- (void)placeholderGadgetView:(id)a3 invokeActionWithCompletionHandler:(id)a4;
- (void)placeholderGadgetViewSizeThatFitsDidChange:(id)a3;
- (void)prepareCollectionViewItem:(id)a3;
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

- (void)placeholderGadgetViewSizeThatFitsDidChange:(id)a3
{
  v4 = [(PXSurveyQuestionPlaceholderGadget *)self delegate];
  [v4 gadget:self didChange:64];
}

- (void)placeholderGadgetView:(id)a3 invokeActionWithCompletionHandler:(id)a4
{
  v12 = a3;
  v7 = a4;
  if (v12)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionPlaceholderGadget.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"view"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionPlaceholderGadget.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v8 = [(PXSurveyQuestionPlaceholderGadget *)self delegate];
  v9 = [v8 presentationEnvironmentForGadget:self];

  PXGenerateSurveyQuestionsWithOptions(533075965, -1, v9, v7);
}

- (void)prepareCollectionViewItem:(id)a3
{
  v19 = a3;
  if (v19)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v16 = NSStringFromClass(v17);
    v18 = [(PXSurveyQuestionPlaceholderGadgetView *)v19 px_descriptionForAssertionMessage];
    [v14 handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionPlaceholderGadget.m" lineNumber:50 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"collectionViewItem", v16, v18}];
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v14 handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionPlaceholderGadget.m" lineNumber:50 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"collectionViewItem", v16}];
  }

LABEL_3:
  view = self->_view;
  self->_view = v19;

  v6 = [MEMORY[0x1E69DC8C8] emptyConfiguration];
  v7 = PXLocalizedStringFromTable(@"PXForYouPhotosChallengePlaceholderTitle", @"PhotosUICore");
  [v6 setText:v7];

  v8 = PXLocalizedStringFromTable(@"PXForYouPhotosChallengePlaceholderMessage", @"PhotosUICore");
  [v6 setSecondaryText:v8];

  v9 = PXLocalizedStringFromTable(@"PXForYouPhotosChallengePlaceholderButtonTitle", @"PhotosUICore");
  v10 = [v6 buttonProperties];
  v11 = [v10 configuration];
  [v11 setTitle:v9];

  [(PXSurveyQuestionPlaceholderGadgetView *)self->_view setPlaceholderContentUnavailableConfiguration:v6];
  v12 = [MEMORY[0x1E69DC8C8] loadingConfiguration];
  v13 = PXLocalizedStringFromTable(@"PXForYouPhotosChallengePlaceholderActivityTitle", @"PhotosUICore");
  [v12 setText:v13];

  [(PXSurveyQuestionPlaceholderGadgetView *)self->_view setLoadingContentUnavailableConfiguration:v12];
  [(PXSurveyQuestionPlaceholderGadgetView *)self->_view setDelegate:self];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  width = result.width;
  result.height = width;
  return result;
}

@end