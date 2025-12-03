@interface QSSAudioPacket
- (Offset<siri::speech::schema_fb::AudioPacket>)addObjectToBuffer:(void *)buffer;
- (QSSAudioPacket)initWithFlatbuffData:(id)data root:(const AudioPacket *)root verify:(BOOL)verify;
- (id)flatbuffData;
- (void)audio_bytes:(id)audio_bytes;
@end

@implementation QSSAudioPacket

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
  v2.var0 = [(QSSAudioPacket *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__30__QSSAudioPacket_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::AudioPacket>)addObjectToBuffer:(void *)buffer
{
  bufferCopy = buffer;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3812000000;
  v12 = __Block_byref_object_copy__645;
  v13 = __Block_byref_object_dispose__646;
  v14 = &unk_26916BD4D;
  v15 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__QSSAudioPacket_addObjectToBuffer___block_invoke;
  v8[3] = &unk_279C4C2C8;
  v8[4] = &v9;
  v8[5] = buffer;
  [(QSSAudioPacket *)self audio_bytes:v8];
  flatbuffers::FlatBufferBuilder::NotNested(bufferCopy);
  bufferCopy[70] = 1;
  v4 = *(bufferCopy + 5);
  v5 = *(bufferCopy + 6);
  v6 = *(bufferCopy + 4);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(bufferCopy, 4, *(v10 + 12));
  LODWORD(bufferCopy) = flatbuffers::FlatBufferBuilder::EndTable(bufferCopy, v6 - v5 + v4);
  _Block_object_dispose(&v9, 8);
  return bufferCopy;
}

uint64_t __36__QSSAudioPacket_addObjectToBuffer___block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  result = flatbuffers::FlatBufferBuilder::CreateVector<unsigned char>(*(a1 + 40), a2, a3);
  *(*(*(a1 + 32) + 8) + 48) = result;
  return result;
}

- (void)audio_bytes:(id)audio_bytes
{
  root = self->_root;
  v5 = &root[-*root->var0];
  audio_bytesCopy = audio_bytes;
  v7 = *root[*v5[4].var0 + *root[*v5[4].var0].var0].var0;
  v8 = audio_bytesCopy;
  (*(audio_bytes + 2))();
}

- (QSSAudioPacket)initWithFlatbuffData:(id)data root:(const AudioPacket *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSAudioPacket;
  v10 = [(QSSAudioPacket *)&v29 init];
  v11 = v10;
  if (v10)
  {
    if (!dataCopy || ![dataCopy length])
    {
      goto LABEL_16;
    }

    objc_storeStrong(&v10->_data, data);
    if (!root)
    {
      bytes = [(NSData *)v10->_data bytes];
      root = bytes + *bytes;
    }

    v10->_root = root;
    if (verifyCopy)
    {
      bytes2 = [(NSData *)v10->_data bytes];
      v14 = [(NSData *)v10->_data length];
      root = v10->_root;
      if (root < bytes2 || root > bytes2 + v14)
      {
        goto LABEL_16;
      }

      bytes3 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v24 = bytes3;
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
        if (!siri::speech::schema_fb::TTSWordPhonemes::Verify(v19, &v24))
        {
LABEL_16:
          v22 = 0;
          goto LABEL_17;
        }
      }
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v10->_storage;
    v10->_storage = dictionary;
  }

  v22 = v10;
LABEL_17:

  return v22;
}

@end