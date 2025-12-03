@interface FTLanguageDetected
- (FTLanguageDetected)initWithFlatbuffData:(id)data root:(const LanguageDetected *)root verify:(BOOL)verify;
- (NSArray)predictions;
- (NSString)detected_locale;
- (Offset<siri::speech::schema_fb::LanguageDetected>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (id)predictions_objectAtIndex:(unint64_t)index;
- (unint64_t)predictions_count;
- (void)predictions_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTLanguageDetected

- (FTLanguageDetected)initWithFlatbuffData:(id)data root:(const LanguageDetected *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTLanguageDetected;
  v10 = [(FTLanguageDetected *)&v25 init];
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

  if (!siri::speech::schema_fb::LanguageDetected::Verify(v18, v21))
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

- (NSString)detected_locale
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

- (NSArray)predictions
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"predictions"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __33__FTLanguageDetected_predictions__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTLanguageDetected *)self predictions_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"predictions"];
  }

  return v3;
}

- (id)predictions_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"predictions"];
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
  if (*v10->var0 >= 7u)
  {
    v11 = *v10[6].var0;
    if (v11)
    {
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTLanguageDetectionPrediction alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)predictions_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"predictions"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 7u && (v8 = *v7[6].var0) != 0)
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

- (void)predictions_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"predictions"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 7u)
    {
      v9 = *v8[6].var0;
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
            v15 = [[FTLanguageDetectionPrediction alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (Offset<siri::speech::schema_fb::LanguageDetected>)addObjectToBuffer:(void *)buffer
{
  v30 = *MEMORY[0x277D85DE8];
  detected_locale = [(FTLanguageDetected *)self detected_locale];
  v6 = detected_locale;
  if (!detected_locale)
  {
    detected_locale = &stru_284834138;
  }

  uTF8String = [(__CFString *)detected_locale UTF8String];
  v8 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  memset(&v28, 0, sizeof(v28));
  predictions = [(FTLanguageDetected *)self predictions];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v28, [predictions count]);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  predictions2 = [(FTLanguageDetected *)self predictions];
  v12 = [predictions2 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v12)
  {
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(predictions2);
        }

        v23 = [*(*(&v24 + 1) + 8 * i) addObjectToBuffer:buffer];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v28.__begin_, &v23);
      }

      v12 = [predictions2 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v12);
  }

  if (v28.__end_ == v28.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::LanguageDetectionPrediction>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::LanguageDetectionPrediction>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::LanguageDetectionPrediction>> const&)::t;
  }

  else
  {
    begin = v28.__begin_;
  }

  v16 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, begin, v28.__end_ - v28.__begin_);
  *(buffer + 70) = 1;
  v17 = *(buffer + 8);
  v18 = *(buffer + 12);
  v19 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v16);
  v20.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v17 - v18 + v19);
  if (v28.__begin_)
  {
    v28.__end_ = v28.__begin_;
    operator delete(v28.__begin_);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTLanguageDetected *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__34__FTLanguageDetected_flatbuffData__block_invoke(uint64_t a1)
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