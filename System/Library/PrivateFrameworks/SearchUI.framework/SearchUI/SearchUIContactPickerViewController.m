@interface SearchUIContactPickerViewController
- (SearchUIContactPickerViewController)initWithContact:(id)a3;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
@end

@implementation SearchUIContactPickerViewController

- (SearchUIContactPickerViewController)initWithContact:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SearchUIContactPickerViewController;
  v5 = [(SearchUIContactPickerViewController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(CNContactPickerViewController *)v5 setAllowsCancel:1];
    [(CNContactPickerViewController *)v6 setAutocloses:0];
    [(CNContactPickerViewController *)v6 setMode:2];
    v7 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    [(CNContactPickerViewController *)v6 setPredicateForSelectionOfContact:v7];

    [(CNContactPickerViewController *)v6 setDelegate:v6];
    [(SearchUIContactPickerViewController *)v6 setContact:v4];
  }

  return v6;
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v6 = MEMORY[0x1E695D148];
  v7 = a4;
  v8 = a3;
  v9 = [(SearchUIContactPickerViewController *)self contact];
  v11 = [v6 viewControllerForUpdatingContact:v7 withPropertiesFromContact:v9];

  [v11 setDelegate:self];
  v10 = [v8 navigationController];

  [v10 pushViewController:v11 animated:1];
}

@end