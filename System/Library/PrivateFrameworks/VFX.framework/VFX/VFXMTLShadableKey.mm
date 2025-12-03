@interface VFXMTLShadableKey
- (void)dealloc;
- (void)setPipeline:(id)pipeline;
@end

@implementation VFXMTLShadableKey

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXMTLShadableKey;
  [(VFXMTLShadableKey *)&v3 dealloc];
}

- (void)setPipeline:(id)pipeline
{
  pipeline = self->_pipeline;
  if (pipeline != pipeline)
  {

    self->_pipeline = pipeline;
  }
}

@end