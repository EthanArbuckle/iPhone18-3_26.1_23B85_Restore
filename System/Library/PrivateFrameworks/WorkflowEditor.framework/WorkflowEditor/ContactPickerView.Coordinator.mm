@interface ContactPickerView.Coordinator
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
- (void)recipientViewControllerDidFinish:(id)a3 cancelled:(BOOL)a4;
@end

@implementation ContactPickerView.Coordinator

- (void)contactPickerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2745DCD0C();
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2745DCF00(v8, v7);
}

- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2745DD030(v8, v7);
}

- (void)recipientViewControllerDidFinish:(id)a3 cancelled:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_2745DD22C(v6, a4);
}

@end