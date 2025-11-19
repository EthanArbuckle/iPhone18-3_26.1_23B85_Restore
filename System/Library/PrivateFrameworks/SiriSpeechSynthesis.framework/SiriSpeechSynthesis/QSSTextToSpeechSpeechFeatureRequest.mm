@interface QSSTextToSpeechSpeechFeatureRequest
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::TextToSpeechSpeechFeatureRequest>)addObjectToBuffer:(void *)a3;
- (QSSTextToSpeechSpeechFeatureInputText)text;
- (QSSTextToSpeechSpeechFeatureInputWave)wave_data;
- (QSSTextToSpeechSpeechFeatureModelIdentifier)model_id;
- (QSSTextToSpeechSpeechFeatureRequest)initWithFlatbuffData:(id)a3 root:(const TextToSpeechSpeechFeatureRequest *)a4 verify:(BOOL)a5;
- (id)flatbuffData;
@end

@implementation QSSTextToSpeechSpeechFeatureRequest

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
  v2.var0 = [(QSSTextToSpeechSpeechFeatureRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__51__QSSTextToSpeechSpeechFeatureRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechSpeechFeatureRequest>)addObjectToBuffer:(void *)a3
{
  v5 = [(QSSTextToSpeechSpeechFeatureRequest *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v10 = [(QSSTextToSpeechSpeechFeatureRequest *)self session_id];
  v11 = v10;
  if (!v10)
  {
    v10 = &stru_2879AE8E0;
  }

  v12 = [(__CFString *)v10 UTF8String];
  v13 = strlen(v12);
  LODWORD(v12) = flatbuffers::FlatBufferBuilder::CreateString(a3, v12, v13);

  v14 = [(QSSTextToSpeechSpeechFeatureRequest *)self model_id];
  v15 = [v14 addObjectToBuffer:a3];

  v16 = [(QSSTextToSpeechSpeechFeatureRequest *)self text];
  v17 = [v16 addObjectToBuffer:a3];

  v18 = [(QSSTextToSpeechSpeechFeatureRequest *)self wave_data];
  v19 = [v18 addObjectToBuffer:a3];

  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v20 = *(a3 + 5);
  v21 = *(a3 + 6);
  v22 = *(a3 + 4);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 6, v12);
  if (v15)
  {
    v23 = flatbuffers::FlatBufferBuilder::ReferTo(a3, v15);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 8, v23);
  }

  if (v17)
  {
    v24 = flatbuffers::FlatBufferBuilder::ReferTo(a3, v17);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 10, v24);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 12, v19);

  return flatbuffers::FlatBufferBuilder::EndTable(a3, v22 - v21 + v20);
}

- (QSSTextToSpeechSpeechFeatureInputWave)wave_data
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"wave_data"];
  if (!v3)
  {
    v4 = [QSSTextToSpeechSpeechFeatureInputWave alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0xDu && (v7 = *v6[12].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(QSSTextToSpeechSpeechFeatureInputWave *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"wave_data"];
  }

  return v3;
}

- (QSSTextToSpeechSpeechFeatureInputText)text
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"text"];
  if (!v3)
  {
    v4 = [QSSTextToSpeechSpeechFeatureInputText alloc];
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

    v3 = [(QSSTextToSpeechSpeechFeatureInputText *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"text"];
  }

  return v3;
}

- (QSSTextToSpeechSpeechFeatureModelIdentifier)model_id
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"model_id"];
  if (!v3)
  {
    v4 = [QSSTextToSpeechSpeechFeatureModelIdentifier alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 9u && (v7 = *v6[8].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(QSSTextToSpeechSpeechFeatureModelIdentifier *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"model_id"];
  }

  return v3;
}

- (NSString)session_id
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

- (NSString)speech_id
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

- (QSSTextToSpeechSpeechFeatureRequest)initWithFlatbuffData:(id)a3 root:(const TextToSpeechSpeechFeatureRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v41.receiver = self;
  v41.super_class = QSSTextToSpeechSpeechFeatureRequest;
  v10 = [(QSSTextToSpeechSpeechFeatureRequest *)&v41 init];
  v11 = v10;
  if (v10)
  {
    if (!v9 || ![v9 length])
    {
      goto LABEL_40;
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
        goto LABEL_40;
      }

      v17 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v36 = v17;
      v37 = v18;
      v38 = xmmword_26914CD70;
      v39 = 0;
      LOBYTE(v40) = 1;
      if (v18 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      v19 = v10->_root;
      if (v19)
      {
        if (!flatbuffers::Verifier::VerifyTableStart(&v36, v11->_root->var0) || !flatbuffers::Table::VerifyOffset(v19, &v36, 4u))
        {
          goto LABEL_40;
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

        if (!flatbuffers::Verifier::VerifyString(&v36, v22) || !flatbuffers::Table::VerifyOffset(v19, &v36, 6u))
        {
          goto LABEL_40;
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

        if (!flatbuffers::Verifier::VerifyString(&v36, v25) || !flatbuffers::Table::VerifyOffset(v19, &v36, 8u) || (v26 = (v19 - *v19), *v26 >= 9u) && (v27 = v26[4]) != 0 && !siri::speech::schema_fb::TextToSpeechSpeechFeatureModelIdentifier::Verify((v19 + v27 + *(v19 + v27)), &v36) || !flatbuffers::Table::VerifyOffset(v19, &v36, 0xAu) || (v28 = (v19 - *v19), *v28 >= 0xBu) && (v29 = v28[5]) != 0 && !siri::speech::schema_fb::TextToSpeechSpeechFeatureInputText::Verify((v19 + v29 + *(v19 + v29)), &v36) || !flatbuffers::Table::VerifyOffset(v19, &v36, 0xCu) || (v30 = (v19 - *v19), *v30 >= 0xDu) && (v31 = v30[6]) != 0 && !siri::speech::schema_fb::TextToSpeechVoiceResource::Verify((v19 + v31 + *(v19 + v31)), &v36))
        {
LABEL_40:
          v34 = 0;
          goto LABEL_41;
        }
      }
    }

    v32 = [MEMORY[0x277CBEB38] dictionary];
    storage = v11->_storage;
    v11->_storage = v32;
  }

  v34 = v11;
LABEL_41:

  return v34;
}

@end