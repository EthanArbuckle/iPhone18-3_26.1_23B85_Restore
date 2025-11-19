@interface PBMessageStreamWriter
- (BOOL)writeMessage:(id)a3;
- (PBMessageStreamWriter)initWithOutputStream:(id)a3;
@end

@implementation PBMessageStreamWriter

- (BOOL)writeMessage:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [a3 data];
  v5 = [v4 length];
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
    if ([v4 length])
    {
      v9 = -[NSOutputStream write:maxLength:](self->_stream, "write:maxLength:", [v4 bytes], objc_msgSend(v4, "length"));
      v10 = v9 == [v4 length];
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

- (PBMessageStreamWriter)initWithOutputStream:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PBMessageStreamWriter;
  v6 = [(PBMessageStreamWriter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stream, a3);
  }

  return v7;
}

@end