@interface RWIProtocolRuntimeTypeLocation
- (NSString)sourceID;
- (int)divot;
- (int)typeInformationDescriptor;
- (void)setSourceID:(id)d;
@end

@implementation RWIProtocolRuntimeTypeLocation

- (int)typeInformationDescriptor
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeLocation;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"typeInformationDescriptor"];
}

- (void)setSourceID:(id)d
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeLocation;
  [(RWIProtocolJSONObject *)&v3 setString:d forKey:@"sourceID"];
}

- (NSString)sourceID
{
  v4.receiver = self;
  v4.super_class = RWIProtocolRuntimeTypeLocation;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"sourceID"];

  return v2;
}

- (int)divot
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeLocation;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"divot"];
}

@end