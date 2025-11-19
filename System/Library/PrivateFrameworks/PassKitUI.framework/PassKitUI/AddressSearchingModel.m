@interface AddressSearchingModel
- (_TtC9PassKitUI21AddressSearchingModel)init;
- (void)contactsSearchUpdated:(id)a3;
- (void)mapSearchUpdated:(id)a3;
- (void)selectedAddress:(id)a3 withError:(id)a4;
@end

@implementation AddressSearchingModel

- (_TtC9PassKitUI21AddressSearchingModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)contactsSearchUpdated:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD6D69BC(v4, &unk_1F3BB63A0, sub_1BD6D7470, &block_descriptor_53_0);
}

- (void)mapSearchUpdated:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD6D69BC(v4, &unk_1F3BB6350, sub_1BD6D7468, &block_descriptor_41);
}

- (void)selectedAddress:(id)a3 withError:(id)a4
{
  v7 = a3;
  v8 = self;
  v9 = a4;
  sub_1BD6D71C4(a3);
}

@end