@interface PXSurveyQuestionsMultipleAnswerSelectionController
- (PXSurveyQuestionsMultipleAnswerSelectionController)initWithTitle:(id)a3 message:(id)a4 reasons:(id)a5 currentlySelectedReasons:(id)a6 completion:(id)a7;
@end

@implementation PXSurveyQuestionsMultipleAnswerSelectionController

- (PXSurveyQuestionsMultipleAnswerSelectionController)initWithTitle:(id)a3 message:(id)a4 reasons:(id)a5 currentlySelectedReasons:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[PXSurveyQuestionsMultipleAnswerSelectionTableViewController alloc] initWithTitle:v16 message:v15 reasons:v14 currentlySelectedReasons:v13 completion:v12];

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