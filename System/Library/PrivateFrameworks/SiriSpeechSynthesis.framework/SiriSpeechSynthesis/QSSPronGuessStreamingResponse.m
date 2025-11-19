@interface QSSPronGuessStreamingResponse
- (Offset<siri::speech::qss_fb::PronGuessStreamingResponse>)addObjectToBuffer:(void *)a3;
- (QSSPronGuessResponse)contentAsQSSPronGuessResponse;
- (QSSPronGuessStreamingResponse)initWithFlatbuffData:(id)a3 root:(const PronGuessStreamingResponse *)a4 verify:(BOOL)a5;
- (id)flatbuffData;
- (int64_t)content_type;
@end

@implementation QSSPronGuessStreamingResponse

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
  v2.var0 = [(QSSPronGuessStreamingResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__45__QSSPronGuessStreamingResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::qss_fb::PronGuessStreamingResponse>)addObjectToBuffer:(void *)a3
{
  v5 = [(QSSPronGuessStreamingResponse *)self content_type];
  if ([(QSSPronGuessStreamingResponse *)self content_type]== 1)
  {
    v6 = [(QSSPronGuessStreamingResponse *)self contentAsQSSPronGuessResponse];
    v7 = [v6 addObjectToBuffer:a3];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v10 = *(a3 + 5);
  v9 = *(a3 + 6);
  v11 = *(a3 + 4);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 4, v5);
  if ([(QSSPronGuessStreamingResponse *)self content_type]== 1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, v8);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a3, v11 - v9 + v10);
}

- (QSSPronGuessResponse)contentAsQSSPronGuessResponse
{
  if ([(QSSPronGuessStreamingResponse *)self content_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"content"];
    if (!v3)
    {
      v4 = [QSSPronGuessResponse alloc];
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

      v3 = [(QSSPronGuessResponse *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
      [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"content"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)content_type
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 5u && (v4 = *v3[4].var0) != 0)
  {
    return root[v4].var0[0];
  }

  else
  {
    return 0;
  }
}

- (QSSPronGuessStreamingResponse)initWithFlatbuffData:(id)a3 root:(const PronGuessStreamingResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v32.receiver = self;
  v32.super_class = QSSPronGuessStreamingResponse;
  v10 = [(QSSPronGuessStreamingResponse *)&v32 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_30;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_31;
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
    goto LABEL_29;
  }

  v13 = [(NSData *)v10->_data bytes];
  v14 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < v13 || root > v13 + v14)
  {
    goto LABEL_31;
  }

  v17 = [(NSData *)v10->_data bytes];
  v18 = [(NSData *)v10->_data length];
  v27 = v17;
  v28 = v18;
  v29 = xmmword_26914CD70;
  v30 = 0;
  v31 = 1;
  if (v18 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v19 = v10->_root;
  if (!v19)
  {
    goto LABEL_29;
  }

  if (!flatbuffers::Verifier::VerifyTableStart(&v27, v11->_root->var0))
  {
    goto LABEL_31;
  }

  v20 = (v19 - *v19);
  v21 = *v20;
  if (v21 >= 5 && v20[2] && (v28 < 2 || v28 - 1 < v19 + v20[2] - v27))
  {
    goto LABEL_31;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v27, 6u))
  {
    goto LABEL_31;
  }

  if (v21 >= 7)
  {
    if (v20[3])
    {
      v22 = (v19 + v20[3] + *(v19 + v20[3]));
LABEL_24:
      if (!v20[2] || !*(v19 + v20[2]) || *(v19 + v20[2]) == 1 && (!v22 || siri::speech::schema_fb::PronGuessResponse::Verify(v22, &v27)))
      {
        goto LABEL_29;
      }

LABEL_31:
      v25 = 0;
      goto LABEL_32;
    }

LABEL_23:
    v22 = 0;
    goto LABEL_24;
  }

  if (v21 >= 5)
  {
    goto LABEL_23;
  }

LABEL_29:
  v23 = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = v23;

LABEL_30:
  v25 = v11;
LABEL_32:

  return v25;
}

@end