@interface TKVibrationInterfaceUtilities
+ (BOOL)vibrationNameTextField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
+ (id)descriptionForDuration:(double)duration;
+ (void)configureVibrationNameTextField:(id)field;
@end

@implementation TKVibrationInterfaceUtilities

+ (void)configureVibrationNameTextField:(id)field
{
  fieldCopy = field;
  v3 = TLLocalizedString();
  [fieldCopy setPlaceholder:v3];

  [fieldCopy setAutocapitalizationType:2];
  [fieldCopy setReturnKeyType:9];
  [fieldCopy setEnablesReturnKeyAutomatically:1];
}

+ (BOOL)vibrationNameTextField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  text = [fieldCopy text];
  if (![text length])
  {
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v12 = [stringCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];
    v13 = [v12 length];

    if (!v13)
    {
      goto LABEL_6;
    }
  }

  v14 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];
  whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v16 = [v14 stringByTrimmingCharactersInSet:whitespaceCharacterSet2];
  v17 = [v16 length];

  if (!v17)
  {
    [fieldCopy setText:&stru_282E32280];
    [fieldCopy sendActionsForControlEvents:0x20000];
LABEL_6:
    v18 = 0;
    goto LABEL_7;
  }

  v18 = 1;
LABEL_7:

  return v18;
}

+ (id)descriptionForDuration:(double)duration
{
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * llround(duration * 10.0) + 0x1999999999999998, 1) < 0x1999999999999999uLL)
  {
    v8 = llround(duration);
    v9 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%ld", v8];
    durationCopy = v9;
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
    durationCopy = duration;
    durationCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%.1f", durationCopy];
    v5 = @"SECONDS_PLURAL_FORMAT";
    if (durationCopy)
    {
LABEL_3:
      v6 = TLLocalizedString();
      if (([(__CFString *)v5 isEqualToString:v6]& 1) != 0)
      {
        v7 = durationCopy;
      }

      else
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:v6, durationCopy];
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