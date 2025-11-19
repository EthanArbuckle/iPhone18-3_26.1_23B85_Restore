@interface _UICollectionEstimatedSolutionBookmark
- (id)description;
@end

@implementation _UICollectionEstimatedSolutionBookmark

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromRange(self->_itemRange);
  v7 = NSStringFromCGRect(self->_solutionFrame);
  v8 = [v3 stringWithFormat:@"<%@ %p: range=%@ frame=%@>", v5, self, v6, v7];;

  return v8;
}

@end