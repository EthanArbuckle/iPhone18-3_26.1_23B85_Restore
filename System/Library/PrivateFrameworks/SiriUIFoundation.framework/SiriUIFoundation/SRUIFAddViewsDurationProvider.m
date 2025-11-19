@interface SRUIFAddViewsDurationProvider
+ (double)fetchMinimumDurationFromDefaults;
+ (double)internalDurationOverride;
+ (double)minimumDisplayDurationForAddViews:(id)a3;
+ (id)userDefaults;
+ (int64_t)_numberOfWordsInString:(id)a3;
@end

@implementation SRUIFAddViewsDurationProvider

+ (double)minimumDisplayDurationForAddViews:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CEF260];
  v6 = [v4 dialogPhase];
  v7 = [v5 dialogPhaseForAceDialogPhase:v6];

  v8 = 0.0;
  if ([v7 isExpository])
  {
    goto LABEL_30;
  }

  v9 = [v4 views];
  v10 = [v9 count];

  if (!v10)
  {
    goto LABEL_30;
  }

  [a1 internalDurationOverride];
  v8 = v11;
  if (v11 != 9.22337204e18)
  {
    goto LABEL_30;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [v4 views];
  v12 = [obj countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (!v12)
  {
    v14 = 0;
    goto LABEL_23;
  }

  v13 = v12;
  v14 = 0;
  v33 = *v35;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v35 != v33)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v34 + 1) + 8 * i);
      v17 = [v16 listenAfterSpeaking];
      v18 = [v17 BOOLValue];

      v8 = 0.0;
      if (v18 & 1) != 0 || ([v16 sruif_hasButton])
      {
        goto LABEL_29;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [v16 postDialogDelayInMilliseconds];

        if (v19)
        {
          v28 = [v16 postDialogDelayInMilliseconds];
          [v28 doubleValue];
          v8 = v29 / 1000.0;

LABEL_29:
          goto LABEL_30;
        }
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v16 text], v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
      {
        v21 = [v16 text];
      }

      else
      {
        v22 = [v16 speakableText];

        if (!v22)
        {
          continue;
        }

        v21 = [v16 speakableText];
      }

      v23 = v21;
      v14 += [a1 _numberOfWordsInString:v21];
    }

    v13 = [obj countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_23:

  v24 = fmin(v14 / 2.83333333, 4.0);
  if (v24 >= 1.0)
  {
    v8 = v24;
  }

  else
  {
    v8 = 1.0;
  }

  v25 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v26 = v25;
    v27 = [v4 aceId];
    *buf = 136315906;
    v39 = "+[SRUIFAddViewsDurationProvider minimumDisplayDurationForAddViews:]";
    v40 = 2048;
    v41 = v14;
    v42 = 2112;
    v43 = v27;
    v44 = 2048;
    v45 = v8;
    _os_log_impl(&dword_26951F000, v26, OS_LOG_TYPE_DEFAULT, "%s %li words in AddViews command:%@. Returning a minimum display duration of %f", buf, 0x2Au);
  }

LABEL_30:

  v30 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (double)internalDurationOverride
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SRUIFAddViewsDurationProvider_internalDurationOverride__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (internalDurationOverride_onceToken != -1)
  {
    dispatch_once(&internalDurationOverride_onceToken, block);
  }

  return *&internalDurationOverride_duration;
}

uint64_t __57__SRUIFAddViewsDurationProvider_internalDurationOverride__block_invoke(uint64_t a1)
{
  result = AFIsInternalInstall();
  if (result)
  {
    result = [*(a1 + 32) fetchMinimumDurationFromDefaults];
  }

  else
  {
    v3 = 0x43E0000000000000;
  }

  internalDurationOverride_duration = v3;
  return result;
}

+ (double)fetchMinimumDurationFromDefaults
{
  v2 = [a1 userDefaults];
  v3 = [v2 objectForKey:@"MinimumDurationForAddViews"];

  if (v3)
  {
    [v2 doubleForKey:@"MinimumDurationForAddViews"];
    v5 = v4;
  }

  else
  {
    v5 = 9.22337204e18;
  }

  return v5;
}

+ (id)userDefaults
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.siri.internal"];

  return v2;
}

+ (int64_t)_numberOfWordsInString:(id)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [v3 length];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SRUIFAddViewsDurationProvider__numberOfWordsInString___block_invoke;
  v7[3] = &unk_279C61918;
  v7[4] = &v8;
  [v3 enumerateSubstringsInRange:0 options:v4 usingBlock:{3, v7}];
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);

  return v5;
}

@end