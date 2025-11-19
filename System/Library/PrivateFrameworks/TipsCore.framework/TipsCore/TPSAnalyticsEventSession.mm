@interface TPSAnalyticsEventSession
+ (id)eventWithCollectionsViewed:(int64_t)a3 tipsViewed:(int64_t)a4;
- (TPSAnalyticsEventSession)initWithCoder:(id)a3;
- (id)_initWithCollectionsViewed:(int64_t)a3 tipsViewed:(int64_t)a4;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSAnalyticsEventSession

- (TPSAnalyticsEventSession)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TPSAnalyticsEventSession;
  v5 = [(TPSAnalyticsEvent *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_collectionsViewed = [v4 decodeIntegerForKey:@"collections_viewed"];
    v5->_tipsViewed = [v4 decodeIntegerForKey:@"tips_viewed"];
  }

  return v5;
}

- (id)_initWithCollectionsViewed:(int64_t)a3 tipsViewed:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = TPSAnalyticsEventSession;
  result = [(TPSAnalyticsEvent *)&v7 initWithDate:0];
  if (result)
  {
    *(result + 4) = a3;
    *(result + 5) = a4;
  }

  return result;
}

+ (id)eventWithCollectionsViewed:(int64_t)a3 tipsViewed:(int64_t)a4
{
  v4 = [[a1 alloc] _initWithCollectionsViewed:a3 tipsViewed:a4];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventSession;
  v4 = a3;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_collectionsViewed forKey:{@"collections_viewed", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_tipsViewed forKey:@"tips_viewed"];
}

- (id)mutableAnalyticsEventRepresentation
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_collectionsViewed];
  [v3 setObject:v4 forKeyedSubscript:@"collections_viewed"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_tipsViewed];
  [v3 setObject:v5 forKeyedSubscript:@"tips_viewed"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [v3 setObject:v6 forKeyedSubscript:@"u65_flag"];

  return v3;
}

@end