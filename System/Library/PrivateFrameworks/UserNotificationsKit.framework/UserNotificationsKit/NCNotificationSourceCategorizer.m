@interface NCNotificationSourceCategorizer
+ (BOOL)bundleIdEligibleForSummarization:(id)a3;
+ (BOOL)cateogryEligibleForSummarization:(unint64_t)a3;
+ (unint64_t)categoryOfBundleId:(id)a3;
- (NCNotificationSourceCategorizer)init;
@end

@implementation NCNotificationSourceCategorizer

+ (BOOL)cateogryEligibleForSummarization:(unint64_t)a3
{
  v4 = sub_270A88840();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 > 2)
  {
    v8 = MEMORY[0x277D77EF8];
  }

  else
  {
    v8 = qword_279E0DD40[a3];
  }

  (*(v5 + 104))(v7, *v8, v4);
  v9 = sub_270A88800();
  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

+ (BOOL)bundleIdEligibleForSummarization:(id)a3
{
  sub_270A88FC0();
  v3 = _sSo31NCNotificationSourceCategorizerC20UserNotificationsKitE24eligibleForSummarization8bundleIdSbSS_tFZ_0();

  return v3 & 1;
}

+ (unint64_t)categoryOfBundleId:(id)a3
{
  v3 = sub_270A88840();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_270A88FC0();
  MEMORY[0x2743ADD00](v7);

  v8 = (*(v4 + 88))(v6, v3);
  result = 0;
  if (v8 != *MEMORY[0x277D77EF0])
  {
    if (v8 == *MEMORY[0x277D77EE8])
    {
      return 1;
    }

    else if (v8 == *MEMORY[0x277D77F00])
    {
      return 2;
    }

    else
    {
      if (v8 != *MEMORY[0x277D77EF8])
      {
        (*(v4 + 8))(v6, v3);
      }

      return 3;
    }
  }

  return result;
}

- (NCNotificationSourceCategorizer)init
{
  v3.receiver = self;
  v3.super_class = NCNotificationSourceCategorizer;
  return [(NCNotificationSourceCategorizer *)&v3 init];
}

@end