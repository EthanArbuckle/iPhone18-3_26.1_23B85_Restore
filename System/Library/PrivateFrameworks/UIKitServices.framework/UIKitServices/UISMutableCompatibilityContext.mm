@interface UISMutableCompatibilityContext
- (id)copyWithZone:(_NSZone *)a3;
- (void)setSupportedDisplaySizes:(id)a3;
@end

@implementation UISMutableCompatibilityContext

- (void)setSupportedDisplaySizes:(id)a3
{
  self->super._supportedDisplaySizes = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UISCompatibilityContext alloc];
  v5 = [(UISCompatibilityContext *)self supportedDisplaySizes];
  v6 = [(UISCompatibilityContext *)v4 initWithSupportedDisplaySizes:v5];

  return v6;
}

@end