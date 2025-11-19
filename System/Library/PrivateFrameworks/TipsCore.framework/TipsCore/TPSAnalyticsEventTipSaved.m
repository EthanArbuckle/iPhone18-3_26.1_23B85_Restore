@interface TPSAnalyticsEventTipSaved
- (TPSAnalyticsEventTipSaved)initWithCoder:(id)a3;
- (id)_initWithTipID:(id)a3 saved:(BOOL)a4 correlationID:(id)a5 collectionID:(id)a6;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSAnalyticsEventTipSaved

- (TPSAnalyticsEventTipSaved)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TPSAnalyticsEventTipSaved;
  v5 = [(TPSAnalyticsEvent *)&v13 initWithCoder:v4];
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

    v5->_saved = [v4 decodeBoolForKey:@"save_flag"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventTipSaved;
  v4 = a3;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_tipID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_correlationID forKey:@"tip_correlation_ID"];
  [v4 encodeObject:self->_collectionID forKey:@"collection_ID"];
  [v4 encodeBool:self->_saved forKey:@"save_flag"];
}

- (id)_initWithTipID:(id)a3 saved:(BOOL)a4 correlationID:(id)a5 collectionID:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x1E695DF00] date];
  v17.receiver = self;
  v17.super_class = TPSAnalyticsEventTipSaved;
  v15 = [(TPSAnalyticsEvent *)&v17 initWithDate:v14];

  if (v15)
  {
    objc_storeStrong(&v15->_tipID, a3);
    v15->_saved = a4;
    objc_storeStrong(&v15->_correlationID, a5);
    objc_storeStrong(&v15->_collectionID, a6);
  }

  return v15;
}

- (id)mutableAnalyticsEventRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(TPSAnalyticsEventTipSaved *)self tipID];
  [v3 setObject:v4 forKeyedSubscript:@"tip_ID"];

  v5 = [(TPSAnalyticsEventTipSaved *)self correlationID];
  [v3 setObject:v5 forKeyedSubscript:@"tip_correlation_ID"];

  v6 = [(TPSAnalyticsEventTipSaved *)self collectionID];
  [v3 setObject:v6 forKeyedSubscript:@"collection_ID"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[TPSAnalyticsEventTipSaved saved](self, "saved")}];
  [v3 setObject:v7 forKeyedSubscript:@"save_flag"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [v3 setObject:v8 forKeyedSubscript:@"u65_flag"];

  return v3;
}

@end