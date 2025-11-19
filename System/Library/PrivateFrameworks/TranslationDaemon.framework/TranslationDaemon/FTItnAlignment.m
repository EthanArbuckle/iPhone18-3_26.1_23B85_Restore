@interface FTItnAlignment
- (FTItnAlignment)initWithFlatbuffData:(id)a3 root:(const ItnAlignment *)a4 verify:(BOOL)a5;
- (Offset<siri::speech::schema_fb::ItnAlignment>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (int)first_post_itn_char_pos;
- (int)first_pre_itn_token_index;
- (int)last_post_itn_char_pos;
- (int)last_pre_itn_token_index;
@end

@implementation FTItnAlignment

- (FTItnAlignment)initWithFlatbuffData:(id)a3 root:(const ItnAlignment *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTItnAlignment;
  v10 = [(FTItnAlignment *)&v25 init];
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

  if (!siri::speech::schema_fb::ItnAlignment::Verify(v18, v21))
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

- (int)first_pre_itn_token_index
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

- (int)last_pre_itn_token_index
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

- (int)first_post_itn_char_pos
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

- (int)last_post_itn_char_pos
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

- (Offset<siri::speech::schema_fb::ItnAlignment>)addObjectToBuffer:(void *)a3
{
  v4 = self;
  v5 = [(FTItnAlignment *)self first_pre_itn_token_index];
  v6 = [(FTItnAlignment *)v4 last_pre_itn_token_index];
  v7 = [(FTItnAlignment *)v4 first_post_itn_char_pos];
  LODWORD(v4) = [(FTItnAlignment *)v4 last_post_itn_char_pos];
  *(a3 + 70) = 1;
  v8 = *(a3 + 10);
  v9 = *(a3 + 8) - *(a3 + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 4, v5, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 6, v6, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 8, v7, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 10, v4, 0);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v9 + v8);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTItnAlignment *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__30__FTItnAlignment_flatbuffData__block_invoke(uint64_t a1)
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