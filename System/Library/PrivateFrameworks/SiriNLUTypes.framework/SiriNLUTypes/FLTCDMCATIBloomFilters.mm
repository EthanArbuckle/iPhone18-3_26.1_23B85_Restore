@interface FLTCDMCATIBloomFilters
- (FLTCDMCATIBloomFilters)initWithFlatbuffData:(id)data root:(const CDMCATIBloomFilters *)root verify:(BOOL)verify;
- (FLTCDMCATISwiftBloomFilter)general_bf;
- (NSArray)array_bf;
- (Offset<CDMCATIBloomFilters>)addObjectToBuffer:(void *)buffer;
- (id)array_bf_objectAtIndex:(unint64_t)index;
- (id)flatbuffData;
- (unint64_t)array_bf_count;
- (void)array_bf_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FLTCDMCATIBloomFilters

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
  v2.var0 = [(FLTCDMCATIBloomFilters *)self addObjectToBuffer:&v5];
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__38__FLTCDMCATIBloomFilters_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1CCA7EC50);
  }

  return result;
}

- (Offset<CDMCATIBloomFilters>)addObjectToBuffer:(void *)buffer
{
  v25 = *MEMORY[0x1E69E9840];
  general_bf = [(FLTCDMCATIBloomFilters *)self general_bf];
  v6 = [general_bf addObjectToBuffer:buffer];

  array_bf = [(FLTCDMCATIBloomFilters *)self array_bf];
  v8 = [array_bf count];
  if (v8)
  {
    if (!(v8 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v8);
    }

    std::vector<std::unique_ptr<siricommon::StringValue>>::__throw_length_error[abi:ne200100]();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(FLTCDMCATIBloomFilters *)self array_bf];
  v18 = v6;
  if ([obj countByEnumeratingWithState:&v20 objects:v24 count:16])
  {
    *v21;
    *v21;
    [**(&v20 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(1uLL);
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v9 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(buffer, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v10 = *(buffer + 8);
  v11 = *(buffer + 12);
  v12 = *(buffer + 10);
  if (v18)
  {
    v13 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(buffer, v18);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 4, v13, 0);
  }

  if (v9)
  {
    v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(buffer, v9);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, v14, 0);
  }

  v15.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v10 - v11 + v12);
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)array_bf_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"array_bf"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 7u)
    {
      v9 = *v8[6].var0;
      if (v9)
      {
        v18 = 0;
        v10 = *root[v9].var0;
        v11 = *root[v9 + v10].var0;
        if (v11)
        {
          v12 = 0;
          v13 = 4 * v11 - 4;
          v14 = &root[v10 + 4 + v9];
          do
          {
            v15 = [[FLTCDMCATISwiftBloomFilter alloc] initWithFlatbuffData:self->_data root:&v14[*v14->var0] verify:0];
            blockCopy[2](blockCopy, v15, v12, &v18);
            v16 = v18;

            if (v16)
            {
              break;
            }

            ++v12;
            v17 = v13;
            v13 -= 4;
            v14 += 4;
          }

          while (v17);
        }
      }
    }
  }
}

- (unint64_t)array_bf_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"array_bf"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 7u && (v8 = *v7[6].var0) != 0)
    {
      v5 = *root[v8 + *root[v8].var0].var0;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)array_bf_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"array_bf"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectAtIndexedSubscript:index];
LABEL_3:
    v8 = v7;
    goto LABEL_9;
  }

  root = self->_root;
  v10 = &root[-*root->var0];
  if (*v10->var0 >= 7u)
  {
    v11 = *v10[6].var0;
    if (v11)
    {
      v12 = &root[v11 + *root[v11].var0];
      if (*v12->var0 <= index)
      {
        __assert_rtn("Get", "flatbuffers.h", 275, "i < size()");
      }

      v7 = [[FLTCDMCATISwiftBloomFilter alloc] initWithFlatbuffData:self->_data root:&v12[4 * index + 4 + *v12[4 * index + 4].var0] verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (NSArray)array_bf
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"array_bf"];
  if (!v3)
  {
    array = [MEMORY[0x1E695DF70] array];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __34__FLTCDMCATIBloomFilters_array_bf__block_invoke;
    v6[3] = &unk_1E8328338;
    v3 = array;
    v7 = v3;
    [(FLTCDMCATIBloomFilters *)self array_bf_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"array_bf"];
  }

  return v3;
}

- (FLTCDMCATISwiftBloomFilter)general_bf
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"general_bf"];
  if (!v3)
  {
    v4 = [FLTCDMCATISwiftBloomFilter alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 5u && (v7 = *v6[4].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FLTCDMCATISwiftBloomFilter *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"general_bf"];
  }

  return v3;
}

- (FLTCDMCATIBloomFilters)initWithFlatbuffData:(id)data root:(const CDMCATIBloomFilters *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v32.receiver = self;
  v32.super_class = FLTCDMCATIBloomFilters;
  v10 = [(FLTCDMCATIBloomFilters *)&v32 init];
  if (!v10)
  {
    goto LABEL_28;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_29;
  }

  objc_storeStrong(&v10->_data, data);
  if (!root)
  {
    bytes = [(NSData *)v10->_data bytes];
    root = bytes + *bytes;
  }

  v10->_root = root;
  if (!verifyCopy)
  {
    goto LABEL_28;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v13)
  {
    goto LABEL_29;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v28[0] = bytes3;
  v28[1] = v17;
  v29 = xmmword_1C8C15D50;
  v30 = 0;
  v31 = 1;
  if (v17 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v18 = v10->_root;
  if (!v18)
  {
    goto LABEL_28;
  }

  if (!apple::aiml::flatbuffers2::Verifier::VerifyTableStart(v28, v10->_root->var0))
  {
    goto LABEL_29;
  }

  if (!apple::aiml::flatbuffers2::Table::VerifyOffset(v18, v28, 4u))
  {
    goto LABEL_29;
  }

  v19 = (v18 - *v18);
  if (*v19 >= 5u)
  {
    v20 = v19[2];
    if (v20)
    {
      if (!CDMCATISwiftBloomFilter::Verify(v18 + v20 + *(v18 + v20), v28))
      {
        goto LABEL_29;
      }
    }
  }

  if (!apple::aiml::flatbuffers2::Table::VerifyOffset(v18, v28, 6u))
  {
    goto LABEL_29;
  }

  v21 = *v18;
  if (*(v18 - v21) < 7u)
  {
    goto LABEL_28;
  }

  if (*(v18 - v21 + 6))
  {
    if (apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(v28, v18 + *(v18 - v21 + 6) + *(v18 + *(v18 - v21 + 6)), 4uLL, 0))
    {
      v21 = *v18;
      if (*(v18 - v21) < 7u)
      {
        goto LABEL_28;
      }

      goto LABEL_23;
    }

LABEL_29:
    v26 = 0;
    goto LABEL_30;
  }

LABEL_23:
  v22 = *(v18 - v21 + 6);
  if (v22)
  {
    v23 = v18 + v22 + *(v18 + v22);
    if (*v23->var0)
    {
      v24 = 0;
      v25 = v23 + 4;
      while (CDMCATISwiftBloomFilter::Verify(&v25[*v25->var0], v28))
      {
        ++v24;
        v25 += 4;
        if (v24 >= *v23->var0)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_29;
    }
  }

LABEL_28:
  v26 = v10;
LABEL_30:

  return v26;
}

@end