@interface CMIColourConstancyCoreConfigurationV1
- (CMIColourConstancyCoreConfigurationV1)init;
@end

@implementation CMIColourConstancyCoreConfigurationV1

- (CMIColourConstancyCoreConfigurationV1)init
{
  v20.receiver = self;
  v20.super_class = CMIColourConstancyCoreConfigurationV1;
  v2 = [(CMIColourConstancyCoreConfigurationV1 *)&v20 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_9;
  }

  *(v2 + 12) = 0x18000000200;
  v2[8] = 0;
  v4 = [objc_opt_new() init];
  v5 = v3[3];
  v3[3] = v4;

  if (!v3[3])
  {
    sub_112C4();
LABEL_18:
    v18 = 0;
    goto LABEL_10;
  }

  v6 = [objc_opt_new() init];
  v7 = v3[4];
  v3[4] = v6;

  if (!v3[4])
  {
    sub_1124C();
    goto LABEL_18;
  }

  v8 = [objc_opt_new() init];
  v9 = v3[5];
  v3[5] = v8;

  if (!v3[5])
  {
    sub_111D4();
    goto LABEL_18;
  }

  v10 = [objc_opt_new() initWithThumbnailWidth:*(v3 + 3) thumbnailHeight:*(v3 + 4)];
  v11 = v3[6];
  v3[6] = v10;

  if (!v3[6])
  {
    sub_1115C();
    goto LABEL_18;
  }

  v12 = [objc_opt_new() init];
  v13 = v3[7];
  v3[7] = v12;

  if (!v3[7])
  {
    sub_110E4();
    goto LABEL_18;
  }

  v14 = [objc_opt_new() init];
  v15 = v3[8];
  v3[8] = v14;

  if (!v3[8])
  {
    sub_1106C();
    goto LABEL_18;
  }

  v16 = [objc_opt_new() initWithSourceThumbnailWidth:*(v3 + 3)];
  v17 = v3[9];
  v3[9] = v16;

  if (!v3[9])
  {
    sub_10FF4();
    goto LABEL_18;
  }

LABEL_9:
  v18 = v3;
LABEL_10:

  return v18;
}

@end