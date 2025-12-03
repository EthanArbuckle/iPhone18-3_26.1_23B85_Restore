@interface HKSHQuickScheduleManagementViewController
- (HKSHQuickScheduleManagementViewController)initWithSleepStore:(id)store;
- (void)setSleepDelegate:(id)delegate;
- (void)viewDidLoad;
@end

@implementation HKSHQuickScheduleManagementViewController

- (HKSHQuickScheduleManagementViewController)initWithSleepStore:(id)store
{
  storeCopy = store;
  v10.receiver = self;
  v10.super_class = HKSHQuickScheduleManagementViewController;
  v5 = [(HKSHQuickScheduleManagementViewController *)&v10 init];
  if (v5)
  {
    v6 = [HKSHQuickScheduleManagementViewControllerInternal alloc];
    v7 = [(HKSHQuickScheduleManagementViewControllerInternal *)v6 initWithSleepStore:storeCopy provenanceSource:*MEMORY[0x277D62108]];
    internalViewController = v5->_internalViewController;
    v5->_internalViewController = v7;
  }

  return v5;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HKSHQuickScheduleManagementViewController;
  [(HKSHQuickScheduleManagementViewController *)&v7 viewDidLoad];
  [(HKSHQuickScheduleManagementViewController *)self addChildViewController:self->_internalViewController];
  view = [(HKSHQuickScheduleManagementViewControllerInternal *)self->_internalViewController view];
  view2 = [(HKSHQuickScheduleManagementViewController *)self view];
  [view2 frame];
  [view setFrame:?];

  view3 = [(HKSHQuickScheduleManagementViewController *)self view];
  view4 = [(HKSHQuickScheduleManagementViewControllerInternal *)self->_internalViewController view];
  [view3 addSubview:view4];

  [(HKSHQuickScheduleManagementViewControllerInternal *)self->_internalViewController didMoveToParentViewController:self];
}

- (void)setSleepDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = objc_alloc_init(HKSHQuickScheduleManagementViewControllerDelegateWrapper);
  delegateWrapper = self->_delegateWrapper;
  self->_delegateWrapper = v5;

  [(HKSHQuickScheduleManagementViewControllerDelegateWrapper *)self->_delegateWrapper setWrappedDelegate:delegateCopy];
  [(HKSHQuickScheduleManagementViewControllerDelegateWrapper *)self->_delegateWrapper setViewController:self];
  v7 = self->_delegateWrapper;
  internalViewController = self->_internalViewController;

  [(HKSHQuickScheduleManagementViewControllerInternal *)internalViewController setSleepDelegate:v7];
}

@end