@interface SWSetupScript
- (WKUserScript)userScript;
@end

@implementation SWSetupScript

- (WKUserScript)userScript
{
  v2 = [objc_alloc(MEMORY[0x1E6985358]) initWithSource:@"var applenews = {};" injectionTime:0 forMainFrameOnly:1];

  return v2;
}

@end