@interface TPSAnalyticsEventSharedTipDisplayed
+ (id)eventWithTipID:(id)a3 correlationID:(id)a4 collectionID:(id)a5 variantID:(id)a6 message:(id)a7 isEligible:(BOOL)a8;
+ (id)eventWithTipID:(id)a3 invalidVariantID:(id)a4;
- (TPSAnalyticsEventSharedTipDisplayed)initWithCoder:(id)a3;
- (id)_initWithTipID:(id)a3 correlationID:(id)a4 collectionID:(id)a5 variantID:(id)a6 eligibility:(id)a7 message:(id)a8;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSAnalyticsEventSharedTipDisplayed

- (TPSAnalyticsEventSharedTipDisplayed)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = TPSAnalyticsEventSharedTipDisplayed;
  v5 = [(TPSAnalyticsEvent *)&v19 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip_ID"];
    tipID = v5->_tipID;
    v5->_tipID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip_correlation_ID"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collection_ID"];
    collectionID = v5->_collectionID;
    v5->_collectionID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip_variant_ID"];
    variantID = v5->_variantID;
    v5->_variantID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eligibility"];
    eligibility = v5->_eligibility;
    v5->_eligibility = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventSharedTipDisplayed;
  v4 = a3;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_tipID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_correlationID forKey:@"tip_correlation_ID"];
  [v4 encodeObject:self->_collectionID forKey:@"collection_ID"];
  [v4 encodeObject:self->_variantID forKey:@"tip_variant_ID"];
  [v4 encodeObject:self->_eligibility forKey:@"eligibility"];
  [v4 encodeObject:self->_message forKey:@"message"];
}

- (id)_initWithTipID:(id)a3 correlationID:(id)a4 collectionID:(id)a5 variantID:(id)a6 eligibility:(id)a7 message:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v15 = a7;
  v16 = a8;
  v17 = [MEMORY[0x1E695DF00] date];
  v24.receiver = self;
  v24.super_class = TPSAnalyticsEventSharedTipDisplayed;
  v18 = [(TPSAnalyticsEvent *)&v24 initWithDate:v17];

  if (v18)
  {
    objc_storeStrong(&v18->_tipID, a3);
    objc_storeStrong(&v18->_correlationID, a4);
    objc_storeStrong(&v18->_collectionID, a5);
    objc_storeStrong(&v18->_variantID, a6);
    objc_storeStrong(&v18->_eligibility, a7);
    objc_storeStrong(&v18->_message, a8);
  }

  return v18;
}

+ (id)eventWithTipID:(id)a3 correlationID:(id)a4 collectionID:(id)a5 variantID:(id)a6 message:(id)a7 isEligible:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = v18;
  if (a8)
  {
    v20 = @"eligible";
  }

  else if ([(__CFString *)v18 length])
  {
    v20 = @"ineligible";
  }

  else
  {
    v20 = @"ineligible - with correlating tip";
  }

  if ([(__CFString *)v19 length])
  {
    v21 = v19;
  }

  else
  {
    v21 = @"n/a";
  }

  v22 = v21;
  if ([(__CFString *)v16 length])
  {
    v23 = v16;
  }

  else
  {
    v23 = @"n/a";
  }

  v24 = v23;
  v25 = [[a1 alloc] _initWithTipID:v14 correlationID:v15 collectionID:v24 variantID:v17 eligibility:v20 message:v22];

  return v25;
}

+ (id)eventWithTipID:(id)a3 invalidVariantID:(id)a4
{
  v5 = a4;
  v6 = [[a1 alloc] _initWithTipID:@"n/a" correlationID:@"n/a" collectionID:@"n/a" variantID:v5 eligibility:@"ineligible - invalid URL" message:@"ineligible - invalid URL"];

  return v6;
}

- (id)mutableAnalyticsEventRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(TPSAnalyticsEventSharedTipDisplayed *)self tipID];
  [v3 setObject:v4 forKeyedSubscript:@"tip_ID"];

  v5 = [(TPSAnalyticsEventSharedTipDisplayed *)self correlationID];
  [v3 setObject:v5 forKeyedSubscript:@"tip_correlation_ID"];

  v6 = [(TPSAnalyticsEventSharedTipDisplayed *)self collectionID];
  [v3 setObject:v6 forKeyedSubscript:@"collection_ID"];

  v7 = [(TPSAnalyticsEventSharedTipDisplayed *)self variantID];
  [v3 setObject:v7 forKeyedSubscript:@"tip_variant_ID"];

  v8 = [(TPSAnalyticsEventSharedTipDisplayed *)self eligibility];
  [v3 setObject:v8 forKeyedSubscript:@"eligibility"];

  v9 = [(TPSAnalyticsEventSharedTipDisplayed *)self message];
  [v3 setObject:v9 forKeyedSubscript:@"message"];

  return v3;
}

@end