@interface SearchUILeadingViewController
+ (Class)leadingViewClassForRowModel:(id)a3;
- (SearchUIFeedbackDelegate)feedbackDelegate;
- (SearchUILeadingViewController)init;
- (void)hide;
@end

@implementation SearchUILeadingViewController

- (SearchUILeadingViewController)init
{
  v6.receiver = self;
  v6.super_class = SearchUILeadingViewController;
  v2 = [(SearchUILeadingViewController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(SearchUILeadingViewController *)v2 setupView];
    [(SearchUILeadingViewController *)v3 setView:v4];
  }

  return v3;
}

+ (Class)leadingViewClassForRowModel:(id)a3
{
  v18[5] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = leadingViewClassForRowModel__classes;
  if (!leadingViewClassForRowModel__classes)
  {
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v18[3] = objc_opt_class();
    v18[4] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:5];
    v6 = leadingViewClassForRowModel__classes;
    leadingViewClassForRowModel__classes = v5;

    v4 = leadingViewClassForRowModel__classes;
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

- (void)hide
{
  v2 = [(SearchUILeadingViewController *)self view];
  [v2 setHidden:1];
}

- (SearchUIFeedbackDelegate)feedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->feedbackDelegate);

  return WeakRetained;
}

@end