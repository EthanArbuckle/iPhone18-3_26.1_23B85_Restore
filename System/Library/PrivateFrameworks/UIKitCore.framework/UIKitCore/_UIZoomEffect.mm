@interface _UIZoomEffect
+ (id)_underlayZoomEffectWithMagnitude:(double)magnitude;
+ (id)zoomEffectWithMagnitude:(double)magnitude;
- (BOOL)isEqual:(id)equal;
- (id)_viewEntry;
- (id)description;
- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage;
@end

@implementation _UIZoomEffect

+ (id)zoomEffectWithMagnitude:(double)magnitude
{
  v4 = objc_alloc_init(_UIZoomEffect);
  v4->_zoomAmount = magnitude;

  return v4;
}

+ (id)_underlayZoomEffectWithMagnitude:(double)magnitude
{
  result = [self zoomEffectWithMagnitude:magnitude];
  *(result + 16) = 1;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  v6 = equalCopy == self || equalCopy && [(_UIZoomEffect *)equalCopy isMemberOfClass:objc_opt_class()]&& self->_zoomAmount == v5->_zoomAmount && self->_isUnderlay == v5->_isUnderlay;

  return v6;
}

- (id)_viewEntry
{
  v3 = objc_alloc_init(_UIZoomEffectViewEntry);
  v4 = v3;
  if (self->_isUnderlay)
  {
    [(_UIVisualEffectViewEntry *)v3 setRequirements:2];
  }

  [(_UIZoomEffectViewEntry *)v4 setZoomAmount:self->_zoomAmount];

  return v4;
}

- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage
{
  descriptorCopy = descriptor;
  _viewEntry = [(_UIZoomEffect *)self _viewEntry];
  if (self->_isUnderlay)
  {
    [descriptorCopy addUnderlay:_viewEntry];
  }

  else
  {
    [descriptorCopy addViewEffect:_viewEntry];
  }
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = _UIZoomEffect;
  v3 = [(_UIZoomEffect *)&v8 description];
  v4 = v3;
  if (self->_isUnderlay)
  {
    v5 = @" underlay";
  }

  else
  {
    v5 = &stru_1EFB14550;
  }

  v6 = [v3 stringByAppendingFormat:@" zoom=%f%@", *&self->_zoomAmount, v5];

  return v6;
}

@end