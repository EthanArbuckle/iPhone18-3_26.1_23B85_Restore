@interface RKCoreAnalytics
+ (id)assignCoreAnalyticsCategory:(id)category forAction:(id)action withLanguageID:(id)d;
+ (void)sendCoreAnalyticsEvent:(id)event forAction:(id)action withLanguageID:(id)d;
@end

@implementation RKCoreAnalytics

+ (id)assignCoreAnalyticsCategory:(id)category forAction:(id)action withLanguageID:(id)d
{
  categoryCopy = category;
  actionCopy = action;
  dCopy = d;
  if (!dCopy)
  {
    v10 = 0;
    goto LABEL_31;
  }

  if (!categoryCopy || ([categoryCopy isEqualToString:&stru_2874A9C90] & 1) != 0)
  {
    v10 = @"allCategories";
    goto LABEL_31;
  }

  v11 = RKLinguisticCategoryFromPreferenceKey(categoryCopy);
  if (v11 <= 17)
  {
    if (v11 > 10)
    {
      if ((v11 - 11) < 2)
      {
        v12 = 11;
        goto LABEL_26;
      }

      if ((v11 - 13) < 2)
      {
        v12 = 13;
        goto LABEL_26;
      }

      if (v11 != 15)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if ((v11 - 2) < 4)
      {
        v12 = 2;
        goto LABEL_26;
      }

      if ((v11 - 6) >= 3 && v11 != 10)
      {
        goto LABEL_18;
      }
    }

LABEL_29:
    v13 = categoryCopy;
    goto LABEL_30;
  }

  if ((v11 - 21) < 8)
  {
    v12 = 21;
    goto LABEL_26;
  }

  if (v11 <= 0x2D)
  {
    if (((1 << v11) & 0x4E000000000) != 0)
    {
      v10 = @"StatementSpecialEvent";
      goto LABEL_31;
    }

    if (((1 << v11) & 0xC00000000) != 0)
    {
      v10 = @"StatementExpressEmotion";
      goto LABEL_31;
    }

    if (((1 << v11) & 0x300000000000) != 0)
    {
      goto LABEL_29;
    }
  }

  if (v11 == 18)
  {
    goto LABEL_29;
  }

LABEL_18:
  v12 = 0;
LABEL_26:
  v13 = RKLinguisticCategoryToPreferenceKey(v12);
LABEL_30:
  v10 = v13;
LABEL_31:

  return v10;
}

+ (void)sendCoreAnalyticsEvent:(id)event forAction:(id)action withLanguageID:(id)d
{
  actionCopy = action;
  dCopy = d;
  v10 = [self assignCoreAnalyticsCategory:event forAction:actionCopy withLanguageID:dCopy];
  v11 = v10;
  if (actionCopy && dCopy && v10)
  {
    v12 = actionCopy;
    v13 = dCopy;
    v14 = v11;
    AnalyticsSendEventLazy();
  }
}

id __67__RKCoreAnalytics_sendCoreAnalyticsEvent_forAction_withLanguageID___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5[0] = @"ACTION";
  v5[1] = @"LOCALE";
  v6 = v1;
  v5[2] = @"CATEGORY";
  v7 = *(a1 + 48);
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end