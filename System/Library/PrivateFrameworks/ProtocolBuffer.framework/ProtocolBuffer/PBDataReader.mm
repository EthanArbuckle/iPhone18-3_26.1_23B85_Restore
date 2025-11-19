@interface PBDataReader
- (BOOL)readBOOL;
- (BOOL)seekToOffset:(unint64_t)a3;
- (PBDataReader)initWithData:(id)a3;
- (char)readInt8;
- (double)readDouble;
- (float)readFloat;
- (id)readBigEndianShortThenString;
- (id)readBytes:(unsigned int)a3;
- (id)readProtoBuffer;
- (int)readInt32;
- (int)readSfixed32;
- (int)readSint32;
- (int64_t)readInt64;
- (int64_t)readSfixed64;
- (int64_t)readSint64;
- (int64_t)readVarInt;
- (unint64_t)readFixed64;
- (unint64_t)readUint64;
- (unsigned)readFixed32;
- (unsigned)readUint32;
- (void)readTag:(unsigned __int16 *)a3 andType:(char *)a4;
- (void)readTag:(unsigned int *)a3 type:(char *)a4;
- (void)updateData:(id)a3;
@end

@implementation PBDataReader

- (id)readProtoBuffer
{
  v3 = [(PBDataReader *)self readBigEndianFixed32];
  pos = self->_pos;
  length = self->_length;
  if (pos + v3 <= length && (v6 = v3, length - pos >= v3))
  {
    v7 = [(NSData *)self->_data subdataWithRange:?];
    self->_pos += v6;
  }

  else
  {
    v7 = 0;
    self->_error = 1;
  }

  return v7;
}

- (int)readInt32
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v11 = 0;
    v6 = [(PBDataReader *)self position]+ 1;
    if (v6 >= [(PBDataReader *)self position]&& (v7 = [(PBDataReader *)self position]+ 1, v7 <= [(PBDataReader *)self length]))
    {
      v8 = [(PBDataReader *)self data];
      [v8 getBytes:&v11 range:{-[PBDataReader position](self, "position"), 1}];

      [(PBDataReader *)self setPosition:[(PBDataReader *)self position]+ 1];
    }

    else
    {
      [(PBDataReader *)self _setError];
    }

    v5 |= (v11 & 0x7F) << v3;
    if ((v11 & 0x80) == 0)
    {
      break;
    }

    v3 += 7;
    if (v4++ >= 9)
    {
      return 0;
    }
  }

  if ([(PBDataReader *)self hasError])
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (id)readBigEndianShortThenString
{
  v3 = [(PBDataReader *)self readBigEndianFixed16];
  if (self->_error)
  {
    goto LABEL_5;
  }

  v4 = v3;
  v5 = [(PBDataReader *)self position]+ v3;
  if (v5 < [(PBDataReader *)self position]|| (v6 = [(PBDataReader *)self position]+ v4, v6 > [(PBDataReader *)self length]))
  {
    [(PBDataReader *)self _setError];
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v9 = [(NSData *)self->_data subdataWithRange:self->_pos, v4];
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v9 encoding:4];
  self->_pos += v4;

LABEL_6:

  return v7;
}

- (id)readBytes:(unsigned int)a3
{
  if (self->_error)
  {
    v4 = 0;
  }

  else
  {
    v8 = [(PBDataReader *)self position]+ a3;
    if (v8 >= [(PBDataReader *)self position]&& (v9 = [(PBDataReader *)self position]+ a3, v9 <= [(PBDataReader *)self length]))
    {
      v4 = [(NSData *)self->_data subdataWithRange:self->_pos, a3];
      self->_pos += a3;
    }

    else
    {
      [(PBDataReader *)self _setError];
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)readBOOL
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v11 = 0;
    v6 = [(PBDataReader *)self position]+ 1;
    if (v6 >= [(PBDataReader *)self position]&& (v7 = [(PBDataReader *)self position]+ 1, v7 <= [(PBDataReader *)self length]))
    {
      v8 = [(PBDataReader *)self data];
      [v8 getBytes:&v11 range:{-[PBDataReader position](self, "position"), 1}];

      [(PBDataReader *)self setPosition:[(PBDataReader *)self position]+ 1];
    }

    else
    {
      [(PBDataReader *)self _setError];
    }

    v5 |= (v11 & 0x7F) << v3;
    if ((v11 & 0x80) == 0)
    {
      break;
    }

    v3 += 7;
    if (v4++ >= 9)
    {
      return 0;
    }
  }

  return (v5 != 0) & ~[(PBDataReader *)self hasError];
}

