@interface SFUMemoryInputStream
- (BOOL)seekWithinBufferToOffset:(int64_t)a3;
- (SFUMemoryInputStream)initWithData:(id)a3;
- (SFUMemoryInputStream)initWithData:(id)a3 offset:(unint64_t)a4 length:(unint64_t)a5;
- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4;
- (unint64_t)readToOwnBuffer:(const char *)a3 size:(unint64_t)a4;
- (void)dealloc;
- (void)seekToOffset:(int64_t)a3;
@end

@implementation SFUMemoryInputStream

- (SFUMemoryInputStream)initWithData:(id)a3
{
  v5 = [a3 length];

  return [(SFUMemoryInputStream *)self initWithData:a3 offset:0 length:v5];
}

- (SFUMemoryInputStream)initWithData:(id)a3 offset:(unint64_t)a4 length:(unint64_t)a5
{
  v14.receiver = self;
  v14.super_class = SFUMemoryInputStream;
  v8 = [(SFUMemoryInputStream *)&v14 init];
  v9 = v8;
  if (v8)
  {
    if (a3)
    {
      v10 = [a3 length];
      if (v10 < a5 || &v10[-a5] < a4)
      {

        [NSException raise:NSInvalidArgumentException format:@"Bad data range."];
      }

      v11 = a3;
      v9->mData = v11;
      v12 = [(NSData *)v11 bytes];
      v9->mStart = &v12[a4];
      v9->mCurrent = &v12[a4];
      v9->mEnd = &v12[a4 + a5];
    }

    else
    {

      return 0;
    }
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SFUMemoryInputStream;
  [(SFUMemoryInputStream *)&v3 dealloc];
}

- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4
{
  mCurrent = self->mCurrent;
  if (self->mEnd - mCurrent >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = self->mEnd - mCurrent;
  }

  memcpy(a3, mCurrent, v6);
  self->mCurrent += v6;
  return v6;
}

- (void)seekToOffset:(int64_t)a3
{
  mEnd = self->mEnd;
  mStart = self->mStart;
  v5 = mEnd - mStart;
  v6 = &mStart[a3];
  if (v5 >= a3)
  {
    mEnd = v6;
  }

  self->mCurrent = mEnd;
}

- (unint64_t)readToOwnBuffer:(const char *)a3 size:(unint64_t)a4
{
  mCurrent = self->mCurrent;
  v5 = (self->mEnd - mCurrent);
  if (v5 >= a4)
  {
    v5 = a4;
  }

  *a3 = mCurrent;
  self->mCurrent = &v5[mCurrent];
  return v5;
}

- (BOOL)seekWithinBufferToOffset:(int64_t)a3
{
  v4 = self->mEnd - self->mStart;
  if (v4 >= a3)
  {
    [(SFUMemoryInputStream *)self seekToOffset:a3];
  }

  return v4 >= a3;
}

@end