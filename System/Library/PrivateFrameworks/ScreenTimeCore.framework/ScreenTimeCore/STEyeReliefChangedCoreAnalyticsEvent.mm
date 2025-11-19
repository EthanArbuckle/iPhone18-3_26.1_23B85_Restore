@interface STEyeReliefChangedCoreAnalyticsEvent
- (NSDictionary)payload;
- (STEyeReliefChangedCoreAnalyticsEvent)initWithEyeReliefEnabled:(BOOL)a3;
@end

@implementation STEyeReliefChangedCoreAnalyticsEvent

- (STEyeReliefChangedCoreAnalyticsEvent)initWithEyeReliefEnabled:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = STEyeReliefChangedCoreAnalyticsEvent;
  result = [(STEyeReliefChangedCoreAnalyticsEvent *)&v5 init];
  result->_eyeReliefEnabled = a3;
  return result;
}

- (NSDictionary)payload
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"eyeReliefEnabled";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:{-[STEyeReliefChangedCoreAnalyticsEvent eyeReliefEnabled](self, "eyeReliefEnabled")}];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end