@interface WFAppShortcutsDenyList
+ (BOOL)isAppShortcutDenyListed:(id)listed inEnvironment:(unint64_t)environment;
+ (id)denyList;
+ (id)spotlightBonusSPI;
@end

@implementation WFAppShortcutsDenyList

+ (id)denyList
{
  if (denyList_onceToken != -1)
  {
    dispatch_once(&denyList_onceToken, &__block_literal_global_11044);
  }

  v3 = denyList_denyList;

  return v3;
}

void __34__WFAppShortcutsDenyList_denyList__block_invoke()
{
  v4[9] = *MEMORY[0x1E69E9840];
  v3[0] = @"com.apple.mobiletimer";
  v3[1] = @"com.apple.NanoStopwatch";
  v4[0] = &unk_1F2931628;
  v4[1] = &unk_1F2931650;
  v3[2] = @"com.apple.VoiceMemos";
  v3[3] = @"com.apple.ShortcutsActions";
  v4[2] = &unk_1F2931678;
  v4[3] = &unk_1F29316A0;
  v3[4] = @"com.apple.camera";
  v3[5] = @"com.apple.reminders";
  v4[4] = &unk_1F29316C8;
  v4[5] = &unk_1F29316F0;
  v3[6] = @"com.apple.Mind";
  v3[7] = @"com.apple.Capture";
  v4[6] = &unk_1F2931718;
  v4[7] = &unk_1F2931740;
  v3[8] = @"com.apple.Translate";
  v4[8] = &unk_1F2931768;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:9];
  v1 = denyList_denyList;
  denyList_denyList = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isAppShortcutDenyListed:(id)listed inEnvironment:(unint64_t)environment
{
  listedCopy = listed;
  bundleIdentifier = [listedCopy bundleIdentifier];
  if ([bundleIdentifier isEqualToString:@"com.apple.ShortcutsActions"])
  {
    actionIdentifier = [listedCopy actionIdentifier];
    v9 = [actionIdentifier isEqualToString:@"StartCallTopHitAction"];

    if (v9)
    {
      v10 = +[WFDevice currentDevice];
      v11 = [v10 hasCapability:@"CellularTelephony"];

      if (!v11)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
  }

  bundleIdentifier2 = [listedCopy bundleIdentifier];
  if (([bundleIdentifier2 isEqualToString:@"com.apple.ShortcutsActions"] & 1) == 0)
  {

    goto LABEL_11;
  }

  actionIdentifier2 = [listedCopy actionIdentifier];
  v14 = [actionIdentifier2 isEqualToString:@"StartFaceTimeAudioCallTopHitAction"];

  if (!v14 || (+[WFDevice currentDevice](WFDevice, "currentDevice"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isChineseRegionDevice], v15, (v16 & 1) == 0))
  {
LABEL_11:
    if (environment == 2)
    {
      bundleIdentifier3 = [listedCopy bundleIdentifier];
      if ([bundleIdentifier3 isEqualToString:@"com.apple.ShortcutsActions"])
      {
        spotlightBonusSPI = [self spotlightBonusSPI];
        actionIdentifier3 = [listedCopy actionIdentifier];
        v21 = [spotlightBonusSPI containsObject:actionIdentifier3];

        if (v21)
        {
          v17 = 0;
          goto LABEL_17;
        }
      }

      else
      {
      }
    }

    denyList = [self denyList];
    bundleIdentifier4 = [listedCopy bundleIdentifier];
    v24 = [denyList objectForKey:bundleIdentifier4];
    actionIdentifier4 = [listedCopy actionIdentifier];
    v26 = [v24 objectForKey:actionIdentifier4];
    v17 = ([v26 unsignedIntegerValue] & environment) != 0;

    goto LABEL_17;
  }

LABEL_9:
  v17 = 1;
LABEL_17:

  return v17;
}

+ (id)spotlightBonusSPI
{
  if (spotlightBonusSPI_onceToken != -1)
  {
    dispatch_once(&spotlightBonusSPI_onceToken, &__block_literal_global_148);
  }

  v3 = spotlightBonusSPI_bonusSPI;

  return v3;
}

void __43__WFAppShortcutsDenyList_spotlightBonusSPI__block_invoke()
{
  v0 = spotlightBonusSPI_bonusSPI;
  spotlightBonusSPI_bonusSPI = &unk_1F2931578;
}

@end