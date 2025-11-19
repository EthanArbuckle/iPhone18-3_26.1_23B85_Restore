@interface WFHUShortcutsTriggerViewAccessoryViewController
- (WFHUShortcutsTriggerViewAccessoryViewController)initWithHome:(id)a3 services:(id)a4;
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
  v3 = [(WFHUShortcutsTriggerViewAccessoryViewController *)self delegate];
  [v3 servicePickerDidCancel:self];
}

- (void)dismissEditor
{
  v6 = [(WFHUShortcutsTriggerViewAccessoryViewController *)self delegate];
  HUShortcutsTriggerViewUtilitiesClass_3363 = getHUShortcutsTriggerViewUtilitiesClass_3363();
  v4 = [(WFHUShortcutsTriggerViewAccessoryViewController *)self accessoryPickerViewController];
  v5 = [(objc_class *)HUShortcutsTriggerViewUtilitiesClass_3363 getServicesOnAccessoryPicker:v4];
  [v6 servicePickerDidFinish:self selectedServices:v5];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = WFHUShortcutsTriggerViewAccessoryViewController;
  [(WFHUShortcutsTriggerViewAccessoryViewController *)&v7 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_dismissEditor];
  v4 = [(WFHUShortcutsTriggerViewAccessoryViewController *)self navigationItem];
  [v4 setRightBarButtonItem:v3];

  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelEditor];
  v6 = [(WFHUShortcutsTriggerViewAccessoryViewController *)self navigationItem];
  [v6 setLeftBarButtonItem:v5];
}

- (void)loadView
{
  v21.receiver = self;
  v21.super_class = WFHUShortcutsTriggerViewAccessoryViewController;
  [(WFHUShortcutsTriggerViewAccessoryViewController *)&v21 loadView];
  v3 = [(WFHUShortcutsTriggerViewAccessoryViewController *)self accessoryPickerViewController];
  [(WFHUShortcutsTriggerViewAccessoryViewController *)self addChildViewController:v3];

  v4 = [(WFHUShortcutsTriggerViewAccessoryViewController *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(WFHUShortcutsTriggerViewAccessoryViewController *)self accessoryPickerViewController];
  v14 = [v13 view];
  [v14 setFrame:{v6, v8, v10, v12}];

  v15 = [(WFHUShortcutsTriggerViewAccessoryViewController *)self accessoryPickerViewController];
  v16 = [v15 view];
  [v16 setAutoresizingMask:18];

  v17 = [(WFHUShortcutsTriggerViewAccessoryViewController *)self view];
  v18 = [(WFHUShortcutsTriggerViewAccessoryViewController *)self accessoryPickerViewController];
  v19 = [v18 view];
  [v17 addSubview:v19];

  v20 = [(WFHUShortcutsTriggerViewAccessoryViewController *)self accessoryPickerViewController];
  [v20 didMoveToParentViewController:self];
}

- (WFHUShortcutsTriggerViewAccessoryViewController)initWithHome:(id)a3 services:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = WFHUShortcutsTriggerViewAccessoryViewController;
  v8 = [(WFHUShortcutsTriggerViewAccessoryViewController *)&v14 initWithNibName:0 bundle:0];
  if (v8)
  {
    getHUShortcutsTriggerViewAccessoryPickerConfigurationClass();
    v9 = objc_opt_new();
    [v9 setServicesOnly:1];
    v10 = [(objc_class *)getHUShortcutsTriggerViewUtilitiesClass_3363() accessoryPickerViewControllerInHome:v6 withConfiguration:v9];
    [(objc_class *)getHUShortcutsTriggerViewUtilitiesClass_3363() setServices:v7 onAccessoryPicker:v10];
    accessoryPickerViewController = v8->_accessoryPickerViewController;
    v8->_accessoryPickerViewController = v10;

    v12 = v8;
  }

  return v8;
}

@end