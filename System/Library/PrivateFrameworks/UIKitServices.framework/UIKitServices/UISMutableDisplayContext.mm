@interface UISMutableDisplayContext
- (id)copyWithZone:(_NSZone *)a3;
- (void)setDisplayConfiguration:(id)a3;
- (void)setDisplayEdgeInfo:(id)a3;
- (void)setExclusionArea:(id)a3;
@end

@implementation UISMutableDisplayContext

- (void)setDisplayConfiguration:(id)a3
{
  self->super._displayConfiguration = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setDisplayEdgeInfo:(id)a3
{
  self->super._displayEdgeInfo = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setExclusionArea:(id)a3
{
  self->super._exclusionArea = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UISDisplayContext alloc];

  return [(UISDisplayContext *)v4 _initWithDisplayContext:self];
}

@end