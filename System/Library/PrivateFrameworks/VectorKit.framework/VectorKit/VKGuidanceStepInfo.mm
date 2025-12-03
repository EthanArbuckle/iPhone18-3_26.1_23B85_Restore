@interface VKGuidanceStepInfo
- (VKGuidanceStepInfo)initWithRoadName:(id)name point:(int)point;
@end

@implementation VKGuidanceStepInfo

- (VKGuidanceStepInfo)initWithRoadName:(id)name point:(int)point
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = VKGuidanceStepInfo;
  v8 = [(VKGuidanceStepInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_roadName, name);
    v9->_routePoint = point;
  }

  return v9;
}

@end