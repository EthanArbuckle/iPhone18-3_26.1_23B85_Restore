@interface _UIViewerRelativeDevicePose
- (BOOL)isEqual:(id)equal;
- (UIOffset)_acceleratedOutputForViewerOffset:(UIOffset)offset accelerationBoostFactor:(CGPoint)factor;
- (UIOffset)viewerOffset;
- (_UIViewerRelativeDevicePose)initWithCoder:(id)coder;
- (id)_acceleratedOutputRange;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_reset;
- (void)_setAcceleration:(CGPoint)acceleration fixingOutputForViewerOffset:(UIOffset)offset;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIViewerRelativeDevicePose

- (UIOffset)viewerOffset
{
  horizontal = self->_viewerOffset.horizontal;
  vertical = self->_viewerOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (id)_acceleratedOutputRange
{
  acceleratedOutputRange = self->_acceleratedOutputRange;
  if (!acceleratedOutputRange)
  {
    v4 = objc_alloc_init(_UIMotionEffectAcceleratedOutputRange);
    v5 = self->_acceleratedOutputRange;
    self->_acceleratedOutputRange = v4;

    acceleratedOutputRange = self->_acceleratedOutputRange;
  }

  return acceleratedOutputRange;
}

- (void)_reset
{
  [(_UIViewerRelativeDevicePose *)self setViewerOffset:0.0, 0.0];
  _acceleratedOutputRange = [(_UIViewerRelativeDevicePose *)self _acceleratedOutputRange];
  [_acceleratedOutputRange reset];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    v7 = self->_viewerOffset.horizontal == v5[3] && self->_viewerOffset.vertical == v5[4];
    if (v7 && self->_planarRotationAngle == v5[2])
    {
      acceleratedOutputRange = self->_acceleratedOutputRange;
      if (acceleratedOutputRange | *(v6 + 1))
      {
        v9 = [(_UIMotionEffectAcceleratedOutputRange *)acceleratedOutputRange isEqual:?];
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (_UIViewerRelativeDevicePose)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = _UIViewerRelativeDevicePose;
  v5 = [(_UIViewerRelativeDevicePose *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"UIViewerOffset"];
    [v6 UIOffsetValue];
    v5->_viewerOffset.horizontal = v7;
    v5->_viewerOffset.vertical = v8;

    [coderCopy decodeFloatForKey:@"UIPlanarRotationAngle"];
    v5->_planarRotationAngle = v9;
    v10 = [coderCopy decodeObjectForKey:@"UIAcceleratedOutputRange"];
    acceleratedOutputRange = v5->_acceleratedOutputRange;
    v5->_acceleratedOutputRange = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696B098];
  viewerOffset = self->_viewerOffset;
  coderCopy = coder;
  v6 = [v4 valueWithBytes:&viewerOffset objCType:"{UIOffset=dd}"];
  [coderCopy encodeObject:v6 forKey:{@"UIViewerOffset", viewerOffset}];

  planarRotationAngle = self->_planarRotationAngle;
  *&planarRotationAngle = planarRotationAngle;
  [coderCopy encodeFloat:@"UIPlanarRotationAngle" forKey:planarRotationAngle];
  [coderCopy encodeObject:self->_acceleratedOutputRange forKey:@"UIAcceleratedOutputRange"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(_UIViewerRelativeDevicePose);
  v4->_viewerOffset = self->_viewerOffset;
  v4->_planarRotationAngle = self->_planarRotationAngle;
  v5 = [(_UIMotionEffectAcceleratedOutputRange *)self->_acceleratedOutputRange copy];
  acceleratedOutputRange = v4->_acceleratedOutputRange;
  v4->_acceleratedOutputRange = v5;

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromUIOffset(self->_viewerOffset);
  v7 = [v3 stringWithFormat:@"<%@: %p offset=%@ angle=%f>", v5, self, v6, *&self->_planarRotationAngle];

  return v7;
}

- (void)_setAcceleration:(CGPoint)acceleration fixingOutputForViewerOffset:(UIOffset)offset
{
  vertical = offset.vertical;
  horizontal = offset.horizontal;
  y = acceleration.y;
  x = acceleration.x;
  _acceleratedOutputRange = [(_UIViewerRelativeDevicePose *)self _acceleratedOutputRange];
  [_acceleratedOutputRange setAcceleration:x fixingOutputForViewerOffset:{y, horizontal, vertical}];
}

- (UIOffset)_acceleratedOutputForViewerOffset:(UIOffset)offset accelerationBoostFactor:(CGPoint)factor
{
  y = factor.y;
  x = factor.x;
  vertical = offset.vertical;
  horizontal = offset.horizontal;
  _acceleratedOutputRange = [(_UIViewerRelativeDevicePose *)self _acceleratedOutputRange];
  [_acceleratedOutputRange acceleratedOutputForViewerOffset:horizontal accelerationBoostFactor:{vertical, x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.vertical = v14;
  result.horizontal = v13;
  return result;
}

@end