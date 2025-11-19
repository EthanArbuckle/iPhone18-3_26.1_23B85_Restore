@interface SRRReferenceResolutionClient
- (SRRReferenceResolutionClient)init;
@end

@implementation SRRReferenceResolutionClient

- (SRRReferenceResolutionClient)init
{
  v6.receiver = self;
  v6.super_class = SRRReferenceResolutionClient;
  v2 = [(SRRReferenceResolutionClient *)&v6 init];
  v3 = objc_opt_new();
  underlyingObject = v2->_underlyingObject;
  v2->_underlyingObject = v3;

  return v2;
}

@end