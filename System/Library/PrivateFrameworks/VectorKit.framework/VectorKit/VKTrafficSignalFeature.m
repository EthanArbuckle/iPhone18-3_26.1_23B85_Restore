@interface VKTrafficSignalFeature
+ (id)stringForTrafficSignalType:(int64_t)a3;
- (VKTrafficSignalFeature)initWithTrafficSignal:(id)a3 onRoute:(id)a4;
- (VKTrafficSignalFeature)initWithTrafficSignalType:(int64_t)a3 uniqueIdentifier:(id)a4 routeOffset:(PolylineCoordinate)a5 onRoute:(id)a6;
- (void)populateDebugNode:(void *)a3;
@end

@implementation VKTrafficSignalFeature

- (void)populateDebugNode:(void *)a3
{
  v14.receiver = self;
  v14.super_class = VKTrafficSignalFeature;
  [(VKTrafficFeature *)&v14 populateDebugNode:?];
  std::string::basic_string[abi:nn200100]<0>(&v12, "TrafficSignalType");
  v5 = [VKTrafficSignalFeature stringForTrafficSignalType:self->_type];
  gdc::DebugTreeValue::DebugTreeValue(v9, [v5 UTF8String]);
  gdc::DebugTreeNode::addProperty(a3, &v12, v9);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (self->_hasCountryCode)
  {
    std::string::basic_string[abi:nn200100]<0>(&v12, "CountryCode");
    gdc::DebugTreeValue::DebugTreeValue(v6, self->_countryCode);
    gdc::DebugTreeNode::addProperty(a3, &v12, v6);
    if (v8 < 0)
    {
      operator delete(v7);
    }

    if (v13 < 0)
    {
      operator delete(v12);
    }
  }
}

- (VKTrafficSignalFeature)initWithTrafficSignal:(id)a3 onRoute:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = VKTrafficSignalFeature;
  v8 = [(VKTrafficFeature *)&v14 initWithEnrouteNotice:v6 onRoute:v7];
  v9 = v8;
  v10 = 0;
  if (v6 && v8)
  {
    v11 = [v6 type];
    v12 = v11 == 2;
    if (v11 == 1)
    {
      v12 = 2;
    }

    v9->_type = v12;
    if ([v6 hasCountryCode])
    {
      v9->_hasCountryCode = 1;
      v9->_countryCode = [v6 countryCode];
    }

    v10 = v9;
  }

  return v10;
}

- (VKTrafficSignalFeature)initWithTrafficSignalType:(int64_t)a3 uniqueIdentifier:(id)a4 routeOffset:(PolylineCoordinate)a5 onRoute:(id)a6
{
  v11.receiver = self;
  v11.super_class = VKTrafficSignalFeature;
  v7 = [(VKTrafficFeature *)&v11 initWithFeatureType:2 uniqueIdentifier:a4 routeOffset:a5 onRoute:a6];
  v8 = v7;
  if (v7)
  {
    v7->_type = a3;
    v9 = v7;
  }

  return v8;
}

+ (id)stringForTrafficSignalType:(int64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7B3DF90 + a3);
  }
}

@end