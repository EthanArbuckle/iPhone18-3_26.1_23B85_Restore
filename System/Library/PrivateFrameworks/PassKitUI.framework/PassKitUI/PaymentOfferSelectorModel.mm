@interface PaymentOfferSelectorModel
- (_TtC9PassKitUI25PaymentOfferSelectorModel)init;
- (void)paymentOfferCatalogChanged:(id)changed;
@end

@implementation PaymentOfferSelectorModel

- (_TtC9PassKitUI25PaymentOfferSelectorModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)paymentOfferCatalogChanged:(id)changed
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - v6;
  v8 = sub_1BE0528D4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  selfCopy = self;
  sub_1BD122C00(0, 0, v7, &unk_1BE0C3438, v9);
}

@end