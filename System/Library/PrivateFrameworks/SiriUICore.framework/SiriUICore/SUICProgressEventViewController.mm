@interface SUICProgressEventViewController
- (SUICProgressEventViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation SUICProgressEventViewController

- (SUICProgressEventViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = SUICProgressEventViewController;
  v4 = [(SUICProgressEventViewController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_alloc_init(SUICProgressStateMachine);
    stateMachine = v4->_stateMachine;
    v4->_stateMachine = v5;

    [(SUICProgressStateMachine *)v4->_stateMachine addObserver:v4];
    [(SUICProgressIndicatorViewController *)v4 setDataSource:v4];
  }

  return v4;
}

@end