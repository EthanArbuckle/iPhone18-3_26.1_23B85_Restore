@interface _UIIdentifierDifferMovePair
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)compare:(id)compare;
- (void)initWithFromIndex:(uint64_t)index toIndex:;
@end

@implementation _UIIdentifierDifferMovePair

- (void)initWithFromIndex:(uint64_t)index toIndex:
{
  if (result)
  {
    v5.receiver = result;
    v5.super_class = _UIIdentifierDifferMovePair;
    result = objc_msgSendSuper2(&v5, sel_init);
    if (result)
    {
      result[1] = a2;
      result[2] = index;
    }
  }

  return result;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  if (self)
  {
    fromIndex = self->_fromIndex;
    if (compareCopy)
    {
LABEL_3:
      v6 = compareCopy[1];
      goto LABEL_4;
    }
  }

  else
  {
    fromIndex = 0;
    if (compareCopy)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_4:
  v7 = fromIndex >= v6;
  v8 = fromIndex == v6;
  v9 = -1;
  if (v7)
  {
    v9 = 1;
  }

  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && equalCopy->_fromIndex == self->_fromIndex && equalCopy->_toIndex == self->_toIndex;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [_UIIdentifierDifferMovePair allocWithZone:zone];
  if (self)
  {
    v5 = *&self->_fromIndex;
  }

  else
  {
    v5 = 0uLL;
  }

  v6 = v5;
  if (result)
  {
    v7.receiver = result;
    v7.super_class = _UIIdentifierDifferMovePair;
    result = [(_UIIdentifierDifferMovePair *)&v7 init];
    if (result)
    {
      *(result + 8) = v6;
    }
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p M(%lu -> %lu)>", v5, self, self->_fromIndex, self->_toIndex];;

  return v6;
}

@end