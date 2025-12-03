@interface PXScrollInfo
- (BOOL)isEqual:(id)equal;
- (CGPoint)pagingOrigin;
- (CGSize)interpageSpacing;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PXScrollInfo

- (CGPoint)pagingOrigin
{
  x = self->_pagingOrigin.x;
  y = self->_pagingOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)interpageSpacing
{
  width = self->_interpageSpacing.width;
  height = self->_interpageSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 2) = self->_axis;
  *(result + 8) = self->_pagingEnabled;
  *(result + 24) = self->_interpageSpacing;
  *(result + 40) = self->_pagingOrigin;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    axis = [(PXScrollInfo *)self axis];
    if (axis == [v5 axis] && (v7 = -[PXScrollInfo isPagingEnabled](self, "isPagingEnabled"), v7 == objc_msgSend(v5, "isPagingEnabled")))
    {
      [(PXScrollInfo *)self interpageSpacing];
      v11 = v10;
      v13 = v12;
      [v5 interpageSpacing];
      v8 = 0;
      if (v11 == v15 && v13 == v14)
      {
        [(PXScrollInfo *)self pagingOrigin];
        v17 = v16;
        v19 = v18;
        [v5 pagingOrigin];
        v8 = v19 == v21 && v17 == v20;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  axis = [(PXScrollInfo *)self axis];
  isPagingEnabled = [(PXScrollInfo *)self isPagingEnabled];
  v5 = 4;
  if (!isPagingEnabled)
  {
    v5 = 0;
  }

  return v5 ^ axis;
}

@end