@interface FLTSSUCategory
- (FLTSSUCategory)initWithFlatbuffData:(id)data root:(const SSUCategory *)root verify:(BOOL)verify;
- (NSArray)groups;
- (Offset<SSUCategory>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (id)groups_objectAtIndex:(unint64_t)index;
- (int64_t)type;
- (unint64_t)groups_count;
- (void)groups_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FLTSSUCategory

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
  v2.var0 = [(FLTSSUCategory *)self addObjectToBuffer:&v5];
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__30__FLTSSUCategory_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1CCA7EC50);
  }

  return result;
}

- (Offset<SSUCategory>)addObjectToBuffer:(void *)buffer
{
  v28 = *MEMORY[0x1E69E9840];
  type = [(FLTSSUCategory *)self type];
  groups = [(FLTSSUCategory *)self groups];
  v7 = [groups count];
  if (v7)
  {
    if (!(v7 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v7);
    }

    std::vector<std::unique_ptr<siricommon::StringValue>>::__throw_length_error[abi:ne200100]();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(FLTSSUCategory *)self groups];
  v21 = type;
  if ([obj countByEnumeratingWithState:&v23 objects:v27 count:16])
  {
    *v24;
    *v24;
    [**(&v23 + 1) addObjectToBuffer:{buffer, type}];
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(1uLL);
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v8 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(buffer, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v9 = *(buffer + 8);
  v10 = *(buffer + 12);
  v11 = *(buffer + 10);
  if (v21 || *(buffer + 80) == 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::Align(buffer, 1uLL);
    apple::aiml::flatbuffers2::vector_downward::ensure_space(buffer, 1uLL);
    v12 = *(buffer + 6);
    *(buffer + 6) = v12 - 1;
    *(v12 - 1) = v21;
    v14 = *(buffer + 5);
    v13 = *(buffer + 6);
    v15 = *(buffer + 4);
    apple::aiml::flatbuffers2::vector_downward::ensure_space(buffer, 8uLL);
    **(buffer + 7) = (v15 - v13 + v14) | 0x400000000;
    *(buffer + 7) += 8;
    ++*(buffer + 16);
    v16 = *(buffer + 34);
    if (v16 <= 4)
    {
      LOWORD(v16) = 4;
    }

    *(buffer + 34) = v16;
  }

  if (v8)
  {
    v17 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(buffer, v8);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, v17, 0);
  }

  v18.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v9 - v10 + v11);
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)groups_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"groups"];
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
            v15 = [[FLTSSUCategoryGroup alloc] initWithFlatbuffData:self->_data root:&v14[*v14->var0] verify:0];
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

- (unint64_t)groups_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"groups"];
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

- (id)groups_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"groups"];
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

      v7 = [[FLTSSUCategoryGroup alloc] initWithFlatbuffData:self->_data root:&v12[4 * index + 4 + *v12[4 * index + 4].var0] verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (NSArray)groups
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"groups"];
  if (!v3)
  {
    array = [MEMORY[0x1E695DF70] array];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __24__FLTSSUCategory_groups__block_invoke;
    v6[3] = &unk_1E8328338;
    v3 = array;
    v7 = v3;
    [(FLTSSUCategory *)self groups_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"groups"];
  }

  return v3;
}

- (int64_t)type
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

- (FLTSSUCategory)initWithFlatbuffData:(id)data root:(const SSUCategory *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FLTSSUCategory;
  v10 = [(FLTSSUCategory *)&v25 init];
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
  if (v18 && !SSUCategory::Verify(v18, v21))
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