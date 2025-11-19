@interface _UILibArchiveReaderLoadedItem
- (id)description;
@end

@implementation _UILibArchiveReaderLoadedItem

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = _UILibArchiveReaderLoadedItem;
  v4 = [(_UIArchiveItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ seq = %d", v4, self->_sequenceIndex];

  return v5;
}

@end