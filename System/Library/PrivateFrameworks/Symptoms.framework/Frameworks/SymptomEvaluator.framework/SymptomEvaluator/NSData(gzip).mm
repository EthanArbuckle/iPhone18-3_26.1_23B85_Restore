@interface NSData(gzip)
- (id)gzipDeflate;
- (id)gzipInflate;
@end

@implementation NSData(gzip)

- (id)gzipInflate
{
  if (![self length])
  {
    selfCopy = self;
    goto LABEL_15;
  }

  v2 = [self length];
  v3 = [self length];
  v4 = [MEMORY[0x277CBEB28] dataWithLength:v2 + (v3 >> 1)];
  memset(&strm.avail_in, 0, 104);
  strm.next_in = [self bytes];
  strm.avail_in = [self length];
  if (inflateInit2_(&strm, 47, "1.2.12", 112))
  {
    goto LABEL_13;
  }

  v5 = v3 >> 1;
  do
  {
    total_out = strm.total_out;
    if (total_out >= [v4 length])
    {
      [v4 increaseLengthBy:v5];
    }

    mutableBytes = [v4 mutableBytes];
    strm.next_out = (mutableBytes + strm.total_out);
    v8 = [v4 length];
    strm.avail_out = v8 - LODWORD(strm.total_out);
    v9 = inflate(&strm, 2);
  }

  while (!v9);
  if (v9 != 1)
  {
    NSLog(&cfstr_ErrorInflateFa.isa, v9);
    if (!inflateEnd(&strm))
    {
LABEL_13:
      selfCopy = 0;
      goto LABEL_14;
    }

LABEL_12:
    NSLog(&cfstr_ErrorInflateen.isa);
    goto LABEL_13;
  }

  if (inflateEnd(&strm))
  {
    goto LABEL_12;
  }

  [v4 setLength:strm.total_out];
  selfCopy = [MEMORY[0x277CBEA90] dataWithData:v4];
LABEL_14:

LABEL_15:

  return selfCopy;
}

- (id)gzipDeflate
{
  if ([self length])
  {
    memset(&v8.total_out, 0, 72);
    v8.avail_in = [self length];
    selfCopy = 0;
    if (!deflateInit2_(&v8, -1, 8, 31, 8, 0, "1.2.12", 112))
    {
      v3 = [MEMORY[0x277CBEB28] dataWithLength:0x4000];
      do
      {
        total_out = v8.total_out;
        if (total_out >= [v3 length])
        {
          [v3 increaseLengthBy:0x4000];
        }

        mutableBytes = [v3 mutableBytes];
        v8.next_out = (mutableBytes + v8.total_out);
        v6 = [v3 length];
        v8.avail_out = v6 - LODWORD(v8.total_out);
        deflate(&v8, 4);
      }

      while (!v8.avail_out);
      deflateEnd(&v8);
      [v3 setLength:v8.total_out];
      selfCopy = [MEMORY[0x277CBEA90] dataWithData:v3];
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end