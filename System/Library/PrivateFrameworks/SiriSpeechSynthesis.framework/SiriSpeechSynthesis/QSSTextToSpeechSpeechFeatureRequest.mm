@interface QSSTextToSpeechSpeechFeatureRequest
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::TextToSpeechSpeechFeatureRequest>)addObjectToBuffer:(void *)buffer;
- (QSSTextToSpeechSpeechFeatureInputText)text;
- (QSSTextToSpeechSpeechFeatureInputWave)wave_data;
- (QSSTextToSpeechSpeechFeatureModelIdentifier)model_id;
- (QSSTextToSpeechSpeechFeatureRequest)initWithFlatbuffData:(id)data root:(const TextToSpeechSpeechFeatureRequest *)root verify:(BOOL)verify;
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

- (Offset<siri::speech::schema_fb::TextToSpeechSpeechFeatureRequest>)addObjectToBuffer:(void *)buffer
{
  speech_id = [(QSSTextToSpeechSpeechFeatureRequest *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  session_id = [(QSSTextToSpeechSpeechFeatureRequest *)self session_id];
  v11 = session_id;
  if (!session_id)
  {
    session_id = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v13 = strlen(uTF8String2);
  LODWORD(uTF8String2) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  model_id = [(QSSTextToSpeechSpeechFeatureRequest *)self model_id];
  v15 = [model_id addObjectToBuffer:buffer];

  text = [(QSSTextToSpeechSpeechFeatureRequest *)self text];
  v17 = [text addObjectToBuffer:buffer];

  wave_data = [(QSSTextToSpeechSpeechFeatureRequest *)self wave_data];
  v19 = [wave_data addObjectToBuffer:buffer];

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v20 = *(buffer + 5);
  v21 = *(buffer + 6);
  v22 = *(buffer + 4);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, uTF8String2);
  if (v15)
  {
    v23 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v15);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, v23);
  }

  if (v17)
  {
    v24 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v17);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 10, v24);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 12, v19);

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v22 - v21 + v20);
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

- (QSSTextToSpeechSpeechFeatureRequest)initWithFlatbuffData:(id)data root:(const TextToSpeechSpeechFeatureRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v41.receiver = self;
  v41.super_class = QSSTextToSpeechSpeechFeatureRequest;
  v10 = [(QSSTextToSpeechSpeechFeatureRequest *)&v41 init];
  v11 = v10;
  if (v10)
  {
    if (!dataCopy || ![dataCopy length])
    {
      goto LABEL_40;
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
        goto LABEL_40;
      }

      bytes3 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v36 = bytes3;
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

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v11->_storage;
    v11->_storage = dictionary;
  }

  v34 = v11;
LABEL_41:

  return v34;
}

@end