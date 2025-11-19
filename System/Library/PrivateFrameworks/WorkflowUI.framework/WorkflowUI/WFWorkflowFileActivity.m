@interface WFWorkflowFileActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
- (CGRect)sourceRect;
- (WFFileRepresentation)workflowFile;
- (WFWorkflowFileActivity)initWithPopoverModel:(id)a3;
- (WFWorkflowFileActivity)initWithSourceView:(id)a3 sourceRect:(CGRect)a4 sourceItem:(id)a5;
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
  v3 = [(WFWorkflowFileActivity *)self workflowFile];
  v4 = [v3 fileURL];

  v5 = objc_alloc(MEMORY[0x277D546D8]);
  v12[0] = v4;
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
    v2 = 0;
  }

  else
  {
    v2 = [(WFWorkflowFileActivity *)self createViewController];
    v4 = [v2 popoverPresentationController];
    v5 = [(WFWorkflowFileActivity *)self sourceView];
    [v4 setSourceView:v5];

    [(WFWorkflowFileActivity *)self sourceRect];
    [v4 setSourceRect:?];
    v6 = [(WFWorkflowFileActivity *)self sourceItem];
    [v4 setSourceItem:v6];

    [v4 setPermittedArrowDirections:{-[WFWorkflowFileActivity arrowDirection](self, "arrowDirection")}];
  }

  return v2;
}

- (void)performActivity
{
  popoverModel = self->_popoverModel;
  if (popoverModel)
  {
    v3 = [(WFWorkflowFileActivity *)self createViewController];
    [(WFPopoverModel *)popoverModel displayFileActivityWith:v3];
  }
}

- (WFFileRepresentation)workflowFile
{
  workflowFile = self->_workflowFile;
  if (!workflowFile)
  {
    v4 = [(WFWorkflowFileActivity *)self activityItems];
    v5 = [v4 objectsMatchingClass:objc_opt_class()];
    v6 = [v5 firstObject];

    v7 = [v6 record];
    v8 = [v7 fileRepresentation];
    v9 = [v8 writeToDiskWithError:0];
    v10 = self->_workflowFile;
    self->_workflowFile = v9;

    workflowFile = self->_workflowFile;
  }

  return workflowFile;
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x277D7C870] shortcutFileSharingEnabled])
  {
    v4 = [v3 objectsMatchingClass:objc_opt_class()];
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

- (WFWorkflowFileActivity)initWithPopoverModel:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFWorkflowFileActivity;
  v6 = [(UIActivity *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_popoverModel, a3);
    v8 = v7;
  }

  return v7;
}

- (WFWorkflowFileActivity)initWithSourceView:(id)a3 sourceRect:(CGRect)a4 sourceItem:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3;
  v13 = a5;
  v18.receiver = self;
  v18.super_class = WFWorkflowFileActivity;
  v14 = [(UIActivity *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sourceView, a3);
    objc_storeStrong(&v15->_sourceItem, a5);
    v15->_sourceRect.origin.x = x;
    v15->_sourceRect.origin.y = y;
    v15->_sourceRect.size.width = width;
    v15->_sourceRect.size.height = height;
    v16 = v15;
  }

  return v15;
}

@end