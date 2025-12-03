@interface QSSItnAlignment
- (Offset<siri::speech::schema_fb::ItnAlignment>)addObjectToBuffer:(void *)buffer;
- (QSSItnAlignment)initWithFlatbuffData:(id)data root:(const ItnAlignment *)root verify:(BOOL)verify;
- (id)flatbuffData;
- (int)first_post_itn_char_pos;
- (int)first_pre_itn_token_index;
- (int)last_post_itn_char_pos;
- (int)last_pre_itn_token_index;
@end

@implementation QSSItnAlignment

- (id)flatbuffData
{
  v5 = 0;
  v6 = 0;
  v7 = xmmword_26914CD60;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 1;
  v12 = 256;
  v13 = 0;
  v2.var0 = [(QSSItnAlignment *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__31__QSSItnAlignment_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::ItnAlignment>)addObjectToBuffer:(void *)buffer
{
  selfCopy = self;
  first_pre_itn_token_index = [(QSSItnAlignment *)self first_pre_itn_token_index];
  last_pre_itn_token_index = [(QSSItnAlignment *)selfCopy last_pre_itn_token_index];
  first_post_itn_char_pos = [(QSSItnAlignment *)selfCopy first_post_itn_char_pos];
  LODWORD(selfCopy) = [(QSSItnAlignment *)selfCopy last_post_itn_char_pos];
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v8 = *(buffer + 10);
  v9 = *(buffer + 8) - *(buffer + 12);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 4, first_pre_itn_token_index);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, last_pre_itn_token_index);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, first_post_itn_char_pos);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 10, selfCopy);

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v9 + v8);
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

- (QSSItnAlignment)initWithFlatbuffData:(id)data root:(const ItnAlignment *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSItnAlignment;
  v10 = [(QSSItnAlignment *)&v29 init];
  v11 = v10;
  if (v10)
  {
    if (!dataCopy || ![dataCopy length])
    {
      goto LABEL_16;
    }

    objc_storeStrong(&v10->_data, data);
    if (!root)
    {
      bytes = [(NSData *)v10->_data bytes];
      root = bytes + *bytes;
    }

    v10->_root = root;
    if (verifyCopy)
    {
      bytes2 = [(NSData *)v10->_data bytes];
      v14 = [(NSData *)v10->_data length];
      root = v10->_root;
      if (root < bytes2 || root > bytes2 + v14)
      {
        goto LABEL_16;
      }

      bytes3 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v24 = bytes3;
      v25 = v18;
      v26 = xmmword_26914CD70;
      v27 = 0;
      LOBYTE(v28) = 1;
      if (v18 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      v19 = v10->_root;
      if (v19)
      {
        if (!siri::speech::schema_fb::ItnAlignment::Verify(v19, &v24))
        {
LABEL_16:
          v22 = 0;
          goto LABEL_17;
        }
      }
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v10->_storage;
    v10->_storage = dictionary;
  }

  v22 = v10;
LABEL_17:

  return v22;
}

@end