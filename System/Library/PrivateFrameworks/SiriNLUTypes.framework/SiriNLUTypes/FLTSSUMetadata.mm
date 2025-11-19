@interface FLTSSUMetadata
- (FLTSSUMetadata)initWithFlatbuffData:(id)a3 root:(const SSUMetadata *)a4 verify:(BOOL)a5;
- (NSArray)user_data;
- (NSString)data_version;
- (NSString)encoder_version;
- (Offset<SSUMetadata>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (id)user_data_objectAtIndex:(unint64_t)a3;
- (int64_t)timestamp;
- (unint64_t)user_data_count;
- (void)user_data_enumerateObjectsUsingBlock:(id)a3;
@end

@implementation FLTSSUMetadata

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
  v2.var0 = [(FLTSSUMetadata *)self addObjectToBuffer:&v5];
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__30__FLTSSUMetadata_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1CCA7EC50);
  }

  return result;
}

- (Offset<SSUMetadata>)addObjectToBuffer:(void *)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = [(FLTSSUMetadata *)self data_version];
  v4 = v3;
  if (!v3)
  {
    v3 = &stru_1F487A568;
  }

  v5 = [(__CFString *)v3 UTF8String];
  v6 = strlen(v5);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v5, v6);

  v31 = [(FLTSSUMetadata *)self timestamp];
  v7 = [(FLTSSUMetadata *)self user_data];
  v8 = [v7 count];
  if (v8)
  {
    if (!(v8 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v8);
    }

    std::vector<std::unique_ptr<siricommon::StringValue>>::__throw_length_error[abi:ne200100]();
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = [(FLTSSUMetadata *)self user_data];
  if ([v9 countByEnumeratingWithState:&v34 objects:v38 count:16])
  {
    *v35;
    *v35;
    v10 = [**(&v34 + 1) UTF8String];
    v11 = strlen(v10);
    apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v10, v11);
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(1uLL);
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(a3, 0, 4uLL);
  v12 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(a3, 0);
  v13 = [(FLTSSUMetadata *)self encoder_version];
  v14 = v13;
  if (!v13)
  {
    v13 = &stru_1F487A568;
  }

  v15 = [(__CFString *)v13 UTF8String];
  v16 = strlen(v15);
  v17 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v15, v16);

  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v18 = *(a3 + 8);
  v19 = *(a3 + 12);
  v20 = *(a3 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, String);
  v21 = a3;
  if (v31 || *(a3 + 80) == 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::Align(a3, 8uLL);
    apple::aiml::flatbuffers2::vector_downward::ensure_space(a3, 8uLL);
    v22 = *(a3 + 6);
    *(v22 - 8) = v31;
    v22 -= 8;
    *(a3 + 6) = v22;
    v24 = *(a3 + 4);
    v23 = *(a3 + 5);
    apple::aiml::flatbuffers2::vector_downward::ensure_space(a3, 8uLL);
    **(a3 + 7) = (v24 - v22 + v23) | 0x600000000;
    *(a3 + 7) += 8;
    ++*(a3 + 16);
    v25 = *(a3 + 34);
    if (v25 <= 6)
    {
      LOWORD(v25) = 6;
    }

    v21 = a3;
    *(a3 + 34) = v25;
  }

  if (v12)
  {
    v26 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(v21, v12);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 8, v26, 0);
    v21 = a3;
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(v21, 10, v17);
  v27.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v18 - v19 + v20);
  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

- (NSString)encoder_version
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 10].var0;
  if (*root[-v3 + 10].var0)
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

- (void)user_data_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"user_data"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:v4];
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
            v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v14[*v14->var0 + 4] length:*v14[*v14->var0].var0 encoding:4];
            v4[2](v4, v15, v12, &v18);
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

- (unint64_t)user_data_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"user_data"];
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

- (id)user_data_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"user_data"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectAtIndexedSubscript:a3];
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
      if (*v12->var0 <= a3)
      {
        __assert_rtn("Get", "flatbuffers.h", 275, "i < size()");
      }

      var0 = v12[4 * a3 + 4 + *v12[4 * a3 + 4].var0].var0;
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:var0 + 1 length:*var0 encoding:4];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (NSArray)user_data
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"user_data"];
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __27__FLTSSUMetadata_user_data__block_invoke;
    v6[3] = &unk_1E8328338;
    v3 = v4;
    v7 = v3;
    [(FLTSSUMetadata *)self user_data_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"user_data"];
  }

  return v3;
}

- (int64_t)timestamp
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 7u && (v4 = *v3[6].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSString)data_version
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

- (FLTSSUMetadata)initWithFlatbuffData:(id)a3 root:(const SSUMetadata *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FLTSSUMetadata;
  v10 = [(FLTSSUMetadata *)&v25 init];
  if (!v10)
  {
    goto LABEL_14;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_15;
  }

  objc_storeStrong(&v10->_data, a3);
  if (!a4)
  {
    v11 = [(NSData *)v10->_data bytes];
    a4 = v11 + *v11;
  }

  v10->_root = a4;
  if (!v5)
  {
    goto LABEL_14;
  }

  v12 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < v12 || root > v12 + v13)
  {
    goto LABEL_15;
  }

  v16 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = v16;
  v21[1] = v17;
  v22 = xmmword_1C8C15D50;
  v23 = 0;
  v24 = 1;
  if (v17 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v18 = v10->_root;
  if (v18 && !SSUMetadata::Verify(v18, v21))
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