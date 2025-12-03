@interface FLTSSUExample
+ (Class)data_immutableClassForType:(int64_t)type;
+ (int64_t)data_typeForImmutableObject:(id)object;
- (FLTBFBufferAccessor)data;
- (FLTSSUExample)initWithFlatbuffData:(id)data root:(const SSUExample *)root verify:(BOOL)verify;
- (FLTSSUExampleEncodedVector)dataAsFLTSSUExampleEncodedVector;
- (FLTSSUExampleUtterance)dataAsFLTSSUExampleUtterance;
- (Offset<SSUExample>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int64_t)data_type;
@end

@implementation FLTSSUExample

- (id)flatbuffData
{
  v5 = 0;
  v6 = 0;
  v7 = xmmword_1C8C15D40;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 1;
  v12 = 256;
  v13 = 0;
  v2.var0 = [(FLTSSUExample *)self addObjectToBuffer:&v5];
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__29__FLTSSUExample_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1CCA7EC50);
  }

  return result;
}

- (Offset<SSUExample>)addObjectToBuffer:(void *)buffer
{
  data_type = [(FLTSSUExample *)self data_type];
  if ([(FLTSSUExample *)self data_type]== 1)
  {
    dataAsFLTSSUExampleUtterance = [(FLTSSUExample *)self dataAsFLTSSUExampleUtterance];
    LODWORD(v7) = [dataAsFLTSSUExampleUtterance addObjectToBuffer:buffer];

    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  if ([(FLTSSUExample *)self data_type]== 2)
  {
    dataAsFLTSSUExampleEncodedVector = [(FLTSSUExample *)self dataAsFLTSSUExampleEncodedVector];
    v9 = [dataAsFLTSSUExampleEncodedVector addObjectToBuffer:buffer];

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v11 = *(buffer + 5);
  v12 = *(buffer + 6);
  v13 = *(buffer + 4);
  if (data_type || *(buffer + 80) == 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::Align(buffer, 1uLL);
    apple::aiml::flatbuffers2::vector_downward::ensure_space(buffer, 1uLL);
    v14 = (*(buffer + 6) - 1);
    *(buffer + 6) = v14;
    *v14 = data_type;
    v15 = (*(buffer + 8) - *(buffer + 12) + *(buffer + 10));
    apple::aiml::flatbuffers2::vector_downward::ensure_space(buffer, 8uLL);
    **(buffer + 7) = v15 | 0x400000000;
    *(buffer + 7) += 8;
    ++*(buffer + 16);
    if (*(buffer + 34) <= 4u)
    {
      v16 = 4;
    }

    else
    {
      v16 = *(buffer + 34);
    }

    *(buffer + 34) = v16;
  }

  if ([(FLTSSUExample *)self data_type]== 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(buffer, v7);
  }

  if ([(FLTSSUExample *)self data_type]== 2)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(buffer, v10);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v13 - v12 + v11);
}

- (FLTBFBufferAccessor)data
{
  data_type = [(FLTSSUExample *)self data_type];
  if (data_type == 2)
  {
    dataAsFLTSSUExampleEncodedVector = [(FLTSSUExample *)self dataAsFLTSSUExampleEncodedVector];
  }

  else if (data_type == 1)
  {
    dataAsFLTSSUExampleEncodedVector = [(FLTSSUExample *)self dataAsFLTSSUExampleUtterance];
  }

  else
  {
    dataAsFLTSSUExampleEncodedVector = 0;
  }

  return dataAsFLTSSUExampleEncodedVector;
}

- (FLTSSUExampleEncodedVector)dataAsFLTSSUExampleEncodedVector
{
  if ([(FLTSSUExample *)self data_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"data"];
    if (!v3)
    {
      v4 = [FLTSSUExampleEncodedVector alloc];
      root = self->_root;
      v6 = &root[-*root->var0];
      if (*v6->var0 >= 7u && (v7 = *v6[6].var0) != 0)
      {
        v8 = &root[v7 + *root[v7].var0];
      }

      else
      {
        v8 = 0;
      }

      v3 = [(FLTSSUExampleEncodedVector *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"data"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLTSSUExampleUtterance)dataAsFLTSSUExampleUtterance
{
  if ([(FLTSSUExample *)self data_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"data"];
    if (!v3)
    {
      v4 = [FLTSSUExampleUtterance alloc];
      root = self->_root;
      v6 = &root[-*root->var0];
      if (*v6->var0 >= 7u && (v7 = *v6[6].var0) != 0)
      {
        v8 = &root[v7 + *root[v7].var0];
      }

      else
      {
        v8 = 0;
      }

      v3 = [(FLTSSUExampleUtterance *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"data"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)data_type
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 5u && (v4 = *v3[4].var0) != 0)
  {
    return root[v4].var0[0];
  }

  else
  {
    return 0;
  }
}

- (FLTSSUExample)initWithFlatbuffData:(id)data root:(const SSUExample *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = FLTSSUExample;
  v10 = [(FLTSSUExample *)&v29 init];
  v11 = v10;
  if (v10)
  {
    if (!dataCopy || ![dataCopy length])
    {
      goto LABEL_16;
    }

    objc_storeStrong(&v10->_data, data);
    if (!root)
    {
      bytes = [(NSData *)v10->_data bytes];
      root = bytes + *bytes;
    }

    v10->_root = root;
    if (verifyCopy)
    {
      bytes2 = [(NSData *)v10->_data bytes];
      v14 = [(NSData *)v10->_data length];
      root = v10->_root;
      if (root < bytes2 || root > bytes2 + v14)
      {
        goto LABEL_16;
      }

      bytes3 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v24 = bytes3;
      v25 = v18;
      v26 = xmmword_1C8C15D50;
      v27 = 0;
      LOBYTE(v28) = 1;
      if (v18 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      v19 = v10->_root;
      if (v19)
      {
        if (!SSUExample::Verify(v19, &v24))
        {
LABEL_16:
          v22 = 0;
          goto LABEL_17;
        }
      }
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    storage = v10->_storage;
    v10->_storage = dictionary;
  }

  v22 = v10;
LABEL_17:

  return v22;
}

+ (int64_t)data_typeForImmutableObject:(id)object
{
  objectCopy = object;
  if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 1;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (Class)data_immutableClassForType:(int64_t)type
{
  if (type == 1)
  {
    v4 = off_1E8323128;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (type == 2)
  {
    v4 = off_1E8323120;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

@end