- (int64_t)readSfixed64
{
  v7 = 0;
  v3 = [(PBDataReader *)self position]+ 8;
  if (v3 >= [(PBDataReader *)self position]&& (v4 = [(PBDataReader *)self position]+ 8, v4 <= [(PBDataReader *)self length]))
  {
    v6 = [(PBDataReader *)self data];
    [v6 getBytes:&v7 range:{-[PBDataReader position](self, "position"), 8}];

    [(PBDataReader *)self setPosition:[(PBDataReader *)self position]+ 8];
    return v7;
  }

  else
  {
    [(PBDataReader *)self _setError];
    return 0;
  }
}

- (int)readSfixed32
{
  v7 = 0;
  v3 = [(PBDataReader *)self position]+ 4;
  if (v3 >= [(PBDataReader *)self position]&& (v4 = [(PBDataReader *)self position]+ 4, v4 <= [(PBDataReader *)self length]))
  {
    v6 = [(PBDataReader *)self data];
    [v6 getBytes:&v7 range:{-[PBDataReader position](self, "position"), 4}];

    [(PBDataReader *)self setPosition:[(PBDataReader *)self position]+ 4];
    return v7;
  }

  else
  {
    [(PBDataReader *)self _setError];
    return 0;
  }
}

- (unint64_t)readFixed64
{
  v7 = 0;
  v3 = [(PBDataReader *)self position]+ 8;
  if (v3 >= [(PBDataReader *)self position]&& (v4 = [(PBDataReader *)self position]+ 8, v4 <= [(PBDataReader *)self length]))
  {
    v6 = [(PBDataReader *)self data];
    [v6 getBytes:&v7 range:{-[PBDataReader position](self, "position"), 8}];

    [(PBDataReader *)self setPosition:[(PBDataReader *)self position]+ 8];
    return v7;
  }

  else
  {
    [(PBDataReader *)self _setError];
    return 0;
  }
}

- (unsigned)readFixed32
{
  v7 = 0;
  v3 = [(PBDataReader *)self position]+ 4;
  if (v3 >= [(PBDataReader *)self position]&& (v4 = [(PBDataReader *)self position]+ 4, v4 <= [(PBDataReader *)self length]))
  {
    v6 = [(PBDataReader *)self data];
    [v6 getBytes:&v7 range:{-[PBDataReader position](self, "position"), 4}];

    [(PBDataReader *)self setPosition:[(PBDataReader *)self position]+ 4];
    return v7;
  }

  else
  {
    [(PBDataReader *)self _setError];
    return 0;
  }
}

- (int64_t)readSint64
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v12 = 0;
    v6 = [(PBDataReader *)self position]+ 1;
    if (v6 >= [(PBDataReader *)self position]&& (v7 = [(PBDataReader *)self position]+ 1, v7 <= [(PBDataReader *)self length]))
    {
      v8 = [(PBDataReader *)self data];
      [v8 getBytes:&v12 range:{-[PBDataReader position](self, "position"), 1}];

      [(PBDataReader *)self setPosition:[(PBDataReader *)self position]+ 1];
    }

    else
    {
      [(PBDataReader *)self _setError];
    }

    v5 |= (v12 & 0x7F) << v3;
    if ((v12 & 0x80) == 0)
    {
      break;
    }

    v3 += 7;
    if (v4++ >= 9)
    {
      v10 = 0;
      return -(v10 & 1) ^ (v10 >> 1);
    }
  }

  if ([(PBDataReader *)self hasError])
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

  return -(v10 & 1) ^ (v10 >> 1);
}

- (int)readSint32
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v12 = 0;
    v6 = [(PBDataReader *)self position]+ 1;
    if (v6 >= [(PBDataReader *)self position]&& (v7 = [(PBDataReader *)self position]+ 1, v7 <= [(PBDataReader *)self length]))
    {
      v8 = [(PBDataReader *)self data];
      [v8 getBytes:&v12 range:{-[PBDataReader position](self, "position"), 1}];

      [(PBDataReader *)self setPosition:[(PBDataReader *)self position]+ 1];
    }

    else
    {
      [(PBDataReader *)self _setError];
    }

    v5 |= (v12 & 0x7F) << v3;
    if ((v12 & 0x80) == 0)
    {
      break;
    }

    v3 += 7;
    if (v4++ >= 9)
    {
      v10 = 0;
      return -(v10 & 1) ^ (v10 >> 1);
    }
  }

  if ([(PBDataReader *)self hasError])
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

  return -(v10 & 1) ^ (v10 >> 1);
}

