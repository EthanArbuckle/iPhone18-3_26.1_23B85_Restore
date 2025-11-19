@interface FTWord
- (FTWord)initWithFlatbuffData:(id)a3 root:(const Word *)a4 verify:(BOOL)a5;
- (NSString)orthography;
- (NSString)tag;
- (Offset<siri::speech::schema_fb::Word>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (int)frequency;
- (void)pronunciations:(id)a3;
@end

@implementation FTWord

- (FTWord)initWithFlatbuffData:(id)a3 root:(const Word *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTWord;
  v10 = [(FTWord *)&v25 init];
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_14;
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
    goto LABEL_13;
  }

  v12 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < v12 || root > v12 + v13)
  {
    goto LABEL_14;
  }

  v16 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = v16;
  v21[1] = v17;
  v22 = xmmword_233005E20;
  v23 = 0;
  v24 = 1;
  v18 = v10->_root;
  if (!v18)
  {
    goto LABEL_13;
  }

  if (!siri::speech::schema_fb::Word::Verify(v18, v21))
  {
LABEL_14:
    v19 = 0;
  }

  else
  {
LABEL_13:
    v19 = v10;
  }

  return v19;
}

- (NSString)orthography
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

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

  return v6;
}

- (void)pronunciations:(id)a3
{
  root = self->_root;
  v5 = &root[-*root->var0];
  v6 = a3;
  v7 = *root[*v5[6].var0 + *root[*v5[6].var0].var0].var0;
  v8 = v6;
  (*(a3 + 2))();
}

- (int)frequency
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

- (NSString)tag
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

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

  return v6;
}

- (Offset<siri::speech::schema_fb::Word>)addObjectToBuffer:(void *)a3
{
  v5 = [(FTWord *)self orthography];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_284834138;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v7, v8);

  v21 = 0;
  v22 = &v21;
  v23 = 0x3812000000;
  v24 = __Block_byref_object_copy__15;
  v25 = __Block_byref_object_dispose__15;
  v26 = &unk_233042D43;
  v27 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __28__FTWord_addObjectToBuffer___block_invoke;
  v20[3] = &unk_2789B8AB0;
  v20[4] = &v21;
  v20[5] = a3;
  [(FTWord *)self pronunciations:v20];
  v10 = [(FTWord *)self frequency];
  v11 = [(FTWord *)self tag];
  v12 = v11;
  if (!v11)
  {
    v11 = &stru_284834138;
  }

  v13 = [(__CFString *)v11 UTF8String];
  v14 = strlen(v13);
  LODWORD(v13) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v13, v14);

  *(a3 + 70) = 1;
  v15 = *(a3 + 8);
  v16 = *(a3 + 12);
  v17 = *(a3 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, *(v22 + 12));
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 8, v10, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v13);
  v18.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v15 - v16 + v17);
  _Block_object_dispose(&v21, 8);
  return v18;
}

uint64_t __28__FTWord_addObjectToBuffer___block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  result = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<unsigned char>(*(a1 + 40), a2, a3);
  *(*(*(a1 + 32) + 8) + 48) = result;
  return result;
}

- (id)flatbuffData
{
  v3 = 0;
  v4 = 0;
  v5 = xmmword_233005E30;
  v6 = 0u;
  v7 = 0u;
  v8 = 0;
  v9 = 1;
  v10 = 256;
  v11 = 0;
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTWord *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__22__FTWord_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

@end