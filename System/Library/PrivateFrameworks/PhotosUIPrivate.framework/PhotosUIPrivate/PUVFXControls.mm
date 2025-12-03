@interface PUVFXControls
+ (id)createViewControllerWithSettingsData:(id)data update:(id)update;
@end

@implementation PUVFXControls

+ (id)createViewControllerWithSettingsData:(id)data update:(id)update
{
  v5 = _Block_copy(update);
  dataCopy = data;
  v7 = sub_1B3C980A8();
  v9 = v8;

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  v11 = sub_1B3768BC8(v7, v9, sub_1B3776594, v10);

  sub_1B377659C(v7, v9);

  return v11;
}

@end