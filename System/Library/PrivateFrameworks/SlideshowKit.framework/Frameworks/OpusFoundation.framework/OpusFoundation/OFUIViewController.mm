@interface OFUIViewController
- (OFUIViewController)initWithCoder:(id)coder;
- (OFUIViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation OFUIViewController

- (OFUIViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = OFUIViewController;
  v4 = [(OFUIViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(OFUIViewController *)v4 commonInit];
  }

  return v5;
}

- (OFUIViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = OFUIViewController;
  v3 = [(OFUIViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(OFUIViewController *)v3 commonInit];
  }

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OFUIViewController;
  [(OFUIViewController *)&v2 dealloc];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = OFUIViewController;
  [(OFUIViewController *)&v2 viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = OFUIViewController;
  [(OFUIViewController *)&v2 didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = OFUIViewController;
  [(OFUIViewController *)&v3 viewWillAppear:appear];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = OFUIViewController;
  [(OFUIViewController *)&v3 viewDidAppear:appear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = OFUIViewController;
  [(OFUIViewController *)&v3 viewWillDisappear:disappear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = OFUIViewController;
  [(OFUIViewController *)&v3 viewDidDisappear:disappear];
}

- (void)loadView
{
  if ([(OFUIViewController *)self nibName])
  {
    v10.receiver = self;
    v10.super_class = OFUIViewController;
    [(OFUIViewController *)&v10 loadView];
    view = [(OFUIViewController *)self view];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [view setViewControllerProxy:self];
    }

    else
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ loaded the %@ nib but didn't get a OFUIView.", objc_msgSend(v6, "stringWithFormat:", @"-[%@ %@]", v8, NSStringFromSelector(a2)), -[OFUIViewController nibName](self, "nibName")}];
    }
  }

  else
  {
    v5 = objc_alloc([objc_opt_class() viewClass]);
    [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
    v9 = [v5 initWithFrame:?];
    [v9 setAutoresizingMask:18];
    [v9 setViewControllerProxy:self];
    [(OFUIViewController *)self setView:v9];
  }
}

@end