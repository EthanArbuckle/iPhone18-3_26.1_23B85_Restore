@interface PBMessageStreamWriter
- (BOOL)writeMessage:(id)message;
- (PBMessageStreamWriter)initWithOutputStream:(id)stream;
@end

@implementation PBMessageStreamWriter

- (BOOL)writeMessage:(id)message
{
  v14 = *MEMORY[0x1E69E9840];
  data = [message data];
  v5 = [data length];
  v6 = v13;
  if (v5 < 0x80)
  {
    LOBYTE(v7) = v5;
  }

  else
  {
    do
    {
      *v6++ = v5 | 0x80;
      v7 = v5 >> 7;
      v8 = v5 >> 14;
      v5 >>= 7;
    }

    while (v8);
  }

  *v6 = v7;
  if ([(NSOutputStream *)self->_stream write:v13 maxLength:v6 - v13 + 1]== v6 - v13 + 1)
  {
    if ([data length])
    {
      v9 = -[NSOutputStream write:maxLength:](self->_stream, "write:maxLength:", [data bytes], objc_msgSend(data, "length"));
      v10 = v9 == [data length];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (PBMessageStreamWriter)initWithOutputStream:(id)stream
{
  streamCopy = stream;
  v9.receiver = self;
  v9.super_class = PBMessageStreamWriter;
  v6 = [(PBMessageStreamWriter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stream, stream);
  }

  return v7;
}

@end