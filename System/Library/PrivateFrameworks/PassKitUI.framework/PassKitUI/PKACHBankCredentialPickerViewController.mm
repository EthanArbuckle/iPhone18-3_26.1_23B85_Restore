@interface PKACHBankCredentialPickerViewController
- (PKACHBankCredentialPickerViewController)initWithCurrentBankInformation:(id)information selectAction:(id)action cancelAction:(id)cancelAction;
- (PKACHBankCredentialPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKACHBankCredentialPickerViewController

- (PKACHBankCredentialPickerViewController)initWithCurrentBankInformation:(id)information selectAction:(id)action cancelAction:(id)cancelAction
{
  v7 = _Block_copy(action);
  v8 = _Block_copy(cancelAction);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  informationCopy = information;
  v12 = sub_1BD618540(information, sub_1BD139BD4, v9, sub_1BD166E88, v10);

  return v12;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BD60FEBC();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1BD610550();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1BD61067C(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1BD610B60(disappear);
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ACHBankCredentialPickerViewController();
  v6 = v7.receiver;
  [(PKACHBankCredentialPickerViewController *)&v7 setEditing:editingCopy animated:animatedCopy];
  if (*&v6[OBJC_IVAR___PKACHBankCredentialPickerViewController_pickerViewState])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8C4();
  }
}

- (PKACHBankCredentialPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end