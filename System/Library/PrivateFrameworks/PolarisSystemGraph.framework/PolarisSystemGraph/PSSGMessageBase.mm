@interface PSSGMessageBase
- ($995AEC83619B72959345773A9004CE00)serialize;
- (BOOL)isEqual:(id)equal;
- (PSSGMessageBase)initWithRawMessage:(pssg_tx_s *)message;
- (PSSGMessageBase)initWithType:(unint64_t)type string1:(id)string1 stringSet1:(id)set1 stringSet2:(id)set2 data:(id)data;
- (unint64_t)hash;
- (unsigned)count1;
- (unsigned)count2;
- (unsigned)dataLength;
- (void)dealloc;
@end

@implementation PSSGMessageBase

- (PSSGMessageBase)initWithType:(unint64_t)type string1:(id)string1 stringSet1:(id)set1 stringSet2:(id)set2 data:(id)data
{
  string1Copy = string1;
  set1Copy = set1;
  set2Copy = set2;
  dataCopy = data;
  v19.receiver = self;
  v19.super_class = PSSGMessageBase;
  v16 = [(PSSGMessageBase *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(PSSGMessageBase *)v16 setType:type];
    [(PSSGMessageBase *)v17 setString1:string1Copy];
    [(PSSGMessageBase *)v17 setStringSet1:set1Copy];
    [(PSSGMessageBase *)v17 setStringSet2:set2Copy];
    [(PSSGMessageBase *)v17 setData:dataCopy];
    v17->_stringArray = 0;
  }

  return v17;
}

- (unsigned)count1
{
  stringSet1 = [(PSSGMessageBase *)self stringSet1];
  v3 = [stringSet1 count];

  return v3;
}

- (unsigned)count2
{
  stringSet2 = [(PSSGMessageBase *)self stringSet2];
  v3 = [stringSet2 count];

  return v3;
}

- (unsigned)dataLength
{
  data = [(PSSGMessageBase *)self data];
  v3 = [data length];

  return v3;
}

- (PSSGMessageBase)initWithRawMessage:(pssg_tx_s *)message
{
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:message->string1];
  if ((message->header.header.msgh_bits & 0x80000000) == 0 || message->header.body.msgh_descriptor_count != 1 || HIBYTE(message->header.ool_port_data.guarded_port.context) != 1)
  {
    v17 = 0;
    v12 = 0;
    v9 = 0;
    goto LABEL_13;
  }

  countArray1 = message->var0.var0.countArray1;
  countArray2 = message->var0.var0.countArray2;
  v8 = *(&message->header.body + 1);
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
  if (message->var0.var0.dataLength)
  {
    v17 = [MEMORY[0x277CBEA90] dataWithBytes:v20 length:?];
  }

  else
  {
    v17 = 0;
  }

LABEL_13:
  v18 = [(PSSGMessageBase *)self initWithType:message->type string1:v5 stringSet1:v9 stringSet2:v12 data:v17];

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
    string1 = [(PSSGMessageBase *)self string1];
    [string1 UTF8String];
    __strlcpy_chk();

    self->_serializedMessage.message.var0.var0.countArray1 = [(PSSGMessageBase *)self count1];
    self->_serializedMessage.message.var0.var0.countArray2 = [(PSSGMessageBase *)self count2];
    self->_serializedMessage.message.var0.var0.dataLength = [(PSSGMessageBase *)self dataLength];
    LODWORD(string1) = [(PSSGMessageBase *)self count1];
    v5 = [(PSSGMessageBase *)self count2]+ string1;
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
      stringSet1 = [(PSSGMessageBase *)self stringSet1];
      v8 = [stringSet1 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
              objc_enumerationMutation(stringSet1);
            }

            strlcpy(self->_stringArray[v10++], [*(*(&v26 + 1) + 8 * i) UTF8String], 0x100uLL);
          }

          v9 = [stringSet1 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
      stringSet2 = [(PSSGMessageBase *)self stringSet2];
      v16 = [stringSet2 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
              objc_enumerationMutation(stringSet2);
            }

            strlcpy(self->_stringArray[v10++], [*(*(&v22 + 1) + 8 * j) UTF8String], 0x100uLL);
          }

          v17 = [stringSet2 countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v17);
      }

      self->_serializedMessage.var0.oolData = self->_stringArray;
      dataLength = v5 << 8;
    }

    else
    {
      data = [(PSSGMessageBase *)self data];
      self->_serializedMessage.var0.oolData = [data bytes];

      dataLength = [(PSSGMessageBase *)self dataLength];
    }

    self->_serializedMessage.oolDataLength = dataLength;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  type = [(PSSGMessageBase *)self type];
  if (type == [equalCopy type])
  {
    string1 = [(PSSGMessageBase *)self string1];
    string12 = [equalCopy string1];
    if ([string1 isEqual:string12])
    {
      stringSet1 = [(PSSGMessageBase *)self stringSet1];
      stringSet12 = [equalCopy stringSet1];
      if ([(PSSGMessageBase *)self first:stringSet1 isEqual:stringSet12])
      {
        stringSet2 = [(PSSGMessageBase *)self stringSet2];
        stringSet22 = [equalCopy stringSet2];
        if ([(PSSGMessageBase *)self first:stringSet2 isEqual:stringSet22])
        {
          data = [(PSSGMessageBase *)self data];
          data2 = [equalCopy data];
          v14 = [(PSSGMessageBase *)self first:data isEqual:data2];
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
  type = [(PSSGMessageBase *)self type];
  string1 = [(PSSGMessageBase *)self string1];
  v5 = [string1 hash] ^ type;
  stringSet1 = [(PSSGMessageBase *)self stringSet1];
  v7 = [stringSet1 hash];
  stringSet2 = [(PSSGMessageBase *)self stringSet2];
  v9 = v5 ^ v7 ^ [stringSet2 hash];
  data = [(PSSGMessageBase *)self data];
  v11 = [data hash];

  return v9 ^ v11;
}

@end