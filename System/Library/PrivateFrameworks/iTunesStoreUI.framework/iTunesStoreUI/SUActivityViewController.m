@interface SUActivityViewController
- (SUActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4;
- (id)_titleForActivity:(id)a3;
- (void)_performActivity:(id)a3;
- (void)_prepareActivity:(id)a3;
- (void)dealloc;
- (void)setTitle:(id)a3 forActivityType:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SUActivityViewController

- (SUActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4
{
  v7.receiver = self;
  v7.super_class = SUActivityViewController;
  v5 = [(SUActivityViewController *)&v7 initWithActivityItems:a3 applicationActivities:a4];
  if (v5)
  {
    v5->_suActivityItems = [a3 copy];
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

- (void)setTitle:(id)a3 forActivityType:(id)a4
{
  customTitles = self->_customTitles;
  if (a3)
  {
    if (!customTitles)
    {
      customTitles = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_customTitles = customTitles;
    }

    [(NSMutableDictionary *)customTitles setObject:a3 forKey:a4];
  }

  else
  {

    [(NSMutableDictionary *)customTitles removeObjectForKey:a4];
  }
}

- (void)_performActivity:(id)a3
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

        [*(*(&v11 + 1) + 8 * i) setSUActivity:a3];
      }

      v7 = [(NSArray *)suActivityItems countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = SUActivityViewController;
  [(SUActivityViewController *)&v10 _performActivity:a3];
}

- (void)_prepareActivity:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a3 socialComposeViewController];
    [v5 removeAllURLs];
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
          v12 = [v11 suLastProvidedItem];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v5 addURL:v12 withPreviewImage:{objc_msgSend(v11, "suPreviewImage")}];
          }
        }

        v8 = [(NSArray *)suActivityItems countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v13.receiver = self;
  v13.super_class = SUActivityViewController;
  [(SUActivityViewController *)&v13 _prepareActivity:a3];
}

- (id)_titleForActivity:(id)a3
{
  result = [(NSMutableDictionary *)self->_customTitles objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = SUActivityViewController;
    return [(SUActivityViewController *)&v6 _titleForActivity:a3];
  }

  return result;
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SUActivityViewController;
  [(SUActivityViewController *)&v7 viewDidAppear:a3];
  transitionSafetyCount = self->_transitionSafetyCount;
  v5 = transitionSafetyCount < 1;
  v6 = transitionSafetyCount - 1;
  if (!v5)
  {
    self->_transitionSafetyCount = v6;
    [objc_opt_class() endTransitionSafety];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SUActivityViewController;
  [(SUActivityViewController *)&v7 viewDidDisappear:a3];
  transitionSafetyCount = self->_transitionSafetyCount;
  v5 = transitionSafetyCount < 1;
  v6 = transitionSafetyCount - 1;
  if (!v5)
  {
    self->_transitionSafetyCount = v6;
    [objc_opt_class() endTransitionSafety];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    ++self->_transitionSafetyCount;
    [objc_opt_class() beginTransitionSafety];
  }

  v5.receiver = self;
  v5.super_class = SUActivityViewController;
  [(SUActivityViewController *)&v5 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
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

  if (v3)
  {
    self->_transitionSafetyCount = transitionSafetyCount + 1;
    [objc_opt_class() beginTransitionSafety];
  }

  v6.receiver = self;
  v6.super_class = SUActivityViewController;
  [(SUActivityViewController *)&v6 viewWillDisappear:v3];
}

@end