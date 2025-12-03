@interface _UIFocusRegion
- (BOOL)isEqual:(id)equal;
- (CGRect)regionFrame;
- (_UIFocusRegion)initWithFrame:(CGRect)frame coordinateSpace:(id)space;
- (id)_descriptionBuilder;
- (id)_focusRegionWithAdjustedFrame:(CGRect)frame coordinateSpace:(id)space;
- (id)description;
- (unint64_t)_effectiveBoundariesBlockingFocusMovementRequest:(id)request;
- (unint64_t)_effectiveFocusableBoundariesForHeading:(unint64_t)heading;
- (unint64_t)hash;
@end

@implementation _UIFocusRegion

- (CGRect)regionFrame
{
  x = self->_regionFrame.origin.x;
  y = self->_regionFrame.origin.y;
  width = self->_regionFrame.size.width;
  height = self->_regionFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (unint64_t)hash
{
  v3 = [(UICoordinateSpace *)self->_regionCoordinateSpace hash];
  v4 = vorrq_s8(vandq_s8(vcvtq_u64_f64(self->_regionFrame.origin), xmmword_18A67B6B0), vandq_s8(vcvtq_u64_f64(self->_regionFrame.size), xmmword_18A67B6A0));
  return *&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) ^ v3;
}

- (_UIFocusRegion)initWithFrame:(CGRect)frame coordinateSpace:(id)space
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  spaceCopy = space;
  if (!spaceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusRegion.m" lineNumber:221 description:{@"Invalid parameter not satisfying: %@", @"coordinateSpace"}];
  }

  v16.receiver = self;
  v16.super_class = _UIFocusRegion;
  v12 = [(_UIFocusRegion *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_regionFrame.origin.x = x;
    v12->_regionFrame.origin.y = y;
    v12->_regionFrame.size.width = width;
    v12->_regionFrame.size.height = height;
    objc_storeStrong(&v12->_regionCoordinateSpace, space);
  }

  return v13;
}

- (id)_focusRegionWithAdjustedFrame:(CGRect)frame coordinateSpace:(id)space
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  spaceCopy = space;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  if (CGRectIsEmpty(v16))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusRegion.m" lineNumber:233 description:{@"Invalid parameter not satisfying: %@", @"!CGRectIsEmpty(frame)"}];

    if (spaceCopy)
    {
      goto LABEL_3;
    }
  }

  else if (spaceCopy)
  {
    goto LABEL_3;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusRegion.m" lineNumber:234 description:{@"Invalid parameter not satisfying: %@", @"coordinateSpace"}];

LABEL_3:
  v11 = [objc_alloc(objc_opt_class()) initWithFrame:spaceCopy coordinateSpace:{x, y, width, height}];

  return v11;
}

- (id)_descriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [(_UIFocusRegion *)self regionFrame];
  v4 = NSStringFromCGRect(v16);
  v5 = [v3 appendObject:v4 withName:@"frame"];

  regionCoordinateSpace = [(_UIFocusRegion *)self regionCoordinateSpace];

  if (regionCoordinateSpace)
  {
    regionCoordinateSpace2 = [(_UIFocusRegion *)self regionCoordinateSpace];
    if (regionCoordinateSpace2)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v8 stringWithFormat:@"<%@: %p>", v10, regionCoordinateSpace2];
    }

    else
    {
      v11 = @"(nil)";
    }

    v13 = [v3 appendObject:v11 withName:@"coordinateSpace"];
  }

  else
  {
    v12 = [v3 appendObject:@"global" withName:@"coordinateSpace"];
  }

  return v3;
}

- (id)description
{
  _descriptionBuilder = [(_UIFocusRegion *)self _descriptionBuilder];
  build = [_descriptionBuilder build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(_UIFocusRegion *)self isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      regionCoordinateSpace = v5->_regionCoordinateSpace;
      v7 = self->_regionCoordinateSpace;
      v8 = regionCoordinateSpace;
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        if (!v7 || !v8)
        {

LABEL_13:
          v11 = 0;
          goto LABEL_14;
        }

        v10 = [(UICoordinateSpace *)v7 isEqual:v8];

        if (!v10)
        {
          goto LABEL_13;
        }
      }

      v11 = CGRectEqualToRect(self->_regionFrame, v5->_regionFrame);
LABEL_14:

      goto LABEL_15;
    }

    v11 = 0;
  }

LABEL_15:

  return v11;
}

- (unint64_t)_effectiveFocusableBoundariesForHeading:(unint64_t)heading
{
  headingCopy = heading;
  _focusableBoundaries = [(_UIFocusRegion *)self _focusableBoundaries];

  return _UIEffectiveFocusRegionBoundariesForHeading(_focusableBoundaries, headingCopy);
}

- (unint64_t)_effectiveBoundariesBlockingFocusMovementRequest:(id)request
{
  requestCopy = request;
  v5 = [(_UIFocusRegion *)self _boundariesBlockingFocusMovementRequest:requestCopy];
  movementInfo = [requestCopy movementInfo];

  v7 = _UIEffectiveFocusRegionBoundariesForHeading(v5, [movementInfo heading]);
  return v7;
}

@end