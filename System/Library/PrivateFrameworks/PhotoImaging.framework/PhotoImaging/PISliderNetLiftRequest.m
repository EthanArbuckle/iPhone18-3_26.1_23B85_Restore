@interface PISliderNetLiftRequest
- (id)newRenderJob;
@end

@implementation PISliderNetLiftRequest

- (id)newRenderJob
{
  v3 = [PISliderNetLiftJob alloc];

  return [(NURenderJob *)v3 initWithRequest:self];
}

@end