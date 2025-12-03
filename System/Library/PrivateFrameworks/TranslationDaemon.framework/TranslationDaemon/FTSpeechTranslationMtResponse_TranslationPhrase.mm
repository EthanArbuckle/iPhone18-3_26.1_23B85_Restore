@interface FTSpeechTranslationMtResponse_TranslationPhrase
- (BOOL)contains_masked_profanity;
- (BOOL)low_confidence;
- (FTSpeechTranslationMtResponse_TranslationPhrase)initWithFlatbuffData:(id)data root:(const TranslationPhrase *)root verify:(BOOL)verify;
- (FTTranslationPhraseMetaInfo)meta_info_data;
- (NSString)meta_info;
- (NSString)translation_phrase;
- (Offset<siri::speech::schema_fb::SpeechTranslationMtResponse_::TranslationPhrase>)addObjectToBuffer:(void *)buffer;
- (float)confidence;
- (id)flatbuffData;
@end

@implementation FTSpeechTranslationMtResponse_TranslationPhrase

- (FTSpeechTranslationMtResponse_TranslationPhrase)initWithFlatbuffData:(id)data root:(const TranslationPhrase *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTSpeechTranslationMtResponse_TranslationPhrase;
  v10 = [(FTSpeechTranslationMtResponse_TranslationPhrase *)&v25 init];
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_14;
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
    goto LABEL_13;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v13)
  {
    goto LABEL_14;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = bytes3;
  v21[1] = v17;
  v22 = xmmword_233005E20;
  v23 = 0;
  v24 = 1;
  v18 = v10->_root;
  if (!v18)
  {
    goto LABEL_13;
  }

  if (!siri::speech::schema_fb::SpeechTranslationMtResponse_::TranslationPhrase::Verify(v18, v21))
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

- (float)confidence
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 5u)
  {
    v5 = *v3[4].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (NSString)translation_phrase
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

- (NSString)meta_info
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

- (BOOL)low_confidence
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0xBu && (v4 = *v3[10].var0) != 0 && root[v4].var0[0] != 0;
}

- (FTTranslationPhraseMetaInfo)meta_info_data
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"meta_info_data"];
  if (!v3)
  {
    v4 = [FTTranslationPhraseMetaInfo alloc];
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

    v3 = [(FTTranslationPhraseMetaInfo *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"meta_info_data"];
  }

  return v3;
}

- (BOOL)contains_masked_profanity
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0xFu && (v4 = *v3[14].var0) != 0 && root[v4].var0[0] != 0;
}

- (Offset<siri::speech::schema_fb::SpeechTranslationMtResponse_::TranslationPhrase>)addObjectToBuffer:(void *)buffer
{
  [(FTSpeechTranslationMtResponse_TranslationPhrase *)self confidence];
  v6 = v5;
  translation_phrase = [(FTSpeechTranslationMtResponse_TranslationPhrase *)self translation_phrase];
  v8 = translation_phrase;
  if (!translation_phrase)
  {
    translation_phrase = &stru_284834138;
  }

  uTF8String = [(__CFString *)translation_phrase UTF8String];
  v10 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v10);

  meta_info = [(FTSpeechTranslationMtResponse_TranslationPhrase *)self meta_info];
  v13 = meta_info;
  if (!meta_info)
  {
    meta_info = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)meta_info UTF8String];
  v15 = strlen(uTF8String2);
  v16 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v15);

  LODWORD(uTF8String2) = [(FTSpeechTranslationMtResponse_TranslationPhrase *)self low_confidence];
  meta_info_data = [(FTSpeechTranslationMtResponse_TranslationPhrase *)self meta_info_data];
  v18 = [meta_info_data addObjectToBuffer:buffer];

  contains_masked_profanity = [(FTSpeechTranslationMtResponse_TranslationPhrase *)self contains_masked_profanity];
  *(buffer + 70) = 1;
  v20 = *(buffer + 10);
  v21 = *(buffer + 8) - *(buffer + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(buffer, 4, v6, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, v16);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 10, uTF8String2, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 12, v18);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 14, contains_masked_profanity, 0);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v21 + v20);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTSpeechTranslationMtResponse_TranslationPhrase *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

@end