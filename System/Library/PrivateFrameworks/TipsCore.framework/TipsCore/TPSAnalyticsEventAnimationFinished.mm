@interface TPSAnalyticsEventAnimationFinished
- (TPSAnalyticsEventAnimationFinished)initWithCoder:(id)a3;
- (id)_initWithTipID:(id)a3 animationFinished:(BOOL)a4 animationSource:(id)a5 collectionID:(id)a6 correlationID:(id)a7;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSAnalyticsEventAnimationFinished

- (TPSAnalyticsEventAnimationFinished)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TPSAnalyticsEventAnimationFinished;
  v5 = [(TPSAnalyticsEvent *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip_ID"];
    tipID = v5->_tipID;
    v5->_tipID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"animation_source"];
    animationSource = v5->_animationSource;
    v5->_animationSource = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collection_ID"];
    collectionID = v5->_collectionID;
    v5->_collectionID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip_correlation_ID"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v12;

    v5->_animationFinished = [v4 decodeBoolForKey:@"animation_finished"];
  }

  return v5;
}

- (id)_initWithTipID:(id)a3 animationFinished:(BOOL)a4 animationSource:(id)a5 collectionID:(id)a6 correlationID:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = TPSAnalyticsEventAnimationFinished;
  v17 = [(TPSAnalyticsEvent *)&v20 initWithDate:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_tipID, a3);
    objc_storeStrong(&v18->_animationSource, a5);
    v18->_animationFinished = a4;
    objc_storeStrong(&v18->_collectionID, a6);
    objc_storeStrong(&v18->_correlationID, a7);
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventAnimationFinished;
  v4 = a3;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_tipID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_animationSource forKey:@"animation_source"];
  [v4 encodeObject:self->_collectionID forKey:@"collection_ID"];
  [v4 encodeObject:self->_correlationID forKey:@"tip_correlation_ID"];
  [v4 encodeBool:self->_animationFinished forKey:@"animation_finished"];
}

- (id)mutableAnalyticsEventRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(TPSAnalyticsEventAnimationFinished *)self tipID];
  [v3 setObject:v4 forKeyedSubscript:@"tip_ID"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_animationFinished];
  [v3 setObject:v5 forKeyedSubscript:@"animation_finished"];

  v6 = [(TPSAnalyticsEventAnimationFinished *)self animationSource];
  [v3 setObject:v6 forKeyedSubscript:@"animation_source"];

  v7 = [(TPSAnalyticsEventAnimationFinished *)self collectionID];
  [v3 setObject:v7 forKeyedSubscript:@"collection_ID"];

  v8 = [(TPSAnalyticsEventAnimationFinished *)self correlationID];
  [v3 setObject:v8 forKeyedSubscript:@"tip_correlation_ID"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [v3 setObject:v9 forKeyedSubscript:@"u65_flag"];

  return v3;
}

@end