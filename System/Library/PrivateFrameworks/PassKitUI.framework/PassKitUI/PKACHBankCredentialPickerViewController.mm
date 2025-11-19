@interface PKACHBankCredentialPickerViewController
- (PKACHBankCredentialPickerViewController)initWithCurrentBankInformation:(id)a3 selectAction:(id)a4 cancelAction:(id)a5;
- (PKACHBankCredentialPickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation PKACHBankCredentialPickerViewController

- (PKACHBankCredentialPickerViewController)initWithCurrentBankInformation:(id)a3 selectAction:(id)a4 cancelAction:(id)a5
{
  v7 = _Block_copy(a4);
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = a3;
  v12 = sub_1BD618540(a3, sub_1BD139BD4, v9, sub_1BD166E88, v10);

  return v12;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1BD60FEBC();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1BD610550();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1BD61067C(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1BD610B60(a3);
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ACHBankCredentialPickerViewController();
  v6 = v7.receiver;
  [(PKACHBankCredentialPickerViewController *)&v7 setEditing:v5 animated:v4];
  if (*&v6[OBJC_IVAR___PKACHBankCredentialPickerViewController_pickerViewState])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8C4();
  }
}

- (PKACHBankCredentialPickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end