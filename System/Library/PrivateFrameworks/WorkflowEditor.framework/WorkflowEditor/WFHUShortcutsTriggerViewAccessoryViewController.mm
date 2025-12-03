@interface WFHUShortcutsTriggerViewAccessoryViewController
- (WFHUShortcutsTriggerViewAccessoryViewController)initWithHome:(id)home services:(id)services;
- (WFHUShortcutsTriggerViewAccessoryViewControllerDelegate)delegate;
- (void)cancelEditor;
- (void)dismissEditor;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation WFHUShortcutsTriggerViewAccessoryViewController

- (WFHUShortcutsTriggerViewAccessoryViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)cancelEditor
{
  delegate = [(WFHUShortcutsTriggerViewAccessoryViewController *)self delegate];
  [delegate servicePickerDidCancel:self];
}

- (void)dismissEditor
{
  delegate = [(WFHUShortcutsTriggerViewAccessoryViewController *)self delegate];
  HUShortcutsTriggerViewUtilitiesClass_3363 = getHUShortcutsTriggerViewUtilitiesClass_3363();
  accessoryPickerViewController = [(WFHUShortcutsTriggerViewAccessoryViewController *)self accessoryPickerViewController];
  v5 = [(objc_class *)HUShortcutsTriggerViewUtilitiesClass_3363 getServicesOnAccessoryPicker:accessoryPickerViewController];
  [delegate servicePickerDidFinish:self selectedServices:v5];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = WFHUShortcutsTriggerViewAccessoryViewController;
  [(WFHUShortcutsTriggerViewAccessoryViewController *)&v7 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_dismissEditor];
  navigationItem = [(WFHUShortcutsTriggerViewAccessoryViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v3];

  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelEditor];
  navigationItem2 = [(WFHUShortcutsTriggerViewAccessoryViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v5];
}

- (void)loadView
{
  v21.receiver = self;
  v21.super_class = WFHUShortcutsTriggerViewAccessoryViewController;
  [(WFHUShortcutsTriggerViewAccessoryViewController *)&v21 loadView];
  accessoryPickerViewController = [(WFHUShortcutsTriggerViewAccessoryViewController *)self accessoryPickerViewController];
  [(WFHUShortcutsTriggerViewAccessoryViewController *)self addChildViewController:accessoryPickerViewController];

  view = [(WFHUShortcutsTriggerViewAccessoryViewController *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  accessoryPickerViewController2 = [(WFHUShortcutsTriggerViewAccessoryViewController *)self accessoryPickerViewController];
  view2 = [accessoryPickerViewController2 view];
  [view2 setFrame:{v6, v8, v10, v12}];

  accessoryPickerViewController3 = [(WFHUShortcutsTriggerViewAccessoryViewController *)self accessoryPickerViewController];
  view3 = [accessoryPickerViewController3 view];
  [view3 setAutoresizingMask:18];

  view4 = [(WFHUShortcutsTriggerViewAccessoryViewController *)self view];
  accessoryPickerViewController4 = [(WFHUShortcutsTriggerViewAccessoryViewController *)self accessoryPickerViewController];
  view5 = [accessoryPickerViewController4 view];
  [view4 addSubview:view5];

  accessoryPickerViewController5 = [(WFHUShortcutsTriggerViewAccessoryViewController *)self accessoryPickerViewController];
  [accessoryPickerViewController5 didMoveToParentViewController:self];
}

- (WFHUShortcutsTriggerViewAccessoryViewController)initWithHome:(id)home services:(id)services
{
  homeCopy = home;
  servicesCopy = services;
  v14.receiver = self;
  v14.super_class = WFHUShortcutsTriggerViewAccessoryViewController;
  v8 = [(WFHUShortcutsTriggerViewAccessoryViewController *)&v14 initWithNibName:0 bundle:0];
  if (v8)
  {
    getHUShortcutsTriggerViewAccessoryPickerConfigurationClass();
    v9 = objc_opt_new();
    [v9 setServicesOnly:1];
    v10 = [(objc_class *)getHUShortcutsTriggerViewUtilitiesClass_3363() accessoryPickerViewControllerInHome:homeCopy withConfiguration:v9];
    [(objc_class *)getHUShortcutsTriggerViewUtilitiesClass_3363() setServices:servicesCopy onAccessoryPicker:v10];
    accessoryPickerViewController = v8->_accessoryPickerViewController;
    v8->_accessoryPickerViewController = v10;

    v12 = v8;
  }

  return v8;
}

@end