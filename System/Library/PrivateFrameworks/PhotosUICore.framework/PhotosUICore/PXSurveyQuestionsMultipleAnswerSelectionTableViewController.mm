@interface PXSurveyQuestionsMultipleAnswerSelectionTableViewController
- (PXSurveyQuestionsMultipleAnswerSelectionTableViewController)initWithTitle:(id)title message:(id)message reasons:(id)reasons currentlySelectedReasons:(id)selectedReasons completion:(id)completion;
- (UIBarButtonItem)cancelButton;
- (UIBarButtonItem)doneButton;
- (void)_handleCancel;
- (void)_handleDone;
- (void)_setupNavigationBar:(id)bar message:(id)message;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation PXSurveyQuestionsMultipleAnswerSelectionTableViewController

- (void)_handleDone
{
  dataSource = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewController *)self dataSource];
  selectedReasons = [dataSource selectedReasons];

  v4 = [selectedReasons componentsJoinedByString:{@", "}];
  completionBlock = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewController *)self completionBlock];
  (completionBlock)[2](completionBlock, v4, 1);

  [(PXSurveyQuestionsMultipleAnswerSelectionTableViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_handleCancel
{
  completionBlock = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewController *)self completionBlock];
  completionBlock[2](completionBlock, 0, 0);

  [(PXSurveyQuestionsMultipleAnswerSelectionTableViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = [viewCopy cellForRowAtIndexPath:path];
  [v6 setAccessoryType:0];
  dataSource = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewController *)self dataSource];
  textLabel = [v6 textLabel];
  text = [textLabel text];
  [dataSource deselect:text];

  indexPathsForSelectedRows = [viewCopy indexPathsForSelectedRows];
  v11 = [indexPathsForSelectedRows count];

  if (!v11)
  {
    doneButton = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewController *)self doneButton];
    [doneButton setEnabled:0];
  }

  [viewCopy reloadData];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v7 = [viewCopy cellForRowAtIndexPath:pathCopy];
  if ([v7 accessoryType] == 3)
  {
    tableView = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewController *)self tableView];
    [tableView deselectRowAtIndexPath:pathCopy animated:1];

    tableView2 = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewController *)self tableView];
    [(PXSurveyQuestionsMultipleAnswerSelectionTableViewController *)self tableView:tableView2 didDeselectRowAtIndexPath:pathCopy];

    dataSource = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewController *)self dataSource];
    textLabel = [v7 textLabel];
    text = [textLabel text];
    [dataSource deselect:text];
  }

  else
  {
    [v7 setAccessoryType:3];
    dataSource2 = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewController *)self dataSource];
    textLabel2 = [v7 textLabel];
    text2 = [textLabel2 text];
    [dataSource2 select:text2];

    dataSource = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewController *)self doneButton];
    [dataSource setEnabled:1];
  }

  [viewCopy reloadData];
}

- (UIBarButtonItem)doneButton
{
  doneButton = self->_doneButton;
  if (!doneButton)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__handleDone];
    v5 = self->_doneButton;
    self->_doneButton = v4;

    doneButton = self->_doneButton;
  }

  return doneButton;
}

- (UIBarButtonItem)cancelButton
{
  cancelButton = self->_cancelButton;
  if (!cancelButton)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__handleCancel];
    v5 = self->_cancelButton;
    self->_cancelButton = v4;

    cancelButton = self->_cancelButton;
  }

  return cancelButton;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PXSurveyQuestionsMultipleAnswerSelectionTableViewController;
  [(PXSurveyQuestionsMultipleAnswerSelectionTableViewController *)&v5 viewDidDisappear:disappear];
  dataSource = self->_dataSource;
  self->_dataSource = 0;
}

- (void)_setupNavigationBar:(id)bar message:(id)message
{
  messageCopy = message;
  barCopy = bar;
  navigationItem = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewController *)self navigationItem];
  [navigationItem setTitle:barCopy];

  navigationItem2 = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewController *)self navigationItem];
  [navigationItem2 setPrompt:messageCopy];

  cancelButton = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewController *)self cancelButton];
  navigationItem3 = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewController *)self navigationItem];
  [navigationItem3 setLeftBarButtonItem:cancelButton];

  doneButton = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewController *)self doneButton];
  navigationItem4 = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewController *)self navigationItem];
  [navigationItem4 setRightBarButtonItem:doneButton];
}

- (PXSurveyQuestionsMultipleAnswerSelectionTableViewController)initWithTitle:(id)title message:(id)message reasons:(id)reasons currentlySelectedReasons:(id)selectedReasons completion:(id)completion
{
  titleCopy = title;
  messageCopy = message;
  reasonsCopy = reasons;
  selectedReasonsCopy = selectedReasons;
  completionCopy = completion;
  v32.receiver = self;
  v32.super_class = PXSurveyQuestionsMultipleAnswerSelectionTableViewController;
  v17 = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewController *)&v32 initWithStyle:0];
  if (v17)
  {
    v18 = _Block_copy(completionCopy);
    completionBlock = v17->_completionBlock;
    v17->_completionBlock = v18;

    tableView = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewController *)v17 tableView];
    [tableView setAllowsMultipleSelection:1];

    v21 = [PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource alloc];
    v22 = objc_alloc(MEMORY[0x1E695DFA8]);
    v23 = [selectedReasonsCopy componentsSeparatedByString:{@", "}];
    v24 = [v22 initWithArray:v23];
    v25 = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)v21 initWithReasons:reasonsCopy currentlySelected:v24];
    dataSource = v17->_dataSource;
    v17->_dataSource = v25;

    v27 = v17->_dataSource;
    tableView2 = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewController *)v17 tableView];
    [tableView2 setDataSource:v27];

    [(PXSurveyQuestionsMultipleAnswerSelectionTableViewController *)v17 _setupNavigationBar:titleCopy message:messageCopy];
    doneButton = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewController *)v17 doneButton];
    dataSource = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewController *)v17 dataSource];
    [doneButton setEnabled:{objc_msgSend(dataSource, "selectedReasonsCount") != 0}];
  }

  return v17;
}

@end