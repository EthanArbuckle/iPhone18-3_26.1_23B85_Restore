@interface WFWorkflowFileActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (CGRect)sourceRect;
- (WFFileRepresentation)workflowFile;
- (WFWorkflowFileActivity)initWithPopoverModel:(id)model;
- (WFWorkflowFileActivity)initWithSourceView:(id)view sourceRect:(CGRect)rect sourceItem:(id)item;
- (id)activityType;
- (id)activityViewController;
- (id)createViewController;
- (void)performActivity;
@end

@implementation WFWorkflowFileActivity

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)createViewController
{
  v12[1] = *MEMORY[0x277D85DE8];
  workflowFile = [(WFWorkflowFileActivity *)self workflowFile];
  fileURL = [workflowFile fileURL];

  v5 = objc_alloc(MEMORY[0x277D546D8]);
  v12[0] = fileURL;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v7 = [v5 initWithActivityItems:v6 applicationActivities:0];

  v11 = *MEMORY[0x277D54738];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  [v7 setExcludedActivityTypes:v8];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__WFWorkflowFileActivity_createViewController__block_invoke;
  v10[3] = &unk_279EE8000;
  v10[4] = self;
  [v7 setCompletionWithItemsHandler:v10];

  return v7;
}

- (id)activityViewController
{
  if (self->_popoverModel)
  {
    createViewController = 0;
  }

  else
  {
    createViewController = [(WFWorkflowFileActivity *)self createViewController];
    popoverPresentationController = [createViewController popoverPresentationController];
    sourceView = [(WFWorkflowFileActivity *)self sourceView];
    [popoverPresentationController setSourceView:sourceView];

    [(WFWorkflowFileActivity *)self sourceRect];
    [popoverPresentationController setSourceRect:?];
    sourceItem = [(WFWorkflowFileActivity *)self sourceItem];
    [popoverPresentationController setSourceItem:sourceItem];

    [popoverPresentationController setPermittedArrowDirections:{-[WFWorkflowFileActivity arrowDirection](self, "arrowDirection")}];
  }

  return createViewController;
}

- (void)performActivity
{
  popoverModel = self->_popoverModel;
  if (popoverModel)
  {
    createViewController = [(WFWorkflowFileActivity *)self createViewController];
    [(WFPopoverModel *)popoverModel displayFileActivityWith:createViewController];
  }
}

- (WFFileRepresentation)workflowFile
{
  workflowFile = self->_workflowFile;
  if (!workflowFile)
  {
    activityItems = [(WFWorkflowFileActivity *)self activityItems];
    v5 = [activityItems objectsMatchingClass:objc_opt_class()];
    firstObject = [v5 firstObject];

    record = [firstObject record];
    fileRepresentation = [record fileRepresentation];
    v9 = [fileRepresentation writeToDiskWithError:0];
    v10 = self->_workflowFile;
    self->_workflowFile = v9;

    workflowFile = self->_workflowFile;
  }

  return workflowFile;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  itemsCopy = items;
  if ([MEMORY[0x277D7C870] shortcutFileSharingEnabled])
  {
    v4 = [itemsCopy objectsMatchingClass:objc_opt_class()];
    v5 = [v4 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)activityType
{
  v2 = objc_opt_class();

  return [v2 activityType];
}

- (WFWorkflowFileActivity)initWithPopoverModel:(id)model
{
  modelCopy = model;
  v10.receiver = self;
  v10.super_class = WFWorkflowFileActivity;
  v6 = [(UIActivity *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_popoverModel, model);
    v8 = v7;
  }

  return v7;
}

- (WFWorkflowFileActivity)initWithSourceView:(id)view sourceRect:(CGRect)rect sourceItem:(id)item
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  itemCopy = item;
  v18.receiver = self;
  v18.super_class = WFWorkflowFileActivity;
  v14 = [(UIActivity *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sourceView, view);
    objc_storeStrong(&v15->_sourceItem, item);
    v15->_sourceRect.origin.x = x;
    v15->_sourceRect.origin.y = y;
    v15->_sourceRect.size.width = width;
    v15->_sourceRect.size.height = height;
    v16 = v15;
  }

  return v15;
}

@end