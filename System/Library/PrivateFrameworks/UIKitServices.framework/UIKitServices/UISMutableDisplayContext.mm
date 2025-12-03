@interface UISMutableDisplayContext
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDisplayConfiguration:(id)configuration;
- (void)setDisplayEdgeInfo:(id)info;
- (void)setExclusionArea:(id)area;
@end

@implementation UISMutableDisplayContext

- (void)setDisplayConfiguration:(id)configuration
{
  self->super._displayConfiguration = [configuration copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setDisplayEdgeInfo:(id)info
{
  self->super._displayEdgeInfo = [info copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setExclusionArea:(id)area
{
  self->super._exclusionArea = [area copy];

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UISDisplayContext alloc];

  return [(UISDisplayContext *)v4 _initWithDisplayContext:self];
}

@end