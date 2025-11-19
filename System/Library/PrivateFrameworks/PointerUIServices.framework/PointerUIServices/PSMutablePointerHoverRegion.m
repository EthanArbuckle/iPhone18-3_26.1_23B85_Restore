@interface PSMutablePointerHoverRegion
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setAccessories:(id)a3;
- (void)setContentMatchMoveSource:(id)a3;
- (void)setContentSlipValue:(id)a3;
- (void)setPointerPortalSourceCollection:(id)a3;
- (void)setPointerShape:(id)a3;
- (void)setPointerSlipValue:(id)a3;
@end

@implementation PSMutablePointerHoverRegion

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(PSPointerHoverRegion *)self _copyWithClass:v4];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(PSPointerHoverRegion *)self _copyWithClass:v4];
}

- (void)setContentMatchMoveSource:(id)a3
{
  v4 = [a3 copy];
  contentMatchMoveSource = self->super._contentMatchMoveSource;
  self->super._contentMatchMoveSource = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setContentSlipValue:(id)a3
{
  v4 = [a3 copy];
  contentSlipValue = self->super._contentSlipValue;
  self->super._contentSlipValue = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setPointerPortalSourceCollection:(id)a3
{
  v4 = [a3 copy];
  pointerPortalSourceCollection = self->super._pointerPortalSourceCollection;
  self->super._pointerPortalSourceCollection = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setPointerShape:(id)a3
{
  v4 = [a3 copy];
  pointerShape = self->super._pointerShape;
  self->super._pointerShape = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setPointerSlipValue:(id)a3
{
  v4 = [a3 copy];
  pointerSlipValue = self->super._pointerSlipValue;
  self->super._pointerSlipValue = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setAccessories:(id)a3
{
  v4 = [a3 copy];
  accessories = self->super._accessories;
  self->super._accessories = v4;

  MEMORY[0x2821F96F8]();
}

@end