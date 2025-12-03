@interface NSData(Gzip)
- (id)TT_gzipDeflate;
- (id)TT_gzipInflate;
- (void)TT_gzipInflate;
@end

@implementation NSData(Gzip)

- (id)TT_gzipInflate
{
  if (![self length])
  {
    selfCopy = self;
    goto LABEL_19;
  }

  v2 = [self length];
  v3 = [self length];
  v4 = [MEMORY[0x1E695DF88] dataWithLength:v2 + (v3 >> 1)];
  v15.avail_in = [self length];
  v15.zalloc = 0;
  v15.zfree = 0;
  v15.total_out = 0;
  if (inflateInit2_(&v15, 47, "1.2.12", 112))
  {
    goto LABEL_17;
  }

  v5 = v3 >> 1;
  do
  {
    total_out = v15.total_out;
    if (total_out >= [v4 length])
    {
      [v4 increaseLengthBy:v5];
    }

    mutableBytes = [v4 mutableBytes];
    v15.next_out = (mutableBytes + v15.total_out);
    v8 = [v4 length];
    v15.avail_out = v8 - LODWORD(v15.total_out);
    v9 = inflate(&v15, 2);
  }

  while (!v9);
  v10 = v9;
  if (v9 != 1)
  {
    v12 = +[REMLog crdt];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(NSData(Gzip) *)v10 TT_gzipInflate];
    }

    if (!inflateEnd(&v15))
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (inflateEnd(&v15))
  {
LABEL_14:
    v13 = +[REMLog crdt];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(NSData(Gzip) *)v13 TT_gzipInflate];
    }

LABEL_17:
    selfCopy = 0;
    goto LABEL_18;
  }

  [v4 setLength:v15.total_out];
  selfCopy = [MEMORY[0x1E695DEF0] dataWithData:v4];
LABEL_18:

LABEL_19:

  return selfCopy;
}

- (id)TT_gzipDeflate
{
  if ([self length])
  {
    memset(&v8.total_out, 0, 72);
    v8.avail_in = [self length];
    selfCopy = 0;
    if (!deflateInit2_(&v8, -1, 8, 31, 8, 0, "1.2.12", 112))
    {
      v3 = [MEMORY[0x1E695DF88] dataWithLength:0x4000];
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
      selfCopy = [MEMORY[0x1E695DEF0] dataWithData:v3];
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)TT_gzipInflate
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = self;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "inflate failed returned %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end