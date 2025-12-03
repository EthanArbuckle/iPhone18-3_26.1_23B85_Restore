@interface FTCorrectionsValidatorResponse
- (FTCorrectionsValidatorResponse)initWithFlatbuffData:(id)data root:(const CorrectionsValidatorResponse *)root verify:(BOOL)verify;
- (NSArray)corrections;
- (NSString)language;
- (NSString)return_str;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::CorrectionsValidatorResponse>)addObjectToBuffer:(void *)buffer;
- (id)corrections_objectAtIndex:(unint64_t)index;
- (id)flatbuffData;
- (int)return_code;
- (unint64_t)corrections_count;
- (void)corrections_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTCorrectionsValidatorResponse

- (FTCorrectionsValidatorResponse)initWithFlatbuffData:(id)data root:(const CorrectionsValidatorResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTCorrectionsValidatorResponse;
  v10 = [(FTCorrectionsValidatorResponse *)&v25 init];
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

  if (!siri::speech::schema_fb::CorrectionsValidatorResponse::Verify(v18, v21))
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

- (NSString)language
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

- (int)return_code
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

- (NSString)return_str
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 12].var0;
  if (*root[-v3 + 12].var0)
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

- (NSArray)corrections
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"corrections"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__FTCorrectionsValidatorResponse_corrections__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTCorrectionsValidatorResponse *)self corrections_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"corrections"];
  }

  return v3;
}

- (id)corrections_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"corrections"];
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
  if (*v10->var0 >= 0xFu)
  {
    v11 = *v10[14].var0;
    if (v11)
    {
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTCorrectionsAlignment alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)corrections_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"corrections"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 0xFu && (v8 = *v7[14].var0) != 0)
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

- (void)corrections_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"corrections"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 0xFu)
    {
      v9 = *v8[14].var0;
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
            v15 = [[FTCorrectionsAlignment alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (Offset<siri::speech::schema_fb::CorrectionsValidatorResponse>)addObjectToBuffer:(void *)buffer
{
  v56 = *MEMORY[0x277D85DE8];
  speech_id = [(FTCorrectionsValidatorResponse *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_284834138;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  session_id = [(FTCorrectionsValidatorResponse *)self session_id];
  v10 = session_id;
  if (!session_id)
  {
    session_id = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v12 = strlen(uTF8String2);
  v48 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v12);

  language = [(FTCorrectionsValidatorResponse *)self language];
  v14 = language;
  if (!language)
  {
    language = &stru_284834138;
  }

  uTF8String3 = [(__CFString *)language UTF8String];
  v16 = strlen(uTF8String3);
  v47 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String3, v16);

  return_code = [(FTCorrectionsValidatorResponse *)self return_code];
  return_str = [(FTCorrectionsValidatorResponse *)self return_str];
  v19 = return_str;
  if (!return_str)
  {
    return_str = &stru_284834138;
  }

  uTF8String4 = [(__CFString *)return_str UTF8String];
  v21 = strlen(uTF8String4);
  v45 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String4, v21);

  memset(&v54, 0, sizeof(v54));
  corrections = [(FTCorrectionsValidatorResponse *)self corrections];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v54, [corrections count]);

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  corrections2 = [(FTCorrectionsValidatorResponse *)self corrections];
  v46 = return_code;
  v24 = [corrections2 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v24)
  {
    v25 = *v51;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v51 != v25)
        {
          objc_enumerationMutation(corrections2);
        }

        v27 = [*(*(&v50 + 1) + 8 * i) addObjectToBuffer:buffer];
        end = v54.__end_;
        if (v54.__end_ >= v54.__end_cap_.__value_)
        {
          begin = v54.__begin_;
          v31 = v54.__end_ - v54.__begin_;
          v32 = v54.__end_ - v54.__begin_;
          v33 = v32 + 1;
          if ((v32 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v34 = v54.__end_cap_.__value_ - v54.__begin_;
          if ((v54.__end_cap_.__value_ - v54.__begin_) >> 1 > v33)
          {
            v33 = v34 >> 1;
          }

          if (v34 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v35 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v35 = v33;
          }

          if (v35)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v54, v35);
          }

          *(4 * v32) = v27;
          v29 = (4 * v32 + 4);
          memcpy(0, begin, v31);
          v36 = v54.__begin_;
          v54.__begin_ = 0;
          v54.__end_ = v29;
          v54.__end_cap_.__value_ = 0;
          if (v36)
          {
            operator delete(v36);
          }
        }

        else
        {
          *v54.__end_ = v27;
          v29 = end + 1;
        }

        v54.__end_ = v29;
      }

      v24 = [corrections2 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v24);
  }

  if (v54.__end_ == v54.__begin_)
  {
    v37 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::CorrectionsAlignment>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::CorrectionsAlignment>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::CorrectionsAlignment>> const&)::t;
  }

  else
  {
    v37 = v54.__begin_;
  }

  v38 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v37, v54.__end_ - v54.__begin_);
  *(buffer + 70) = 1;
  v39 = *(buffer + 8);
  v40 = *(buffer + 12);
  v41 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v48);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, v47);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 10, v46, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 12, v45);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 14, v38);
  v42.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v39 - v40 + v41);
  if (v54.__begin_)
  {
    v54.__end_ = v54.__begin_;
    operator delete(v54.__begin_);
  }

  v43 = *MEMORY[0x277D85DE8];
  return v42;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTCorrectionsValidatorResponse *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__46__FTCorrectionsValidatorResponse_flatbuffData__block_invoke(uint64_t a1)
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