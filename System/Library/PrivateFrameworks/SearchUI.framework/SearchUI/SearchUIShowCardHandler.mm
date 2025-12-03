@interface SearchUIShowCardHandler
+ (id)fallbackCommandForRowModel:(id)model environment:(id)environment;
- (id)createViewControllerForCommand:(id)command environment:(id)environment;
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
- (void)prepareViewController:(id)controller forTriggerEvent:(unint64_t)event;
@end

@implementation SearchUIShowCardHandler

+ (id)fallbackCommandForRowModel:(id)model environment:(id)environment
{
  nextCard = [model nextCard];
  if (nextCard)
  {
    v5 = objc_opt_new();
    [v5 setCard:nextCard];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  environmentCopy = environment;
  commandCopy = command;
  feedbackDelegate = [environmentCopy feedbackDelegate];
  if (objc_opt_respondsToSelector())
  {
    card = [commandCopy card];

    [feedbackDelegate presentViewControllerForCard:card animate:1];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SearchUIShowCardHandler;
    [(SearchUICommandHandler *)&v12 performCommand:commandCopy triggerEvent:event environment:environmentCopy];
  }
}

- (id)createViewControllerForCommand:(id)command environment:(id)environment
{
  environmentCopy = environment;
  card = [command card];
  queryId = [card queryId];
  if (!queryId)
  {
    queryId = [environmentCopy queryId];
  }

  [card setQueryId:queryId];
  v8 = [SearchUICardViewController alloc];
  feedbackDelegate = [environmentCopy feedbackDelegate];
  v10 = [(SearchUICardViewController *)v8 initWithCard:card feedbackListener:feedbackDelegate];

  commandDelegate = [environmentCopy commandDelegate];
  [(SearchUICardViewController *)v10 setCommandDelegate:commandDelegate];

  cardViewDelegate = [environmentCopy cardViewDelegate];
  [(SearchUICardViewController *)v10 setDelegate:cardViewDelegate];

  title = [(SearchUICardViewController *)v10 title];
  if (title)
  {
    [(SearchUICardViewController *)v10 setTitle:title];
  }

  else
  {
    sectionTitle = [environmentCopy sectionTitle];
    [(SearchUICardViewController *)v10 setTitle:sectionTitle];
  }

  resultsViewDelegate = [environmentCopy resultsViewDelegate];
  tableViewController = [(SearchUICardViewController *)v10 tableViewController];
  [tableViewController setResultsViewDelegate:resultsViewDelegate];

  -[SearchUICardViewController setThreeDTouchEnabled:](v10, "setThreeDTouchEnabled:", [environmentCopy threeDTouchEnabled]);
  presentingViewController = [environmentCopy presentingViewController];
  if (presentingViewController)
  {
    v18 = presentingViewController;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
        -[SearchUICardViewController setLevel:](v10, "setLevel:", [v19 level] + 1);
        delegate = [(SearchUICardViewController *)v10 delegate];
        if (delegate)
        {
          [(SearchUICardViewController *)v10 setDelegate:delegate];
        }

        else
        {
          delegate2 = [v19 delegate];
          [(SearchUICardViewController *)v10 setDelegate:delegate2];
        }
      }

      parentViewController = [v18 parentViewController];

      v18 = parentViewController;
    }

    while (parentViewController);
  }

  return v10;
}

- (void)prepareViewController:(id)controller forTriggerEvent:(unint64_t)event
{
  controllerCopy = controller;
  environment = [(SearchUICommandHandler *)self environment];
  shouldUseInsetRoundedSections = [environment shouldUseInsetRoundedSections];
  if (event == 5)
  {
    v8 = 0;
  }

  else
  {
    v8 = shouldUseInsetRoundedSections;
  }

  [controllerCopy setShouldUseInsetRoundedSections:v8];
  tableViewController = [controllerCopy tableViewController];
  [tableViewController setShowsVerticalScrollIndicator:event != 5];

  [controllerCopy setInPreviewPlatter:event == 5];
  if (event == 5)
  {
    presentingViewController = [environment presentingViewController];
    do
    {
      preferredUserInterfaceStyle = [presentingViewController preferredUserInterfaceStyle];
      if (preferredUserInterfaceStyle)
      {
        break;
      }

      parentViewController = [presentingViewController parentViewController];

      presentingViewController = parentViewController;
    }

    while (parentViewController);
    presentingViewController2 = [environment presentingViewController];
    view = [presentingViewController2 view];
    traitCollection = [view traitCollection];
    _vibrancy = [traitCollection _vibrancy];
  }

  else
  {
    preferredUserInterfaceStyle = 0;
    _vibrancy = -1;
  }

  [controllerCopy setOverrideUserInterfaceStyle:preferredUserInterfaceStyle];
  view2 = [controllerCopy view];
  [view2 _setOverrideVibrancyTrait:_vibrancy];
}

@end