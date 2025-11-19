@interface PBDataWriter
- (BOOL)writeData:(id)a3;
- (PBDataWriter)init;
- (PBDataWriter)initWithInitialCapacity:(unint64_t)a3;
- (unint64_t)write:(const char *)a3 maxLength:(unint64_t)a4;
- (void)writeBareVarint:(unint64_t)a3;
- (void)writeBigEndianFixed16:(unsigned __int16)a3;
- (void)writeBigEndianFixed32:(unsigned int)a3;
- (void)writeBigEndianShortThenString:(id)a3;
- (void)writeData:(id)a3 forTag:(unsigned int)a4;
- (void)writeInt8:(char)a3;
- (void)writeProtoBuffer:(id)a3;
- (void)writeSint64:(int64_t)a3 forTag:(unsigned int)a4;
- (void)writeTag:(unsigned int)a3 andType:(unsigned __int8)a4;
- (void)writeUint8:(unsigned __int8)a3;
@end

@implementation PBDataWriter

- (PBDataWriter)init
{
  v6.receiver = self;
  v6.super_class = PBDataWriter;
  v2 = [(PBDataWriter *)&v6 init];
  if (v2)
  {
    v3 = [[PBMutableData alloc] initWithCapacity:256];
    data = v2->_data;
    v2->_data = v3;
  }

  return v2;
}

- (void)writeTag:(unsigned int)a3 andType:(unsigned __int8)a4
{
  if (a3 != -1)
  {
    v4 = a4;
    data = self->_data;
    end = data->end;
    p = data->p;
    if (end < (p + 8))
    {
      if (end - data->buffer <= 8)
      {
        v10 = 8;
      }

      else
      {
        v10 = end - data->buffer;
      }

      [(PBMutableData *)data _pb_growCapacityBy:v10];
      p = self->_data->p;
    }

    v11 = v4 | (8 * a3);
    if (v11 < 0x80)
    {
      LOBYTE(v12) = v4 | (8 * a3);
    }

    else
    {
      do
      {
        *p++ = v11 | 0x80;
        v12 = v11 >> 7;
        v13 = v11 >> 14;
        v11 >>= 7;
      }

      while (v13);
    }

    *p = v12;
    self->_data->p = p + 1;
  }
}

- (void)writeBareVarint:(unint64_t)a3
{
  data = self->_data;
  end = data->end;
  p = data->p;
  if (end < (p + 16))
  {
    if (end - data->buffer <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = end - data->buffer;
    }

    [(PBMutableData *)data _pb_growCapacityBy:v8];
    p = self->_data->p;
  }

  if (a3 < 0x80)
  {
    LOBYTE(v9) = a3;
  }

  else
  {
    do
    {
      *p++ = a3 | 0x80;
      v9 = a3 >> 7;
      v10 = a3 >> 14;
      a3 >>= 7;
    }

    while (v10);
  }

  *p = v9;
  self->_data->p = p + 1;
}

- (void)writeUint8:(unsigned __int8)a3
{
  data = self->_data;
  end = data->end;
  p = data->p;
  if (end < (p + 1))
  {
    if (end - data->buffer <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = end - data->buffer;
    }

    [(PBMutableData *)data _pb_growCapacityBy:v8];
    data = self->_data;
    p = data->p;
  }

  data->p = p + 1;
  *p = a3;
}

- (void)writeInt8:(char)a3
{
  data = self->_data;
  end = data->end;
  p = data->p;
  if (end < (p + 1))
  {
    if (end - data->buffer <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = end - data->buffer;
    }

    [(PBMutableData *)data _pb_growCapacityBy:v8];
    data = self->_data;
    p = data->p;
  }

  data->p = p + 1;
  *p = a3;
}

- (void)writeProtoBuffer:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  v6 = v5;
  v7 = v5 + 4;
  data = self->_data;
  end = data->end;
  p = data->p;
  if (end < &p[v7])
  {
    v11 = end - data->buffer;
    if (v11 <= v7)
    {
      v12 = v7;
    }

    else
    {
      v12 = v11;
    }

    [(PBMutableData *)data _pb_growCapacityBy:v12];
    p = self->_data->p;
  }

  *p = bswap32(v6);
  self->_data->p += 4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __33__PBDataWriter_writeProtoBuffer___block_invoke;
  v13[3] = &unk_1E833D520;
  v13[4] = self;
  [v4 enumerateByteRangesUsingBlock:v13];
}

void *__33__PBDataWriter_writeProtoBuffer___block_invoke(uint64_t a1, const void *a2, int a3, size_t __n)
{
  result = memcpy(*(*(*(a1 + 32) + 8) + 8), a2, __n);
  *(*(*(a1 + 32) + 8) + 8) += __n;
  return result;
}

