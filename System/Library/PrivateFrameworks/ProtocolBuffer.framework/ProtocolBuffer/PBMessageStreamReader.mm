@interface PBMessageStreamReader
- (PBMessageStreamReader)initWithStream:(id)stream;
- (id)nextMessage;
@end

@implementation PBMessageStreamReader

- (id)nextMessage
{
  v3 = 0;
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0;
  while ([(NSInputStream *)self->_stream read:&v18 maxLength:1]== 1)
  {
    v4 = v18;
    v19[v3] = v18;
    v5 = v3 + 1;
    if (v4 < 0 && v3++ < 9)
    {
      continue;
    }

    v7 = 0;
    v8 = 0;
    v9 = v19;
    v10 = v5;
    while (v10)
    {
      v8 |= (*v9 & 0x7F) << v7;
      if ((*v9 & 0x80) == 0)
      {
        v14 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v8];
        v15 = v14;
        if (v14 && [v14 length] == v8 && -[NSInputStream read:maxLength:](self->_stream, "read:maxLength:", objc_msgSend(v15, "mutableBytes"), v8) == v8)
        {
          self->_position += v8 + v5;
          v16 = [[PBDataReader alloc] initWithData:v15];
          if ([(PBMessageStreamReader *)self classOfNextMessage])
          {
            v17 = objc_alloc_init([(PBMessageStreamReader *)self classOfNextMessage]);
            v11 = v17;
            if (v17)
            {
              [v17 readFrom:v16];
            }
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_11;
      }

      v7 += 7;
      ++v9;
      --v10;
      if (v7 == 70)
      {
        goto LABEL_10;
      }
    }

    break;
  }

LABEL_10:
  v11 = 0;
LABEL_11:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (PBMessageStreamReader)initWithStream:(id)stream
{
  streamCopy = stream;
  v9.receiver = self;
  v9.super_class = PBMessageStreamReader;
  v6 = [(PBMessageStreamReader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stream, stream);
  }

  return v7;
}

@end