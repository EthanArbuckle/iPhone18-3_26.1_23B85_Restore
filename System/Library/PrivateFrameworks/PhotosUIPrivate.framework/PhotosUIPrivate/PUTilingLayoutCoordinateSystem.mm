@interface PUTilingLayoutCoordinateSystem
- (BOOL)isEqual:(id)equal;
- (CGPoint)coordinateSystemOrigin;
- (PUTilingCoordinateSystem)parentCoordinateSystem;
@end

@implementation PUTilingLayoutCoordinateSystem

- (CGPoint)coordinateSystemOrigin
{
  x = self->_coordinateSystemOrigin.x;
  y = self->_coordinateSystemOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (PUTilingCoordinateSystem)parentCoordinateSystem
{
  WeakRetained = objc_loadWeakRetained(&self->_parentCoordinateSystem);

  return WeakRetained;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      parentCoordinateSystem = [(PUTilingLayoutCoordinateSystem *)self parentCoordinateSystem];
      parentCoordinateSystem2 = [(PUTilingLayoutCoordinateSystem *)v5 parentCoordinateSystem];
      v8 = [parentCoordinateSystem isEqual:parentCoordinateSystem2];

      [(PUTilingLayoutCoordinateSystem *)self coordinateSystemOrigin];
      v10 = v9;
      v12 = v11;
      [(PUTilingLayoutCoordinateSystem *)v5 coordinateSystemOrigin];
      v14 = v13;
      v16 = v15;

      if (v10 == v14)
      {
        v17 = v8;
      }

      else
      {
        v17 = 0;
      }

      v18 = v12 == v16 && v17;
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

@end