- (void)writeBigEndianShortThenString:(id)a3
{
  v5 = a3;
  v6 = [a3 UTF8String];
  if (v6)
  {
    v7 = v6;
    v8 = strlen(v6);
    v9 = bswap32(v8) >> 16;
    data = self->_data;
    end = data->end;
    p = data->p;
    if (end < &p[v8 + 2])
    {
      v13 = end - data->buffer;
      if (v13 <= v8 + 2)
      {
        v14 = v8 + 2;
      }

      else
      {
        v14 = v13;
      }

      [(PBMutableData *)data _pb_growCapacityBy:v14];
      p = self->_data->p;
    }

    *p = v9;
    self->_data->p += 2;
    memcpy(self->_data->p, v7, v8);
    self->_data->p += v8;
  }

  else
  {
    v15 = self->_data;
    v16 = v15->end;
    v17 = v15->p;
    if (v16 < (v17 + 2))
    {
      if (v16 - v15->buffer <= 2)
      {
        v18 = 2;
      }

      else
      {
        v18 = v16 - v15->buffer;
      }

      [(PBMutableData *)v15 _pb_growCapacityBy:v18];
      v15 = self->_data;
      v17 = v15->p;
    }

    v15->p = v17 + 1;
    *v17 = 0;
    v19 = self->_data;
    v20 = v19->p;
    v19->p = v20 + 1;
    *v20 = 0;
  }
}

- (void)writeBigEndianFixed32:(unsigned int)a3
{
  data = self->_data;
  end = data->end;
  p = data->p;
  if (end < (p + 4))
  {
    v8 = end - data->buffer;
    if (v8 <= 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = v8;
    }

    [(PBMutableData *)data _pb_growCapacityBy:v9];
    p = self->_data->p;
  }

  *p = bswap32(a3);
  self->_data->p += 4;
}

- (void)writeBigEndianFixed16:(unsigned __int16)a3
{
  v3 = a3;
  data = self->_data;
  end = data->end;
  p = data->p;
  if (end < (p + 2))
  {
    v8 = end - data->buffer;
    if (v8 <= 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = v8;
    }

    [(PBMutableData *)data _pb_growCapacityBy:v9];
    p = self->_data->p;
  }

  *p = __rev16(v3);
  self->_data->p += 2;
}

- (BOOL)writeData:(id)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __26__PBDataWriter_writeData___block_invoke;
  v4[3] = &unk_1E833D520;
  v4[4] = self;
  [a3 enumerateByteRangesUsingBlock:v4];
  return 1;
}

- (unint64_t)write:(const char *)a3 maxLength:(unint64_t)a4
{
  data = self->_data;
  end = data->end;
  p = data->p;
  if (end < &p[a4])
  {
    if (end - data->buffer <= a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = end - data->buffer;
    }

    [(PBMutableData *)data _pb_growCapacityBy:v10];
    p = self->_data->p;
  }

  memcpy(p, a3, a4);
  self->_data->p += a4;
  return a4;
}

- (void)writeData:(id)a3 forTag:(unsigned int)a4
{
  if (a3)
  {
    PBDataWriterWriteDataField(self, a3, a4);
  }
}

- (void)writeSint64:(int64_t)a3 forTag:(unsigned int)a4
{
  v7 = 2 * a3;
  data = self->_data;
  end = data->end;
  if (end < data->p + 16)
  {
    v10 = end - data->buffer;
    if (v10 <= 0x10)
    {
      v11 = 16;
    }

    else
    {
      v11 = v10;
    }

    [(PBMutableData *)data _pb_growCapacityBy:v11];
    data = self->_data;
  }

  v12 = v7 ^ (a3 >> 63);
  if (a4 != -1)
  {
    v13 = 8 * a4;
    p = data->p;
    if (v13 < 0x80)
    {
      LOBYTE(v15) = 8 * a4;
    }

    else
    {
      do
      {
        *p++ = v13 | 0x80;
        v15 = v13 >> 7;
        v16 = v13 >> 14;
        v13 >>= 7;
      }

      while (v16);
    }

    *p = v15;
    self->_data->p = p + 1;
    data = self->_data;
  }

  v17 = data->p;
  if (v12 < 0x80)
  {
    v18 = v7 ^ (a3 >> 63);
  }

  else
  {
    do
    {
      *v17++ = v12 | 0x80;
      v18 = v12 >> 7;
      v19 = v12 >> 14;
      v12 >>= 7;
    }

    while (v19);
  }

  *v17 = v18;
  self->_data->p = v17 + 1;
}

- (PBDataWriter)initWithInitialCapacity:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = PBDataWriter;
  v4 = [(PBDataWriter *)&v10 init];
  if (v4)
  {
    v5 = [PBMutableData alloc];
    if (a3 <= 0x100)
    {
      v6 = 256;
    }

    else
    {
      v6 = a3;
    }

    v7 = [(PBMutableData *)v5 initWithCapacity:v6];
    data = v4->_data;
    v4->_data = v7;
  }

  return v4;
}

@end