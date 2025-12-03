@interface FLTCDMCATISwiftBloomFilter
- (FLTCDMCATISwiftBitVector)bit_vector;
- (FLTCDMCATISwiftBloomFilter)initWithFlatbuffData:(id)data root:(const CDMCATISwiftBloomFilter *)root verify:(BOOL)verify;
- (NSString)name;
- (Offset<CDMCATISwiftBloomFilter>)addObjectToBuffer:(void *)buffer;
- (double)false_positive_rate;
- (id)flatbuffData;
- (unint64_t)number_of_bits;
- (unint64_t)number_of_hashes;
- (unint64_t)seed;
- (unsigned)expected_items_buffer;
- (unsigned)expected_number_of_items;
- (unsigned)number_of_items;
@end

@implementation FLTCDMCATISwiftBloomFilter

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
  v2.var0 = [(FLTCDMCATISwiftBloomFilter *)self addObjectToBuffer:&v5];
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__42__FLTCDMCATISwiftBloomFilter_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1CCA7EC50);
  }

  return result;
}

- (Offset<CDMCATISwiftBloomFilter>)addObjectToBuffer:(void *)buffer
{
  bit_vector = [(FLTCDMCATISwiftBloomFilter *)self bit_vector];
  v6 = [bit_vector addObjectToBuffer:buffer];

  number_of_bits = [(FLTCDMCATISwiftBloomFilter *)self number_of_bits];
  number_of_hashes = [(FLTCDMCATISwiftBloomFilter *)self number_of_hashes];
  seed = [(FLTCDMCATISwiftBloomFilter *)self seed];
  expected_number_of_items = [(FLTCDMCATISwiftBloomFilter *)self expected_number_of_items];
  [(FLTCDMCATISwiftBloomFilter *)self false_positive_rate];
  v12 = v11;
  name = [(FLTCDMCATISwiftBloomFilter *)self name];
  v14 = name;
  if (!name)
  {
    name = &stru_1F487A568;
  }

  uTF8String = [(__CFString *)name UTF8String];
  v16 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v16);

  number_of_items = [(FLTCDMCATISwiftBloomFilter *)self number_of_items];
  expected_items_buffer = [(FLTCDMCATISwiftBloomFilter *)self expected_items_buffer];
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v19 = *(buffer + 5);
  v18 = *(buffer + 6);
  v20 = *(buffer + 4);
  if (v6)
  {
    v21 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(buffer, v6);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 4, v21, 0);
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned long long>(buffer, 6, number_of_bits);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned long long>(buffer, 8, number_of_hashes);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned long long>(buffer, 10, seed);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 12, expected_number_of_items, 0);
  if (v12 != 0.0 || *(buffer + 80) == 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::Align(buffer, 8uLL);
    apple::aiml::flatbuffers2::vector_downward::ensure_space(buffer, 8uLL);
    v22 = *(buffer + 6);
    *(v22 - 8) = v12;
    v22 -= 8;
    *(buffer + 6) = v22;
    v23 = (*(buffer + 8) - v22 + *(buffer + 10));
    apple::aiml::flatbuffers2::vector_downward::ensure_space(buffer, 8uLL);
    **(buffer + 7) = v23 | 0xE00000000;
    *(buffer + 7) += 8;
    ++*(buffer + 16);
    v24 = *(buffer + 34);
    if (v24 <= 0xE)
    {
      LOWORD(v24) = 14;
    }

    *(buffer + 34) = v24;
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 16, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 18, number_of_items, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 20, expected_items_buffer, 1234);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v20 - v18 + v19);
}

- (unsigned)expected_items_buffer
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x15u && (v4 = *v3[20].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 1234;
  }
}

- (unsigned)number_of_items
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x13u && (v4 = *v3[18].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSString)name
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 16].var0;
  if (*root[-v3 + 16].var0)
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

- (double)false_positive_rate
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 0xFu)
  {
    v5 = *v3[14].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (unsigned)expected_number_of_items
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0xDu && (v4 = *v3[12].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)seed
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0xBu && (v4 = *v3[10].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)number_of_hashes
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 9u && (v4 = *v3[8].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)number_of_bits
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

- (FLTCDMCATISwiftBitVector)bit_vector
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"bit_vector"];
  if (!v3)
  {
    v4 = [FLTCDMCATISwiftBitVector alloc];
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

    v3 = [(FLTCDMCATISwiftBitVector *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"bit_vector"];
  }

  return v3;
}

- (FLTCDMCATISwiftBloomFilter)initWithFlatbuffData:(id)data root:(const CDMCATISwiftBloomFilter *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FLTCDMCATISwiftBloomFilter;
  v10 = [(FLTCDMCATISwiftBloomFilter *)&v25 init];
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
  if (v18 && !CDMCATISwiftBloomFilter::Verify(v18, v21))
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