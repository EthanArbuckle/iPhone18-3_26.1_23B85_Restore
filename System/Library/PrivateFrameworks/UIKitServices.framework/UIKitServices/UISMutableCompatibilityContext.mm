@interface UISMutableCompatibilityContext
- (id)copyWithZone:(_NSZone *)zone;
- (void)setSupportedDisplaySizes:(id)sizes;
@end

@implementation UISMutableCompatibilityContext

- (void)setSupportedDisplaySizes:(id)sizes
{
  self->super._supportedDisplaySizes = [sizes copy];

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UISCompatibilityContext alloc];
  supportedDisplaySizes = [(UISCompatibilityContext *)self supportedDisplaySizes];
  v6 = [(UISCompatibilityContext *)v4 initWithSupportedDisplaySizes:supportedDisplaySizes];

  return v6;
}

@end