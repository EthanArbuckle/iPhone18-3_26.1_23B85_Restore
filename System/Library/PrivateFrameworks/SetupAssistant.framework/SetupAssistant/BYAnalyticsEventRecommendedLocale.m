@interface BYAnalyticsEventRecommendedLocale
- (BYAnalyticsEventRecommendedLocale)initWithAnalyticsManager:(id)a3;
- (id)eventPayload;
@end

@implementation BYAnalyticsEventRecommendedLocale

- (BYAnalyticsEventRecommendedLocale)initWithAnalyticsManager:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BYAnalyticsEventRecommendedLocale;
  v5 = [(BYAnalyticsEventRecommendedLocale *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__BYAnalyticsEventRecommendedLocale_initWithAnalyticsManager___block_invoke;
    v8[3] = &unk_1E7D036A0;
    v9 = v5;
    [v4 addEvent:@"com.apple.setupassistant.ios.guessedCountry" withPayloadBlock:v8 persist:1];
  }

  return v6;
}

id __62__BYAnalyticsEventRecommendedLocale_initWithAnalyticsManager___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) userVisitedLocalePane])
  {
    v2 = [*(a1 + 32) eventPayload];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)eventPayload
{
  v12[3] = *MEMORY[0x1E69E9840];
  v3 = [(BYAnalyticsEventRecommendedLocale *)self source];
  if (v3 > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E7D03DC0[v3];
  }

  v12[0] = v4;
  v11[0] = @"source";
  v11[1] = @"durationOfWiFiScan";
  v5 = MEMORY[0x1E696AD98];
  [(BYAnalyticsEventRecommendedLocale *)self durationOfWiFiScan];
  v6 = [v5 numberWithDouble:?];
  v12[1] = v6;
  v11[2] = @"userSawRecommendedLocale";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BYAnalyticsEventRecommendedLocale userSawRecommendedLocale](self, "userSawRecommendedLocale")}];
  v12[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end