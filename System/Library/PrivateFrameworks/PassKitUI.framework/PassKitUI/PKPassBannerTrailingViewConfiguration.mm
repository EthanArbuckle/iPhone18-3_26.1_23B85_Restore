@interface PKPassBannerTrailingViewConfiguration
+ (id)createWithSymbolName:(id)a3 overrideColor:(id)a4;
@end

@implementation PKPassBannerTrailingViewConfiguration

+ (id)createWithSymbolName:(id)a3 overrideColor:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_self();
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = [PKPassBannerTrailingSymbolConfiguration alloc];
  if (!v7)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_5;
  }

  v14.receiver = v7;
  v14.super_class = PKPassBannerTrailingViewConfiguration;
  v8 = objc_msgSendSuper2(&v14, sel_init);
  v9 = v8;
  if (v8)
  {
    v8[1] = 0;
  }

LABEL_5:
  v10 = v9[2];
  v9[2] = v5;
  v11 = v5;

  v12 = v9[3];
  v9[3] = v6;

  return v9;
}

@end