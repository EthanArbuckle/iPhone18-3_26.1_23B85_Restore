@interface VFXMTLShadableKey
- (void)dealloc;
- (void)setPipeline:(id)a3;
@end

@implementation VFXMTLShadableKey

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXMTLShadableKey;
  [(VFXMTLShadableKey *)&v3 dealloc];
}

- (void)setPipeline:(id)a3
{
  pipeline = self->_pipeline;
  if (pipeline != a3)
  {

    self->_pipeline = a3;
  }
}

@end