@interface TKVibrationInterfaceUtilities
+ (BOOL)vibrationNameTextField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
+ (id)descriptionForDuration:(double)a3;
+ (void)configureVibrationNameTextField:(id)a3;
@end

@implementation TKVibrationInterfaceUtilities

+ (void)configureVibrationNameTextField:(id)a3
{
  v4 = a3;
  v3 = TLLocalizedString();
  [v4 setPlaceholder:v3];

  [v4 setAutocapitalizationType:2];
  [v4 setReturnKeyType:9];
  [v4 setEnablesReturnKeyAutomatically:1];
}

+ (BOOL)vibrationNameTextField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v9 = a5;
  v10 = [v8 text];
  if (![v10 length])
  {
    v11 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v12 = [v9 stringByTrimmingCharactersInSet:v11];
    v13 = [v12 length];

    if (!v13)
    {
      goto LABEL_6;
    }
  }

  v14 = [v10 stringByReplacingCharactersInRange:location withString:{length, v9}];
  v15 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v16 = [v14 stringByTrimmingCharactersInSet:v15];
  v17 = [v16 length];

  if (!v17)
  {
    [v8 setText:&stru_282E32280];
    [v8 sendActionsForControlEvents:0x20000];
LABEL_6:
    v18 = 0;
    goto LABEL_7;
  }

  v18 = 1;
LABEL_7:

  return v18;
}

+ (id)descriptionForDuration:(double)a3
{
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * llround(a3 * 10.0) + 0x1999999999999998, 1) < 0x1999999999999999uLL)
  {
    v8 = llround(a3);
    v9 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%ld", v8];
    v4 = v9;
    if (v8 == 1)
    {
      v5 = @"SECONDS_SINGULAR_FORMAT";
    }

    else
    {
      v5 = @"SECONDS_PLURAL_FORMAT";
    }

    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = a3;
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.1f", v3];
    v5 = @"SECONDS_PLURAL_FORMAT";
    if (v4)
    {
LABEL_3:
      v6 = TLLocalizedString();
      if (([(__CFString *)v5 isEqualToString:v6]& 1) != 0)
      {
        v7 = v4;
      }

      else
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:v6, v4];
      }

      v10 = v7;

      goto LABEL_12;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

@end