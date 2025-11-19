@interface CMIColourConstancyFrameParamsV1
- (void)dealloc;
@end

@implementation CMIColourConstancyFrameParamsV1

- (void)dealloc
{
  CVPixelBufferRelease(self->_lscGains);
  v3.receiver = self;
  v3.super_class = CMIColourConstancyFrameParamsV1;
  [(CMIColourConstancyFrameParamsV1 *)&v3 dealloc];
}

@end