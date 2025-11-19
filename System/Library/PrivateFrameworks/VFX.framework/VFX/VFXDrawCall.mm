@interface VFXDrawCall
- (void)dealloc;
@end

@implementation VFXDrawCall

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXDrawCall;
  [(VFXDrawCall *)&v3 dealloc];
}

@end