@interface WFFocusModesManager
+ (id)activeMode;
+ (id)availableModes;
+ (id)availableModesForAutomationsDisplay;
+ (id)defaultActivity;
+ (id)enteringSymbolForSymbolName:(id)a3;
+ (id)exitingSymbolForSymbolName:(id)a3;
+ (id)glyphToFilledGlyphMapping;
@end

@implementation WFFocusModesManager

+ (id)exitingSymbolForSymbolName:(id)a3
{
  v3 = a3;
  if ([&unk_1F4A9B818 containsObject:v3])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.circle", v3];
  }

  else
  {
    if (![&unk_1F4A9B830 containsObject:v3])
    {
      if ([&unk_1F4A9B848 containsObject:v3] || !objc_msgSend(v3, "containsString:", @".fill"))
      {
        v4 = v3;
      }

      else
      {
        v4 = [v3 stringByReplacingOccurrencesOfString:@".fill" withString:&stru_1F4A1C408];
      }

      goto LABEL_6;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.square", v3];
  }
  v4 = ;
LABEL_6:
  v5 = v4;

  return v5;
}

+ (id)enteringSymbolForSymbolName:(id)a3
{
  v4 = a3;
  v5 = [a1 glyphToFilledGlyphMapping];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [a1 glyphToFilledGlyphMapping];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.circle", v4];
    v10 = [v8 objectForKey:v9];

    if (v10)
    {
      v7 = v10;
    }

    else
    {
      v11 = [a1 glyphToFilledGlyphMapping];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.square", v4];
      v13 = [v11 objectForKey:v12];

      if (v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = v4;
      }

      v7 = v14;
    }
  }

  return v7;
}

+ (id)glyphToFilledGlyphMapping
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [&unk_1F4A9B800 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(&unk_1F4A9B800);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.fill", v7];
        [v2 setObject:v8 forKey:v7];
      }

      v4 = [&unk_1F4A9B800 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  [v2 setObject:@"emoji.face.grinning.inverse" forKey:@"emoji.face.grinning"];
  v9 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)defaultActivity
{
  v2 = [getFCActivityManagerClass() sharedActivityManager];
  v3 = [v2 defaultActivity];

  return v3;
}

+ (id)availableModesForAutomationsDisplay
{
  v3 = [MEMORY[0x1E69E0A90] currentDevice];
  v4 = [v3 idiom] == 0;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__WFFocusModesManager_availableModesForAutomationsDisplay__block_invoke;
  aBlock[3] = &__block_descriptor_34_e32_B16__0___FCActivityDescribing__8l;
  v13 = 1;
  v14 = v4;
  v5 = _Block_copy(aBlock);
  v6 = [a1 availableModes];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__WFFocusModesManager_availableModesForAutomationsDisplay__block_invoke_2;
  v10[3] = &unk_1E837EF68;
  v11 = v5;
  v7 = v5;
  v8 = [v6 if_compactMap:v10];

  return v8;
}

uint64_t __58__WFFocusModesManager_availableModesForAutomationsDisplay__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == 1 && ([v3 isPlaceholder] & 1) != 0)
  {
    v5 = 0;
  }

  else if (*(a1 + 33) == 1)
  {
    v6 = [v4 activityIdentifier];
    v7 = [v6 isEqualToString:@"com.apple.sleep.sleep-mode"];

    v5 = v7 ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

void *__58__WFFocusModesManager_availableModesForAutomationsDisplay__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  if (v3(v2, v4))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

+ (id)availableModes
{
  v2 = [getFCActivityManagerClass() sharedActivityManager];
  v3 = [v2 availableActivities];

  return v3;
}

+ (id)activeMode
{
  v2 = [getFCActivityManagerClass() sharedActivityManager];
  v3 = [v2 activeActivity];

  return v3;
}

@end