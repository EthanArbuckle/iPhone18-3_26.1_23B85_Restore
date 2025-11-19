@interface QSSSetRequestOrigin
- (BOOL)enable_geo_location_features;
- (Offset<siri::speech::schema_fb::SetRequestOrigin>)addObjectToBuffer:(void *)a3;
- (QSSSetRequestOrigin)initWithFlatbuffData:(id)a3 root:(const SetRequestOrigin *)a4 verify:(BOOL)a5;
- (double)latitude;
- (double)longitude;
- (id)flatbuffData;
@end

@implementation QSSSetRequestOrigin

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
  v2.var0 = [(QSSSetRequestOrigin *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__35__QSSSetRequestOrigin_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::SetRequestOrigin>)addObjectToBuffer:(void *)a3
{
  v4 = self;
  [(QSSSetRequestOrigin *)self latitude];
  v6 = v5;
  [(QSSSetRequestOrigin *)v4 longitude];
  v8 = v7;
  LODWORD(v4) = [(QSSSetRequestOrigin *)v4 enable_geo_location_features];
  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v9 = *(a3 + 10);
  v10 = *(a3 + 8) - *(a3 + 12);
  flatbuffers::FlatBufferBuilder::AddElement<double>(a3, 4, v6);
  flatbuffers::FlatBufferBuilder::AddElement<double>(a3, 6, v8);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 8, v4);

  return flatbuffers::FlatBufferBuilder::EndTable(a3, v10 + v9);
}

- (BOOL)enable_geo_location_features
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 9u && (v4 = *v3[8].var0) != 0 && root[v4].var0[0] != 0;
}

- (double)longitude
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 7u)
  {
    v5 = *v3[6].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (double)latitude
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 5u)
  {
    v5 = *v3[4].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (QSSSetRequestOrigin)initWithFlatbuffData:(id)a3 root:(const SetRequestOrigin *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSSetRequestOrigin;
  v10 = [(QSSSetRequestOrigin *)&v29 init];
  v11 = v10;
  if (v10)
  {
    if (!v9 || ![v9 length])
    {
      goto LABEL_16;
    }

    objc_storeStrong(&v10->_data, a3);
    if (!a4)
    {
      v12 = [(NSData *)v10->_data bytes];
      a4 = v12 + *v12;
    }

    v10->_root = a4;
    if (v5)
    {
      v13 = [(NSData *)v10->_data bytes];
      v14 = [(NSData *)v10->_data length];
      root = v10->_root;
      if (root < v13 || root > v13 + v14)
      {
        goto LABEL_16;
      }

      v17 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v24 = v17;
      v25 = v18;
      v26 = xmmword_26914CD70;
      v27 = 0;
      LOBYTE(v28) = 1;
      if (v18 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      v19 = v10->_root;
      if (v19)
      {
        if (!siri::speech::schema_fb::SetRequestOrigin::Verify(v19, &v24))
        {
LABEL_16:
          v22 = 0;
          goto LABEL_17;
        }
      }
    }

    v20 = [MEMORY[0x277CBEB38] dictionary];
    storage = v10->_storage;
    v10->_storage = v20;
  }

  v22 = v10;
LABEL_17:

  return v22;
}

@end