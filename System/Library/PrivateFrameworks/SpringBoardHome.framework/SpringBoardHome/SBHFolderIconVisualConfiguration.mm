@interface SBHFolderIconVisualConfiguration
- (BOOL)isEqual:(id)equal;
- (CGSize)gridCellSize;
- (CGSize)gridCellSpacing;
- (SBHFolderIconVisualConfiguration)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
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

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(objc_opt_class());
  if (result)
  {
    *(result + 8) = self->_gridCellSize;
    *(result + 24) = self->_gridCellSpacing;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v8 = (isKindOfClass & 1) != 0 && (self->_gridCellSize.width == equalCopy->_gridCellSize.width ? (v7 = self->_gridCellSize.height == equalCopy->_gridCellSize.height) : (v7 = 0), v7) && self->_gridCellSpacing.height == equalCopy->_gridCellSpacing.height && self->_gridCellSpacing.width == equalCopy->_gridCellSpacing.width;
  }

  return v8;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHFolderIconVisualConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHFolderIconVisualConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBHFolderIconVisualConfiguration *)self succinctDescriptionBuilder];
  [(SBHFolderIconVisualConfiguration *)self gridCellSize];
  v5 = [succinctDescriptionBuilder appendSize:@"gridCellSize" withName:?];
  [(SBHFolderIconVisualConfiguration *)self gridCellSpacing];
  v6 = [succinctDescriptionBuilder appendSize:@"gridCellSpacing" withName:?];

  return succinctDescriptionBuilder;
}

@end