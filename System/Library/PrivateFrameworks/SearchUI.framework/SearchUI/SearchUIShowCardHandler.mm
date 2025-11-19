@interface SearchUIShowCardHandler
+ (id)fallbackCommandForRowModel:(id)a3 environment:(id)a4;
- (id)createViewControllerForCommand:(id)a3 environment:(id)a4;
- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5;
- (void)prepareViewController:(id)a3 forTriggerEvent:(unint64_t)a4;
@end

@implementation SearchUIShowCardHandler

+ (id)fallbackCommandForRowModel:(id)a3 environment:(id)a4
{
  v4 = [a3 nextCard];
  if (v4)
  {
    v5 = objc_opt_new();
    [v5 setCard:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [v8 feedbackDelegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = [v9 card];

    [v10 presentViewControllerForCard:v11 animate:1];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SearchUIShowCardHandler;
    [(SearchUICommandHandler *)&v12 performCommand:v9 triggerEvent:a4 environment:v8];
  }
}

- (id)createViewControllerForCommand:(id)a3 environment:(id)a4
{
  v5 = a4;
  v6 = [a3 card];
  v7 = [v6 queryId];
  if (!v7)
  {
    v7 = [v5 queryId];
  }

  [v6 setQueryId:v7];
  v8 = [SearchUICardViewController alloc];
  v9 = [v5 feedbackDelegate];
  v10 = [(SearchUICardViewController *)v8 initWithCard:v6 feedbackListener:v9];

  v11 = [v5 commandDelegate];
  [(SearchUICardViewController *)v10 setCommandDelegate:v11];

  v12 = [v5 cardViewDelegate];
  [(SearchUICardViewController *)v10 setDelegate:v12];

  v13 = [(SearchUICardViewController *)v10 title];
  if (v13)
  {
    [(SearchUICardViewController *)v10 setTitle:v13];
  }

  else
  {
    v14 = [v5 sectionTitle];
    [(SearchUICardViewController *)v10 setTitle:v14];
  }

  v15 = [v5 resultsViewDelegate];
  v16 = [(SearchUICardViewController *)v10 tableViewController];
  [v16 setResultsViewDelegate:v15];

  -[SearchUICardViewController setThreeDTouchEnabled:](v10, "setThreeDTouchEnabled:", [v5 threeDTouchEnabled]);
  v17 = [v5 presentingViewController];
  if (v17)
  {
    v18 = v17;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
        -[SearchUICardViewController setLevel:](v10, "setLevel:", [v19 level] + 1);
        v20 = [(SearchUICardViewController *)v10 delegate];
        if (v20)
        {
          [(SearchUICardViewController *)v10 setDelegate:v20];
        }

        else
        {
          v21 = [v19 delegate];
          [(SearchUICardViewController *)v10 setDelegate:v21];
        }
      }

      v22 = [v18 parentViewController];

      v18 = v22;
    }

    while (v22);
  }

  return v10;
}

- (void)prepareViewController:(id)a3 forTriggerEvent:(unint64_t)a4
{
  v18 = a3;
  v6 = [(SearchUICommandHandler *)self environment];
  v7 = [v6 shouldUseInsetRoundedSections];
  if (a4 == 5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  [v18 setShouldUseInsetRoundedSections:v8];
  v9 = [v18 tableViewController];
  [v9 setShowsVerticalScrollIndicator:a4 != 5];

  [v18 setInPreviewPlatter:a4 == 5];
  if (a4 == 5)
  {
    v10 = [v6 presentingViewController];
    do
    {
      v11 = [v10 preferredUserInterfaceStyle];
      if (v11)
      {
        break;
      }

      v12 = [v10 parentViewController];

      v10 = v12;
    }

    while (v12);
    v13 = [v6 presentingViewController];
    v14 = [v13 view];
    v15 = [v14 traitCollection];
    v16 = [v15 _vibrancy];
  }

  else
  {
    v11 = 0;
    v16 = -1;
  }

  [v18 setOverrideUserInterfaceStyle:v11];
  v17 = [v18 view];
  [v17 _setOverrideVibrancyTrait:v16];
}

@end