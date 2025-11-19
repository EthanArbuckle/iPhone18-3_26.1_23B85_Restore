@interface PGGraphRemoteAddressEdge
+ (id)filter;
@end

@implementation PGGraphRemoteAddressEdge

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"REMOTE_ADDRESS" domain:200];

  return v2;
}

@end