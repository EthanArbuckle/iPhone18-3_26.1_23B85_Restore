@interface FTTextToSpeechCacheContainerStreamingV2
- (FTBeginTextToSpeechStreamingResponse)cached_begin_response;
- (FTFinalTextToSpeechStreamingResponse)cached_final_response;
- (FTStartTextToSpeechStreamingRequest)cached_request;
- (FTTextToSpeechCacheContainerStreamingV2)initWithFlatbuffData:(id)data root:(const TextToSpeechCacheContainerStreamingV2 *)root verify:(BOOL)verify;
- (NSArray)cached_partial_response;
- (NSString)original_session_id;
- (Offset<siri::speech::schema_fb::TextToSpeechCacheContainerStreamingV2>)addObjectToBuffer:(void *)buffer;
- (id)cached_partial_response_objectAtIndex:(unint64_t)index;
- (id)flatbuffData;
- (unint64_t)cached_partial_response_count;
- (void)cached_partial_response_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTTextToSpeechCacheContainerStreamingV2

- (FTTextToSpeechCacheContainerStreamingV2)initWithFlatbuffData:(id)data root:(const TextToSpeechCacheContainerStreamingV2 *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTTextToSpeechCacheContainerStreamingV2;
  v10 = [(FTTextToSpeechCacheContainerStreamingV2 *)&v25 init];
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

  if (!siri::speech::schema_fb::TextToSpeechCacheContainerStreamingV2::Verify(v18, v21))
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

- (NSString)original_session_id
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

- (FTStartTextToSpeechStreamingRequest)cached_request
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"cached_request"];
  if (!v3)
  {
    v4 = [FTStartTextToSpeechStreamingRequest alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 7u && (v7 = *v6[6].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTStartTextToSpeechStreamingRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"cached_request"];
  }

  return v3;
}

- (FTBeginTextToSpeechStreamingResponse)cached_begin_response
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"cached_begin_response"];
  if (!v3)
  {
    v4 = [FTBeginTextToSpeechStreamingResponse alloc];
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

    v3 = [(FTBeginTextToSpeechStreamingResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"cached_begin_response"];
  }

  return v3;
}

- (NSArray)cached_partial_response
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"cached_partial_response"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __66__FTTextToSpeechCacheContainerStreamingV2_cached_partial_response__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTTextToSpeechCacheContainerStreamingV2 *)self cached_partial_response_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"cached_partial_response"];
  }

  return v3;
}

- (id)cached_partial_response_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"cached_partial_response"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectAtIndexedSubscript:index];
LABEL_3:
    v8 = v7;
    goto LABEL_8;
  }

  root = self->_root;
  v10 = &root[-*root->var0];
  if (*v10->var0 >= 0xBu)
  {
    v11 = *v10[10].var0;
    if (v11)
    {
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTPartialTextToSpeechStreamingResponse alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)cached_partial_response_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"cached_partial_response"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 0xBu && (v8 = *v7[10].var0) != 0)
    {
      v5 = *root[v8 + *root[v8].var0].var0;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)cached_partial_response_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"cached_partial_response"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 0xBu)
    {
      v9 = *v8[10].var0;
      if (v9)
      {
        v18 = 0;
        v10 = *root[v9].var0;
        v11 = *root[v9 + v10].var0;
        if (v11)
        {
          v12 = 0;
          v13 = &root[v10 + 4 + v9];
          v14 = 4 * v11 - 4;
          do
          {
            v15 = [[FTPartialTextToSpeechStreamingResponse alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
            blockCopy[2](blockCopy, v15, v12, &v18);
            v16 = v18;

            if (v16)
            {
              break;
            }

            ++v12;
            v13 += 4;
            v17 = v14;
            v14 -= 4;
          }

          while (v17);
        }
      }
    }
  }
}

