@interface TIConnectionsMetricsTracker
+ (id)sharedInstance;
- (BOOL)isIgnoredTrigger:(id)a3;
- (TIConnectionsMetricsTracker)init;
- (void)trackPredictionEngagmentWithConversion:(BOOL)a3 age:(unint64_t)a4 fieldType:(id)a5 resultType:(id)a6 fromBundleId:(id)a7 targetApp:(id)a8 linguistic:(BOOL)a9 semantic:(BOOL)a10;
- (void)trackTextFieldEntryWithEmpty:(BOOL)a3 fieldType:(id)a4 linguistic:(BOOL)a5 semantic:(BOOL)a6 requestType:(id)a7;
@end

@implementation TIConnectionsMetricsTracker

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_12345 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_12345, &__block_literal_global_12346);
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

- (void)trackPredictionEngagmentWithConversion:(BOOL)a3 age:(unint64_t)a4 fieldType:(id)a5 resultType:(id)a6 fromBundleId:(id)a7 targetApp:(id)a8 linguistic:(BOOL)a9 semantic:(BOOL)a10
{
  v14 = a3;
  v31[6] = *MEMORY[0x277D85DE8];
  v16 = MEMORY[0x277CCABB0];
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = [v16 numberWithUnsignedInteger:a4];
  v22 = v21;
  v23 = @"null";
  if (v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = @"null";
  }

  v31[0] = v21;
  v31[1] = v24;
  if (v19)
  {
    v25 = v19;
  }

  else
  {
    v25 = @"null";
  }

  if (v18)
  {
    v26 = v18;
  }

  else
  {
    v26 = @"null";
  }

  v31[2] = v25;
  v31[3] = v26;
  if (v17)
  {
    v27 = v17;
  }

  else
  {
    v27 = @"null";
  }

  if (a10)
  {
    v23 = @"semantic";
  }

  if (a9)
  {
    v23 = @"linguistic";
  }

  v31[4] = v27;
  v31[5] = v23;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:6];

  predictionEngagementTracker = self->_predictionEngagementTracker;
  if (v14)
  {
    [(PETGoalConversionEventTracker *)predictionEngagementTracker trackGoalConversionEventWithPropertyValues:v28];
  }

  else
  {
    [(PETGoalConversionEventTracker *)predictionEngagementTracker trackGoalOpportunityEventWithPropertyValues:v28];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)trackTextFieldEntryWithEmpty:(BOOL)a3 fieldType:(id)a4 linguistic:(BOOL)a5 semantic:(BOOL)a6 requestType:(id)a7
{
  v18[4] = *MEMORY[0x277D85DE8];
  textFieldEntryTracker = self->_textFieldEntryTracker;
  v9 = @"0";
  if (a3)
  {
    v9 = @"1";
  }

  v10 = @"null";
  if (a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = @"null";
  }

  v18[0] = v9;
  v18[1] = v11;
  v12 = @"semantic";
  if (!a6)
  {
    v12 = @"null";
  }

  if (a5)
  {
    v12 = @"linguistic";
  }

  if (a7)
  {
    v10 = a7;
  }

  v18[2] = v12;
  v18[3] = v10;
  v13 = MEMORY[0x277CBEA60];
  v14 = a7;
  v15 = a4;
  v16 = [v13 arrayWithObjects:v18 count:4];
  [(PETScalarEventTracker *)textFieldEntryTracker trackEventWithPropertyValues:v16];

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)isIgnoredTrigger:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 attributes];
  v4 = [v3 objectForKey:*MEMORY[0x277D22F30]];
  v5 = [MEMORY[0x277CBEB68] null];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (TIConnectionsMetricsTracker)init
{
  v23[4] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = TIConnectionsMetricsTracker;
  v2 = [(TIConnectionsMetricsTracker *)&v21 init];
  if (v2)
  {
    v20 = [MEMORY[0x277D41DA0] propertyWithName:@"empty" possibleValues:&unk_28400B9E8];
    v3 = [MEMORY[0x277D41DA0] freeValuedPropertyWithName:@"field"];
    v4 = [MEMORY[0x277D41DA0] propertyWithName:@"trigger" possibleValues:&unk_28400BA00];
    v19 = [MEMORY[0x277D41DA0] freeValuedPropertyWithName:@"request"];
    v18 = [MEMORY[0x277D41DA0] propertyWithName:@"age" range:0 clampValues:{31536000, 1}];
    v17 = [MEMORY[0x277D41DA0] freeValuedPropertyWithName:@"response"];
    v5 = [MEMORY[0x277D41DA0] freeValuedPropertyWithName:@"fromBundleId"];
    v6 = [MEMORY[0x277D41DA0] freeValuedPropertyWithName:@"targetApp"];
    v7 = objc_alloc(MEMORY[0x277D41DB8]);
    v23[0] = v20;
    v23[1] = v3;
    v23[2] = v4;
    v23[3] = v19;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
    v9 = [v7 initWithFeatureId:@"kbd_textcontainer" event:@"reentry" registerProperties:v8];
    textFieldEntryTracker = v2->_textFieldEntryTracker;
    v2->_textFieldEntryTracker = v9;

    v11 = objc_alloc(MEMORY[0x277D41DB0]);
    v22[0] = v18;
    v22[1] = v3;
    v22[2] = v17;
    v22[3] = v5;
    v22[4] = v6;
    v22[5] = v4;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:6];
    v13 = [v11 initWithFeatureId:@"kbd_proactive" opportunityEvent:@"shown" conversionEvent:@"engaged" registerProperties:v12];
    predictionEngagementTracker = v2->_predictionEngagementTracker;
    v2->_predictionEngagementTracker = v13;

    v2->_inputContextDidChange = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t __45__TIConnectionsMetricsTracker_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end