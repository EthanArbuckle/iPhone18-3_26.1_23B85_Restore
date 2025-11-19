@interface SBHFolderIconVisualConfiguration
- (BOOL)isEqual:(id)a3;
- (CGSize)gridCellSize;
- (CGSize)gridCellSpacing;
- (SBHFolderIconVisualConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
@end

@implementation SBHFolderIconVisualConfiguration

- (CGSize)gridCellSize
{
  width = self->_gridCellSize.width;
  height = self->_gridCellSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)gridCellSpacing
{
  width = self->_gridCellSpacing.width;
  height = self->_gridCellSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (SBHFolderIconVisualConfiguration)init
{
  v9.receiver = self;
  v9.super_class = SBHFolderIconVisualConfiguration;
  result = [(SBHFolderIconVisualConfiguration *)&v9 init];
  if (result)
  {
    __asm { FMOV            V0.2D, #8.0 }

    result->_gridCellSize = _Q0;
    __asm { FMOV            V0.2D, #2.0 }

    result->_gridCellSpacing = _Q0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(objc_opt_class());
  if (result)
  {
    *(result + 8) = self->_gridCellSize;
    *(result + 24) = self->_gridCellSpacing;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v8 = (isKindOfClass & 1) != 0 && (self->_gridCellSize.width == v4->_gridCellSize.width ? (v7 = self->_gridCellSize.height == v4->_gridCellSize.height) : (v7 = 0), v7) && self->_gridCellSpacing.height == v4->_gridCellSpacing.height && self->_gridCellSpacing.width == v4->_gridCellSpacing.width;
  }

  return v8;
}

- (id)succinctDescription
{
  v2 = [(SBHFolderIconVisualConfiguration *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHFolderIconVisualConfiguration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBHFolderIconVisualConfiguration *)self succinctDescriptionBuilder];
  [(SBHFolderIconVisualConfiguration *)self gridCellSize];
  v5 = [v4 appendSize:@"gridCellSize" withName:?];
  [(SBHFolderIconVisualConfiguration *)self gridCellSpacing];
  v6 = [v4 appendSize:@"gridCellSpacing" withName:?];

  return v4;
}

@end