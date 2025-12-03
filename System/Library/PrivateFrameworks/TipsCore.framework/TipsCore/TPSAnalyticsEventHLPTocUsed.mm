@interface TPSAnalyticsEventHLPTocUsed
+ (id)event;
- (id)mutableAnalyticsEventRepresentation;
@end

@implementation TPSAnalyticsEventHLPTocUsed

+ (id)event
{
  v2 = [[self alloc] initWithDate:0];

  return v2;
}

- (id)mutableAnalyticsEventRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [dictionary setObject:v3 forKeyedSubscript:@"u65_flag"];

  return dictionary;
}

@end