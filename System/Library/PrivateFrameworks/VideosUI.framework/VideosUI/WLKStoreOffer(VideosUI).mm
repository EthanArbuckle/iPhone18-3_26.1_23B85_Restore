@interface WLKStoreOffer(VideosUI)
- (id)_localize:()VideosUI token:value:;
- (id)vui_subscriptionOfferButtonText;
- (id)vui_subscriptionOfferDisclaimerText;
@end

@implementation WLKStoreOffer(VideosUI)

- (id)vui_subscriptionOfferButtonText
{
  dictionary = [self dictionary];
  v3 = [dictionary vui_stringForKey:@"ctaCopy"];

  if ([v3 length])
  {
    v4 = v3;
    goto LABEL_24;
  }

  if ([self offerType] != 4)
  {
    v4 = 0;
    goto LABEL_24;
  }

  title = [self title];
  v6 = +[VUILocalizationManager sharedInstance];
  v7 = [v6 localizedStringForKey:@"TV.Button.SubscribeChannel"];

  v4 = [self _localize:v7 token:@"channelName" value:title];
  subscriptionType = [self subscriptionType];
  if (subscriptionType == 3)
  {
    introOfferPeriod = [self introOfferPeriod];
    v10 = introOfferPeriod;
    if (introOfferPeriod)
    {
      type = [introOfferPeriod type];
      v14 = *MEMORY[0x1E69E1738];
      if ([type isEqual:*MEMORY[0x1E69E1738]])
      {
        duration = [v10 duration];
        v16 = [duration isEqualToNumber:&unk_1F5E5D788];
      }

      else
      {
        v16 = 0;
      }

      duration2 = [v10 duration];
      integerValue = [duration2 integerValue];

      type2 = [v10 type];
      v20 = [type2 isEqual:*MEMORY[0x1E69E1740]];

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
          v26 = integerValue;
        }

        [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v24 validFormatSpecifiers:@"%d" error:0, v26];
        goto LABEL_20;
      }

      type3 = [v10 type];
      v22 = [type3 isEqual:v14];

      if (v22)
      {
        v23 = +[VUILocalizationManager sharedInstance];
        v24 = [v23 localizedStringForKey:@"TV.Button.FreeMonths"];

        [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v24 validFormatSpecifiers:@"%d" error:0, integerValue];
        v11 = LABEL_20:;

        v4 = v24;
        goto LABEL_21;
      }
    }

LABEL_22:

    goto LABEL_23;
  }

  if (subscriptionType == 2)
  {
    v9 = +[VUILocalizationManager sharedInstance];
    v10 = [v9 localizedStringForKey:@"TV.Button.SubscribeChannelFree"];

    v11 = [self _localize:v10 token:@"channelName" value:title];
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
  dictionary = [self dictionary];
  v3 = [dictionary vui_stringForKey:@"legalLine"];

  if ([v3 length])
  {
    v4 = v3;
    goto LABEL_27;
  }

  renewalPeriod = [self renewalPeriod];
  if ([self specialOfferEligible])
  {
    freeTrialPeriod = [self freeTrialPeriod];
    v7 = freeTrialPeriod;
    if (freeTrialPeriod)
    {
      introOfferPeriod = freeTrialPeriod;
    }

    else
    {
      introOfferPeriod = [self introOfferPeriod];
    }

    v9 = introOfferPeriod;

    type = [v9 type];
    type2 = [renewalPeriod type];
    v12 = type2;
    v4 = 0;
    if (type && type2)
    {
      duration = [v9 duration];
      integerValue = [duration integerValue];

      type3 = [v9 type];
      v16 = [type3 isEqual:*MEMORY[0x1E69E1740]];

      if (v16)
      {
        duration2 = [v9 duration];
        integerValue = 12 * [duration2 integerValue];

        v18 = *MEMORY[0x1E69E1738];
        type = v18;
      }

      if (_FreeTrialLocMap_onceToken != -1)
      {
        [WLKStoreOffer(VideosUI) vui_subscriptionOfferDisclaimerText];
      }

      v19 = MEMORY[0x1E696AEC0];
      v20 = _FreeTrialLocMap___freeMap;
      v33 = v12;
      v21 = [v19 stringWithFormat:@"%@_%@", type, v12];
      v22 = [v20 objectForKey:v21];

      if (v22)
      {
        v23 = +[VUILocalizationManager sharedInstance];
        v24 = [v23 localizedStringForKey:v22];

        v25 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v24 validFormatSpecifiers:@"%d" error:0, integerValue];
        formattedPrice = [self formattedPrice];
        v4 = [self _localize:v25 token:@"price" value:formattedPrice];
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

  if (renewalPeriod)
  {
    type4 = [renewalPeriod type];
    if (_PaidSubscriptionLocMap_onceToken != -1)
    {
      [WLKStoreOffer(VideosUI) vui_subscriptionOfferDisclaimerText];
    }

    v28 = [_PaidSubscriptionLocMap___paidMap objectForKey:type4];
    if (v28)
    {
      v29 = +[VUILocalizationManager sharedInstance];
      v30 = [v29 localizedStringForKey:v28];

      formattedPrice2 = [self formattedPrice];
      v4 = [self _localize:v30 token:@"price" value:formattedPrice2];
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