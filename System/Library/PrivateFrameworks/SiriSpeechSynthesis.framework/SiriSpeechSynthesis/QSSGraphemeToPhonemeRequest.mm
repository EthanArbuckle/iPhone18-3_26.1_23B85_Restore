@interface QSSGraphemeToPhonemeRequest
- (NSString)language;
- (NSString)orthography;
- (NSString)session_id;
- (Offset<siri::speech::schema_fb::GraphemeToPhonemeRequest>)addObjectToBuffer:(void *)a3;
- (QSSContextWithPronHints)context_with_pron_hints;
- (QSSGraphemeToPhonemeRequest)initWithFlatbuffData:(id)a3 root:(const GraphemeToPhonemeRequest *)a4 verify:(BOOL)a5;
- (id)flatbuffData;
@end

@implementation QSSGraphemeToPhonemeRequest

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
  v2.var0 = [(QSSGraphemeToPhonemeRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__43__QSSGraphemeToPhonemeRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::GraphemeToPhonemeRequest>)addObjectToBuffer:(void *)a3
{
  v5 = [(QSSGraphemeToPhonemeRequest *)self session_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v10 = [(QSSGraphemeToPhonemeRequest *)self language];
  v11 = v10;
  if (!v10)
  {
    v10 = &stru_2879AE8E0;
  }

  v12 = [(__CFString *)v10 UTF8String];
  v13 = strlen(v12);
  v14 = flatbuffers::FlatBufferBuilder::CreateString(a3, v12, v13);

  v15 = [(QSSGraphemeToPhonemeRequest *)self orthography];
  v16 = v15;
  if (!v15)
  {
    v15 = &stru_2879AE8E0;
  }

  v17 = [(__CFString *)v15 UTF8String];
  v18 = strlen(v17);
  LODWORD(v17) = flatbuffers::FlatBufferBuilder::CreateString(a3, v17, v18);

  v19 = [(QSSGraphemeToPhonemeRequest *)self context_with_pron_hints];
  v20 = [v19 addObjectToBuffer:a3];

  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v22 = *(a3 + 5);
  v21 = *(a3 + 6);
  v23 = *(a3 + 4);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 6, v14);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 8, v17);
  if (v20)
  {
    v24 = flatbuffers::FlatBufferBuilder::ReferTo(a3, v20);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 10, v24);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a3, v23 - v21 + v22);
}

- (QSSContextWithPronHints)context_with_pron_hints
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"context_with_pron_hints"];
  if (!v3)
  {
    v4 = [QSSContextWithPronHints alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(QSSContextWithPronHints *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"context_with_pron_hints"];
  }

  return v3;
}

- (NSString)orthography
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

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

  return v6;
}

- (NSString)language
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 6].var0;
  if (*root[-v3 + 6].var0)
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

- (NSString)session_id
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

- (QSSGraphemeToPhonemeRequest)initWithFlatbuffData:(id)a3 root:(const GraphemeToPhonemeRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v40.receiver = self;
  v40.super_class = QSSGraphemeToPhonemeRequest;
  v10 = [(QSSGraphemeToPhonemeRequest *)&v40 init];
  v11 = v10;
  if (v10)
  {
    if (!v9 || ![v9 length])
    {
      goto LABEL_38;
    }

    objc_storeStrong(&v10->_data, a3);
    if (!a4)
    {
      v12 = [(NSData *)v10->_data bytes];
      a4 = v12 + *v12;
    }

    v10->_root = a4;
    if (v5)
    {
      v13 = [(NSData *)v10->_data bytes];
      v14 = [(NSData *)v10->_data length];
      root = v10->_root;
      if (root < v13 || root > v13 + v14)
      {
        goto LABEL_38;
      }

      v17 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v35 = v17;
      v36 = v18;
      v37 = xmmword_26914CD70;
      v38 = 0;
      LOBYTE(v39) = 1;
      if (v18 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      v19 = v10->_root;
      if (v19)
      {
        if (!flatbuffers::Verifier::VerifyTableStart(&v35, v11->_root->var0) || !flatbuffers::Table::VerifyOffset(v19, &v35, 4u))
        {
          goto LABEL_38;
        }

        v20 = (v19 - *v19);
        if (*v20 >= 5u && (v21 = v20[2]) != 0)
        {
          v22 = v19 + v21 + *(v19 + v21);
        }

        else
        {
          v22 = 0;
        }

        if (!flatbuffers::Verifier::VerifyString(&v35, v22) || !flatbuffers::Table::VerifyOffset(v19, &v35, 6u))
        {
          goto LABEL_38;
        }

        v23 = (v19 - *v19);
        if (*v23 >= 7u && (v24 = v23[3]) != 0)
        {
          v25 = v19 + v24 + *(v19 + v24);
        }

        else
        {
          v25 = 0;
        }

        if (!flatbuffers::Verifier::VerifyString(&v35, v25) || !flatbuffers::Table::VerifyOffset(v19, &v35, 8u) || ((v26 = (v19 - *v19), *v26 < 9u) || (v27 = v26[4]) == 0 ? (v28 = 0) : (v28 = v19 + v27 + *(v19 + v27)), !flatbuffers::Verifier::VerifyString(&v35, v28) || !flatbuffers::Table::VerifyOffset(v19, &v35, 0xAu) || (v29 = (v19 - *v19), *v29 >= 0xBu) && (v30 = v29[5]) != 0 && !siri::speech::schema_fb::ContextWithPronHints::Verify((v19 + v30 + *(v19 + v30)), &v35)))
        {
LABEL_38:
          v33 = 0;
          goto LABEL_39;
        }
      }
    }

    v31 = [MEMORY[0x277CBEB38] dictionary];
    storage = v11->_storage;
    v11->_storage = v31;
  }

  v33 = v11;
LABEL_39:

  return v33;
}

@end