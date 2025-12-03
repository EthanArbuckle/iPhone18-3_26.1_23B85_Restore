@interface PKPassBannerTrailingViewConfiguration
+ (id)createWithSymbolName:(id)name overrideColor:(id)color;
@end

@implementation PKPassBannerTrailingViewConfiguration

+ (id)createWithSymbolName:(id)name overrideColor:(id)color
{
  nameCopy = name;
  colorCopy = color;
  objc_opt_self();
  if (!nameCopy)
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
  v9[2] = nameCopy;
  v11 = nameCopy;

  v12 = v9[3];
  v9[3] = colorCopy;

  return v9;
}

@end