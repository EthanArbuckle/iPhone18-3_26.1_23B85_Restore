@interface PRXPickerContentViewController
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PRXPickerContentViewController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = PRXPickerContentViewController;
  [(PRXCardContentViewController *)&v7 viewDidLoad];
  v3 = [(PRXCardContentViewController *)self contentView];
  v4 = [v3 pickerView];
  [v4 setDataSource:self];

  v5 = [(PRXCardContentViewController *)self contentView];
  v6 = [v5 pickerView];
  [v6 setDelegate:self];
}

- (void)viewWillAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = PRXPickerContentViewController;
  [(PRXPickerContentViewController *)&v12 viewWillAppear:a3];
  v4 = [(PRXCardContentViewController *)self contentView];
  v5 = [v4 pickerView];

  v6 = [v5 numberOfRowsInComponent:0];
  if (v6)
  {
    v7 = v6;
    if ([v5 selectedRowInComponent:0] == -1)
    {
      v8 = [(PRXCardContentViewController *)self contentView];
      v9 = [v8 pickerView];
      v10 = v9;
      if (v7 / 2 >= 3)
      {
        v11 = 3;
      }

      else
      {
        v11 = v7 / 2;
      }

      [v9 selectRow:v11 inComponent:0 animated:0];
    }
  }
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"PRXPickerContentViewController subclasses must override pickerView:numberOfRowsInComponent:" userInfo:0];
  objc_exception_throw(v5);
}

@end