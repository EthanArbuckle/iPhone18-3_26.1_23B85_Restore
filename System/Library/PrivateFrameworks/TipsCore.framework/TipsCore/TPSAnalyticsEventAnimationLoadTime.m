@interface TPSAnalyticsEventAnimationLoadTime
+ (id)eventWithTipID:(id)a3 animationLoadTime:(double)a4;
- (TPSAnalyticsEventAnimationLoadTime)initWithCoder:(id)a3;
- (id)_initWithTipID:(id)a3 animationLoadTime:(double)a4;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSAnalyticsEventAnimationLoadTime

- (TPSAnalyticsEventAnimationLoadTime)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TPSAnalyticsEventAnimationLoadTime;
  v5 = [(TPSAnalyticsEvent *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip_ID"];
    tipID = v5->_tipID;
    v5->_tipID = v6;

    [v4 decodeDoubleForKey:@"animation_load_time"];
    v5->_animationLoadTime = v8;
  }

  return v5;
}

- (id)_initWithTipID:(id)a3 animationLoadTime:(double)a4
{
  v7 = a3;
  v8 = [MEMORY[0x1E695DF00] date];
  v11.receiver = self;
  v11.super_class = TPSAnalyticsEventAnimationLoadTime;
  v9 = [(TPSAnalyticsEvent *)&v11 initWithDate:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_tipID, a3);
    v9->_animationLoadTime = a4;
  }

  return v9;
}

+ (id)eventWithTipID:(id)a3 animationLoadTime:(double)a4
{
  v6 = a3;
  v7 = [[a1 alloc] _initWithTipID:v6 animationLoadTime:a4];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventAnimationLoadTime;
  v4 = a3;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_tipID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [v4 encodeDouble:@"animation_load_time" forKey:self->_animationLoadTime];
}

- (id)mutableAnalyticsEventRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_tipID forKeyedSubscript:@"tip_ID"];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:ceil(self->_animationLoadTime)];
  [v3 setObject:v4 forKeyedSubscript:@"animation_load_time"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [v3 setObject:v5 forKeyedSubscript:@"u65_flag"];

  return v3;
}

@end