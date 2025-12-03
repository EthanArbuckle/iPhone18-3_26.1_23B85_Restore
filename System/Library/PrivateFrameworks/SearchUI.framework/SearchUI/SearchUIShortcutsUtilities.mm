@interface SearchUIShortcutsUtilities
+ (id)commandForSettingTogglesFromRowModel:(id)model;
@end

@implementation SearchUIShortcutsUtilities

+ (id)commandForSettingTogglesFromRowModel:(id)model
{
  modelCopy = model;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    cardSection2 = modelCopy;
    buttonItems = [cardSection2 buttonItems];
    if ([buttonItems count] == 1)
    {
      buttonItems2 = [cardSection2 buttonItems];
      firstObject = [buttonItems2 firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
LABEL_7:

        goto LABEL_8;
      }

      buttonItems3 = [cardSection2 buttonItems];
      buttonItems = [buttonItems3 firstObject];

      command = [buttonItems command];
      objc_opt_class();
      v11 = objc_opt_isKindOfClass();

      if (v11)
      {
        command2 = [buttonItems command];

LABEL_10:
        goto LABEL_12;
      }
    }

    goto LABEL_7;
  }

LABEL_8:
  cardSection = [modelCopy cardSection];
  command3 = [cardSection command];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (v15)
  {
    cardSection2 = [modelCopy cardSection];
    command2 = [cardSection2 command];
    goto LABEL_10;
  }

  command2 = 0;
LABEL_12:

  return command2;
}

@end