@interface _UICollectionLayoutFramesQueryResultElementIndexKey
- (BOOL)isEqual:(id)equal;
@end

@implementation _UICollectionLayoutFramesQueryResultElementIndexKey

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (equal && self->_index == *(equal + 2))
  {
    return [(NSString *)self->_element isEqualToString:*(equal + 1)];
  }

  return 0;
}

@end