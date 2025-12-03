@interface PXPhotosGridActionMenuCustomizer
- (PXPhotosGridActionMenuCustomizer)init;
- (PXPhotosGridActionMenuCustomizer)initWithViewModel:(id)model excludedActionTypes:(id)types;
- (id)customizedActions:(id)actions actionTypes:(id)types;
@end

@implementation PXPhotosGridActionMenuCustomizer

- (PXPhotosGridActionMenuCustomizer)initWithViewModel:(id)model excludedActionTypes:(id)types
{
  sub_1A524CF44();
  modelCopy = model;
  sub_1A524D594();
}

- (id)customizedActions:(id)actions actionTypes:(id)types
{
  v5 = _Block_copy(types);
  sub_1A3C52C70(0, &qword_1EB126C10);
  v6 = sub_1A524CA34();
  _Block_copy(v5);
  sub_1A42C6324(v6, self);
}

- (PXPhotosGridActionMenuCustomizer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end