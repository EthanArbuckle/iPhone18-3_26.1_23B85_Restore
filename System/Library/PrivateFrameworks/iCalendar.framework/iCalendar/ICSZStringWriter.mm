@interface ICSZStringWriter
- (ICSZStringWriter)init;
- (NSString)description;
- (id)zResult;
- (void)_appendBytes:(const void *)bytes length:(unint64_t)length andFlush:(BOOL)flush;
- (void)appendFormat:(id)format;
- (void)appendString:(id)string;
@end

@implementation ICSZStringWriter

- (ICSZStringWriter)init
{
  v8.receiver = self;
  v8.super_class = ICSZStringWriter;
  v2 = [(ICSZStringWriter *)&v8 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_4;
  }

  v2->_strm.zalloc = 0;
  v2->_strm.zfree = 0;
  v2->_strm.opaque = 0;
  v4 = 0;
  if (!deflateInit_(&v2->_strm, -1, "1.2.12", 112))
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v6 = v3->_result;
    v3->_result = v5;

LABEL_4:
    v4 = v3;
  }

  return v4;
}

- (void)appendString:(id)string
{
  stringCopy = string;
  v6 = [string cStringUsingEncoding:4];
  if (v6)
  {
    v7 = v6;
    if (*v6)
    {
      v8 = strlen(v6);

      [(ICSZStringWriter *)self _appendBytes:v7 length:v8 andFlush:0];
    }
  }
}

- (void)appendFormat:(id)format
{
  v4 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v6 = [[v4 alloc] initWithFormat:formatCopy locale:0 arguments:&v7];

  [(ICSZStringWriter *)self appendString:v6];
}

- (id)zResult
{
  v5 = 0;
  [(ICSZStringWriter *)self _appendBytes:&v5 length:1 andFlush:1];
  v3 = self->_result;

  return v3;
}

- (void)_appendBytes:(const void *)bytes length:(unint64_t)length andFlush:(BOOL)flush
{
  v11 = *MEMORY[0x277D85DE8];
  if (bytes && length)
  {
    self->_strm.next_in = bytes;
    p_strm = &self->_strm;
    self->_strm.avail_in = length;
    if (flush)
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    do
    {
      self->_strm.avail_out = 0x4000;
      self->_strm.next_out = v10;
      if (deflate(p_strm, v8) == -2)
      {
        [ICSZStringWriter _appendBytes:a2 length:self andFlush:?];
      }

      [(NSMutableData *)self->_result appendBytes:v10 length:0x4000 - self->_strm.avail_out];
    }

    while (!self->_strm.avail_out);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p %d bytes>", v5, self, -[NSMutableData length](self->_result, "length")];

  return v6;
}

- (void)_appendBytes:(uint64_t)a1 length:(uint64_t)a2 andFlush:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ICSStringWriter.m" lineNumber:120 description:@"Error in string compression"];
}

@end