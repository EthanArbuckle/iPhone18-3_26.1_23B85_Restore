@interface QSSShortcutFuzzyMatchResponse
- (NSArray)shortcut_score_pairs;
- (NSString)utterance;
- (Offset<siri::speech::schema_fb::ShortcutFuzzyMatchResponse>)addObjectToBuffer:(void *)a3;
- (QSSShortcutFuzzyMatchResponse)initWithFlatbuffData:(id)a3 root:(const ShortcutFuzzyMatchResponse *)a4 verify:(BOOL)a5;
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

- (Offset<siri::speech::schema_fb::ShortcutFuzzyMatchResponse>)addObjectToBuffer:(void *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [(QSSShortcutFuzzyMatchResponse *)self utterance];
  v5 = v4;
  if (!v4)
  {
    v4 = &stru_2879AE8E0;
  }

  v6 = [(__CFString *)v4 UTF8String];
  v7 = strlen(v6);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v6, v7);

  v8 = [(QSSShortcutFuzzyMatchResponse *)self shortcut_score_pairs];
  v9 = [v8 count];
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
    [**(&v22 + 1) addObjectToBuffer:a3];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(a3, 0, 4uLL);
  v10 = flatbuffers::FlatBufferBuilder::EndVector(a3, 0);
  v11 = [(QSSShortcutFuzzyMatchResponse *)self return_code];
  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v12 = *(a3 + 8);
  v13 = *(a3 + 12);
  v14 = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, String);
  if (v10)
  {
    v15 = flatbuffers::FlatBufferBuilder::ReferTo(a3, v10);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 6, v15);
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 8, v11);
  v16.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v12 - v13 + v14);
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
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"shortcut_score_pairs"];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
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
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"shortcut_score_pairs"];
  }

  return v3;
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

- (QSSShortcutFuzzyMatchResponse)initWithFlatbuffData:(id)a3 root:(const ShortcutFuzzyMatchResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v40.receiver = self;
  v40.super_class = QSSShortcutFuzzyMatchResponse;
  v10 = [(QSSShortcutFuzzyMatchResponse *)&v40 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_38;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_39;
  }

  objc_storeStrong(&v10->_data, a3);
  if (!a4)
  {
    v12 = [(NSData *)v10->_data bytes];
    a4 = v12 + *v12;
  }

  v10->_root = a4;
  if (!v5)
  {
    goto LABEL_37;
  }

  v13 = [(NSData *)v10->_data bytes];
  v14 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < v13 || root > v13 + v14)
  {
    goto LABEL_39;
  }

  v17 = [(NSData *)v10->_data bytes];
  v18 = [(NSData *)v10->_data length];
  v35 = v17;
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
  v31 = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = v31;

LABEL_38:
  v33 = v11;
LABEL_40:

  return v33;
}

@end