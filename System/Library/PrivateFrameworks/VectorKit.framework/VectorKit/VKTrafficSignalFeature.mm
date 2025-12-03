@interface VKTrafficSignalFeature
+ (id)stringForTrafficSignalType:(int64_t)type;
- (VKTrafficSignalFeature)initWithTrafficSignal:(id)signal onRoute:(id)route;
- (VKTrafficSignalFeature)initWithTrafficSignalType:(int64_t)type uniqueIdentifier:(id)identifier routeOffset:(PolylineCoordinate)offset onRoute:(id)route;
- (void)populateDebugNode:(void *)node;
@end

@implementation VKTrafficSignalFeature

- (void)populateDebugNode:(void *)node
{
  v14.receiver = self;
  v14.super_class = VKTrafficSignalFeature;
  [(VKTrafficFeature *)&v14 populateDebugNode:?];
  std::string::basic_string[abi:nn200100]<0>(&v12, "TrafficSignalType");
  v5 = [VKTrafficSignalFeature stringForTrafficSignalType:self->_type];
  gdc::DebugTreeValue::DebugTreeValue(v9, [v5 UTF8String]);
  gdc::DebugTreeNode::addProperty(node, &v12, v9);
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
    gdc::DebugTreeNode::addProperty(node, &v12, v6);
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

- (VKTrafficSignalFeature)initWithTrafficSignal:(id)signal onRoute:(id)route
{
  signalCopy = signal;
  routeCopy = route;
  v14.receiver = self;
  v14.super_class = VKTrafficSignalFeature;
  v8 = [(VKTrafficFeature *)&v14 initWithEnrouteNotice:signalCopy onRoute:routeCopy];
  v9 = v8;
  v10 = 0;
  if (signalCopy && v8)
  {
    type = [signalCopy type];
    v12 = type == 2;
    if (type == 1)
    {
      v12 = 2;
    }

    v9->_type = v12;
    if ([signalCopy hasCountryCode])
    {
      v9->_hasCountryCode = 1;
      v9->_countryCode = [signalCopy countryCode];
    }

    v10 = v9;
  }

  return v10;
}

- (VKTrafficSignalFeature)initWithTrafficSignalType:(int64_t)type uniqueIdentifier:(id)identifier routeOffset:(PolylineCoordinate)offset onRoute:(id)route
{
  v11.receiver = self;
  v11.super_class = VKTrafficSignalFeature;
  v7 = [(VKTrafficFeature *)&v11 initWithFeatureType:2 uniqueIdentifier:identifier routeOffset:offset onRoute:route];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v9 = v7;
  }

  return v8;
}

+ (id)stringForTrafficSignalType:(int64_t)type
{
  if (type > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7B3DF90 + type);
  }
}

@end