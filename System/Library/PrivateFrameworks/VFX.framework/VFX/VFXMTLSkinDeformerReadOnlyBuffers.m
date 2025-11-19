@interface VFXMTLSkinDeformerReadOnlyBuffers
- (void)dealloc;
@end

@implementation VFXMTLSkinDeformerReadOnlyBuffers

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXMTLSkinDeformerReadOnlyBuffers;
  [(VFXMTLSkinDeformerReadOnlyBuffers *)&v3 dealloc];
}

@end