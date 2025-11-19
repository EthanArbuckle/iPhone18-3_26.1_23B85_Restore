@interface PXGOffscreenEffect
- (id)kernel;
@end

@implementation PXGOffscreenEffect

- (id)kernel
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXGOffscreenEffect.m" lineNumber:19 description:{@"Method %s is a responsibility of subclass %@", "-[PXGOffscreenEffect kernel]", v6}];

  abort();
}

@end