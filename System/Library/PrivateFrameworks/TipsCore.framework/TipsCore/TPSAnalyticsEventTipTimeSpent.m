@interface TPSAnalyticsEventTipTimeSpent
+ (id)eventWithTipID:(id)a3 collectionID:(id)a4 correlationID:(id)a5;
- (TPSAnalyticsEventTipTimeSpent)initWithCoder:(id)a3;
- (id)_initWithTipID:(id)a3 collectionID:(id)a4 correlationID:(id)a5;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSAnalyticsEventTipTimeSpent

- (TPSAnalyticsEventTipTimeSpent)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TPSAnalyticsEventTipTimeSpent;
  v5 = [(TPSAnalyticsEvent *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"tip_ID"];
    tipID = v5->_tipID;
    v5->_tipID = v7;

    v9 = [v4 decodeObjectOfClass:v6 forKey:@"collection_ID"];
    collectionID = v5->_collectionID;
    v5->_collectionID = v9;

    v11 = [v4 decodeObjectOfClass:v6 forKey:@"tip_correlation_ID"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v11;

    [v4 decodeDoubleForKey:@"time_spent"];
    v5->_timeSpent = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventTipTimeSpent;
  v4 = a3;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_tipID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_collectionID forKey:@"collection_ID"];
  [v4 encodeObject:self->_correlationID forKey:@"tip_correlation_ID"];
  [v4 encodeDouble:@"time_spent" forKey:self->_timeSpent];
}

- (id)_initWithTipID:(id)a3 collectionID:(id)a4 correlationID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E695DF00] date];
  v15.receiver = self;
  v15.super_class = TPSAnalyticsEventTipTimeSpent;
  v13 = [(TPSAnalyticsEvent *)&v15 initWithDate:v12];

  if (v13)
  {
    objc_storeStrong(&v13->_tipID, a3);
    objc_storeStrong(&v13->_collectionID, a4);
    objc_storeStrong(&v13->_correlationID, a5);
    v13->_timeSpent = 0.0;
  }

  return v13;
}

+ (id)eventWithTipID:(id)a3 collectionID:(id)a4 correlationID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] _initWithTipID:v10 collectionID:v9 correlationID:v8];

  return v11;
}

- (id)mutableAnalyticsEventRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_tipID forKeyedSubscript:@"tip_ID"];
  [v3 setObject:self->_correlationID forKeyedSubscript:@"tip_correlation_ID"];
  [v3 setObject:self->_collectionID forKeyedSubscript:@"collection_ID"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [v3 setObject:v4 forKeyedSubscript:@"u65_flag"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_timeSpent];
  [v3 setObject:v5 forKeyedSubscript:@"time_spent"];

  return v3;
}

@end