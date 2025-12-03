@interface OPTTSWordTimingInfo
+ (id)vs_wordTimingInfos:(id)infos withText:(id)text;
- (NSString)word;
- (OPTTSWordTimingInfo)initWithFlatbuffData:(id)data root:(const WordTimingInfo *)root verify:(BOOL)verify;
- (Offset<siri::speech::schema_fb::WordTimingInfo>)addObjectToBuffer:(void *)buffer;
- (float)timestamp;
- (id)flatbuffData;
- (unsigned)length;
- (unsigned)offset;
- (unsigned)sample_idx;
@end

@implementation OPTTSWordTimingInfo

- (id)flatbuffData
{
  v5 = 0;
  v6 = 0;
  v7 = xmmword_2728326A0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 1;
  v12 = 256;
  v13 = 0;
  v2.var0 = [(OPTTSWordTimingInfo *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__35__OPTTSWordTimingInfo_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x2743CD2F0);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::WordTimingInfo>)addObjectToBuffer:(void *)buffer
{
  word = [(OPTTSWordTimingInfo *)self word];
  v6 = word;
  if (!word)
  {
    word = &stru_2881CBD18;
  }

  uTF8String = [(__CFString *)word UTF8String];
  v8 = strlen(uTF8String);
  LODWORD(uTF8String) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  sample_idx = [(OPTTSWordTimingInfo *)self sample_idx];
  offset = [(OPTTSWordTimingInfo *)self offset];
  v11 = [(OPTTSWordTimingInfo *)self length];
  [(OPTTSWordTimingInfo *)self timestamp];
  v13 = v12;
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v14 = *(buffer + 10);
  v15 = *(buffer + 8) - *(buffer + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 4, uTF8String);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, sample_idx);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, offset);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 10, v11);
  flatbuffers::FlatBufferBuilder::AddElement<float>(buffer, 12, v13);

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v15 + v14);
}

- (float)timestamp
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 0xDu)
  {
    v5 = *v3[12].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (unsigned)length
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

- (unsigned)offset
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

- (unsigned)sample_idx
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

- (NSString)word
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

- (OPTTSWordTimingInfo)initWithFlatbuffData:(id)data root:(const WordTimingInfo *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = OPTTSWordTimingInfo;
  v10 = [(OPTTSWordTimingInfo *)&v29 init];
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
      v26 = xmmword_2728326B0;
      v27 = 0;
      LOBYTE(v28) = 1;
      if (v18 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      v19 = v10->_root;
      if (v19)
      {
        if (!siri::speech::schema_fb::WordTimingInfo::Verify(v19, &v24))
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

+ (id)vs_wordTimingInfos:(id)infos withText:(id)text
{
  v42 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  textCopy = text;
  array = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = infosCopy;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v41 count:16];
  v9 = 0x277D79000uLL;
  if (v8)
  {
    v10 = v8;
    v11 = *v28;
    do
    {
      v12 = 0;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v27 + 1) + 8 * v12);
        v14 = VSGetLogDefault();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          offset = [v13 offset];
          v17 = v7;
          v18 = [v13 length];
          word = [v13 word];
          sample_idx = [v13 sample_idx];
          [v13 timestamp];
          *buf = 134219010;
          v32 = offset;
          v33 = 2048;
          v34 = v18;
          v7 = v17;
          v9 = 0x277D79000;
          v35 = 2112;
          v36 = word;
          v37 = 1024;
          v38 = sample_idx;
          v39 = 2048;
          v40 = (v21 / 1000.0);
          _os_log_debug_impl(&dword_2727E4000, v14, OS_LOG_TYPE_DEBUG, "OPTTSTextToSpeechResponse word timing info, offset: %ld, length: %ld, word: %@, sampleIndex: %d, timestamp: %.2f", buf, 0x30u);
        }

        v15 = objc_alloc_init(*(v9 + 2488));
        [v15 setTextRange:{objc_msgSend(v13, "offset"), objc_msgSend(v13, "length")}];
        [v13 timestamp];
        [v15 setStartTime:(v16 / 1000.0)];
        [array addObject:v15];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v27 objects:v41 count:16];
    }

    while (v10);
  }

  v22 = [*(v9 + 2488) utf16TimingInfoWithUTF8Range:array withText:textCopy];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

@end