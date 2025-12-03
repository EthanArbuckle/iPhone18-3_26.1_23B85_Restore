@interface RUIElementViewController
- (RUIElementViewController)initWithElement:(id)element;
- (void)_setUpViews;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation RUIElementViewController

- (RUIElementViewController)initWithElement:(id)element
{
  elementCopy = element;
  v9.receiver = self;
  v9.super_class = RUIElementViewController;
  v6 = [(RUIElementViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_element, element);
  }

  return v7;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = RUIElementViewController;
  [(RUIElementViewController *)&v3 viewDidLoad];
  [(RUIElementViewController *)self _setUpViews];
}

- (void)_setUpViews
{
  v26[4] = *MEMORY[0x277D85DE8];
  element = [(RUIElementViewController *)self element];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    element2 = [(RUIElementViewController *)self element];
    view = [element2 view];

    if (view)
    {
      view2 = [(RUIElementViewController *)self view];
      [view2 addSubview:view];

      [view setTranslatesAutoresizingMaskIntoConstraints:0];
      v18 = MEMORY[0x277CCAAD0];
      topAnchor = [view topAnchor];
      view3 = [(RUIElementViewController *)self view];
      topAnchor2 = [view3 topAnchor];
      v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v26[0] = v22;
      bottomAnchor = [view bottomAnchor];
      view4 = [(RUIElementViewController *)self view];
      bottomAnchor2 = [view4 bottomAnchor];
      v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v26[1] = v17;
      leadingAnchor = [view leadingAnchor];
      view5 = [(RUIElementViewController *)self view];
      leadingAnchor2 = [view5 leadingAnchor];
      v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v26[2] = v11;
      trailingAnchor = [view trailingAnchor];
      view6 = [(RUIElementViewController *)self view];
      trailingAnchor2 = [view6 trailingAnchor];
      v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v26[3] = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
      [v18 activateConstraints:v16];
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = RUIElementViewController;
  [(RUIElementViewController *)&v8 viewWillAppear:?];
  element = [(RUIElementViewController *)self element];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    element2 = [(RUIElementViewController *)self element];
    [element2 viewWillAppear:appearCopy];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = RUIElementViewController;
  [(RUIElementViewController *)&v8 viewDidAppear:?];
  element = [(RUIElementViewController *)self element];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    element2 = [(RUIElementViewController *)self element];
    [element2 viewDidAppear:appearCopy];
  }
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = RUIElementViewController;
  [(RUIElementViewController *)&v6 viewDidLayoutSubviews];
  element = [(RUIElementViewController *)self element];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    element2 = [(RUIElementViewController *)self element];
    [element2 viewDidLayout];
  }
}

@end