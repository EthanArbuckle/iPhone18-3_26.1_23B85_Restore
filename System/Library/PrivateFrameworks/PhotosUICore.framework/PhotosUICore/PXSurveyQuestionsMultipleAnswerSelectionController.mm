@interface PXSurveyQuestionsMultipleAnswerSelectionController
- (PXSurveyQuestionsMultipleAnswerSelectionController)initWithTitle:(id)title message:(id)message reasons:(id)reasons currentlySelectedReasons:(id)selectedReasons completion:(id)completion;
@end

@implementation PXSurveyQuestionsMultipleAnswerSelectionController

- (PXSurveyQuestionsMultipleAnswerSelectionController)initWithTitle:(id)title message:(id)message reasons:(id)reasons currentlySelectedReasons:(id)selectedReasons completion:(id)completion
{
  completionCopy = completion;
  selectedReasonsCopy = selectedReasons;
  reasonsCopy = reasons;
  messageCopy = message;
  titleCopy = title;
  v17 = [[PXSurveyQuestionsMultipleAnswerSelectionTableViewController alloc] initWithTitle:titleCopy message:messageCopy reasons:reasonsCopy currentlySelectedReasons:selectedReasonsCopy completion:completionCopy];

  v20.receiver = self;
  v20.super_class = PXSurveyQuestionsMultipleAnswerSelectionController;
  v18 = [(PXSurveyQuestionsMultipleAnswerSelectionController *)&v20 initWithRootViewController:v17];

  if (v18)
  {
    [(PXSurveyQuestionsMultipleAnswerSelectionController *)v18 setModalPresentationStyle:0];
  }

  return v18;
}

@end