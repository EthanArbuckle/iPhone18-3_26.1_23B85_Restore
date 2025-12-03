@interface FLTSSUFile
- (FLTSSUFile)initWithFlatbuffData:(id)data root:(const SSUFile *)root verify:(BOOL)verify;
- (FLTSSUMetadata)metadata;
- (NSArray)categories;
- (NSString)locale;
- (Offset<SSUFile>)addObjectToBuffer:(void *)buffer;
- (id)categories_objectAtIndex:(unint64_t)index;
- (id)flatbuffData;
- (unint64_t)categories_count;
- (unsigned)format_version;
- (void)categories_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FLTSSUFile

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
  v2.var0 = [(FLTSSUFile *)self addObjectToBuffer:&v5];
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__26__FLTSSUFile_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1CCA7EC50);
  }

  return result;
}

- (Offset<SSUFile>)addObjectToBuffer:(void *)buffer
{
  v35 = *MEMORY[0x1E69E9840];
  format_version = [(FLTSSUFile *)self format_version];
  metadata = [(FLTSSUFile *)self metadata];
  v27 = [metadata addObjectToBuffer:buffer];

  locale = [(FLTSSUFile *)self locale];
  v7 = locale;
  if (!locale)
  {
    locale = &stru_1F487A568;
  }

  uTF8String = [(__CFString *)locale UTF8String];
  v9 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v9);

  categories = [(FLTSSUFile *)self categories];
  v11 = [categories count];
  if (v11)
  {
    if (!(v11 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v11);
    }

    std::vector<std::unique_ptr<siricommon::StringValue>>::__throw_length_error[abi:ne200100]();
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(FLTSSUFile *)self categories];
  if ([obj countByEnumeratingWithState:&v30 objects:v34 count:16])
  {
    *v31;
    *v31;
    [**(&v30 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(1uLL);
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v12 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(buffer, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v13 = *(buffer + 8);
  v14 = *(buffer + 12);
  v15 = *(buffer + 10);
  bufferCopy = buffer;
  if (format_version || *(buffer + 80) == 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::Align(buffer, 2uLL);
    apple::aiml::flatbuffers2::vector_downward::ensure_space(buffer, 2uLL);
    v17 = *(buffer + 6);
    *(v17 - 2) = format_version;
    v17 -= 2;
    *(buffer + 6) = v17;
    v19 = *(buffer + 4);
    v18 = *(bufferCopy + 5);
    apple::aiml::flatbuffers2::vector_downward::ensure_space(bufferCopy, 8uLL);
    **(bufferCopy + 7) = (v19 - v17 + v18) | 0x400000000;
    *(bufferCopy + 7) += 8;
    ++*(bufferCopy + 16);
    v20 = *(bufferCopy + 34);
    if (v20 <= 4)
    {
      LOWORD(v20) = 4;
    }

    *(bufferCopy + 34) = v20;
  }

  if (v27)
  {
    v21 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(bufferCopy, v27);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(bufferCopy, 6, v21, 0);
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(bufferCopy, 8, String);
  if (v12)
  {
    v22 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(bufferCopy, v12);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(bufferCopy, 10, v22, 0);
  }

  v23.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(bufferCopy, v13 - v14 + v15);
  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (void)categories_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"categories"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 0xBu)
    {
      v9 = *v8[10].var0;
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
            v15 = [[FLTSSUCategory alloc] initWithFlatbuffData:self->_data root:&v14[*v14->var0] verify:0];
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

- (unint64_t)categories_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"categories"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 0xBu && (v8 = *v7[10].var0) != 0)
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

- (id)categories_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"categories"];
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
  if (*v10->var0 >= 0xBu)
  {
    v11 = *v10[10].var0;
    if (v11)
    {
      v12 = &root[v11 + *root[v11].var0];
      if (*v12->var0 <= index)
      {
        __assert_rtn("Get", "flatbuffers.h", 275, "i < size()");
      }

      v7 = [[FLTSSUCategory alloc] initWithFlatbuffData:self->_data root:&v12[4 * index + 4 + *v12[4 * index + 4].var0] verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (NSArray)categories
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"categories"];
  if (!v3)
  {
    array = [MEMORY[0x1E695DF70] array];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __24__FLTSSUFile_categories__block_invoke;
    v6[3] = &unk_1E8328338;
    v3 = array;
    v7 = v3;
    [(FLTSSUFile *)self categories_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"categories"];
  }

  return v3;
}

- (NSString)locale
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 8].var0;
  if (*root[-v3 + 8].var0)
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

- (FLTSSUMetadata)metadata
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"metadata"];
  if (!v3)
  {
    v4 = [FLTSSUMetadata alloc];
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

    v3 = [(FLTSSUMetadata *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"metadata"];
  }

  return v3;
}

- (unsigned)format_version
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 5u && (v4 = *v3[4].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (FLTSSUFile)initWithFlatbuffData:(id)data root:(const SSUFile *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v34.receiver = self;
  v34.super_class = FLTSSUFile;
  v10 = [(FLTSSUFile *)&v34 init];
  if (!v10)
  {
    goto LABEL_37;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_38;
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
    goto LABEL_37;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v13)
  {
    goto LABEL_38;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v29 = bytes3;
  v30 = v17;
  v31 = xmmword_1C8C15D50;
  v32 = 0;
  v33 = 1;
  if (v17 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v18 = v10->_root;
  if (!v18)
  {
    goto LABEL_37;
  }

  if (!apple::aiml::flatbuffers2::Verifier::VerifyTableStart(&v29, v10->_root->var0))
  {
    goto LABEL_38;
  }

  v19 = (v18 - *v18);
  v20 = *v19;
  if (v20 >= 5 && v19[2] && (v30 < 3 || v30 - 2 < v18 + v19[2] - v29))
  {
    goto LABEL_38;
  }

  if (!apple::aiml::flatbuffers2::Table::VerifyOffset(v18, &v29, 6u) || v20 >= 7 && v19[3] && !SSUMetadata::Verify(v18 + v19[3] + *(v18 + v19[3]), &v29) || !apple::aiml::flatbuffers2::Table::VerifyOffset(v18, &v29, 8u))
  {
    goto LABEL_38;
  }

  v21 = (v18 - *v18);
  if (*v21 >= 9u && (v22 = v21[4]) != 0)
  {
    v23 = v18 + v22 + *(v18 + v22);
  }

  else
  {
    v23 = 0;
  }

  if (!apple::aiml::flatbuffers2::Verifier::VerifyString(&v29, v23) || !apple::aiml::flatbuffers2::Table::VerifyOffset(v18, &v29, 0xAu))
  {
    goto LABEL_38;
  }

  v24 = *v18;
  if (*(v18 - v24) < 0xBu)
  {
    goto LABEL_35;
  }

  if (*(v18 - v24 + 10))
  {
    if (apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(&v29, v18 + *(v18 - v24 + 10) + *(v18 + *(v18 - v24 + 10)), 4uLL, 0))
    {
      v24 = *v18;
      if (*(v18 - v24) < 0xBu)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_38:
    v27 = 0;
    goto LABEL_39;
  }

LABEL_33:
  v25 = *(v18 - v24 + 10);
  if (v25)
  {
    v26 = v18 + v25 + *(v18 + v25);
    goto LABEL_36;
  }

LABEL_35:
  v26 = 0;
LABEL_36:
  if (!apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<SSUCategory>(&v29, v26))
  {
    goto LABEL_38;
  }

LABEL_37:
  v27 = v10;
LABEL_39:

  return v27;
}

@end