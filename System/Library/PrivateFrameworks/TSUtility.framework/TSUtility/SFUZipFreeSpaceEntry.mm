@interface SFUZipFreeSpaceEntry
- (int64_t)compareByOffset:(id)offset;
@end

@implementation SFUZipFreeSpaceEntry

- (int64_t)compareByOffset:(id)offset
{
  offset = self->offset;
  v4 = *(offset + 1);
  v5 = offset >= v4;
  v6 = offset > v4;
  if (v5)
  {
    return v6;
  }

  else
  {
    return -1;
  }
}

@end