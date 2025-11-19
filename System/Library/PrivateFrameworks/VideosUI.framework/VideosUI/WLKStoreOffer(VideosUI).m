@interface WLKStoreOffer(VideosUI)
- (id)_localize:()VideosUI token:value:;
- (id)vui_subscriptionOfferButtonText;
- (id)vui_subscriptionOfferDisclaimerText;
@end

@implementation WLKStoreOffer(VideosUI)

- (id)vui_subscriptionOfferButtonText
{
  v2 = [a1 dictionary];
  v3 = [v2 vui_stringForKey:@"ctaCopy"];

  if ([v3 length])
  {
    v4 = v3;
    goto LABEL_24;
  }

  if ([a1 offerType] != 4)
  {
    v4 = 0;
    goto LABEL_24;
  }

  v5 = [a1 title];
  v6 = +[VUILocalizationManager sharedInstance];
  v7 = [v6 localizedStringForKey:@"TV.Button.SubscribeChannel"];

  v4 = [a1 _localize:v7 token:@"channelName" value:v5];
  v8 = [a1 subscriptionType];
  if (v8 == 3)
  {
    v12 = [a1 introOfferPeriod];
    v10 = v12;
    if (v12)
    {
      v13 = [v12 type];
      v14 = *MEMORY[0x1E69E1738];
      if ([v13 isEqual:*MEMORY[0x1E69E1738]])
      {
        v15 = [v10 duration];
        v16 = [v15 isEqualToNumber:&unk_1F5E5D788];
      }

      else
      {
        v16 = 0;
      }

      v17 = [v10 duration];
      v18 = [v17 integerValue];

      v19 = [v10 type];
      v20 = [v19 isEqual:*MEMORY[0x1E69E1740]];

      if ((v20 & 1) != 0 || v16)
      {
        v25 = +[VUILocalizationManager sharedInstance];
        v24 = [v25 localizedStringForKey:@"TV.Button.FreeYears"];

        if (v16)
        {
          v26 = 1;
        }

        else
        {
          v26 = v18;
        }

        [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v24 validFormatSpecifiers:@"%d" error:0, v26];
        goto LABEL_20;
      }

      v21 = [v10 type];
      v22 = [v21 isEqual:v14];

      if (v22)
      {
        v23 = +[VUILocalizationManager sharedInstance];
        v24 = [v23 localizedStringForKey:@"TV.Button.FreeMonths"];

        [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v24 validFormatSpecifiers:@"%d" error:0, v18];
        v11 = LABEL_20:;

        v4 = v24;
        goto LABEL_21;
      }
    }

LABEL_22:

    goto LABEL_23;
  }

  if (v8 == 2)
  {
    v9 = +[VUILocalizationManager sharedInstance];
    v10 = [v9 localizedStringForKey:@"TV.Button.SubscribeChannelFree"];

    v11 = [a1 _localize:v10 token:@"channelName" value:v5];
LABEL_21:

    v4 = v11;
    goto LABEL_22;
  }

LABEL_23:

LABEL_24:

  return v4;
}

- (id)vui_subscriptionOfferDisclaimerText
{
  v2 = [a1 dictionary];
  v3 = [v2 vui_stringForKey:@"legalLine"];

  if ([v3 length])
  {
    v4 = v3;
    goto LABEL_27;
  }

  v5 = [a1 renewalPeriod];
  if ([a1 specialOfferEligible])
  {
    v6 = [a1 freeTrialPeriod];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [a1 introOfferPeriod];
    }

    v9 = v8;

    v10 = [v9 type];
    v11 = [v5 type];
    v12 = v11;
    v4 = 0;
    if (v10 && v11)
    {
      v13 = [v9 duration];
      v14 = [v13 integerValue];

      v15 = [v9 type];
      v16 = [v15 isEqual:*MEMORY[0x1E69E1740]];

      if (v16)
      {
        v17 = [v9 duration];
        v14 = 12 * [v17 integerValue];

        v18 = *MEMORY[0x1E69E1738];
        v10 = v18;
      }

      if (_FreeTrialLocMap_onceToken != -1)
      {
        [WLKStoreOffer(VideosUI) vui_subscriptionOfferDisclaimerText];
      }

      v19 = MEMORY[0x1E696AEC0];
      v20 = _FreeTrialLocMap___freeMap;
      v33 = v12;
      v21 = [v19 stringWithFormat:@"%@_%@", v10, v12];
      v22 = [v20 objectForKey:v21];

      if (v22)
      {
        v23 = +[VUILocalizationManager sharedInstance];
        v24 = [v23 localizedStringForKey:v22];

        v25 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v24 validFormatSpecifiers:@"%d" error:0, v14];
        v26 = [a1 formattedPrice];
        v4 = [a1 _localize:v25 token:@"price" value:v26];
      }

      else
      {
        v4 = 0;
      }

      v12 = v33;
    }

    if (v4)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v4 = 0;
  }

  if (v5)
  {
    v27 = [v5 type];
    if (_PaidSubscriptionLocMap_onceToken != -1)
    {
      [WLKStoreOffer(VideosUI) vui_subscriptionOfferDisclaimerText];
    }

    v28 = [_PaidSubscriptionLocMap___paidMap objectForKey:v27];
    if (v28)
    {
      v29 = +[VUILocalizationManager sharedInstance];
      v30 = [v29 localizedStringForKey:v28];

      v31 = [a1 formattedPrice];
      v4 = [a1 _localize:v30 token:@"price" value:v31];
    }

    else
    {
      v4 = 0;
    }
  }

LABEL_26:

LABEL_27:

  return v4;
}

- (id)_localize:()VideosUI token:value:
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7 && v8 && v9)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@@%@@@", v8];
    v12 = [v7 stringByReplacingOccurrencesOfString:v11 withString:v10];
  }

  else
  {
    v13 = VUIDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "WLKStoreOffer+VideosUI - Invalid localization input: string:%@ token:%@ value:%@", buf, 0x20u);
    }

    v12 = 0;
  }

  return v12;
}

@end