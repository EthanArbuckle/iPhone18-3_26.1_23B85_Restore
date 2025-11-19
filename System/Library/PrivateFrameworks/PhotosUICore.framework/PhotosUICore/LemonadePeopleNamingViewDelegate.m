@interface LemonadePeopleNamingViewDelegate
- (_TtC12PhotosUICore32LemonadePeopleNamingViewDelegate)init;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
@end

@implementation LemonadePeopleNamingViewDelegate

- (void)contactPickerDidCancel:(id)a3
{
  sub_1A524D224();
  v3 = *sub_1A3CAA3FC();
  sub_1A5246DF4();
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1A4868CE4(v7);
}

- (_TtC12PhotosUICore32LemonadePeopleNamingViewDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end