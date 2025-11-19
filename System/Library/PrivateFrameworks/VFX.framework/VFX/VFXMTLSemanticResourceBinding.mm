@interface VFXMTLSemanticResourceBinding
- (void)dealloc;
@end

@implementation VFXMTLSemanticResourceBinding

- (void)dealloc
{
  free(self->_semantics);
  v3.receiver = self;
  v3.super_class = VFXMTLSemanticResourceBinding;
  [(VFXMTLResourceBinding *)&v3 dealloc];
}

@end