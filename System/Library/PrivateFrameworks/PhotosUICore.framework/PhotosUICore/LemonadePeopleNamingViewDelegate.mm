@interface LemonadePeopleNamingViewDelegate
- (_TtC12PhotosUICore32LemonadePeopleNamingViewDelegate)init;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPickerDidCancel:(id)cancel;
@end

@implementation LemonadePeopleNamingViewDelegate

- (void)contactPickerDidCancel:(id)cancel
{
  sub_1A524D224();
  v3 = *sub_1A3CAA3FC();
  sub_1A5246DF4();
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  pickerCopy = picker;
  contactCopy = contact;
  selfCopy = self;
  sub_1A4868CE4(contactCopy);
}

- (_TtC12PhotosUICore32LemonadePeopleNamingViewDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end