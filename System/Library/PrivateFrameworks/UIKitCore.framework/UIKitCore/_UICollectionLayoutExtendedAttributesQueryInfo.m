@interface _UICollectionLayoutExtendedAttributesQueryInfo
- (id)description;
@end

@implementation _UICollectionLayoutExtendedAttributesQueryInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromCGRect(self->_queryRect);
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_sectionIndex];
  v8 = [v3 stringWithFormat:@"<%@ %p: queryRect=%@ sectionIndex=%@>", v5, self, v6, v7];;

  return v8;
}

@end