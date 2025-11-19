@interface APPCDenylistReasonCharacteristic
- (APPCDenylistReasonCharacteristic)init;
- (APPCDenylistReasonCharacteristic)initWithGlobalCategories:(id)a3 globalKeywords:(id)a4 campaignCategories:(id)a5 campaignKeywords:(id)a6;
@end

@implementation APPCDenylistReasonCharacteristic

- (APPCDenylistReasonCharacteristic)initWithGlobalCategories:(id)a3 globalKeywords:(id)a4 campaignCategories:(id)a5 campaignKeywords:(id)a6
{
  v6 = sub_1C1B94EC8();
  v7 = sub_1C1B94EC8();
  v8 = sub_1C1B94EC8();
  v9 = sub_1C1B94EC8();
  return DenylistReasonCharacteristic.init(globalCategories:globalKeywords:campaignCategories:campaignKeywords:)(v6, v7, v8, v9);
}

- (APPCDenylistReasonCharacteristic)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end