@interface PRXPickerContentViewController
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PRXPickerContentViewController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = PRXPickerContentViewController;
  [(PRXCardContentViewController *)&v7 viewDidLoad];
  contentView = [(PRXCardContentViewController *)self contentView];
  pickerView = [contentView pickerView];
  [pickerView setDataSource:self];

  contentView2 = [(PRXCardContentViewController *)self contentView];
  pickerView2 = [contentView2 pickerView];
  [pickerView2 setDelegate:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = PRXPickerContentViewController;
  [(PRXPickerContentViewController *)&v12 viewWillAppear:appear];
  contentView = [(PRXCardContentViewController *)self contentView];
  pickerView = [contentView pickerView];

  v6 = [pickerView numberOfRowsInComponent:0];
  if (v6)
  {
    v7 = v6;
    if ([pickerView selectedRowInComponent:0] == -1)
    {
      contentView2 = [(PRXCardContentViewController *)self contentView];
      pickerView2 = [contentView2 pickerView];
      v10 = pickerView2;
      if (v7 / 2 >= 3)
      {
        v11 = 3;
      }

      else
      {
        v11 = v7 / 2;
      }

      [pickerView2 selectRow:v11 inComponent:0 animated:0];
    }
  }
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  viewCopy = view;
  v5 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"PRXPickerContentViewController subclasses must override pickerView:numberOfRowsInComponent:" userInfo:0];
  objc_exception_throw(v5);
}

@end