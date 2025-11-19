@interface VKGuidanceStepInfo
- (VKGuidanceStepInfo)initWithRoadName:(id)a3 point:(int)a4;
@end

@implementation VKGuidanceStepInfo

- (VKGuidanceStepInfo)initWithRoadName:(id)a3 point:(int)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = VKGuidanceStepInfo;
  v8 = [(VKGuidanceStepInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_roadName, a3);
    v9->_routePoint = a4;
  }

  return v9;
}

@end