- (unint64_t)readUint64
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v11 = 0;
    v6 = [(PBDataReader *)self position]+ 1;
    if (v6 >= [(PBDataReader *)self position]&& (v7 = [(PBDataReader *)self position]+ 1, v7 <= [(PBDataReader *)self length]))
    {
      v8 = [(PBDataReader *)self data];
      [v8 getBytes:&v11 range:{-[PBDataReader position](self, "position"), 1}];

      [(PBDataReader *)self setPosition:[(PBDataReader *)self position]+ 1];
    }

    else
    {
      [(PBDataReader *)self _setError];
    }

    v5 |= (v11 & 0x7F) << v3;
    if ((v11 & 0x80) == 0)
    {
      break;
    }

    v3 += 7;
    if (v4++ >= 9)
    {
      return 0;
    }
  }

  if ([(PBDataReader *)self hasError])
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (unsigned)readUint32
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v11 = 0;
    v6 = [(PBDataReader *)self position]+ 1;
    if (v6 >= [(PBDataReader *)self position]&& (v7 = [(PBDataReader *)self position]+ 1, v7 <= [(PBDataReader *)self length]))
    {
      v8 = [(PBDataReader *)self data];
      [v8 getBytes:&v11 range:{-[PBDataReader position](self, "position"), 1}];

      [(PBDataReader *)self setPosition:[(PBDataReader *)self position]+ 1];
    }

    else
    {
      [(PBDataReader *)self _setError];
    }

    v5 |= (v11 & 0x7F) << v3;
    if ((v11 & 0x80) == 0)
    {
      break;
    }

    v3 += 7;
    if (v4++ >= 9)
    {
      return 0;
    }
  }

  if ([(PBDataReader *)self hasError])
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (int64_t)readInt64
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v11 = 0;
    v6 = [(PBDataReader *)self position]+ 1;
    if (v6 >= [(PBDataReader *)self position]&& (v7 = [(PBDataReader *)self position]+ 1, v7 <= [(PBDataReader *)self length]))
    {
      v8 = [(PBDataReader *)self data];
      [v8 getBytes:&v11 range:{-[PBDataReader position](self, "position"), 1}];

      [(PBDataReader *)self setPosition:[(PBDataReader *)self position]+ 1];
    }

    else
    {
      [(PBDataReader *)self _setError];
    }

    v5 |= (v11 & 0x7F) << v3;
    if ((v11 & 0x80) == 0)
    {
      break;
    }

    v3 += 7;
    if (v4++ >= 9)
    {
      return 0;
    }
  }

  if ([(PBDataReader *)self hasError])
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (float)readFloat
{
  v7 = 0.0;
  v3 = [(PBDataReader *)self position]+ 4;
  if (v3 >= [(PBDataReader *)self position]&& (v4 = [(PBDataReader *)self position]+ 4, v4 <= [(PBDataReader *)self length]))
  {
    v6 = [(PBDataReader *)self data];
    [v6 getBytes:&v7 range:{-[PBDataReader position](self, "position"), 4}];

    [(PBDataReader *)self setPosition:[(PBDataReader *)self position]+ 4];
    return v7;
  }

  else
  {
    [(PBDataReader *)self _setError];
    return 0.0;
  }
}

- (double)readDouble
{
  v7 = 0.0;
  v3 = [(PBDataReader *)self position]+ 8;
  if (v3 >= [(PBDataReader *)self position]&& (v4 = [(PBDataReader *)self position]+ 8, v4 <= [(PBDataReader *)self length]))
  {
    v6 = [(PBDataReader *)self data];
    [v6 getBytes:&v7 range:{-[PBDataReader position](self, "position"), 8}];

    [(PBDataReader *)self setPosition:[(PBDataReader *)self position]+ 8];
    return v7;
  }

  else
  {
    [(PBDataReader *)self _setError];
    return 0.0;
  }
}

