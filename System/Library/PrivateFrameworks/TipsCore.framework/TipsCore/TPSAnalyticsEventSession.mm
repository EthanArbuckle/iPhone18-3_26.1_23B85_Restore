@interface TPSAnalyticsEventSession
+ (id)eventWithCollectionsViewed:(int64_t)viewed tipsViewed:(int64_t)tipsViewed;
- (TPSAnalyticsEventSession)initWithCoder:(id)coder;
- (id)_initWithCollectionsViewed:(int64_t)viewed tipsViewed:(int64_t)tipsViewed;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSAnalyticsEventSession

- (TPSAnalyticsEventSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = TPSAnalyticsEventSession;
  v5 = [(TPSAnalyticsEvent *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_collectionsViewed = [coderCopy decodeIntegerForKey:@"collections_viewed"];
    v5->_tipsViewed = [coderCopy decodeIntegerForKey:@"tips_viewed"];
  }

  return v5;
}

- (id)_initWithCollectionsViewed:(int64_t)viewed tipsViewed:(int64_t)tipsViewed
{
  v7.receiver = self;
  v7.super_class = TPSAnalyticsEventSession;
  result = [(TPSAnalyticsEvent *)&v7 initWithDate:0];
  if (result)
  {
    *(result + 4) = viewed;
    *(result + 5) = tipsViewed;
  }

  return result;
}

+ (id)eventWithCollectionsViewed:(int64_t)viewed tipsViewed:(int64_t)tipsViewed
{
  v4 = [[self alloc] _initWithCollectionsViewed:viewed tipsViewed:tipsViewed];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventSession;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_collectionsViewed forKey:{@"collections_viewed", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_tipsViewed forKey:@"tips_viewed"];
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