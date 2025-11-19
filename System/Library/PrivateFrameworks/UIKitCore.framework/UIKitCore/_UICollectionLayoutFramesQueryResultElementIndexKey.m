@interface _UICollectionLayoutFramesQueryResultElementIndexKey
- (BOOL)isEqual:(id)a3;
@end

@implementation _UICollectionLayoutFramesQueryResultElementIndexKey

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (a3 && self->_index == *(a3 + 2))
  {
    return [(NSString *)self->_element isEqualToString:*(a3 + 1)];
  }

  return 0;
}

@end