@interface QSSSpeechTranslationInfo
- (NSArray)raw_nbest_choices;
- (Offset<siri::speech::schema_fb::SpeechTranslationInfo>)addObjectToBuffer:(void *)buffer;
- (QSSRecognitionSausage)raw_sausage;
- (QSSSpeechTranslationInfo)initWithFlatbuffData:(id)data root:(const SpeechTranslationInfo *)root verify:(BOOL)verify;
- (id)flatbuffData;
@end

@implementation QSSSpeechTranslationInfo

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
  v2.var0 = [(QSSSpeechTranslationInfo *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__40__QSSSpeechTranslationInfo_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::SpeechTranslationInfo>)addObjectToBuffer:(void *)buffer
{
  v28 = *MEMORY[0x277D85DE8];
  raw_sausage = [(QSSSpeechTranslationInfo *)self raw_sausage];
  v6 = [raw_sausage addObjectToBuffer:buffer];

  memset(&v26, 0, sizeof(v26));
  raw_nbest_choices = [(QSSSpeechTranslationInfo *)self raw_nbest_choices];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v26, [raw_nbest_choices count]);

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  raw_nbest_choices2 = [(QSSSpeechTranslationInfo *)self raw_nbest_choices];
  v9 = [raw_nbest_choices2 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(raw_nbest_choices2);
        }

        v21 = [*(*(&v22 + 1) + 8 * i) addObjectToBuffer:buffer];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v26, &v21);
      }

      v9 = [raw_nbest_choices2 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  begin = v26.__begin_;
  if (v26.__end_ == v26.__begin_)
  {
    v13 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::RecognitionChoice>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionChoice>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionChoice>> const&)::t;
  }

  else
  {
    v13 = v26.__begin_;
  }

  v14 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(buffer, v13, v26.__end_ - v26.__begin_);
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v15 = *(buffer + 8);
  v16 = *(buffer + 12);
  v17 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, v6);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, v14);
  v18.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v15 - v16 + v17);
  if (begin)
  {
    operator delete(begin);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (NSArray)raw_nbest_choices
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"raw_nbest_choices"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 7u)
    {
      v6 = *v5[6].var0;
      if (v6)
      {
        v7 = *root[v6].var0;
        v8 = *root[v6 + v7].var0;
        if (v8)
        {
          v9 = 4 * v8;
          v10 = &root[v7 + 4 + v6];
          do
          {
            v11 = [[QSSRecognitionChoice alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"raw_nbest_choices"];
  }

  return array;
}

- (QSSRecognitionSausage)raw_sausage
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"raw_sausage"];
  if (!v3)
  {
    v4 = [QSSRecognitionSausage alloc];
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

    v3 = [(QSSRecognitionSausage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"raw_sausage"];
  }

  return v3;
}

- (QSSSpeechTranslationInfo)initWithFlatbuffData:(id)data root:(const SpeechTranslationInfo *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSSpeechTranslationInfo;
  v10 = [(QSSSpeechTranslationInfo *)&v29 init];
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
        if (!siri::speech::schema_fb::SpeechTranslationInfo::Verify(v19, &v24))
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