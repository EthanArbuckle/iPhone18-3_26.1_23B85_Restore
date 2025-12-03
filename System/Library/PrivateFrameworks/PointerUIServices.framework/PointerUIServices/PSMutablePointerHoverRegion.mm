@interface PSMutablePointerHoverRegion
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setAccessories:(id)accessories;
- (void)setContentMatchMoveSource:(id)source;
- (void)setContentSlipValue:(id)value;
- (void)setPointerPortalSourceCollection:(id)collection;
- (void)setPointerShape:(id)shape;
- (void)setPointerSlipValue:(id)value;
@end

@implementation PSMutablePointerHoverRegion

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(PSPointerHoverRegion *)self _copyWithClass:v4];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(PSPointerHoverRegion *)self _copyWithClass:v4];
}

- (void)setContentMatchMoveSource:(id)source
{
  v4 = [source copy];
  contentMatchMoveSource = self->super._contentMatchMoveSource;
  self->super._contentMatchMoveSource = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setContentSlipValue:(id)value
{
  v4 = [value copy];
  contentSlipValue = self->super._contentSlipValue;
  self->super._contentSlipValue = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setPointerPortalSourceCollection:(id)collection
{
  v4 = [collection copy];
  pointerPortalSourceCollection = self->super._pointerPortalSourceCollection;
  self->super._pointerPortalSourceCollection = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setPointerShape:(id)shape
{
  v4 = [shape copy];
  pointerShape = self->super._pointerShape;
  self->super._pointerShape = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setPointerSlipValue:(id)value
{
  v4 = [value copy];
  pointerSlipValue = self->super._pointerSlipValue;
  self->super._pointerSlipValue = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setAccessories:(id)accessories
{
  v4 = [accessories copy];
  accessories = self->super._accessories;
  self->super._accessories = v4;

  MEMORY[0x2821F96F8]();
}

@end