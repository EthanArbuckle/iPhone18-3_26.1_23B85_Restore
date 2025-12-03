@interface QSSShortcutFuzzyMatchResponse
- (NSArray)shortcut_score_pairs;
- (NSString)utterance;
- (Offset<siri::speech::schema_fb::ShortcutFuzzyMatchResponse>)addObjectToBuffer:(void *)buffer;
- (QSSShortcutFuzzyMatchResponse)initWithFlatbuffData:(id)data root:(const ShortcutFuzzyMatchResponse *)root verify:(BOOL)verify;
- (id)flatbuffData;
- (int)return_code;
@end

@implementation QSSShortcutFuzzyMatchResponse

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
  v2.var0 = [(QSSShortcutFuzzyMatchResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__45__QSSShortcutFuzzyMatchResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::ShortcutFuzzyMatchResponse>)addObjectToBuffer:(void *)buffer
{
  v27 = *MEMORY[0x277D85DE8];
  utterance = [(QSSShortcutFuzzyMatchResponse *)self utterance];
  v5 = utterance;
  if (!utterance)
  {
    utterance = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)utterance UTF8String];
  v7 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v7);

  shortcut_score_pairs = [(QSSShortcutFuzzyMatchResponse *)self shortcut_score_pairs];
  v9 = [shortcut_score_pairs count];
  if (v9)
  {
    if (!(v9 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v9);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(QSSShortcutFuzzyMatchResponse *)self shortcut_score_pairs];
  if ([obj countByEnumeratingWithState:&v22 objects:v26 count:16])
  {
    *v23;
    *v23;
    [**(&v22 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v10 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  return_code = [(QSSShortcutFuzzyMatchResponse *)self return_code];
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v12 = *(buffer + 8);
  v13 = *(buffer + 12);
  v14 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  if (v10)
  {
    v15 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v10);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, v15);
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, return_code);
  v16.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v12 - v13 + v14);
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (int)return_code
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

- (NSArray)shortcut_score_pairs
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"shortcut_score_pairs"];
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
            v11 = [[QSSShortcutFuzzyMatchResponse_ShortcutScorePair alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"shortcut_score_pairs"];
  }

  return array;
}

flatbuffers::DetachedBuffer *__63__QSSShortcutFuzzyMatchResponse_ShortcutScorePair_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (NSString)utterance
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

- (QSSShortcutFuzzyMatchResponse)initWithFlatbuffData:(id)data root:(const ShortcutFuzzyMatchResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v40.receiver = self;
  v40.super_class = QSSShortcutFuzzyMatchResponse;
  v10 = [(QSSShortcutFuzzyMatchResponse *)&v40 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_38;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_39;
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
    goto LABEL_37;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v14 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v14)
  {
    goto LABEL_39;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v18 = [(NSData *)v10->_data length];
  v35 = bytes3;
  v36 = v18;
  v37 = xmmword_26914CD70;
  v38 = 0;
  v39 = 1;
  if (v18 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v19 = v10->_root;
  if (!v19)
  {
    goto LABEL_37;
  }

  if (!flatbuffers::Verifier::VerifyTableStart(&v35, v11->_root->var0) || !flatbuffers::Table::VerifyOffset(v19, &v35, 4u))
  {
    goto LABEL_39;
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
    goto LABEL_39;
  }

  v23 = *v19;
  if (*(v19 - v23) < 7u)
  {
    goto LABEL_33;
  }

  if (*(v19 - v23 + 6))
  {
    if (flatbuffers::Verifier::VerifyVectorOrString(&v35, v19 + *(v19 - v23 + 6) + *(v19 + *(v19 - v23 + 6)), 4uLL, 0))
    {
      v23 = *v19;
      if (*(v19 - v23) < 7u)
      {
        goto LABEL_33;
      }

      v24 = -v23;
      goto LABEL_27;
    }

LABEL_39:
    v33 = 0;
    goto LABEL_40;
  }

  v24 = -v23;
LABEL_27:
  v25 = *(v19 + v24 + 6);
  if (v25)
  {
    v26 = (v19 + v25 + *(v19 + v25));
    if (*v26)
    {
      v27 = 0;
      v28 = v26 + 1;
      while (siri::speech::schema_fb::RequestStatsResponse_::DoubleStat::Verify((v28 + *v28), &v35))
      {
        ++v27;
        ++v28;
        if (v27 >= *v26)
        {
          LODWORD(v23) = *v19;
          goto LABEL_33;
        }
      }

      goto LABEL_39;
    }
  }

LABEL_33:
  v29 = (v19 - v23);
  if (*v29 >= 9u)
  {
    v30 = v29[4];
    if (v30)
    {
      if (v36 < 5 || v36 - 4 < v19 + v30 - v35)
      {
        goto LABEL_39;
      }
    }
  }

LABEL_37:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = dictionary;

LABEL_38:
  v33 = v11;
LABEL_40:

  return v33;
}

@end