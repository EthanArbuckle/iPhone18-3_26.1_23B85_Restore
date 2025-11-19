@interface _UIViewFittingSizeTargetInfo
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTargetInfo:(id)a3;
- (id)description;
@end

@implementation _UIViewFittingSizeTargetInfo

- (BOOL)isEqualToTargetInfo:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  horizontalPriority = self->_horizontalPriority;
  if (!a3)
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

  if (horizontalPriority != *(a3 + 3) || self->_verticalPriority != *(a3 + 4))
  {
    return 0;
  }

  v5 = *(a3 + 3);
  v4 = *(a3 + 4);
  return self->_targetSize.height == v4 && self->_targetSize.width == v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(_UIViewFittingSizeTargetInfo *)self isEqualToTargetInfo:a3];
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