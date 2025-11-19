@interface _UICollectionLayoutSupplementaryEnrollment
- (id)description;
@end

@implementation _UICollectionLayoutSupplementaryEnrollment

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p: elementKind=%@ identifier=%@", v5, self, self->_kind, self->_enrollmentIdentifier];;

  return v6;
}

@end