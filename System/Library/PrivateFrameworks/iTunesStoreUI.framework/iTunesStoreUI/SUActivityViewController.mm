@interface SUActivityViewController
- (SUActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities;
- (id)_titleForActivity:(id)activity;
- (void)_performActivity:(id)activity;
- (void)_prepareActivity:(id)activity;
- (void)dealloc;
- (void)setTitle:(id)title forActivityType:(id)type;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SUActivityViewController

- (SUActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities
{
  v7.receiver = self;
  v7.super_class = SUActivityViewController;
  v5 = [(SUActivityViewController *)&v7 initWithActivityItems:items applicationActivities:activities];
  if (v5)
  {
    v5->_suActivityItems = [items copy];
  }

  return v5;
}

- (void)dealloc
{
  transitionSafetyCount = self->_transitionSafetyCount;
  if (transitionSafetyCount >= 1)
  {
    do
    {
      self->_transitionSafetyCount = transitionSafetyCount - 1;
      [objc_opt_class() endTransitionSafety];
      transitionSafetyCount = self->_transitionSafetyCount;
    }

    while (transitionSafetyCount > 0);
  }

  v4.receiver = self;
  v4.super_class = SUActivityViewController;
  [(SUActivityViewController *)&v4 dealloc];
}

- (void)setTitle:(id)title forActivityType:(id)type
{
  customTitles = self->_customTitles;
  if (title)
  {
    if (!customTitles)
    {
      customTitles = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_customTitles = customTitles;
    }

    [(NSMutableDictionary *)customTitles setObject:title forKey:type];
  }

  else
  {

    [(NSMutableDictionary *)customTitles removeObjectForKey:type];
  }
}

- (void)_performActivity:(id)activity
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  suActivityItems = self->_suActivityItems;
  v6 = [(NSArray *)suActivityItems countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(suActivityItems);
        }

        [*(*(&v11 + 1) + 8 * i) setSUActivity:activity];
      }

      v7 = [(NSArray *)suActivityItems countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = SUActivityViewController;
  [(SUActivityViewController *)&v10 _performActivity:activity];
}

- (void)_prepareActivity:(id)activity
{
  v19 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    socialComposeViewController = [activity socialComposeViewController];
    [socialComposeViewController removeAllURLs];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    suActivityItems = self->_suActivityItems;
    v7 = [(NSArray *)suActivityItems countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(suActivityItems);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          suLastProvidedItem = [v11 suLastProvidedItem];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [socialComposeViewController addURL:suLastProvidedItem withPreviewImage:{objc_msgSend(v11, "suPreviewImage")}];
          }
        }

        v8 = [(NSArray *)suActivityItems countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v13.receiver = self;
  v13.super_class = SUActivityViewController;
  [(SUActivityViewController *)&v13 _prepareActivity:activity];
}

- (id)_titleForActivity:(id)activity
{
  result = [(NSMutableDictionary *)self->_customTitles objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = SUActivityViewController;
    return [(SUActivityViewController *)&v6 _titleForActivity:activity];
  }

  return result;
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = SUActivityViewController;
  [(SUActivityViewController *)&v7 viewDidAppear:appear];
  transitionSafetyCount = self->_transitionSafetyCount;
  v5 = transitionSafetyCount < 1;
  v6 = transitionSafetyCount - 1;
  if (!v5)
  {
    self->_transitionSafetyCount = v6;
    [objc_opt_class() endTransitionSafety];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = SUActivityViewController;
  [(SUActivityViewController *)&v7 viewDidDisappear:disappear];
  transitionSafetyCount = self->_transitionSafetyCount;
  v5 = transitionSafetyCount < 1;
  v6 = transitionSafetyCount - 1;
  if (!v5)
  {
    self->_transitionSafetyCount = v6;
    [objc_opt_class() endTransitionSafety];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (appear)
  {
    ++self->_transitionSafetyCount;
    [objc_opt_class() beginTransitionSafety];
  }

  v5.receiver = self;
  v5.super_class = SUActivityViewController;
  [(SUActivityViewController *)&v5 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  transitionSafetyCount = self->_transitionSafetyCount;
  if (transitionSafetyCount >= 1)
  {
    do
    {
      self->_transitionSafetyCount = transitionSafetyCount - 1;
      [objc_opt_class() endTransitionSafety];
      transitionSafetyCount = self->_transitionSafetyCount;
    }

    while (transitionSafetyCount > 0);
  }

  if (disappearCopy)
  {
    self->_transitionSafetyCount = transitionSafetyCount + 1;
    [objc_opt_class() beginTransitionSafety];
  }

  v6.receiver = self;
  v6.super_class = SUActivityViewController;
  [(SUActivityViewController *)&v6 viewWillDisappear:disappearCopy];
}

@end