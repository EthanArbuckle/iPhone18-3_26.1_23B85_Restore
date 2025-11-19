@interface FLTCDMCATISwiftBitVector
- (FLTCDMCATISwiftBitVector)initWithFlatbuffData:(id)a3 root:(const CDMCATISwiftBitVector *)a4 verify:(BOOL)a5;
- (Offset<CDMCATISwiftBitVector>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (unint64_t)bit_shift;
- (unint64_t)bits_per_block;
- (unint64_t)number_of_bits;
- (unint64_t)number_of_bytes;
- (void)data:(id)a3;
@end

@implementation FLTCDMCATISwiftBitVector

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
  v2.var0 = [(FLTCDMCATISwiftBitVector *)self addObjectToBuffer:&v5];
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__40__FLTCDMCATISwiftBitVector_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1CCA7EC50);
  }

  return result;
}

- (Offset<CDMCATISwiftBitVector>)addObjectToBuffer:(void *)a3
{
  v5 = [(FLTCDMCATISwiftBitVector *)self number_of_bits];
  v6 = [(FLTCDMCATISwiftBitVector *)self number_of_bytes];
  v7 = [(FLTCDMCATISwiftBitVector *)self bits_per_block];
  v8 = [(FLTCDMCATISwiftBitVector *)self bit_shift];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3812000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = &unk_1C8C7BBAF;
  v23 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__FLTCDMCATISwiftBitVector_addObjectToBuffer___block_invoke;
  v16[3] = &unk_1E8328360;
  v16[4] = &v17;
  v16[5] = a3;
  [(FLTCDMCATISwiftBitVector *)self data:v16];
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v9 = *(a3 + 8);
  v10 = *(a3 + 12);
  v11 = *(a3 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned long long>(a3, 4, v5);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned long long>(a3, 6, v6);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned long long>(a3, 8, v7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned long long>(a3, 10, v8);
  v12 = *(v18 + 12);
  if (v12)
  {
    v13 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(a3, v12);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 12, v13, 0);
  }

  v14.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v9 - v10 + v11);
  _Block_object_dispose(&v17, 8);
  return v14;
}

uint64_t __46__FLTCDMCATISwiftBitVector_addObjectToBuffer___block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  v6 = *(a1 + 40);
  v7 = a3;
  apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(v6, a3, 1uLL);
  if (a3)
  {
    apple::aiml::flatbuffers2::vector_downward::ensure_space(v6, v7);
    v8 = (*(v6 + 6) - v7);
    *(v6 + 6) = v8;
    memcpy(v8, a2, v7);
  }

  else
  {
    LODWORD(v7) = 0;
  }

  result = apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(v6, v7);
  *(*(*(a1 + 32) + 8) + 48) = result;
  return result;
}

- (void)data:(id)a3
{
  root = self->_root;
  v5 = &root[-*root->var0];
  v6 = a3;
  v7 = *root[*v5[12].var0 + *root[*v5[12].var0].var0].var0;
  v8 = v6;
  (*(a3 + 2))();
}

- (unint64_t)bit_shift
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

- (unint64_t)bits_per_block
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

- (unint64_t)number_of_bytes
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

- (unint64_t)number_of_bits
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

- (FLTCDMCATISwiftBitVector)initWithFlatbuffData:(id)a3 root:(const CDMCATISwiftBitVector *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FLTCDMCATISwiftBitVector;
  v10 = [(FLTCDMCATISwiftBitVector *)&v25 init];
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
  if (v18 && !CDMCATISwiftBitVector::Verify(v18, v21))
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