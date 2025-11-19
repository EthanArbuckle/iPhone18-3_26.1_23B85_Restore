@interface _UIViewerRelativeDevicePose
- (BOOL)isEqual:(id)a3;
- (UIOffset)_acceleratedOutputForViewerOffset:(UIOffset)a3 accelerationBoostFactor:(CGPoint)a4;
- (UIOffset)viewerOffset;
- (_UIViewerRelativeDevicePose)initWithCoder:(id)a3;
- (id)_acceleratedOutputRange;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_reset;
- (void)_setAcceleration:(CGPoint)a3 fixingOutputForViewerOffset:(UIOffset)a4;
- (void)encodeWithCoder:(id)a3;
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
  v3 = [(_UIViewerRelativeDevicePose *)self _acceleratedOutputRange];
  [v3 reset];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

- (_UIViewerRelativeDevicePose)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _UIViewerRelativeDevicePose;
  v5 = [(_UIViewerRelativeDevicePose *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"UIViewerOffset"];
    [v6 UIOffsetValue];
    v5->_viewerOffset.horizontal = v7;
    v5->_viewerOffset.vertical = v8;

    [v4 decodeFloatForKey:@"UIPlanarRotationAngle"];
    v5->_planarRotationAngle = v9;
    v10 = [v4 decodeObjectForKey:@"UIAcceleratedOutputRange"];
    acceleratedOutputRange = v5->_acceleratedOutputRange;
    v5->_acceleratedOutputRange = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696B098];
  viewerOffset = self->_viewerOffset;
  v5 = a3;
  v6 = [v4 valueWithBytes:&viewerOffset objCType:"{UIOffset=dd}"];
  [v5 encodeObject:v6 forKey:{@"UIViewerOffset", viewerOffset}];

  planarRotationAngle = self->_planarRotationAngle;
  *&planarRotationAngle = planarRotationAngle;
  [v5 encodeFloat:@"UIPlanarRotationAngle" forKey:planarRotationAngle];
  [v5 encodeObject:self->_acceleratedOutputRange forKey:@"UIAcceleratedOutputRange"];
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)_setAcceleration:(CGPoint)a3 fixingOutputForViewerOffset:(UIOffset)a4
{
  vertical = a4.vertical;
  horizontal = a4.horizontal;
  y = a3.y;
  x = a3.x;
  v8 = [(_UIViewerRelativeDevicePose *)self _acceleratedOutputRange];
  [v8 setAcceleration:x fixingOutputForViewerOffset:{y, horizontal, vertical}];
}

- (UIOffset)_acceleratedOutputForViewerOffset:(UIOffset)a3 accelerationBoostFactor:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  vertical = a3.vertical;
  horizontal = a3.horizontal;
  v8 = [(_UIViewerRelativeDevicePose *)self _acceleratedOutputRange];
  [v8 acceleratedOutputForViewerOffset:horizontal accelerationBoostFactor:{vertical, x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.vertical = v14;
  result.horizontal = v13;
  return result;
}

@end