@interface GQZEntryUncompressedInputStream
- (GQZEntryUncompressedInputStream)initWithOffset:(int64_t)offset end:(int64_t)end input:(id)input;
- (unint64_t)readToBuffer:(char *)buffer size:(unint64_t)size;
- (void)dealloc;
@end

@implementation GQZEntryUncompressedInputStream

- (GQZEntryUncompressedInputStream)initWithOffset:(int64_t)offset end:(int64_t)end input:(id)input
{
  v11.receiver = self;
  v11.super_class = GQZEntryUncompressedInputStream;
  v8 = [(GQZEntryUncompressedInputStream *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->mOffset = offset;
    v8->mEnd = end;
    v8->mInput = input;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQZEntryUncompressedInputStream;
  [(GQZEntryUncompressedInputStream *)&v3 dealloc];
}

- (unint64_t)readToBuffer:(char *)buffer size:(unint64_t)size
{
  mOffset = self->mOffset;
  if (self->mEnd - mOffset >= size)
  {
    sizeCopy = size;
  }

  else
  {
    sizeCopy = self->mEnd - mOffset;
  }

  [GQZArchiveInputStream readFromOffset:"readFromOffset:size:buffer:" size:? buffer:?];
  return sizeCopy;
}

@end