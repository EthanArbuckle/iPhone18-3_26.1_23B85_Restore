@interface BRCStreamWriter
- (BRCStreamWriter)initWithOutputStream:(id)stream;
- (void)appendString:(id)string;
- (void)close;
- (void)dealloc;
@end

@implementation BRCStreamWriter

- (BRCStreamWriter)initWithOutputStream:(id)stream
{
  streamCopy = stream;
  v9.receiver = self;
  v9.super_class = BRCStreamWriter;
  v6 = [(BRCStreamWriter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputStream, stream);
    [(NSOutputStream *)v7->_outputStream open];
  }

  return v7;
}

- (void)appendString:(id)string
{
  stringCopy = string;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [stringCopy dataUsingEncoding:4];
  -[NSOutputStream write:maxLength:](selfCopy->_outputStream, "write:maxLength:", [v5 bytes], objc_msgSend(v5, "length"));

  objc_sync_exit(selfCopy);
}

- (void)close
{
  obj = self;
  objc_sync_enter(obj);
  [(NSOutputStream *)obj->_outputStream close];
  outputStream = obj->_outputStream;
  obj->_outputStream = 0;

  objc_sync_exit(obj);
}

- (void)dealloc
{
  [(BRCStreamWriter *)self close];
  v3.receiver = self;
  v3.super_class = BRCStreamWriter;
  [(BRCStreamWriter *)&v3 dealloc];
}

@end