- (int64_t)readVarInt
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v11 = 0;
    v6 = [(PBDataReader *)self position]+ 1;
    if (v6 >= [(PBDataReader *)self position]&& (v7 = [(PBDataReader *)self position]+ 1, v7 <= [(PBDataReader *)self length]))
    {
      v8 = [(PBDataReader *)self data];
      [v8 getBytes:&v11 range:{-[PBDataReader position](self, "position"), 1}];

      [(PBDataReader *)self setPosition:[(PBDataReader *)self position]+ 1];
    }

    else
    {
      [(PBDataReader *)self _setError];
    }

    v5 |= (v11 & 0x7F) << v3;
    if ((v11 & 0x80) == 0)
    {
      break;
    }

    v3 += 7;
    if (v4++ >= 9)
    {
      return 0;
    }
  }

  if ([(PBDataReader *)self hasError])
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (char)readInt8
{
  v8 = 0;
  v3 = [(PBDataReader *)self position]+ 1;
  if (v3 >= [(PBDataReader *)self position]&& (v4 = [(PBDataReader *)self position]+ 1, v4 <= [(PBDataReader *)self length]))
  {
    v6 = [(PBDataReader *)self data];
    [v6 getBytes:&v8 range:{-[PBDataReader position](self, "position"), 1}];

    [(PBDataReader *)self setPosition:[(PBDataReader *)self position]+ 1];
    return v8;
  }

  else
  {
    [(PBDataReader *)self _setError];
    return 0;
  }
}

- (void)readTag:(unsigned __int16 *)a3 andType:(char *)a4
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  while (1)
  {
    v15 = 0;
    v10 = [(PBDataReader *)self position]+ 1;
    if (v10 >= [(PBDataReader *)self position]&& (v11 = [(PBDataReader *)self position]+ 1, v11 <= [(PBDataReader *)self length]))
    {
      v12 = [(PBDataReader *)self data];
      [v12 getBytes:&v15 range:{-[PBDataReader position](self, "position"), 1}];

      [(PBDataReader *)self setPosition:[(PBDataReader *)self position]+ 1];
    }

    else
    {
      [(PBDataReader *)self _setError];
    }

    v9 |= (v15 & 0x7F) << v7;
    if ((v15 & 0x80) == 0)
    {
      break;
    }

    v7 += 7;
    if (v8++ >= 9)
    {
      v14 = 0;
      goto LABEL_13;
    }
  }

  if ([(PBDataReader *)self hasError])
  {
    v14 = 0;
  }

  else
  {
    v14 = v9;
  }

LABEL_13:
  *a4 = v14 & 7;
  *a3 = v14 >> 3;
}

- (void)readTag:(unsigned int *)a3 type:(char *)a4
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  while (1)
  {
    v15 = 0;
    v10 = [(PBDataReader *)self position]+ 1;
    if (v10 >= [(PBDataReader *)self position]&& (v11 = [(PBDataReader *)self position]+ 1, v11 <= [(PBDataReader *)self length]))
    {
      v12 = [(PBDataReader *)self data];
      [v12 getBytes:&v15 range:{-[PBDataReader position](self, "position"), 1}];

      [(PBDataReader *)self setPosition:[(PBDataReader *)self position]+ 1];
    }

    else
    {
      [(PBDataReader *)self _setError];
    }

    v9 |= (v15 & 0x7F) << v7;
    if ((v15 & 0x80) == 0)
    {
      break;
    }

    v7 += 7;
    if (v8++ >= 9)
    {
      v14 = 0;
      goto LABEL_13;
    }
  }

  if ([(PBDataReader *)self hasError])
  {
    v14 = 0;
  }

  else
  {
    v14 = v9;
  }

LABEL_13:
  *a4 = v14 & 7;
  *a3 = v14 >> 3;
}

- (BOOL)seekToOffset:(unint64_t)a3
{
  length = self->_length;
  if (length >= a3)
  {
    self->_error = 0;
    self->_pos = a3;
  }

  return length >= a3;
}

- (void)updateData:(id)a3
{
  data = self->_data;
  if (data != a3)
  {
    v5 = [a3 copy];
    v6 = self->_data;
    self->_data = v5;

    data = self->_data;
  }

  self->_length = [(NSData *)data length];
}

- (PBDataReader)initWithData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PBDataReader;
  v5 = [(PBDataReader *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    data = v5->_data;
    v5->_data = v6;

    v5->_pos = 0;
    v5->_error = 0;
    v5->_length = [(NSData *)v5->_data length];
  }

  return v5;
}

@end