@interface VKTrafficCameraFeature
+ (id)stringForTrafficCameraType:(int64_t)type;
- (VKTrafficCameraFeature)initWithTrafficCamera:(id)camera onRoute:(id)route;
- (VKTrafficCameraFeature)initWithTrafficCameraType:(int64_t)type uniqueIdentifier:(id)identifier routeOffset:(PolylineCoordinate)offset onRoute:(id)route;
- (id)copyWithZone:(_NSZone *)zone;
- (void)populateDebugNode:(void *)node;
- (void)setIsAboveSpeedThreshold:(BOOL)threshold;
@end

@implementation VKTrafficCameraFeature

- (void)populateDebugNode:(void *)node
{
  v23.receiver = self;
  v23.super_class = VKTrafficCameraFeature;
  [(VKTrafficFeature *)&v23 populateDebugNode:?];
  std::string::basic_string[abi:nn200100]<0>(&v21, "TrafficCameraType");
  v5 = [VKTrafficCameraFeature stringForTrafficCameraType:self->_type];
  gdc::DebugTreeValue::DebugTreeValue(v18, [v5 UTF8String]);
  gdc::DebugTreeNode::addProperty(node, &v21, v18);
  if (v20 < 0)
  {
    operator delete(v19);
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  if ([(VKTrafficCameraFeature *)self isSpeedLimitCamera])
  {
    std::string::basic_string[abi:nn200100]<0>(&v21, "SpeedLimit");
    gdc::DebugTreeValue::DebugTreeValue(v15, self->_speedLimit);
    gdc::DebugTreeNode::addProperty(node, &v21, v15);
    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (v22 < 0)
    {
      operator delete(v21);
    }

    std::string::basic_string[abi:nn200100]<0>(&v21, "IsAboveSpeedThreshold");
    gdc::DebugTreeValue::DebugTreeValue(v12, self->_isAboveSpeedThreshold);
    gdc::DebugTreeNode::addProperty(node, &v21, v12);
    if (v14 < 0)
    {
      operator delete(v13);
    }

    if (v22 < 0)
    {
      operator delete(v21);
    }

    std::string::basic_string[abi:nn200100]<0>(&v21, "SpeedLimitText");
    gdc::DebugTreeValue::DebugTreeValue(v9, [(NSString *)self->_speedLimitText UTF8String]);
    gdc::DebugTreeNode::addProperty(node, &v21, v9);
    if (v11 < 0)
    {
      operator delete(v10);
    }

    if (v22 < 0)
    {
      operator delete(v21);
    }
  }

  if (self->_hasCountryCode)
  {
    std::string::basic_string[abi:nn200100]<0>(&v21, "CountryCode");
    gdc::DebugTreeValue::DebugTreeValue(v6, self->_countryCode);
    gdc::DebugTreeNode::addProperty(node, &v21, v6);
    if (v8 < 0)
    {
      operator delete(v7);
    }

    if (v22 < 0)
    {
      operator delete(v21);
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = VKTrafficCameraFeature;
  v4 = [(VKTrafficFeature *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    *(v4 + 20) = self->_type;
    *(v4 + 43) = self->_speedLimit;
    *(v4 + 168) = self->_isAboveSpeedThreshold;
    objc_storeStrong(v4 + 22, self->_speedLimitText);
    v5[46] = self->_countryCode;
  }

  return v5;
}

- (void)setIsAboveSpeedThreshold:(BOOL)threshold
{
  if (self->_isAboveSpeedThreshold != threshold)
  {
    self->_isAboveSpeedThreshold = threshold;
    [(VKTrafficFeature *)self setShouldUpdateStyle:1];
  }
}

- (VKTrafficCameraFeature)initWithTrafficCamera:(id)camera onRoute:(id)route
{
  cameraCopy = camera;
  routeCopy = route;
  v19.receiver = self;
  v19.super_class = VKTrafficCameraFeature;
  v8 = [(VKTrafficFeature *)&v19 initWithEnrouteNotice:cameraCopy onRoute:routeCopy];
  v9 = 0;
  v10 = v8;
  if (cameraCopy && v8)
  {
    v11 = cameraCopy;
    type = [v11 type];
    v13 = 0;
    if (type > 3)
    {
      switch(type)
      {
        case 4:
          v13 = 4;
          break;
        case 5:
          v13 = 5;
          break;
        case 6:
          v13 = 6;
          break;
      }
    }

    else
    {
      switch(type)
      {
        case 1:
          if ([v11 hasSpeedThreshold])
          {
            [v11 speedThreshold];
            if (v14 == 0.0)
            {
              v13 = 5;
            }

            else
            {
              v13 = 1;
            }
          }

          else
          {
            v13 = 1;
          }

          break;
        case 2:
          v13 = 2;
          break;
        case 3:
          v13 = 3;
          break;
      }
    }

    v10->_type = v13;
    if ([v11 hasSpeedThreshold])
    {
      [v11 speedThreshold];
      v10->_speedThreshold = v15;
    }

    if ([v11 hasSpeedLimitText])
    {
      speedLimitText = [v11 speedLimitText];
      speedLimitText = v10->_speedLimitText;
      v10->_speedLimitText = speedLimitText;
    }

    if ([v11 hasCountryCode])
    {
      v10->_hasCountryCode = 1;
      v10->_countryCode = [v11 countryCode];
    }

    v10->_isAboveSpeedThreshold = 0;
    v9 = v10;
  }

  return v9;
}

- (VKTrafficCameraFeature)initWithTrafficCameraType:(int64_t)type uniqueIdentifier:(id)identifier routeOffset:(PolylineCoordinate)offset onRoute:(id)route
{
  v11.receiver = self;
  v11.super_class = VKTrafficCameraFeature;
  v7 = [(VKTrafficFeature *)&v11 initWithFeatureType:1 uniqueIdentifier:identifier routeOffset:offset onRoute:route];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v9 = v7;
  }

  return v8;
}

+ (id)stringForTrafficCameraType:(int64_t)type
{
  if (type > 6)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7B38238 + type);
  }
}

@end