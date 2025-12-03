@interface GQZInflateInputStream
- (GQZInflateInputStream)initWithInput:(id)input;
- (unint64_t)readToBuffer:(char *)buffer size:(unint64_t)size;
- (void)dealloc;
@end

@implementation GQZInflateInputStream

- (GQZInflateInputStream)initWithInput:(id)input
{
  v4 = [(GQZInflateInputStream *)self init];
  if (v4)
  {
    inputCopy = input;
    v4->mInput = inputCopy;
    v4->mStream.zfree = 0;
    v4->mStream.opaque = 0;
    v4->mStream.zalloc = 0;
    [(GQZEntryInputStream *)inputCopy readToOwnBuffer:&v4->mStream size:&v4->mStream.avail_in];
    v6 = inflateInit2_(&v4->mStream, -15, "1.2.12", 112);
    if (v6)
    {
      [GQZException raise:@"GQZInflateError" format:@"inflateInit2() failed: %d", v6];
    }
  }

  return v4;
}

- (void)dealloc
{
  inflateEnd(&self->mStream);

  v3.receiver = self;
  v3.super_class = GQZInflateInputStream;
  [(GQZInflateInputStream *)&v3 dealloc];
}

- (unint64_t)readToBuffer:(char *)buffer size:(unint64_t)size
{
  self->mStream.avail_out = size;
  self->mStream.next_out = buffer;
  next_out = buffer;
  if (size)
  {
    while (1)
    {
      if (!self->mStream.avail_in)
      {
        [(GQZEntryInputStream *)self->mInput readToOwnBuffer:&self->mStream size:&self->mStream.avail_in];
      }

      v7 = inflate(&self->mStream, 0);
      if (v7 >= 2)
      {
        break;
      }

      if (v7 || !self->mStream.avail_out)
      {
        goto LABEL_9;
      }
    }

    [GQZException raise:@"GQZInflateError" format:@"inflate() failed: %d", v7];
LABEL_9:
    next_out = self->mStream.next_out;
  }

  return next_out - buffer;
}

@end