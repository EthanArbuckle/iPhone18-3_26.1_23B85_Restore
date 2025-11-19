@interface SearchUIAccessoryViewController
+ (Class)accessoryViewClassForRowModel:(id)a3;
- (SearchUIAccessoryViewController)init;
- (SearchUIAccessoryViewDelegate)delegate;
- (SearchUIFeedbackDelegate)feedbackDelegate;
- (id)controlInView:(id)a3;
- (void)didEngageAction:(unint64_t)a3 destination:(unint64_t)a4;
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
    v4 = [(SearchUIAccessoryViewController *)v2 setupView];
    [(SearchUIAccessoryViewController *)v3 setView:v4];

    v5 = [(SearchUIAccessoryViewController *)v3 view];
    v6 = [(SearchUIAccessoryViewController *)v3 controlInView:v5];
    control = v3->_control;
    v3->_control = v6;

    [(UIControl *)v3->_control addTarget:v3 action:sel_buttonPressed forControlEvents:64];
  }

  return v3;
}

+ (Class)accessoryViewClassForRowModel:(id)a3
{
  v18[6] = *MEMORY[0x1E69E9840];
  v3 = a3;
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
        if ([v11 supportsRowModel:{v3, v13}])
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

- (id)controlInView:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v4 subviews];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v6);
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

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)didEngageAction:(unint64_t)a3 destination:(unint64_t)a4
{
  v7 = [(SearchUIAccessoryViewController *)self delegate];
  v30 = [v7 feedbackDelegate];

  v8 = [(SearchUIAccessoryViewController *)self rowModel];
  v9 = [v8 identifyingResult];
  if (v9)
  {
    v10 = v9;
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      goto LABEL_5;
    }

    v12 = objc_alloc(MEMORY[0x1E69CA368]);
    v13 = [(SearchUIAccessoryViewController *)self rowModel];
    v14 = [v13 identifyingResult];
    v8 = [v12 initWithResult:v14 triggerEvent:2 destination:a4 actionTarget:a3];

    [v30 didEngageResult:v8];
  }

LABEL_5:
  v15 = [(SearchUIAccessoryViewController *)self rowModel];
  v16 = [v15 cardSection];
  if (v16)
  {
    v17 = v16;
    v18 = objc_opt_respondsToSelector();

    if ((v18 & 1) == 0)
    {
      goto LABEL_9;
    }

    v19 = objc_alloc(MEMORY[0x1E69C9F10]);
    v20 = [(SearchUIAccessoryViewController *)self rowModel];
    v21 = [v20 cardSection];
    v15 = [v19 initWithCardSection:v21 destination:0 triggerEvent:2 actionCardType:0];

    [v15 setActionTarget:a3];
    [v15 setQueryId:{-[SearchUIRowModel queryId](self->rowModel, "queryId")}];
    [v30 didEngageCardSection:v15];
  }

LABEL_9:
  if (objc_opt_respondsToSelector())
  {
    v22 = objc_opt_new();
    v23 = objc_alloc(MEMORY[0x1E69C9F98]);
    v24 = [(SearchUIAccessoryViewController *)self rowModel];
    v25 = [v24 cardSection];
    v26 = [v23 initWithCommand:v22 cardSection:v25];

    v27 = [(SearchUIAccessoryViewController *)self rowModel];
    [v26 setQueryId:{objc_msgSend(v27, "queryId")}];

    v28 = [(SearchUIAccessoryViewController *)self rowModel];
    v29 = [v28 identifyingResult];
    [v26 setResult:v29];

    [v26 setTriggerEvent:2];
    [v30 didPerformCommand:v26];
  }
}

- (void)hide
{
  v2 = [(SearchUIAccessoryViewController *)self view];
  [v2 setHidden:1];
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