@interface TPSAnalyticsEventReplayButtonTapped
+ (id)eventWithTipID:(id)a3 collectionID:(id)a4 correlationID:(id)a5;
- (TPSAnalyticsEventReplayButtonTapped)initWithCoder:(id)a3;
- (id)_initWithTipID:(id)a3 collectionID:(id)a4 correlationID:(id)a5;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSAnalyticsEventReplayButtonTapped

- (TPSAnalyticsEventReplayButtonTapped)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TPSAnalyticsEventReplayButtonTapped;
  v5 = [(TPSAnalyticsEvent *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip_ID"];
    tipID = v5->_tipID;
    v5->_tipID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip_collection_ID"];
    collectionID = v5->_collectionID;
    v5->_collectionID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip_correlation_ID"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v10;
  }

  return v5;
}

- (id)_initWithTipID:(id)a3 collectionID:(id)a4 correlationID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E695DF00] date];
  v15.receiver = self;
  v15.super_class = TPSAnalyticsEventReplayButtonTapped;
  v13 = [(TPSAnalyticsEvent *)&v15 initWithDate:v12];

  if (v13)
  {
    objc_storeStrong(&v13->_tipID, a3);
    objc_storeStrong(&v13->_collectionID, a4);
    objc_storeStrong(&v13->_correlationID, a5);
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventReplayButtonTapped;
  v4 = a3;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_tipID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_collectionID forKey:@"tip_collection_ID"];
  [v4 encodeObject:self->_correlationID forKey:@"tip_correlation_ID"];
}

- (id)mutableAnalyticsEventRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(TPSAnalyticsEventReplayButtonTapped *)self tipID];
  [v3 setObject:v4 forKeyedSubscript:@"tip_ID"];

  v5 = [(TPSAnalyticsEventReplayButtonTapped *)self collectionID];
  [v3 setObject:v5 forKeyedSubscript:@"tip_collection_ID"];

  v6 = [(TPSAnalyticsEventReplayButtonTapped *)self correlationID];
  [v3 setObject:v6 forKeyedSubscript:@"tip_correlation_ID"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [v3 setObject:v7 forKeyedSubscript:@"u65_flag"];

  return v3;
}

@end