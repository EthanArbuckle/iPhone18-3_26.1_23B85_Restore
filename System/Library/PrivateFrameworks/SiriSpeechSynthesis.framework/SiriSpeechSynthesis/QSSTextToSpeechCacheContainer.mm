@interface QSSTextToSpeechCacheContainer
- (NSArray)cache_object;
- (Offset<siri::speech::schema_fb::TextToSpeechCacheContainer>)addObjectToBuffer:(void *)buffer;
- (QSSTextToSpeechCacheContainer)initWithFlatbuffData:(id)data root:(const TextToSpeechCacheContainer *)root verify:(BOOL)verify;
- (QSSTextToSpeechCacheMetaInfo)cache_meta_info;
- (id)flatbuffData;
@end

@implementation QSSTextToSpeechCacheContainer

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
  v2.var0 = [(QSSTextToSpeechCacheContainer *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__45__QSSTextToSpeechCacheContainer_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechCacheContainer>)addObjectToBuffer:(void *)buffer
{
  v25 = *MEMORY[0x277D85DE8];
  cache_meta_info = [(QSSTextToSpeechCacheContainer *)self cache_meta_info];
  v6 = [cache_meta_info addObjectToBuffer:buffer];

  cache_object = [(QSSTextToSpeechCacheContainer *)self cache_object];
  v8 = [cache_object count];
  if (v8)
  {
    if (!(v8 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v8);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(QSSTextToSpeechCacheContainer *)self cache_object];
  v18 = v6;
  if ([obj countByEnumeratingWithState:&v20 objects:v24 count:16])
  {
    *v21;
    *v21;
    [**(&v20 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v9 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v10 = *(buffer + 8);
  v11 = *(buffer + 12);
  v12 = *(buffer + 10);
  if (v18)
  {
    v13 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v18);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 4, v13);
  }

  if (v9)
  {
    v14 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v9);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, v14);
  }

  v15.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v10 - v11 + v12);
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (NSArray)cache_object
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"cache_object"];
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
            v11 = [[QSSTextToSpeechCacheObject alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"cache_object"];
  }

  return array;
}

- (QSSTextToSpeechCacheMetaInfo)cache_meta_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"cache_meta_info"];
  if (!v3)
  {
    v4 = [QSSTextToSpeechCacheMetaInfo alloc];
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

    v3 = [(QSSTextToSpeechCacheMetaInfo *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"cache_meta_info"];
  }

  return v3;
}

- (QSSTextToSpeechCacheContainer)initWithFlatbuffData:(id)data root:(const TextToSpeechCacheContainer *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v36.receiver = self;
  v36.super_class = QSSTextToSpeechCacheContainer;
  v10 = [(QSSTextToSpeechCacheContainer *)&v36 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_29;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_30;
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
    goto LABEL_28;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v14 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v14)
  {
    goto LABEL_30;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v18 = [(NSData *)v10->_data length];
  v31 = bytes3;
  v32 = v18;
  v33 = xmmword_26914CD70;
  v34 = 0;
  LOBYTE(v35) = 1;
  if (v18 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v19 = v10->_root;
  if (!v19)
  {
    goto LABEL_28;
  }

  if (!flatbuffers::Verifier::VerifyTableStart(&v31, v11->_root->var0))
  {
    goto LABEL_30;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v31, 4u))
  {
    goto LABEL_30;
  }

  v20 = (v19 - *v19);
  if (*v20 >= 5u)
  {
    v21 = v20[2];
    if (v21)
    {
      if (!siri::speech::schema_fb::TextToSpeechCacheMetaInfo::Verify((v19 + v21 + *(v19 + v21)), &v31))
      {
        goto LABEL_30;
      }
    }
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v31, 6u))
  {
    goto LABEL_30;
  }

  v22 = *v19;
  if (*(v19 - v22) < 7u)
  {
    goto LABEL_28;
  }

  if (!*(v19 - v22 + 6))
  {
LABEL_23:
    v23 = *(v19 - v22 + 6);
    if (v23)
    {
      v24 = (v19 + v23 + *(v19 + v23));
      if (*v24)
      {
        v25 = 0;
        v26 = v24 + 1;
        while (siri::speech::schema_fb::TextToSpeechCacheObject::Verify((v26 + *v26), &v31))
        {
          ++v25;
          ++v26;
          if (v25 >= *v24)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_30;
      }
    }

    goto LABEL_28;
  }

  if (!flatbuffers::Verifier::VerifyVectorOrString(&v31, v19 + *(v19 - v22 + 6) + *(v19 + *(v19 - v22 + 6)), 4uLL, 0))
  {
LABEL_30:
    v29 = 0;
    goto LABEL_31;
  }

  v22 = *v19;
  if (*(v19 - v22) >= 7u)
  {
    goto LABEL_23;
  }

LABEL_28:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = dictionary;

LABEL_29:
  v29 = v11;
LABEL_31:

  return v29;
}

@end