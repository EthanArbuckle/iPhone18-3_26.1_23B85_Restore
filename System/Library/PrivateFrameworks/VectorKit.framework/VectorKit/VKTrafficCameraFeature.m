@interface VKTrafficCameraFeature
+ (id)stringForTrafficCameraType:(int64_t)a3;
- (VKTrafficCameraFeature)initWithTrafficCamera:(id)a3 onRoute:(id)a4;
- (VKTrafficCameraFeature)initWithTrafficCameraType:(int64_t)a3 uniqueIdentifier:(id)a4 routeOffset:(PolylineCoordinate)a5 onRoute:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)populateDebugNode:(void *)a3;
- (void)setIsAboveSpeedThreshold:(BOOL)a3;
@end

@implementation VKTrafficCameraFeature

- (void)populateDebugNode:(void *)a3
{
  v23.receiver = self;
  v23.super_class = VKTrafficCameraFeature;
  [(VKTrafficFeature *)&v23 populateDebugNode:?];
  std::string::basic_string[abi:nn200100]<0>(&v21, "TrafficCameraType");
  v5 = [VKTrafficCameraFeature stringForTrafficCameraType:self->_type];
  gdc::DebugTreeValue::DebugTreeValue(v18, [v5 UTF8String]);
  gdc::DebugTreeNode::addProperty(a3, &v21, v18);
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
    gdc::DebugTreeNode::addProperty(a3, &v21, v15);
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
    gdc::DebugTreeNode::addProperty(a3, &v21, v12);
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
    gdc::DebugTreeNode::addProperty(a3, &v21, v9);
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
    gdc::DebugTreeNode::addProperty(a3, &v21, v6);
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

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = VKTrafficCameraFeature;
  v4 = [(VKTrafficFeature *)&v7 copyWithZone:a3];
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

- (void)setIsAboveSpeedThreshold:(BOOL)a3
{
  if (self->_isAboveSpeedThreshold != a3)
  {
    self->_isAboveSpeedThreshold = a3;
    [(VKTrafficFeature *)self setShouldUpdateStyle:1];
  }
}

- (VKTrafficCameraFeature)initWithTrafficCamera:(id)a3 onRoute:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = VKTrafficCameraFeature;
  v8 = [(VKTrafficFeature *)&v19 initWithEnrouteNotice:v6 onRoute:v7];
  v9 = 0;
  v10 = v8;
  if (v6 && v8)
  {
    v11 = v6;
    v12 = [v11 type];
    v13 = 0;
    if (v12 > 3)
    {
      switch(v12)
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
      switch(v12)
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
      v16 = [v11 speedLimitText];
      speedLimitText = v10->_speedLimitText;
      v10->_speedLimitText = v16;
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

- (VKTrafficCameraFeature)initWithTrafficCameraType:(int64_t)a3 uniqueIdentifier:(id)a4 routeOffset:(PolylineCoordinate)a5 onRoute:(id)a6
{
  v11.receiver = self;
  v11.super_class = VKTrafficCameraFeature;
  v7 = [(VKTrafficFeature *)&v11 initWithFeatureType:1 uniqueIdentifier:a4 routeOffset:a5 onRoute:a6];
  v8 = v7;
  if (v7)
  {
    v7->_type = a3;
    v9 = v7;
  }

  return v8;
}

+ (id)stringForTrafficCameraType:(int64_t)a3
{
  if (a3 > 6)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7B38238 + a3);
  }
}

@end