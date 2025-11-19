@interface HKSHQuickScheduleManagementViewController
- (HKSHQuickScheduleManagementViewController)initWithSleepStore:(id)a3;
- (void)setSleepDelegate:(id)a3;
- (void)viewDidLoad;
@end

@implementation HKSHQuickScheduleManagementViewController

- (HKSHQuickScheduleManagementViewController)initWithSleepStore:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HKSHQuickScheduleManagementViewController;
  v5 = [(HKSHQuickScheduleManagementViewController *)&v10 init];
  if (v5)
  {
    v6 = [HKSHQuickScheduleManagementViewControllerInternal alloc];
    v7 = [(HKSHQuickScheduleManagementViewControllerInternal *)v6 initWithSleepStore:v4 provenanceSource:*MEMORY[0x277D62108]];
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
  v3 = [(HKSHQuickScheduleManagementViewControllerInternal *)self->_internalViewController view];
  v4 = [(HKSHQuickScheduleManagementViewController *)self view];
  [v4 frame];
  [v3 setFrame:?];

  v5 = [(HKSHQuickScheduleManagementViewController *)self view];
  v6 = [(HKSHQuickScheduleManagementViewControllerInternal *)self->_internalViewController view];
  [v5 addSubview:v6];

  [(HKSHQuickScheduleManagementViewControllerInternal *)self->_internalViewController didMoveToParentViewController:self];
}

- (void)setSleepDelegate:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HKSHQuickScheduleManagementViewControllerDelegateWrapper);
  delegateWrapper = self->_delegateWrapper;
  self->_delegateWrapper = v5;

  [(HKSHQuickScheduleManagementViewControllerDelegateWrapper *)self->_delegateWrapper setWrappedDelegate:v4];
  [(HKSHQuickScheduleManagementViewControllerDelegateWrapper *)self->_delegateWrapper setViewController:self];
  v7 = self->_delegateWrapper;
  internalViewController = self->_internalViewController;

  [(HKSHQuickScheduleManagementViewControllerInternal *)internalViewController setSleepDelegate:v7];
}

@end