- (FTFinalTextToSpeechStreamingResponse)cached_final_response
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"cached_final_response"];
  if (!v3)
  {
    v4 = [FTFinalTextToSpeechStreamingResponse alloc];
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

    v3 = [(FTFinalTextToSpeechStreamingResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"cached_final_response"];
  }

  return v3;
}

- (Offset<siri::speech::schema_fb::TextToSpeechCacheContainerStreamingV2>)addObjectToBuffer:(void *)buffer
{
  v47 = *MEMORY[0x277D85DE8];
  original_session_id = [(FTTextToSpeechCacheContainerStreamingV2 *)self original_session_id];
  v6 = original_session_id;
  if (!original_session_id)
  {
    original_session_id = &stru_284834138;
  }

  uTF8String = [(__CFString *)original_session_id UTF8String];
  v8 = strlen(uTF8String);
  LODWORD(uTF8String) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  cached_request = [(FTTextToSpeechCacheContainerStreamingV2 *)self cached_request];
  v10 = [cached_request addObjectToBuffer:buffer];

  cached_begin_response = [(FTTextToSpeechCacheContainerStreamingV2 *)self cached_begin_response];
  LODWORD(cached_request) = [cached_begin_response addObjectToBuffer:buffer];

  memset(&v45, 0, sizeof(v45));
  cached_partial_response = [(FTTextToSpeechCacheContainerStreamingV2 *)self cached_partial_response];
  v37 = cached_request;
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v45, [cached_partial_response count]);

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  cached_partial_response2 = [(FTTextToSpeechCacheContainerStreamingV2 *)self cached_partial_response];
  v38 = v10;
  v39 = uTF8String;
  selfCopy = self;
  v14 = [cached_partial_response2 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v14)
  {
    v15 = *v42;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(cached_partial_response2);
        }

        v17 = [*(*(&v41 + 1) + 8 * i) addObjectToBuffer:buffer];
        end = v45.__end_;
        if (v45.__end_ >= v45.__end_cap_.__value_)
        {
          begin = v45.__begin_;
          v21 = v45.__end_ - v45.__begin_;
          v22 = v45.__end_ - v45.__begin_;
          v23 = v22 + 1;
          if ((v22 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v24 = v45.__end_cap_.__value_ - v45.__begin_;
          if ((v45.__end_cap_.__value_ - v45.__begin_) >> 1 > v23)
          {
            v23 = v24 >> 1;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v25 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v45, v25);
          }

          *(4 * v22) = v17;
          v19 = (4 * v22 + 4);
          memcpy(0, begin, v21);
          v26 = v45.__begin_;
          v45.__begin_ = 0;
          v45.__end_ = v19;
          v45.__end_cap_.__value_ = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v45.__end_ = v17;
          v19 = end + 1;
        }

        v45.__end_ = v19;
      }

      v14 = [cached_partial_response2 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v14);
  }

  if (v45.__end_ == v45.__begin_)
  {
    v27 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::PartialTextToSpeechStreamingResponse>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::PartialTextToSpeechStreamingResponse>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::PartialTextToSpeechStreamingResponse>> const&)::t;
  }

  else
  {
    v27 = v45.__begin_;
  }

  v28 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v27, v45.__end_ - v45.__begin_);
  cached_final_response = [(FTTextToSpeechCacheContainerStreamingV2 *)selfCopy cached_final_response];
  v30 = [cached_final_response addObjectToBuffer:buffer];

  *(buffer + 70) = 1;
  v31 = *(buffer + 8);
  v32 = *(buffer + 12);
  v33 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, v39);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v38);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, v37);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, v28);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 12, v30);
  v34.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v31 - v32 + v33);
  if (v45.__begin_)
  {
    v45.__end_ = v45.__begin_;
    operator delete(v45.__begin_);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v34;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTextToSpeechCacheContainerStreamingV2 *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__55__FTTextToSpeechCacheContainerStreamingV2_flatbuffData__block_invoke(uint64_t a1)
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