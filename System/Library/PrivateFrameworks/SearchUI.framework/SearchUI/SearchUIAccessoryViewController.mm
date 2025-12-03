@interface SearchUIAccessoryViewController
+ (Class)accessoryViewClassForRowModel:(id)model;
- (SearchUIAccessoryViewController)init;
- (SearchUIAccessoryViewDelegate)delegate;
- (SearchUIFeedbackDelegate)feedbackDelegate;
- (id)controlInView:(id)view;
- (void)didEngageAction:(unint64_t)action destination:(unint64_t)destination;
- (void)hide;
@end

@implementation SearchUIAccessoryViewController

- (SearchUIAccessoryViewController)init
{
  v9.receiver = self;
  v9.super_class = SearchUIAccessoryViewController;
  v2 = [(SearchUIAccessoryViewController *)&v9 init];
  v3 = v2;
  if (v2)
  {
    setupView = [(SearchUIAccessoryViewController *)v2 setupView];
    [(SearchUIAccessoryViewController *)v3 setView:setupView];

    view = [(SearchUIAccessoryViewController *)v3 view];
    v6 = [(SearchUIAccessoryViewController *)v3 controlInView:view];
    control = v3->_control;
    v3->_control = v6;

    [(UIControl *)v3->_control addTarget:v3 action:sel_buttonPressed forControlEvents:64];
  }

  return v3;
}

+ (Class)accessoryViewClassForRowModel:(id)model
{
  v18[6] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v4 = accessoryViewClassForRowModel__classes;
  if (!accessoryViewClassForRowModel__classes)
  {
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v18[3] = objc_opt_class();
    v18[4] = objc_opt_class();
    v18[5] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:6];
    v6 = accessoryViewClassForRowModel__classes;
    accessoryViewClassForRowModel__classes = v5;

    v4 = accessoryViewClassForRowModel__classes;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 supportsRowModel:{modelCopy, v13}])
        {
          v8 = v11;
          goto LABEL_13;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v8;
}

- (id)controlInView:(id)view
{
  v20 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = viewCopy;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    subviews = [viewCopy subviews];
    v7 = [subviews countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(subviews);
          }

          v12 = [(SearchUIAccessoryViewController *)self controlInView:*(*(&v15 + 1) + 8 * i)];
          v13 = v12;
          if (v12)
          {
            if (v9)
            {

              v5 = 0;
              goto LABEL_17;
            }

            v9 = v12;
          }
        }

        v8 = [subviews countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v9 = 0;
    }

    v9 = v9;
    v5 = v9;
LABEL_17:
  }

  return v5;
}

- (void)didEngageAction:(unint64_t)action destination:(unint64_t)destination
{
  delegate = [(SearchUIAccessoryViewController *)self delegate];
  feedbackDelegate = [delegate feedbackDelegate];

  rowModel = [(SearchUIAccessoryViewController *)self rowModel];
  identifyingResult = [rowModel identifyingResult];
  if (identifyingResult)
  {
    v10 = identifyingResult;
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      goto LABEL_5;
    }

    v12 = objc_alloc(MEMORY[0x1E69CA368]);
    rowModel2 = [(SearchUIAccessoryViewController *)self rowModel];
    identifyingResult2 = [rowModel2 identifyingResult];
    rowModel = [v12 initWithResult:identifyingResult2 triggerEvent:2 destination:destination actionTarget:action];

    [feedbackDelegate didEngageResult:rowModel];
  }

LABEL_5:
  rowModel3 = [(SearchUIAccessoryViewController *)self rowModel];
  cardSection = [rowModel3 cardSection];
  if (cardSection)
  {
    v17 = cardSection;
    v18 = objc_opt_respondsToSelector();

    if ((v18 & 1) == 0)
    {
      goto LABEL_9;
    }

    v19 = objc_alloc(MEMORY[0x1E69C9F10]);
    rowModel4 = [(SearchUIAccessoryViewController *)self rowModel];
    cardSection2 = [rowModel4 cardSection];
    rowModel3 = [v19 initWithCardSection:cardSection2 destination:0 triggerEvent:2 actionCardType:0];

    [rowModel3 setActionTarget:action];
    [rowModel3 setQueryId:{-[SearchUIRowModel queryId](self->rowModel, "queryId")}];
    [feedbackDelegate didEngageCardSection:rowModel3];
  }

LABEL_9:
  if (objc_opt_respondsToSelector())
  {
    v22 = objc_opt_new();
    v23 = objc_alloc(MEMORY[0x1E69C9F98]);
    rowModel5 = [(SearchUIAccessoryViewController *)self rowModel];
    cardSection3 = [rowModel5 cardSection];
    v26 = [v23 initWithCommand:v22 cardSection:cardSection3];

    rowModel6 = [(SearchUIAccessoryViewController *)self rowModel];
    [v26 setQueryId:{objc_msgSend(rowModel6, "queryId")}];

    rowModel7 = [(SearchUIAccessoryViewController *)self rowModel];
    identifyingResult3 = [rowModel7 identifyingResult];
    [v26 setResult:identifyingResult3];

    [v26 setTriggerEvent:2];
    [feedbackDelegate didPerformCommand:v26];
  }
}

- (void)hide
{
  view = [(SearchUIAccessoryViewController *)self view];
  [view setHidden:1];
}

- (SearchUIFeedbackDelegate)feedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->feedbackDelegate);

  return WeakRetained;
}

- (SearchUIAccessoryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end