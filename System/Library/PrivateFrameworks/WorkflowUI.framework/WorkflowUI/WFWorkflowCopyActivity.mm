@interface WFWorkflowCopyActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (WFWorkflowCopyActivity)initWithExcludedURL:(id)l;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation WFWorkflowCopyActivity

- (void)performActivity
{
  v3 = [(WFWorkflowCopyActivity *)self URL];

  if (v3)
  {
    generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
    v5 = [(WFWorkflowCopyActivity *)self URL];
    [generalPasteboard setURL:v5];
  }

  [(UIActivity *)self activityDidFinish:1];
}

- (void)prepareWithActivityItems:(id)items
{
  v4 = MEMORY[0x277CCAC30];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__WFWorkflowCopyActivity_prepareWithActivityItems___block_invoke;
  v9[3] = &unk_279EE7A38;
  v9[4] = self;
  itemsCopy = items;
  v6 = [v4 predicateWithBlock:v9];
  v7 = [itemsCopy filteredArrayUsingPredicate:v6];

  firstObject = [v7 firstObject];
  [(WFWorkflowCopyActivity *)self setURL:firstObject];
}

uint64_t __51__WFWorkflowCopyActivity_prepareWithActivityItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (!v7)
  {
    v10 = 0;
    v9 = 0;
    v8 = 0;
LABEL_8:

    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0;
    v8 = 0;
    v10 = v7;
    goto LABEL_8;
  }

  if (([v7 isFileURL] & 1) == 0)
  {
    v10 = [*(a1 + 32) excludedURL];
    v8 = [v7 isEqual:v10] ^ 1;
    v9 = v7;
    goto LABEL_8;
  }

  v8 = 0;
  v9 = v7;
LABEL_9:

  return v8;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  v3 = [items if_firstObjectPassingTest:&__block_literal_global_5146];
  v4 = v3 != 0;

  return v4;
}

uint64_t __54__WFWorkflowCopyActivity_canPerformWithActivityItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 1;
  }

  else
  {
    v4 = v2;
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v3 = [v4 isFileURL] ^ 1;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (WFWorkflowCopyActivity)initWithExcludedURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = WFWorkflowCopyActivity;
  v6 = [(UIActivity *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_excludedURL, l);
    v8 = v7;
  }

  return v7;
}

@end