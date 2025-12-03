@interface FTLatnnMitigatorResult
- (BOOL)processed;
- (FTLatnnMitigatorResult)initWithFlatbuffData:(id)data root:(const LatnnMitigatorResult *)root verify:(BOOL)verify;
- (NSString)version;
- (Offset<siri::speech::schema_fb::LatnnMitigatorResult>)addObjectToBuffer:(void *)buffer;
- (double)score;
- (double)threshold;
- (float)calibration_offset;
- (float)calibration_scale;
- (id)flatbuffData;
@end

@implementation FTLatnnMitigatorResult

- (FTLatnnMitigatorResult)initWithFlatbuffData:(id)data root:(const LatnnMitigatorResult *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTLatnnMitigatorResult;
  v10 = [(FTLatnnMitigatorResult *)&v25 init];
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

  if (!siri::speech::schema_fb::LatnnMitigatorResult::Verify(v18, v21))
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

- (BOOL)processed
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 5u && (v4 = *v3[4].var0) != 0 && root[v4].var0[0] != 0;
}

- (NSString)version
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

- (double)threshold
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 9u)
  {
    v5 = *v3[8].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (double)score
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 0xBu)
  {
    v5 = *v3[10].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (float)calibration_scale
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

- (float)calibration_offset
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 0xFu)
  {
    v5 = *v3[14].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (Offset<siri::speech::schema_fb::LatnnMitigatorResult>)addObjectToBuffer:(void *)buffer
{
  processed = [(FTLatnnMitigatorResult *)self processed];
  version = [(FTLatnnMitigatorResult *)self version];
  v7 = version;
  if (!version)
  {
    version = &stru_284834138;
  }

  uTF8String = [(__CFString *)version UTF8String];
  v9 = strlen(uTF8String);
  LODWORD(uTF8String) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v9);

  [(FTLatnnMitigatorResult *)self threshold];
  v11 = v10;
  [(FTLatnnMitigatorResult *)self score];
  v13 = v12;
  [(FTLatnnMitigatorResult *)self calibration_scale];
  v15 = v14;
  [(FTLatnnMitigatorResult *)self calibration_offset];
  v17 = v16;
  *(buffer + 70) = 1;
  v18 = *(buffer + 10);
  v19 = *(buffer + 8) - *(buffer + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 4, processed, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, uTF8String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<double>(buffer, 8, v11, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<double>(buffer, 10, v13, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(buffer, 12, v15, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(buffer, 14, v17, 0.0);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v19 + v18);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTLatnnMitigatorResult *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__38__FTLatnnMitigatorResult_flatbuffData__block_invoke(uint64_t a1)
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