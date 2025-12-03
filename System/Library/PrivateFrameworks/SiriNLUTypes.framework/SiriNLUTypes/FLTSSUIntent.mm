@interface FLTSSUIntent
- (FLTSSUIntent)initWithFlatbuffData:(id)data root:(const SSUIntent *)root verify:(BOOL)verify;
- (NSArray)examples;
- (NSArray)parameters;
- (NSString)name;
- (Offset<SSUIntent>)addObjectToBuffer:(void *)buffer;
- (id)examples_objectAtIndex:(unint64_t)index;
- (id)flatbuffData;
- (id)parameters_objectAtIndex:(unint64_t)index;
- (unint64_t)examples_count;
- (unint64_t)parameters_count;
- (void)examples_enumerateObjectsUsingBlock:(id)block;
- (void)parameters_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FLTSSUIntent

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
  v2.var0 = [(FLTSSUIntent *)self addObjectToBuffer:&v5];
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__28__FLTSSUIntent_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1CCA7EC50);
  }

  return result;
}

- (Offset<SSUIntent>)addObjectToBuffer:(void *)buffer
{
  v49 = *MEMORY[0x1E69E9840];
  name = [(FLTSSUIntent *)self name];
  v5 = name;
  if (!name)
  {
    name = &stru_1F487A568;
  }

  uTF8String = [(__CFString *)name UTF8String];
  v7 = strlen(uTF8String);
  LODWORD(v33) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v7);

  parameters = [(FLTSSUIntent *)self parameters];
  v9 = [parameters count];
  if (v9)
  {
    if (!(v9 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v9);
    }

    std::vector<std::unique_ptr<siricommon::StringValue>>::__throw_length_error[abi:ne200100]();
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  parameters2 = [(FLTSSUIntent *)self parameters];
  if ([parameters2 countByEnumeratingWithState:&v43 objects:v48 count:16])
  {
    *v44;
    *v44;
    [**(&v43 + 1) addObjectToBuffer:{buffer, v33}];
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(1uLL);
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  HIDWORD(v33) = apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(buffer, 0);
  v40 = 0;
  v41 = 0;
  v42 = 0;
  examples = [(FLTSSUIntent *)self examples];
  std::vector<apple::aiml::flatbuffers2::Offset<SSUExample>>::reserve(&v40, [examples count]);

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [(FLTSSUIntent *)self examples];
  v12 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
  v13 = v40;
  if (v12)
  {
    v14 = *v37;
    v15 = v41;
    v16 = v42;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v18 = [*(*(&v36 + 1) + 8 * i) addObjectToBuffer:{buffer, v33}];
        v19 = v18;
        if (v15 >= v16)
        {
          v20 = v15 - v13;
          v21 = (v15 - v13) >> 2;
          v22 = v21 + 1;
          if ((v21 + 1) >> 62)
          {
            v41 = v15;
            v42 = v16;
            v40 = v13;
            std::vector<std::unique_ptr<siricommon::StringValue>>::__throw_length_error[abi:ne200100]();
          }

          if ((v16 - v13) >> 1 > v22)
          {
            v22 = (v16 - v13) >> 1;
          }

          if (v16 - v13 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v23 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v22;
          }

          if (v23)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v23);
          }

          v16 = 0;
          *(4 * v21) = v19;
          v15 = (4 * v21 + 4);
          memcpy(0, v13, v20);
          if (v13)
          {
            operator delete(v13);
          }

          v13 = 0;
        }

        else
        {
          *v15 = v18;
          v15 += 4;
        }
      }

      v41 = v15;
      v42 = v16;
      v40 = v13;
      v12 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
    }

    while (v12);
  }

  else
  {
    v15 = v41;
  }

  if (v15 == v13)
  {
    v24 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<SSUExample>,std::allocator<apple::aiml::flatbuffers2::Offset<SSUExample>>>(std::vector<apple::aiml::flatbuffers2::Offset<SSUExample>> const&)::t;
  }

  else
  {
    v24 = v13;
  }

  v25 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<SSUExample>(buffer, v24, (v15 - v13) >> 2);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v26 = *(buffer + 8);
  v27 = *(buffer + 12);
  v28 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, v33);
  if (HIDWORD(v33))
  {
    v29 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(buffer, HIDWORD(v33));
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, v29, 0);
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<apple::aiml::flatbuffers2::Offset<SSUExample>>>(buffer, v25);
  v30.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v26 - v27 + v28);
  if (v13)
  {
    v41 = v13;
    operator delete(v13);
  }

  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

- (void)examples_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"examples"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 9u)
    {
      v9 = *v8[8].var0;
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
            v15 = [[FLTSSUExample alloc] initWithFlatbuffData:self->_data root:&v14[*v14->var0] verify:0];
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

- (unint64_t)examples_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"examples"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 9u && (v8 = *v7[8].var0) != 0)
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

- (id)examples_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"examples"];
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
  if (*v10->var0 >= 9u)
  {
    v11 = *v10[8].var0;
    if (v11)
    {
      v12 = &root[v11 + *root[v11].var0];
      if (*v12->var0 <= index)
      {
        __assert_rtn("Get", "flatbuffers.h", 275, "i < size()");
      }

      v7 = [[FLTSSUExample alloc] initWithFlatbuffData:self->_data root:&v12[4 * index + 4 + *v12[4 * index + 4].var0] verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (NSArray)examples
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"examples"];
  if (!v3)
  {
    array = [MEMORY[0x1E695DF70] array];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __24__FLTSSUIntent_examples__block_invoke;
    v6[3] = &unk_1E8328338;
    v3 = array;
    v7 = v3;
    [(FLTSSUIntent *)self examples_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"examples"];
  }

  return v3;
}

- (void)parameters_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"parameters"];
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
            v15 = [[FLTSSUIntentParameter alloc] initWithFlatbuffData:self->_data root:&v14[*v14->var0] verify:0];
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

- (unint64_t)parameters_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"parameters"];
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

- (id)parameters_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"parameters"];
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

      v7 = [[FLTSSUIntentParameter alloc] initWithFlatbuffData:self->_data root:&v12[4 * index + 4 + *v12[4 * index + 4].var0] verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (NSArray)parameters
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"parameters"];
  if (!v3)
  {
    array = [MEMORY[0x1E695DF70] array];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __26__FLTSSUIntent_parameters__block_invoke;
    v6[3] = &unk_1E8328338;
    v3 = array;
    v7 = v3;
    [(FLTSSUIntent *)self parameters_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"parameters"];
  }

  return v3;
}

- (NSString)name
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 4].var0;
  if (*root[-v3 + 4].var0)
  {
    v3 = *root[v4].var0;
    v5 = &root[v4 + v3];
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = v3;
  }

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

  return v6;
}

- (FLTSSUIntent)initWithFlatbuffData:(id)data root:(const SSUIntent *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FLTSSUIntent;
  v10 = [(FLTSSUIntent *)&v25 init];
  if (!v10)
  {
    goto LABEL_14;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_15;
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
    goto LABEL_14;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v13)
  {
    goto LABEL_15;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = bytes3;
  v21[1] = v17;
  v22 = xmmword_1C8C15D50;
  v23 = 0;
  v24 = 1;
  if (v17 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v18 = v10->_root;
  if (v18 && !SSUIntent::Verify(v18, v21))
  {
LABEL_15:
    v19 = 0;
  }

  else
  {
LABEL_14:
    v19 = v10;
  }

  return v19;
}

@end