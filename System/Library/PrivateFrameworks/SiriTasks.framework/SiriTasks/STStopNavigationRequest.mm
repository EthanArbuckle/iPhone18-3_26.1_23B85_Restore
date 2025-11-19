@interface STStopNavigationRequest
- (id)createResponse;
@end

@implementation STStopNavigationRequest

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

@end