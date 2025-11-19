@interface MBEncoder
+ (id)encoderToFile:(id)a3 error:(id *)a4;
+ (id)encoderToMemory;
+ (id)encoderWithOutputStream:(id)a3;
- (MBEncoder)initWithOutputStream:(id)a3;
- (id)data;
- (void)close;
- (void)encodeBytes:(const void *)a3 length:(unint64_t)a4;
- (void)encodeData:(id)a3;
- (void)encodeDate:(id)a3;
- (void)encodeString:(id)a3;
- (void)encodeVersion:(double)a3;
- (void)flush;
@end

@implementation MBEncoder

+ (id)encoderToMemory
{
  v2 = +[NSOutputStream outputStreamToMemory];
  [v2 open];
  v3 = [MBEncoder encoderWithOutputStream:v2];

  return v3;
}

+ (id)encoderToFile:(id)a3 error:(id *)a4
{
  v5 = [NSOutputStream outputStreamToFileAtPath:a3 append:0];
  [v5 open];
  v6 = [v5 streamError];

  if (v6)
  {
    if (a4)
    {
      [v5 streamError];
      *a4 = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = [MBEncoder encoderWithOutputStream:v5];
  }

  return v7;
}

+ (id)encoderWithOutputStream:(id)a3
{
  v3 = a3;
  v4 = [[MBEncoder alloc] initWithOutputStream:v3];

  return v4;
}

- (MBEncoder)initWithOutputStream:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MBEncoder;
  v6 = [(MBEncoder *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputStream, a3);
    v8 = [[NSMutableData alloc] initWithCapacity:0x4000];
    buffer = v7->_buffer;
    v7->_buffer = v8;
  }

  return v7;
}

- (void)flush
{
  v3 = [(NSMutableData *)self->_buffer bytes];
  v4 = [(NSMutableData *)self->_buffer length];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i < v5; i += v7)
    {
      v7 = [(NSOutputStream *)self->_outputStream write:&v3[i] maxLength:v5 - i];
      if (v7 < 0)
      {
        v9 = [MBException alloc];
        v10 = [(NSOutputStream *)self->_outputStream streamError];
        v11 = [v9 initWithCode:100 format:{@"Output stream write error: %@", v10}];
        v12 = v11;

        objc_exception_throw(v11);
      }
    }
  }

  buffer = self->_buffer;

  [(NSMutableData *)buffer setLength:0];
}

- (void)close
{
  [(MBEncoder *)self flush];
  outputStream = self->_outputStream;

  [(NSOutputStream *)outputStream close];
}

- (void)encodeVersion:(double)a3
{
  v4 = a3;
  v5 = llround((a3 - a3) * 10.0);
  if (a3 + v5 * 0.1 != a3)
  {
    sub_10009BF38();
  }

  if (v4 <= 0)
  {
    sub_10009BFB0();
  }

  if (v5 >= 0xA)
  {
    sub_10009C028();
  }

  [(MBEncoder *)self encodeInt8:v4];

  [(MBEncoder *)self encodeInt8:v5];
}

- (void)encodeData:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = [v4 length];
    if (v5 >= 0x8000)
    {
      [NSException raise:NSInvalidArgumentException format:@"Data too long to encode: %d", v5];
    }

    v6 = malloc_type_malloc(v5, 0x661F529DuLL);
    [v7 getBytes:v6 length:v5];
    [(MBEncoder *)self encodeInt16:v5];
    [(MBEncoder *)self encodeBytes:v6 length:v5];
    free(v6);
  }

  else
  {
    [(MBEncoder *)self encodeInt16:0xFFFFFFFFLL];
  }
}

- (void)encodeDate:(id)a3
{
  if (a3)
  {
    [a3 timeIntervalSinceReferenceDate];
    v5 = v4;
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  [(MBEncoder *)self encodeInt32:v5];
}

- (void)encodeString:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 maximumLengthOfBytesUsingEncoding:4];
    v7 = malloc_type_malloc(v6, 0xCDBF1515uLL);
    v9 = 0;
    if (([v5 getBytes:v7 maxLength:v6 usedLength:&v9 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v5, "length"), 0}] & 1) == 0)
    {
      sub_10009C0A0();
    }

    v8 = v9;
    if (v9 >= 0x8000)
    {
      [NSException raise:NSInvalidArgumentException format:@"String too long to encode: %d", v9];
      v8 = v9;
    }

    [(MBEncoder *)self encodeInt16:v8];
    [(MBEncoder *)self encodeBytes:v7 length:v9];
    free(v7);
  }

  else
  {
    [(MBEncoder *)self encodeInt16:0xFFFFFFFFLL];
  }
}

- (void)encodeBytes:(const void *)a3 length:(unint64_t)a4
{
  [(NSMutableData *)self->_buffer appendBytes:a3 length:?];
  self->_offset += a4;
  if ([(NSMutableData *)self->_buffer length]>= 0x4000)
  {

    [(MBEncoder *)self flush];
  }
}

- (id)data
{
  [(MBEncoder *)self close];
  outputStream = self->_outputStream;

  return [(NSOutputStream *)outputStream propertyForKey:NSStreamDataWrittenToMemoryStreamKey];
}

@end