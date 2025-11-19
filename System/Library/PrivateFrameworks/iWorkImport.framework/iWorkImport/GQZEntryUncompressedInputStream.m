@interface GQZEntryUncompressedInputStream
- (GQZEntryUncompressedInputStream)initWithOffset:(int64_t)a3 end:(int64_t)a4 input:(id)a5;
- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4;
- (void)dealloc;
@end

@implementation GQZEntryUncompressedInputStream

- (GQZEntryUncompressedInputStream)initWithOffset:(int64_t)a3 end:(int64_t)a4 input:(id)a5
{
  v11.receiver = self;
  v11.super_class = GQZEntryUncompressedInputStream;
  v8 = [(GQZEntryUncompressedInputStream *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->mOffset = a3;
    v8->mEnd = a4;
    v8->mInput = a5;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQZEntryUncompressedInputStream;
  [(GQZEntryUncompressedInputStream *)&v3 dealloc];
}

- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4
{
  mOffset = self->mOffset;
  if (self->mEnd - mOffset >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = self->mEnd - mOffset;
  }

  [GQZArchiveInputStream readFromOffset:"readFromOffset:size:buffer:" size:? buffer:?];
  return v5;
}

@end