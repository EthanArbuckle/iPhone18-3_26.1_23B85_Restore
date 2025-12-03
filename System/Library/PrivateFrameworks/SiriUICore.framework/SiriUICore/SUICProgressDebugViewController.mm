@interface SUICProgressDebugViewController
- (NSProgress)progress;
- (SUICProgressDebugViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_eventGeneratorButtonTouchedUpInside:(id)inside;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SUICProgressDebugViewController

- (SUICProgressDebugViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v12.receiver = self;
  v12.super_class = SUICProgressDebugViewController;
  v4 = [(SUICProgressDebugViewController *)&v12 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_alloc_init(SUICProgressIndicatorViewController);
    indicatorViewController = v4->_indicatorViewController;
    v4->_indicatorViewController = v5;

    [(SUICProgressIndicatorViewController *)v4->_indicatorViewController setDataSource:v4];
    v7 = objc_alloc_init(MEMORY[0x1E69DC738]);
    eventGeneratorButton = v4->_eventGeneratorButton;
    v4->_eventGeneratorButton = v7;

    [(UIButton *)v4->_eventGeneratorButton addTarget:v4 action:sel__eventGeneratorButtonTouchedUpInside_ forControlEvents:64];
    v9 = objc_alloc_init(SUICProgressStateMachine);
    stateMachine = v4->_stateMachine;
    v4->_stateMachine = v9;

    [(SUICProgressStateMachine *)v4->_stateMachine addObserver:v4->_indicatorViewController];
  }

  return v4;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = SUICProgressDebugViewController;
  [(SUICProgressDebugViewController *)&v8 viewDidLoad];
  view = [(SUICProgressDebugViewController *)self view];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [view setBackgroundColor:whiteColor];

  [(SUICProgressDebugViewController *)self addChildViewController:self->_indicatorViewController];
  view2 = [(SUICProgressDebugViewController *)self view];
  view3 = [(SUICProgressIndicatorViewController *)self->_indicatorViewController view];
  [view2 addSubview:view3];

  [(SUICProgressIndicatorViewController *)self->_indicatorViewController didMoveToParentViewController:self];
  view4 = [(SUICProgressDebugViewController *)self view];
  [view4 addSubview:self->_eventGeneratorButton];
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = SUICProgressDebugViewController;
  [(SUICProgressDebugViewController *)&v13 viewDidLayoutSubviews];
  view = [(SUICProgressDebugViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIButton *)self->_eventGeneratorButton setFrame:v5, v7, v9, v11];
  view2 = [(SUICProgressIndicatorViewController *)self->_indicatorViewController view];
  UIRectCenteredIntegralRect();
  [view2 setFrame:?];
}

- (NSProgress)progress
{
  v2 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:100];
  [v2 setCompletedUnitCount:45];

  return v2;
}

- (void)_eventGeneratorButtonTouchedUpInside:(id)inside
{
  testEventLoopCounter = self->_testEventLoopCounter;
  if (testEventLoopCounter >= 5)
  {
    testEventLoopCounter = 0;
    self->_testEventLoopCounter = 0;
  }

  [(SUICProgressStateMachine *)self->_stateMachine handleEvent:testEventLoopCounter];
  ++self->_testEventLoopCounter;
}

@end