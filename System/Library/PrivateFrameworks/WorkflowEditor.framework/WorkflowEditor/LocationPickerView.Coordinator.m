@interface LocationPickerView.Coordinator
- (void)locationPicker:(id)a3 didFinishWithValue:(id)a4;
- (void)locationPickerDidCancel:(id)a3;
@end

@implementation LocationPickerView.Coordinator

- (void)locationPicker:(id)a3 didFinishWithValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_274457710(v8, a4);
}

- (void)locationPickerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_27445793C();
}

@end