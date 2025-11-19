@interface RamrodOSMessagePlist
- (RamrodOSMessagePlist)initWithPropertyList:(id)a3 error:(id *)a4;
- (int64_t)write:(const char *)a3 maxLength:(unint64_t)a4;
- (void)dealloc;
@end

@implementation RamrodOSMessagePlist

- (RamrodOSMessagePlist)initWithPropertyList:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = RamrodOSMessagePlist;
  v7 = [(RamrodOSMessagePlist *)&v17 init];
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = [[NSMutableArray alloc] initWithCapacity:4];
  chunks = v7->_chunks;
  v7->_chunks = v9;

  v16 = 0;
  v11 = [NSPropertyListSerialization writePropertyList:v6 toStream:v7 format:200 options:0 error:&v16];
  v12 = v16;
  v7->_length = v11;
  objc_autoreleasePoolPop(v8);
  if (a4 && v12)
  {
    v13 = v12;
    *a4 = v12;
  }

  length = v7->_length;

  if (length)
  {
LABEL_6:
    length = v7;
  }

  return length;
}

- (void)dealloc
{
  [(RamrodOSMessagePlist *)self invalidate];
  v3.receiver = self;
  v3.super_class = RamrodOSMessagePlist;
  [(RamrodOSMessagePlist *)&v3 dealloc];
}

- (int64_t)write:(const char *)a3 maxLength:(unint64_t)a4
{
  v4 = a4;
  v6 = [[NSData alloc] initWithBytes:a3 length:a4];
  if (v6)
  {
    [(NSMutableArray *)self->_chunks addObject:v6];
  }

  else
  {
    v7 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
    streamError = self->_streamError;
    self->_streamError = v7;

    v4 = -1;
  }

  return v4;
}

@end