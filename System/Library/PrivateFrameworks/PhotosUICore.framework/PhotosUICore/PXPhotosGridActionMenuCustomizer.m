@interface PXPhotosGridActionMenuCustomizer
- (PXPhotosGridActionMenuCustomizer)init;
- (PXPhotosGridActionMenuCustomizer)initWithViewModel:(id)a3 excludedActionTypes:(id)a4;
- (id)customizedActions:(id)a3 actionTypes:(id)a4;
@end

@implementation PXPhotosGridActionMenuCustomizer

- (PXPhotosGridActionMenuCustomizer)initWithViewModel:(id)a3 excludedActionTypes:(id)a4
{
  sub_1A524CF44();
  v5 = a3;
  sub_1A524D594();
}

- (id)customizedActions:(id)a3 actionTypes:(id)a4
{
  v5 = _Block_copy(a4);
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