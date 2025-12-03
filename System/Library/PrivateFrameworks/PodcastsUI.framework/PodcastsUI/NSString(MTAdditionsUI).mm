@interface NSString(MTAdditionsUI)
+ (id)prettyStringWithDuration:()MTAdditionsUI;
@end

@implementation NSString(MTAdditionsUI)

+ (id)prettyStringWithDuration:()MTAdditionsUI
{
  selfCopy = self;
  v2 = self / 3600;
  v3 = self / 60;
  v4 = v3 % 60;
  if (self >= 7200 && v4 == 1)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"%@ hours 1 min" value:&stru_282CBB070 table:0];

LABEL_4:
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
    v9 = IMAccessibilityLocalizedNumber();
    v10 = [v7 stringWithFormat:v6, v9];

LABEL_7:
    goto LABEL_8;
  }

  if (selfCopy >= 7200)
  {
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle2 localizedStringForKey:@"%@ hours %@ min" value:&stru_282CBB070 table:0];

    v12 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
    v13 = IMAccessibilityLocalizedNumber();
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
    v15 = IMAccessibilityLocalizedNumber();
    v10 = [v12 stringWithFormat:v6, v13, v15];

    goto LABEL_7;
  }

  if ((selfCopy - 3600) <= 0xE0F && v4 == 1)
  {
    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = mainBundle3;
    v18 = @"1 hour 1 min";
LABEL_14:
    v10 = [mainBundle3 localizedStringForKey:v18 value:&stru_282CBB070 table:0];
    goto LABEL_8;
  }

  if ((selfCopy - 3600) <= 0xE0F)
  {
    mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle4 localizedStringForKey:@"%@ hour %@ min" value:&stru_282CBB070 table:0];

    v20 = MEMORY[0x277CCACA8];
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    v22 = IMAccessibilityLocalizedNumber();
    v23 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
    v24 = IMAccessibilityLocalizedNumber();
    v10 = [v20 stringWithFormat:v6, v22, v24];

LABEL_17:
    goto LABEL_8;
  }

  v2 = selfCopy - 60 * v3;
  if (v4 < 1)
  {
    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = mainBundle3;
    if (v2 == 1)
    {
      v18 = @"1 second";
      goto LABEL_14;
    }

    v30 = [mainBundle3 localizedStringForKey:@"%@ seconds" value:&stru_282CBB070 table:0];

    v31 = MEMORY[0x277CCACA8];
    v32 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
    v33 = IMAccessibilityLocalizedNumber();
    v10 = [v31 stringWithFormat:v30, v33];

    v6 = v30;
  }

  else
  {
    if (v2 <= 0 && v4 == 1)
    {
      mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
      v6 = mainBundle3;
      v18 = @"1 min";
      goto LABEL_14;
    }

    if (v2 == 1 && v4 == 1)
    {
      mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
      v6 = mainBundle3;
      v18 = @"1 min 1 sec";
      goto LABEL_14;
    }

    if (v2 < 1 || v4 >= 0xA)
    {
      if (v2 > 29)
      {
        ++v4;
      }

      mainBundle5 = [MEMORY[0x277CCA8D8] mainBundle];
      v6 = [mainBundle5 localizedStringForKey:@"%@ minutes" value:&stru_282CBB070 table:0];

      v29 = MEMORY[0x277CCACA8];
      v21 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
      v22 = IMAccessibilityLocalizedNumber();
      v10 = [v29 stringWithFormat:v6, v22];
      goto LABEL_17;
    }

    mainBundle6 = [MEMORY[0x277CCA8D8] mainBundle];
    v35 = mainBundle6;
    if (v4 == 1)
    {
      v6 = [mainBundle6 localizedStringForKey:@"1 min %@ sec" value:&stru_282CBB070 table:0];

      goto LABEL_4;
    }

    v6 = [mainBundle6 localizedStringForKey:@"%@ min %@ sec" value:&stru_282CBB070 table:0];

    v36 = MEMORY[0x277CCACA8];
    v37 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
    v38 = IMAccessibilityLocalizedNumber();
    v39 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
    v40 = IMAccessibilityLocalizedNumber();
    v10 = [v36 stringWithFormat:v6, v38, v40];
  }

LABEL_8:

  return v10;
}

@end