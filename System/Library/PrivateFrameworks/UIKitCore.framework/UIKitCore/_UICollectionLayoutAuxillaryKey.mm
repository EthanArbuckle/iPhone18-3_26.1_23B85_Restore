@interface _UICollectionLayoutAuxillaryKey
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation _UICollectionLayoutAuxillaryKey

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  elementKind = self->_elementKind;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_index];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_auxillaryKind];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSupplementary];
  v10 = [v3 stringWithFormat:@"<%@:%p elementKind=%@ index=%@; auxillaryKind=%@; isSup=%@>", v5, self, elementKind, v7, v8, v9];;

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_UICollectionLayoutAuxillaryKey allocWithZone:zone];
  if (v4)
  {
    elementKind = self->_elementKind;
    index = self->_index;
    auxillaryKind = self->_auxillaryKind;
    isSupplementary = self->_isSupplementary;
    if (![(NSString *)elementKind length])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_initWithElementKind_index_auxillaryKind_isSupplementary_ object:v4 file:@"_UICollectionLayoutHelpers.m" lineNumber:1905 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];
    }

    v13.receiver = v4;
    v13.super_class = _UICollectionLayoutAuxillaryKey;
    v4 = [(_UICollectionLayoutAuxillaryKey *)&v13 init];
    if (v4)
    {
      v9 = [(NSString *)elementKind copy];
      v10 = v4->_elementKind;
      v4->_elementKind = v9;

      v4->_index = index;
      v4->_auxillaryKind = auxillaryKind;
      v4->_isSupplementary = isSupplementary;
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  if (equal != self)
  {
    if (self->_index == *(equal + 3))
    {
      return [(NSString *)self->_elementKind isEqualToString:*(equal + 2)];
    }

    return 0;
  }

  return 1;
}

@end