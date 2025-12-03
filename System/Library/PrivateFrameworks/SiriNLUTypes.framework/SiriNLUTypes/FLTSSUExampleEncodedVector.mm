@interface FLTSSUExampleEncodedVector
- (FLTSSUExampleEncodedVector)initWithFlatbuffData:(id)data root:(const SSUExampleEncodedVector *)root verify:(BOOL)verify;
- (NSArray)data;
- (Offset<SSUExampleEncodedVector>)addObjectToBuffer:(void *)buffer;
- (id)data_objectAtIndex:(unint64_t)index;
- (id)flatbuffData;
- (unint64_t)data_count;
- (void)data_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FLTSSUExampleEncodedVector

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
  v2.var0 = [(FLTSSUExampleEncodedVector *)self addObjectToBuffer:&v5];
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__42__FLTSSUExampleEncodedVector_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1CCA7EC50);
  }

  return result;
}

- (Offset<SSUExampleEncodedVector>)addObjectToBuffer:(void *)buffer
{
  v22 = *MEMORY[0x1E69E9840];
  data = [(FLTSSUExampleEncodedVector *)self data];
  v6 = [data count];
  if (v6)
  {
    if (!(v6 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v6);
    }

    std::vector<std::unique_ptr<siricommon::StringValue>>::__throw_length_error[abi:ne200100]();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  data2 = [(FLTSSUExampleEncodedVector *)self data];
  bufferCopy = buffer;
  if ([data2 countByEnumeratingWithState:&v17 objects:v21 count:16])
  {
    *v18;
    *v18;
    [**(&v17 + 1) floatValue];
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(1uLL);
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(0, 0, 4uLL);
  v8 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(0, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(0);
  MEMORY[0x46] = 1;
  v9 = MEMORY[0x28];
  v10 = *(bufferCopy + 6);
  v11 = *(bufferCopy + 4);
  if (v8)
  {
    v12 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(bufferCopy, v8);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(bufferCopy, 4, v12, 0);
  }

  v13.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(bufferCopy, v11 - v10 + v9);
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)data_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"data"];
  v7 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v9 = &root[-*root->var0];
    if (*v9->var0 >= 5u)
    {
      v10 = *v9[4].var0;
      if (v10)
      {
        v19 = 0;
        v11 = *root[v10].var0;
        v12 = *root[v10 + v11].var0;
        if (v12)
        {
          v13 = 0;
          v14 = 4 * v12 - 4;
          v15 = &root[v10 + 4 + v11];
          do
          {
            LODWORD(v6) = *(v15 + 4 * v13);
            v16 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
            blockCopy[2](blockCopy, v16, v13, &v19);
            v17 = v19;

            if (v17)
            {
              break;
            }

            ++v13;
            v18 = v14;
            v14 -= 4;
          }

          while (v18);
        }
      }
    }
  }
}

- (unint64_t)data_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"data"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 5u && (v8 = *v7[4].var0) != 0)
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

- (id)data_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"data"];
  v7 = v5;
  if (v5)
  {
    v8 = [v5 objectAtIndexedSubscript:index];
LABEL_3:
    v9 = v8;
    goto LABEL_9;
  }

  root = self->_root;
  v11 = &root[-*root->var0];
  if (*v11->var0 >= 5u)
  {
    v12 = *v11[4].var0;
    if (v12)
    {
      v13 = &root[v12 + *root[v12].var0];
      if (*v13->var0 <= index)
      {
        __assert_rtn("Get", "flatbuffers.h", 275, "i < size()");
      }

      LODWORD(v6) = *v13[4 * index + 4].var0;
      v8 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (NSArray)data
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"data"];
  if (!v3)
  {
    array = [MEMORY[0x1E695DF70] array];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __34__FLTSSUExampleEncodedVector_data__block_invoke;
    v6[3] = &unk_1E8328338;
    v3 = array;
    v7 = v3;
    [(FLTSSUExampleEncodedVector *)self data_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"data"];
  }

  return v3;
}

- (FLTSSUExampleEncodedVector)initWithFlatbuffData:(id)data root:(const SSUExampleEncodedVector *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FLTSSUExampleEncodedVector;
  v10 = [(FLTSSUExampleEncodedVector *)&v25 init];
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
  if (v18 && !SSUExampleEncodedVector::Verify(v18, v21))
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