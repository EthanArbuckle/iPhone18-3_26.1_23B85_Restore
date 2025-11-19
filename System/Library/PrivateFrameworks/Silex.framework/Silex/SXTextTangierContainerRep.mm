@interface SXTextTangierContainerRep
- (void)dealloc;
@end

@implementation SXTextTangierContainerRep

- (void)dealloc
{
  [(SXTextTangierContainerRep *)self _accessibilityUnregister];
  v3.receiver = self;
  v3.super_class = SXTextTangierContainerRep;
  [(SXTextTangierContainerRep *)&v3 dealloc];
}

@end