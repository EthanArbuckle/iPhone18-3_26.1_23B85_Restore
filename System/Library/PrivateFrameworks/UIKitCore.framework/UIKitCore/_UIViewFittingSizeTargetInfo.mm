@interface _UIViewFittingSizeTargetInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTargetInfo:(id)info;
- (id)description;
@end

@implementation _UIViewFittingSizeTargetInfo

- (BOOL)isEqualToTargetInfo:(id)info
{
  if (info == self)
  {
    return 1;
  }

  horizontalPriority = self->_horizontalPriority;
  if (!info)
  {
    if (horizontalPriority == 0.0)
    {
      v4 = 0.0;
      v5 = 0.0;
      if (self->_verticalPriority == 0.0)
      {
        return self->_targetSize.height == v4 && self->_targetSize.width == v5;
      }
    }

    return 0;
  }

  if (horizontalPriority != *(info + 3) || self->_verticalPriority != *(info + 4))
  {
    return 0;
  }

  v5 = *(info + 3);
  v4 = *(info + 4);
  return self->_targetSize.height == v4 && self->_targetSize.width == v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(_UIViewFittingSizeTargetInfo *)self isEqualToTargetInfo:equal];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self)
  {
    width = self->_targetSize.width;
    height = self->_targetSize.height;
    horizontalPriority = self->_horizontalPriority;
    verticalPriority = self->_verticalPriority;
  }

  else
  {
    horizontalPriority = 0.0;
    width = 0.0;
    height = 0.0;
    verticalPriority = 0.0;
  }

  return [v3 stringWithFormat:@"<%@: %p; targetSize = (%g, %g); horizontalPriority = %g; verticalPriority = %g >", v5, self, *&width, *&height, *&horizontalPriority, *&verticalPriority];
}

@end