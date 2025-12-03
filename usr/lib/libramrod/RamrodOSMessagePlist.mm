@interface RamrodOSMessagePlist
- (RamrodOSMessagePlist)initWithPropertyList:(id)list error:(id *)error;
- (int64_t)write:(const char *)write maxLength:(unint64_t)length;
- (void)dealloc;
@end

@implementation RamrodOSMessagePlist

- (RamrodOSMessagePlist)initWithPropertyList:(id)list error:(id *)error
{
  listCopy = list;
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
  v11 = [NSPropertyListSerialization writePropertyList:listCopy toStream:v7 format:200 options:0 error:&v16];
  v12 = v16;
  v7->_length = v11;
  objc_autoreleasePoolPop(v8);
  if (error && v12)
  {
    v13 = v12;
    *error = v12;
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

- (int64_t)write:(const char *)write maxLength:(unint64_t)length
{
  lengthCopy = length;
  v6 = [[NSData alloc] initWithBytes:write length:length];
  if (v6)
  {
    [(NSMutableArray *)self->_chunks addObject:v6];
  }

  else
  {
    v7 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
    streamError = self->_streamError;
    self->_streamError = v7;

    lengthCopy = -1;
  }

  return lengthCopy;
}

@end