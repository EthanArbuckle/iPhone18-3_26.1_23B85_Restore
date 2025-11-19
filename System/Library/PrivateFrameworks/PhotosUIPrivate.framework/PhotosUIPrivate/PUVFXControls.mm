@interface PUVFXControls
+ (id)createViewControllerWithSettingsData:(id)a3 update:(id)a4;
@end

@implementation PUVFXControls

+ (id)createViewControllerWithSettingsData:(id)a3 update:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = a3;
  v7 = sub_1B3C980A8();
  v9 = v8;

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  v11 = sub_1B3768BC8(v7, v9, sub_1B3776594, v10);

  sub_1B377659C(v7, v9);

  return v11;
}

@end