@interface SearchUIContactPickerViewController
- (SearchUIContactPickerViewController)initWithContact:(id)contact;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
@end

@implementation SearchUIContactPickerViewController

- (SearchUIContactPickerViewController)initWithContact:(id)contact
{
  contactCopy = contact;
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
    [(SearchUIContactPickerViewController *)v6 setContact:contactCopy];
  }

  return v6;
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  v6 = MEMORY[0x1E695D148];
  contactCopy = contact;
  pickerCopy = picker;
  contact = [(SearchUIContactPickerViewController *)self contact];
  v11 = [v6 viewControllerForUpdatingContact:contactCopy withPropertiesFromContact:contact];

  [v11 setDelegate:self];
  navigationController = [pickerCopy navigationController];

  [navigationController pushViewController:v11 animated:1];
}

@end