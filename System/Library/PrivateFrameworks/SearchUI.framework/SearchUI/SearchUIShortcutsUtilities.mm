@interface SearchUIShortcutsUtilities
+ (id)commandForSettingTogglesFromRowModel:(id)a3;
@end

@implementation SearchUIShortcutsUtilities

+ (id)commandForSettingTogglesFromRowModel:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 buttonItems];
    if ([v5 count] == 1)
    {
      v6 = [v4 buttonItems];
      v7 = [v6 firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
LABEL_7:

        goto LABEL_8;
      }

      v9 = [v4 buttonItems];
      v5 = [v9 firstObject];

      v10 = [v5 command];
      objc_opt_class();
      v11 = objc_opt_isKindOfClass();

      if (v11)
      {
        v12 = [v5 command];

LABEL_10:
        goto LABEL_12;
      }
    }

    goto LABEL_7;
  }

LABEL_8:
  v13 = [v3 cardSection];
  v14 = [v13 command];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (v15)
  {
    v4 = [v3 cardSection];
    v12 = [v4 command];
    goto LABEL_10;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

@end