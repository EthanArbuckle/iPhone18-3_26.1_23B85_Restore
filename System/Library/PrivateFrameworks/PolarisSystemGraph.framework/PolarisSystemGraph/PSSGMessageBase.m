@interface PSSGMessageBase
- ($995AEC83619B72959345773A9004CE00)serialize;
- (BOOL)isEqual:(id)a3;
- (PSSGMessageBase)initWithRawMessage:(pssg_tx_s *)a3;
- (PSSGMessageBase)initWithType:(unint64_t)a3 string1:(id)a4 stringSet1:(id)a5 stringSet2:(id)a6 data:(id)a7;
- (unint64_t)hash;
- (unsigned)count1;
- (unsigned)count2;
- (unsigned)dataLength;
- (void)dealloc;
@end

@implementation PSSGMessageBase

- (PSSGMessageBase)initWithType:(unint64_t)a3 string1:(id)a4 stringSet1:(id)a5 stringSet2:(id)a6 data:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = PSSGMessageBase;
  v16 = [(PSSGMessageBase *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(PSSGMessageBase *)v16 setType:a3];
    [(PSSGMessageBase *)v17 setString1:v12];
    [(PSSGMessageBase *)v17 setStringSet1:v13];
    [(PSSGMessageBase *)v17 setStringSet2:v14];
    [(PSSGMessageBase *)v17 setData:v15];
    v17->_stringArray = 0;
  }

  return v17;
}

- (unsigned)count1
{
  v2 = [(PSSGMessageBase *)self stringSet1];
  v3 = [v2 count];

  return v3;
}

- (unsigned)count2
{
  v2 = [(PSSGMessageBase *)self stringSet2];
  v3 = [v2 count];

  return v3;
}

- (unsigned)dataLength
{
  v2 = [(PSSGMessageBase *)self data];
  v3 = [v2 length];

  return v3;
}

- (PSSGMessageBase)initWithRawMessage:(pssg_tx_s *)a3
{
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3->string1];
  if ((a3->header.header.msgh_bits & 0x80000000) == 0 || a3->header.body.msgh_descriptor_count != 1 || HIBYTE(a3->header.ool_port_data.guarded_port.context) != 1)
  {
    v17 = 0;
    v12 = 0;
    v9 = 0;
    goto LABEL_13;
  }

  countArray1 = a3->var0.var0.countArray1;
  countArray2 = a3->var0.var0.countArray2;
  v8 = *(&a3->header.body + 1);
  v20 = v8;
  if (countArray1)
  {
    v9 = [MEMORY[0x277CBEB58] setWithCapacity:countArray1];
    v10 = countArray1;
    do
    {
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
      [v9 addObject:v11];

      v8 += 256;
      --v10;
    }

    while (v10);
    if (countArray2)
    {
LABEL_8:
      v12 = [MEMORY[0x277CBEB58] setWithCapacity:countArray2];
      v13 = countArray2 + countArray1;
      if (countArray2 + countArray1 > countArray1)
      {
        v14 = countArray1;
        v15 = v20 + (countArray1 << 8);
        do
        {
          v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:v15];
          [v12 addObject:v16];

          ++v14;
          v15 += 256;
        }

        while (v13 > v14);
      }

      goto LABEL_16;
    }
  }

  else
  {
    v9 = 0;
    if (countArray2)
    {
      goto LABEL_8;
    }
  }

  v12 = 0;
LABEL_16:
  if (a3->var0.var0.dataLength)
  {
    v17 = [MEMORY[0x277CBEA90] dataWithBytes:v20 length:?];
  }

  else
  {
    v17 = 0;
  }

LABEL_13:
  v18 = [(PSSGMessageBase *)self initWithType:a3->type string1:v5 stringSet1:v9 stringSet2:v12 data:v17];

  return v18;
}

