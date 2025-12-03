@interface QSSGraphemeToPhonemeRequest
- (NSString)language;
- (NSString)orthography;
- (NSString)session_id;
- (Offset<siri::speech::schema_fb::GraphemeToPhonemeRequest>)addObjectToBuffer:(void *)buffer;
- (QSSContextWithPronHints)context_with_pron_hints;
- (QSSGraphemeToPhonemeRequest)initWithFlatbuffData:(id)data root:(const GraphemeToPhonemeRequest *)root verify:(BOOL)verify;
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

- (Offset<siri::speech::schema_fb::GraphemeToPhonemeRequest>)addObjectToBuffer:(void *)buffer
{
  session_id = [(QSSGraphemeToPhonemeRequest *)self session_id];
  v6 = session_id;
  if (!session_id)
  {
    session_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)session_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  language = [(QSSGraphemeToPhonemeRequest *)self language];
  v11 = language;
  if (!language)
  {
    language = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)language UTF8String];
  v13 = strlen(uTF8String2);
  v14 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  orthography = [(QSSGraphemeToPhonemeRequest *)self orthography];
  v16 = orthography;
  if (!orthography)
  {
    orthography = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)orthography UTF8String];
  v18 = strlen(uTF8String3);
  LODWORD(uTF8String3) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v18);

  context_with_pron_hints = [(QSSGraphemeToPhonemeRequest *)self context_with_pron_hints];
  v20 = [context_with_pron_hints addObjectToBuffer:buffer];

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v22 = *(buffer + 5);
  v21 = *(buffer + 6);
  v23 = *(buffer + 4);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, v14);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, uTF8String3);
  if (v20)
  {
    v24 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v20);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 10, v24);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v23 - v21 + v22);
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

- (QSSGraphemeToPhonemeRequest)initWithFlatbuffData:(id)data root:(const GraphemeToPhonemeRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v40.receiver = self;
  v40.super_class = QSSGraphemeToPhonemeRequest;
  v10 = [(QSSGraphemeToPhonemeRequest *)&v40 init];
  v11 = v10;
  if (v10)
  {
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
    if (verifyCopy)
    {
      bytes2 = [(NSData *)v10->_data bytes];
      v14 = [(NSData *)v10->_data length];
      root = v10->_root;
      if (root < bytes2 || root > bytes2 + v14)
      {
        goto LABEL_38;
      }

      bytes3 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v35 = bytes3;
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

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v11->_storage;
    v11->_storage = dictionary;
  }

  v33 = v11;
LABEL_39:

  return v33;
}

@end