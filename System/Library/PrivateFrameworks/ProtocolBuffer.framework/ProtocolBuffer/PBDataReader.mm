@interface PBDataReader
- (BOOL)readBOOL;
- (BOOL)seekToOffset:(unint64_t)offset;
- (PBDataReader)initWithData:(id)data;
- (char)readInt8;
- (double)readDouble;
- (float)readFloat;
- (id)readBigEndianShortThenString;
- (id)readBytes:(unsigned int)bytes;
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
- (void)readTag:(unsigned __int16 *)tag andType:(char *)type;
- (void)readTag:(unsigned int *)tag type:(char *)type;
- (void)updateData:(id)data;
@end

@implementation PBDataReader

- (id)readProtoBuffer
{
  readBigEndianFixed32 = [(PBDataReader *)self readBigEndianFixed32];
  pos = self->_pos;
  length = self->_length;
  if (pos + readBigEndianFixed32 <= length && (v6 = readBigEndianFixed32, length - pos >= readBigEndianFixed32))
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
      data = [(PBDataReader *)self data];
      [data getBytes:&v11 range:{-[PBDataReader position](self, "position"), 1}];

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
  readBigEndianFixed16 = [(PBDataReader *)self readBigEndianFixed16];
  if (self->_error)
  {
    goto LABEL_5;
  }

  v4 = readBigEndianFixed16;
  v5 = [(PBDataReader *)self position]+ readBigEndianFixed16;
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

- (id)readBytes:(unsigned int)bytes
{
  if (self->_error)
  {
    bytes = 0;
  }

  else
  {
    v8 = [(PBDataReader *)self position]+ bytes;
    if (v8 >= [(PBDataReader *)self position]&& (v9 = [(PBDataReader *)self position]+ bytes, v9 <= [(PBDataReader *)self length]))
    {
      bytes = [(NSData *)self->_data subdataWithRange:self->_pos, bytes];
      self->_pos += bytes;
    }

    else
    {
      [(PBDataReader *)self _setError];
      bytes = 0;
    }
  }

  return bytes;
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
      data = [(PBDataReader *)self data];
      [data getBytes:&v11 range:{-[PBDataReader position](self, "position"), 1}];

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
    data = [(PBDataReader *)self data];
    [data getBytes:&v7 range:{-[PBDataReader position](self, "position"), 8}];

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
    data = [(PBDataReader *)self data];
    [data getBytes:&v7 range:{-[PBDataReader position](self, "position"), 4}];

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
    data = [(PBDataReader *)self data];
    [data getBytes:&v7 range:{-[PBDataReader position](self, "position"), 8}];

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
    data = [(PBDataReader *)self data];
    [data getBytes:&v7 range:{-[PBDataReader position](self, "position"), 4}];

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
      data = [(PBDataReader *)self data];
      [data getBytes:&v12 range:{-[PBDataReader position](self, "position"), 1}];

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
      data = [(PBDataReader *)self data];
      [data getBytes:&v12 range:{-[PBDataReader position](self, "position"), 1}];

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
      data = [(PBDataReader *)self data];
      [data getBytes:&v11 range:{-[PBDataReader position](self, "position"), 1}];

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
      data = [(PBDataReader *)self data];
      [data getBytes:&v11 range:{-[PBDataReader position](self, "position"), 1}];

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
      data = [(PBDataReader *)self data];
      [data getBytes:&v11 range:{-[PBDataReader position](self, "position"), 1}];

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
    data = [(PBDataReader *)self data];
    [data getBytes:&v7 range:{-[PBDataReader position](self, "position"), 4}];

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
    data = [(PBDataReader *)self data];
    [data getBytes:&v7 range:{-[PBDataReader position](self, "position"), 8}];

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
      data = [(PBDataReader *)self data];
      [data getBytes:&v11 range:{-[PBDataReader position](self, "position"), 1}];

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
    data = [(PBDataReader *)self data];
    [data getBytes:&v8 range:{-[PBDataReader position](self, "position"), 1}];

    [(PBDataReader *)self setPosition:[(PBDataReader *)self position]+ 1];
    return v8;
  }

  else
  {
    [(PBDataReader *)self _setError];
    return 0;
  }
}

- (void)readTag:(unsigned __int16 *)tag andType:(char *)type
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
      data = [(PBDataReader *)self data];
      [data getBytes:&v15 range:{-[PBDataReader position](self, "position"), 1}];

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
  *type = v14 & 7;
  *tag = v14 >> 3;
}

- (void)readTag:(unsigned int *)tag type:(char *)type
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
      data = [(PBDataReader *)self data];
      [data getBytes:&v15 range:{-[PBDataReader position](self, "position"), 1}];

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
  *type = v14 & 7;
  *tag = v14 >> 3;
}

- (BOOL)seekToOffset:(unint64_t)offset
{
  length = self->_length;
  if (length >= offset)
  {
    self->_error = 0;
    self->_pos = offset;
  }

  return length >= offset;
}

- (void)updateData:(id)data
{
  data = self->_data;
  if (data != data)
  {
    v5 = [data copy];
    v6 = self->_data;
    self->_data = v5;

    data = self->_data;
  }

  self->_length = [(NSData *)data length];
}

- (PBDataReader)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = PBDataReader;
  v5 = [(PBDataReader *)&v9 init];
  if (v5)
  {
    v6 = [dataCopy copy];
    data = v5->_data;
    v5->_data = v6;

    v5->_pos = 0;
    v5->_error = 0;
    v5->_length = [(NSData *)v5->_data length];
  }

  return v5;
}

@end