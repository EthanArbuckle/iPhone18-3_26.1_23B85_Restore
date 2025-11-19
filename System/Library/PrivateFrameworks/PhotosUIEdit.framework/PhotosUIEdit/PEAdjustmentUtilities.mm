@interface PEAdjustmentUtilities
+ (id)adjustmentStyleCastDisplayName:(signed __int16)a3;
+ (id)semanticStyleCastDisplayName:(id)a3;
+ (id)semanticStyleCastForPHAdjustmentStyleCast:(signed __int16)a3;
@end

@implementation PEAdjustmentUtilities

+ (id)adjustmentStyleCastDisplayName:(signed __int16)a3
{
  v4 = [a1 semanticStyleCastForPHAdjustmentStyleCast:a3];
  v5 = [a1 semanticStyleCastDisplayName:v4];

  return v5;
}

+ (id)semanticStyleCastForPHAdjustmentStyleCast:(signed __int16)a3
{
  v3 = a3;
  v9 = *MEMORY[0x277D85DE8];
  if (a3 >= 0x11)
  {
    v5 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109120;
      v8[1] = v3;
      _os_log_impl(&dword_25E6E9000, v5, OS_LOG_TYPE_ERROR, "PEAdjustmentUtilities: semanticStyleCastForPHAdjustmentStyleCast - Unsupported cast %hd", v8, 8u);
    }

    v4 = MEMORY[0x277D3AB70];
  }

  else
  {
    v4 = qword_279A30728[a3];
  }

  v6 = *v4;

  return v6;
}

+ (id)semanticStyleCastDisplayName:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277D3AB70]])
  {
    v4 = @"PHOTOEDIT_STYLE_CAST_ORIGINAL";
LABEL_35:
    v5 = PELocalizedString(v4);
    goto LABEL_36;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D3AB78]])
  {
    v4 = @"PHOTOEDIT_STYLE_CAST_STANDARD";
    goto LABEL_35;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D3AB88]])
  {
    v4 = @"PHOTOEDIT_STYLE_CAST_TAN_WARM";
    goto LABEL_35;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D3AB18]])
  {
    v4 = @"PHOTOEDIT_STYLE_CAST_BLUSH_WARM";
    goto LABEL_35;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D3AB60]])
  {
    v4 = @"PHOTOEDIT_STYLE_CAST_NEUTRAL";
    goto LABEL_35;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D3AB38]])
  {
    v4 = @"PHOTOEDIT_STYLE_CAST_COOL";
    goto LABEL_35;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D3AB68]])
  {
    v4 = @"PHOTOEDIT_STYLE_CAST_NO_FILTER";
    goto LABEL_35;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D3AB98]])
  {
    v4 = @"PHOTOEDIT_STYLE_CAST_WARM_AUTHENTIC";
    goto LABEL_35;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D3AB80]])
  {
    v4 = @"PHOTOEDIT_STYLE_CAST_STARK_BLACK_WHITE";
    goto LABEL_35;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D3AB30]])
  {
    v4 = @"PHOTOEDIT_STYLE_CAST_COLORFUL";
    goto LABEL_35;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D3AB40]])
  {
    v4 = @"PHOTOEDIT_STYLE_CAST_DREAMY_HUES";
    goto LABEL_35;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D3AB90]])
  {
    v4 = @"PHOTOEDIT_STYLE_CAST_URBAN_COOL";
    goto LABEL_35;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D3AB48]])
  {
    v4 = @"PHOTOEDIT_STYLE_CAST_EARTHY";
    goto LABEL_35;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D3AB28]])
  {
    v4 = @"PHOTOEDIT_STYLE_CAST_CLOUD_COVER";
    goto LABEL_35;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D3AB50]])
  {
    v4 = @"PHOTOEDIT_STYLE_CAST_GOLD_WARM";
    goto LABEL_35;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D3AB58]])
  {
    v4 = @"PHOTOEDIT_STYLE_CAST_LONG_GRAY";
    goto LABEL_35;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D3AB20]])
  {
    v4 = @"PHOTOEDIT_STYLE_CAST_BRIGHT_POP";
    goto LABEL_35;
  }

  v7 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_25E6E9000, v7, OS_LOG_TYPE_ERROR, "PEAdjustmentUtilities: semanticStyleCastDisplayName - Unsupported cast %@", &v8, 0xCu);
  }

  v5 = 0;
LABEL_36:

  return v5;
}

@end