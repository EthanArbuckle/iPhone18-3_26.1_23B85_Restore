@interface FTResetServerEndpointer
- (FTResetServerEndpointer)initWithFlatbuffData:(id)a3 root:(const ResetServerEndpointer *)a4 verify:(BOOL)a5;
- (Offset<siri::speech::schema_fb::ResetServerEndpointer>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (int64_t)speech_packet_count;
@end

@implementation FTResetServerEndpointer

- (FTResetServerEndpointer)initWithFlatbuffData:(id)a3 root:(const ResetServerEndpointer *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTResetServerEndpointer;
  v10 = [(FTResetServerEndpointer *)&v25 init];
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_14;
  }

  objc_storeStrong(&v10->_data, a3);
  if (!a4)
  {
    v11 = [(NSData *)v10->_data bytes];
    a4 = v11 + *v11;
  }

  v10->_root = a4;
  if (!v5)
  {
    goto LABEL_13;
  }

  v12 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < v12 || root > v12 + v13)
  {
    goto LABEL_14;
  }

  v16 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = v16;
  v21[1] = v17;
  v22 = xmmword_233005E20;
  v23 = 0;
  v24 = 1;
  v18 = v10->_root;
  if (!v18)
  {
    goto LABEL_13;
  }

  if (!siri::speech::schema_fb::ResetServerEndpointer::Verify(v18, v21))
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

- (int64_t)speech_packet_count
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

- (Offset<siri::speech::schema_fb::ResetServerEndpointer>)addObjectToBuffer:(void *)a3
{
  v4 = [(FTResetServerEndpointer *)self speech_packet_count];
  *(a3 + 70) = 1;
  v5 = *(a3 + 10);
  v6 = *(a3 + 8) - *(a3 + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned long long>(a3, 4, v4, 0);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v6 + v5);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTResetServerEndpointer *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__39__FTResetServerEndpointer_flatbuffData__block_invoke(uint64_t a1)
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