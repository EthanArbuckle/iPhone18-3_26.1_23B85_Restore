@interface AddressSearchingModel
- (_TtC9PassKitUI21AddressSearchingModel)init;
- (void)contactsSearchUpdated:(id)updated;
- (void)mapSearchUpdated:(id)updated;
- (void)selectedAddress:(id)address withError:(id)error;
@end

@implementation AddressSearchingModel

- (_TtC9PassKitUI21AddressSearchingModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)contactsSearchUpdated:(id)updated
{
  updatedCopy = updated;
  selfCopy = self;
  sub_1BD6D69BC(updatedCopy, &unk_1F3BB63A0, sub_1BD6D7470, &block_descriptor_53_0);
}

- (void)mapSearchUpdated:(id)updated
{
  updatedCopy = updated;
  selfCopy = self;
  sub_1BD6D69BC(updatedCopy, &unk_1F3BB6350, sub_1BD6D7468, &block_descriptor_41);
}

- (void)selectedAddress:(id)address withError:(id)error
{
  addressCopy = address;
  selfCopy = self;
  errorCopy = error;
  sub_1BD6D71C4(address);
}

@end