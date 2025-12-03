@interface TPSAnalyticsEventAnimationLoadTime
+ (id)eventWithTipID:(id)d animationLoadTime:(double)time;
- (TPSAnalyticsEventAnimationLoadTime)initWithCoder:(id)coder;
- (id)_initWithTipID:(id)d animationLoadTime:(double)time;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSAnalyticsEventAnimationLoadTime

- (TPSAnalyticsEventAnimationLoadTime)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = TPSAnalyticsEventAnimationLoadTime;
  v5 = [(TPSAnalyticsEvent *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_ID"];
    tipID = v5->_tipID;
    v5->_tipID = v6;

    [coderCopy decodeDoubleForKey:@"animation_load_time"];
    v5->_animationLoadTime = v8;
  }

  return v5;
}

- (id)_initWithTipID:(id)d animationLoadTime:(double)time
{
  dCopy = d;
  date = [MEMORY[0x1E695DF00] date];
  v11.receiver = self;
  v11.super_class = TPSAnalyticsEventAnimationLoadTime;
  v9 = [(TPSAnalyticsEvent *)&v11 initWithDate:date];

  if (v9)
  {
    objc_storeStrong(&v9->_tipID, d);
    v9->_animationLoadTime = time;
  }

  return v9;
}

+ (id)eventWithTipID:(id)d animationLoadTime:(double)time
{
  dCopy = d;
  v7 = [[self alloc] _initWithTipID:dCopy animationLoadTime:time];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventAnimationLoadTime;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_tipID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"animation_load_time" forKey:self->_animationLoadTime];
}

- (id)mutableAnalyticsEventRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_tipID forKeyedSubscript:@"tip_ID"];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:ceil(self->_animationLoadTime)];
  [dictionary setObject:v4 forKeyedSubscript:@"animation_load_time"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [dictionary setObject:v5 forKeyedSubscript:@"u65_flag"];

  return dictionary;
}

@end