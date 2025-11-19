@interface NSString(MTAdditionsUI)
+ (id)prettyStringWithDuration:()MTAdditionsUI;
@end

@implementation NSString(MTAdditionsUI)

+ (id)prettyStringWithDuration:()MTAdditionsUI
{
  v1 = a1;
  v2 = a1 / 3600;
  v3 = a1 / 60;
  v4 = v3 % 60;
  if (a1 >= 7200 && v4 == 1)
  {
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 localizedStringForKey:@"%@ hours 1 min" value:&stru_282CBB070 table:0];

LABEL_4:
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
    v9 = IMAccessibilityLocalizedNumber();
    v10 = [v7 stringWithFormat:v6, v9];

LABEL_7:
    goto LABEL_8;
  }

  if (v1 >= 7200)
  {
    v11 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v11 localizedStringForKey:@"%@ hours %@ min" value:&stru_282CBB070 table:0];

    v12 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
    v13 = IMAccessibilityLocalizedNumber();
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
    v15 = IMAccessibilityLocalizedNumber();
    v10 = [v12 stringWithFormat:v6, v13, v15];

    goto LABEL_7;
  }

  if ((v1 - 3600) <= 0xE0F && v4 == 1)
  {
    v17 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = v17;
    v18 = @"1 hour 1 min";
LABEL_14:
    v10 = [v17 localizedStringForKey:v18 value:&stru_282CBB070 table:0];
    goto LABEL_8;
  }

  if ((v1 - 3600) <= 0xE0F)
  {
    v19 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v19 localizedStringForKey:@"%@ hour %@ min" value:&stru_282CBB070 table:0];

    v20 = MEMORY[0x277CCACA8];
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    v22 = IMAccessibilityLocalizedNumber();
    v23 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
    v24 = IMAccessibilityLocalizedNumber();
    v10 = [v20 stringWithFormat:v6, v22, v24];

LABEL_17:
    goto LABEL_8;
  }

  v2 = v1 - 60 * v3;
  if (v4 < 1)
  {
    v17 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = v17;
    if (v2 == 1)
    {
      v18 = @"1 second";
      goto LABEL_14;
    }

    v30 = [v17 localizedStringForKey:@"%@ seconds" value:&stru_282CBB070 table:0];

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
      v17 = [MEMORY[0x277CCA8D8] mainBundle];
      v6 = v17;
      v18 = @"1 min";
      goto LABEL_14;
    }

    if (v2 == 1 && v4 == 1)
    {
      v17 = [MEMORY[0x277CCA8D8] mainBundle];
      v6 = v17;
      v18 = @"1 min 1 sec";
      goto LABEL_14;
    }

    if (v2 < 1 || v4 >= 0xA)
    {
      if (v2 > 29)
      {
        ++v4;
      }

      v28 = [MEMORY[0x277CCA8D8] mainBundle];
      v6 = [v28 localizedStringForKey:@"%@ minutes" value:&stru_282CBB070 table:0];

      v29 = MEMORY[0x277CCACA8];
      v21 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
      v22 = IMAccessibilityLocalizedNumber();
      v10 = [v29 stringWithFormat:v6, v22];
      goto LABEL_17;
    }

    v34 = [MEMORY[0x277CCA8D8] mainBundle];
    v35 = v34;
    if (v4 == 1)
    {
      v6 = [v34 localizedStringForKey:@"1 min %@ sec" value:&stru_282CBB070 table:0];

      goto LABEL_4;
    }

    v6 = [v34 localizedStringForKey:@"%@ min %@ sec" value:&stru_282CBB070 table:0];

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