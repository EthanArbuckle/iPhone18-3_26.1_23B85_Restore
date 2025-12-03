@interface APPCDenylistReasonCharacteristic
- (APPCDenylistReasonCharacteristic)init;
- (APPCDenylistReasonCharacteristic)initWithGlobalCategories:(id)categories globalKeywords:(id)keywords campaignCategories:(id)campaignCategories campaignKeywords:(id)campaignKeywords;
@end

@implementation APPCDenylistReasonCharacteristic

- (APPCDenylistReasonCharacteristic)initWithGlobalCategories:(id)categories globalKeywords:(id)keywords campaignCategories:(id)campaignCategories campaignKeywords:(id)campaignKeywords
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