@interface MBDatabaseIndexEntry
- (MBDatabaseIndexEntry)initWithOffset:(int64_t)a3 flags:(unint64_t)a4;
@end

@implementation MBDatabaseIndexEntry

- (MBDatabaseIndexEntry)initWithOffset:(int64_t)a3 flags:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = MBDatabaseIndexEntry;
  result = [(MBDatabaseIndexEntry *)&v7 init];
  if (result)
  {
    result->_offset = a3;
    result->_flags = a4;
  }

  return result;
}

@end