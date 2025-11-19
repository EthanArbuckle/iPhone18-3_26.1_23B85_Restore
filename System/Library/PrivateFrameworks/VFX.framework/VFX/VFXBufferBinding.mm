@interface VFXBufferBinding
- (void)dealloc;
@end

@implementation VFXBufferBinding

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXBufferBinding;
  [(VFXBufferBinding *)&v3 dealloc];
}

@end