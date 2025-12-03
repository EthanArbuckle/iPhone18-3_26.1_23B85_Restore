@interface FTTranslationPhraseMetaInfo_AlternativeSelectedSpan_Range
- (FTTranslationPhraseMetaInfo_AlternativeSelectedSpan_Range)initWithFlatbuffData:(id)data root:(const Range *)root verify:(BOOL)verify;
- (Offset<siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan_::Range>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int)length;
- (int)start;
@end

@implementation FTTranslationPhraseMetaInfo_AlternativeSelectedSpan_Range

- (FTTranslationPhraseMetaInfo_AlternativeSelectedSpan_Range)initWithFlatbuffData:(id)data root:(const Range *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTTranslationPhraseMetaInfo_AlternativeSelectedSpan_Range;
  v10 = [(FTTranslationPhraseMetaInfo_AlternativeSelectedSpan_Range *)&v25 init];
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

  if (!siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan_::Range::Verify(v18, v21))
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

- (int)start
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 5u && (v4 = *v3[4].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (int)length
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

- (Offset<siri::speech::schema_fb::TranslationPhraseMetaInfo_::AlternativeSelectedSpan_::Range>)addObjectToBuffer:(void *)buffer
{
  selfCopy = self;
  start = [(FTTranslationPhraseMetaInfo_AlternativeSelectedSpan_Range *)self start];
  LODWORD(selfCopy) = [(FTTranslationPhraseMetaInfo_AlternativeSelectedSpan_Range *)selfCopy length];
  *(buffer + 70) = 1;
  v6 = *(buffer + 10);
  v7 = *(buffer + 8) - *(buffer + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 4, start, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, selfCopy, 0);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v7 + v6);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTranslationPhraseMetaInfo_AlternativeSelectedSpan_Range *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

@end