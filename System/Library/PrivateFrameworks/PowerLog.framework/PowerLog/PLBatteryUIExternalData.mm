@interface PLBatteryUIExternalData
+ (id)getLocalizedStringForKey:(id)a3;
+ (id)getTitleAndTextForType:(int)a3;
@end

@implementation PLBatteryUIExternalData

+ (id)getTitleAndTextForType:(int)a3
{
  v3 = 0;
  v21[2] = *MEMORY[0x1E69E9840];
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_14;
      }

      v18[0] = @"Title";
      v4 = [PLBatteryUIExternalData getLocalizedStringForKey:@"ENABLE_AUTOLOCK"];
      v18[1] = @"Text";
      v19[0] = v4;
      v5 = [PLBatteryUIExternalData getLocalizedStringForKey:@"AUTOLOCK_INFO_TEXT"];
      v19[1] = v5;
      v6 = MEMORY[0x1E695DF20];
      v7 = v19;
      v8 = v18;
    }

    else
    {
      v20[0] = @"Title";
      v4 = [PLBatteryUIExternalData getLocalizedStringForKey:@"AUTOBRIGHTNESS"];
      v20[1] = @"Text";
      v21[0] = v4;
      v5 = [PLBatteryUIExternalData getLocalizedStringForKey:@"AUTOBRIGHTNESS_INFO_TEXT"];
      v21[1] = v5;
      v6 = MEMORY[0x1E695DF20];
      v7 = v21;
      v8 = v20;
    }

    goto LABEL_12;
  }

  if (a3 == 2)
  {
    v16[0] = @"Title";
    v4 = [PLBatteryUIExternalData getLocalizedStringForKey:@"REDUCEBRIGHTNESS"];
    v16[1] = @"Text";
    v17[0] = v4;
    v5 = [PLBatteryUIExternalData getLocalizedStringForKey:@"REDUCEBRIGHTNESS_INFO_TEXT"];
    v17[1] = v5;
    v6 = MEMORY[0x1E695DF20];
    v7 = v17;
    v8 = v16;
LABEL_12:
    v3 = [v6 dictionaryWithObjects:v7 forKeys:v8 count:2];
    goto LABEL_13;
  }

  if (a3 != 3)
  {
    goto LABEL_14;
  }

  v9 = +[PLModelingUtilities isiPhone];
  v10 = @"IPAD";
  if (v9)
  {
    v10 = @"IPHONE";
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INSIGHTS_SUGGESTIONS_SUMMARY_RECENT_USAGE_TEXT_%@", v10];
  v14[0] = @"Title";
  v5 = [PLBatteryUIExternalData getLocalizedStringForKey:@"UPGRADE_TITLE"];
  v14[1] = @"Text";
  v15[0] = v5;
  v11 = [PLBatteryUIExternalData getLocalizedStringForKey:v4];
  v15[1] = v11;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

LABEL_13:
LABEL_14:
  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)getLocalizedStringForKey:(id)a3
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v4 value:&stru_1F38DE2A8 table:@"BatteryUI"];

  return v6;
}

@end