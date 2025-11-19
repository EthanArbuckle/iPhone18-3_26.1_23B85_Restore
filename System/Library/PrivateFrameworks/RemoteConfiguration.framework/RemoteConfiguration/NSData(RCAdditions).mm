@interface NSData(RCAdditions)
- (id)rc_gzipDeflate;
- (id)rc_gzipInflate;
@end

@implementation NSData(RCAdditions)

- (id)rc_gzipInflate
{
  if (![a1 length])
  {
    v10 = a1;
    goto LABEL_14;
  }

  v2 = [a1 length];
  v3 = [a1 length];
  v4 = [MEMORY[0x277CBEB28] dataWithLength:v2 + (v3 >> 1)];
  v12.avail_in = [a1 length];
  v12.zalloc = 0;
  v12.zfree = 0;
  v12.total_out = 0;
  if (inflateInit2_(&v12, 47, "1.2.12", 112))
  {
    goto LABEL_12;
  }

  v5 = v3 >> 1;
  do
  {
    total_out = v12.total_out;
    if (total_out >= [v4 length])
    {
      [v4 increaseLengthBy:v5];
    }

    v7 = [v4 mutableBytes];
    v12.next_out = (v7 + v12.total_out);
    v8 = [v4 length];
    v12.avail_out = v8 - LODWORD(v12.total_out);
    v9 = inflate(&v12, 2);
  }

  while (!v9);
  if (v9 != 1)
  {
    inflateEnd(&v12);
    goto LABEL_12;
  }

  if (inflateEnd(&v12))
  {
LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  [v4 setLength:v12.total_out];
  v10 = [MEMORY[0x277CBEA90] dataWithData:v4];
LABEL_13:

LABEL_14:

  return v10;
}

- (id)rc_gzipDeflate
{
  if ([a1 length])
  {
    memset(&v8.total_out, 0, 72);
    v8.avail_in = [a1 length];
    v2 = 0;
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

        v5 = [v3 mutableBytes];
        v8.next_out = (v5 + v8.total_out);
        v6 = [v3 length];
        v8.avail_out = v6 - LODWORD(v8.total_out);
        deflate(&v8, 4);
      }

      while (!v8.avail_out);
      deflateEnd(&v8);
      [v3 setLength:v8.total_out];
      v2 = [MEMORY[0x277CBEA90] dataWithData:v3];
    }
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

@end