- ($995AEC83619B72959345773A9004CE00)serialize
{
  v32 = *MEMORY[0x277D85DE8];
  p_serializedMessage = &self->_serializedMessage;
  if (!self->_stringArray)
  {
    *(&self->_serializedMessage.message.var0.var2 + 1) = 0u;
    *&self->_serializedMessage.pid = 0u;
    *&self->_serializedMessage.message.string1[232] = 0u;
    *&self->_serializedMessage.message.string1[248] = 0u;
    *&self->_serializedMessage.message.string1[200] = 0u;
    *&self->_serializedMessage.message.string1[216] = 0u;
    *&self->_serializedMessage.message.string1[168] = 0u;
    *&self->_serializedMessage.message.string1[184] = 0u;
    *&self->_serializedMessage.message.string1[136] = 0u;
    *&self->_serializedMessage.message.string1[152] = 0u;
    *&self->_serializedMessage.message.string1[104] = 0u;
    *&self->_serializedMessage.message.string1[120] = 0u;
    *&self->_serializedMessage.message.string1[72] = 0u;
    *&self->_serializedMessage.message.string1[88] = 0u;
    *&self->_serializedMessage.message.string1[40] = 0u;
    *&self->_serializedMessage.message.string1[56] = 0u;
    *&self->_serializedMessage.message.string1[8] = 0u;
    *&self->_serializedMessage.message.string1[24] = 0u;
    self->_serializedMessage.message.header.ool_port_data = 0u;
    *&self->_serializedMessage.message.type = 0u;
    *&p_serializedMessage->var0.header.header.msgh_bits = 0u;
    *&self->_serializedMessage.message.header.header.msgh_voucher_port = 0u;
    self->_serializedMessage.message.type = [(PSSGMessageBase *)self type];
    v4 = [(PSSGMessageBase *)self string1];
    [v4 UTF8String];
    __strlcpy_chk();

    self->_serializedMessage.message.var0.var0.countArray1 = [(PSSGMessageBase *)self count1];
    self->_serializedMessage.message.var0.var0.countArray2 = [(PSSGMessageBase *)self count2];
    self->_serializedMessage.message.var0.var0.dataLength = [(PSSGMessageBase *)self dataLength];
    LODWORD(v4) = [(PSSGMessageBase *)self count1];
    v5 = [(PSSGMessageBase *)self count2]+ v4;
    if (v5)
    {
      v6 = malloc_type_calloc(v5, 0x100uLL, 0x8DE96732uLL);
      self->_stringArray = v6;
      if (!v6)
      {
        [PSSGMessageBase serialize];
      }

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v7 = [(PSSGMessageBase *)self stringSet1];
      v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        v11 = *v27;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(v7);
            }

            strlcpy(self->_stringArray[v10++], [*(*(&v26 + 1) + 8 * i) UTF8String], 0x100uLL);
          }

          v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v9);
      }

      else
      {
        v10 = 0;
      }

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v15 = [(PSSGMessageBase *)self stringSet2];
      v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v23;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v23 != v18)
            {
              objc_enumerationMutation(v15);
            }

            strlcpy(self->_stringArray[v10++], [*(*(&v22 + 1) + 8 * j) UTF8String], 0x100uLL);
          }

          v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v17);
      }

      self->_serializedMessage.var0.oolData = self->_stringArray;
      v14 = v5 << 8;
    }

    else
    {
      v13 = [(PSSGMessageBase *)self data];
      self->_serializedMessage.var0.oolData = [v13 bytes];

      v14 = [(PSSGMessageBase *)self dataLength];
    }

    self->_serializedMessage.oolDataLength = v14;
  }

  v20 = *MEMORY[0x277D85DE8];
  return p_serializedMessage;
}

- (void)dealloc
{
  free(self->_stringArray);
  v3.receiver = self;
  v3.super_class = PSSGMessageBase;
  [(PSSGMessageBase *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(PSSGMessageBase *)self type];
  if (v5 == [v4 type])
  {
    v6 = [(PSSGMessageBase *)self string1];
    v7 = [v4 string1];
    if ([v6 isEqual:v7])
    {
      v8 = [(PSSGMessageBase *)self stringSet1];
      v9 = [v4 stringSet1];
      if ([(PSSGMessageBase *)self first:v8 isEqual:v9])
      {
        v10 = [(PSSGMessageBase *)self stringSet2];
        v11 = [v4 stringSet2];
        if ([(PSSGMessageBase *)self first:v10 isEqual:v11])
        {
          v12 = [(PSSGMessageBase *)self data];
          v13 = [v4 data];
          v14 = [(PSSGMessageBase *)self first:v12 isEqual:v13];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(PSSGMessageBase *)self type];
  v4 = [(PSSGMessageBase *)self string1];
  v5 = [v4 hash] ^ v3;
  v6 = [(PSSGMessageBase *)self stringSet1];
  v7 = [v6 hash];
  v8 = [(PSSGMessageBase *)self stringSet2];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [(PSSGMessageBase *)self data];
  v11 = [v10 hash];

  return v9 ^ v11;
}

@end