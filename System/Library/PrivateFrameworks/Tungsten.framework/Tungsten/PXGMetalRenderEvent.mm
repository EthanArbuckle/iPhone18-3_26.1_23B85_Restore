@interface PXGMetalRenderEvent
+ (id)eventWithRenderTexture:(id *)texture pipeline:(id *)pipeline;
- (PXGMetalRenderEvent)initWithRenderTexture:(id *)texture pipeline:(id *)pipeline;
- (id)serializable;
@end

@implementation PXGMetalRenderEvent

- (id)serializable
{
  v3 = objc_alloc_init(PXGMetalRecordingRenderEventSerializable);
  serializable = [(PXGMetalRecordingMetalSpriteTexture *)self->_recordingTexture serializable];
  [(PXGMetalRecordingRenderEventSerializable *)v3 setTexture:serializable];

  [(PXGMetalRecordingRenderEventSerializable *)v3 setBufferRange:self->_renderTexture.bufferRange.location, self->_renderTexture.bufferRange.length];
  *&v5 = self->_renderTexture.zPosition;
  [(PXGMetalRecordingRenderEventSerializable *)v3 setZPosition:v5];
  [(PXGMetalRecordingRenderEventSerializable *)v3 setContentsGravity:self->_renderTexture.contentsGravity];
  [(PXGMetalRecordingRenderEventSerializable *)v3 setIsOpaque:self->_anon_88[12]];
  v6 = MEMORY[0x277CBEB18];
  spriteIndexes = [(PXGMetalRecordingMetalSpriteTexture *)self->_recordingTexture spriteIndexes];
  v8 = [v6 arrayWithCapacity:{objc_msgSend(spriteIndexes, "count")}];

  spriteIndexes2 = [(PXGMetalRecordingMetalSpriteTexture *)self->_recordingTexture spriteIndexes];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __35__PXGMetalRenderEvent_serializable__block_invoke;
  v12[3] = &unk_2782ABC08;
  v13 = v8;
  v10 = v8;
  [spriteIndexes2 enumerateIndexesUsingBlock:v12];

  [(PXGMetalRecordingRenderEventSerializable *)v3 setSpriteIndices:v10];

  return v3;
}

void __35__PXGMetalRenderEvent_serializable__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v2 addObject:v3];
}

- (PXGMetalRenderEvent)initWithRenderTexture:(id *)texture pipeline:(id *)pipeline
{
  v14.receiver = self;
  v14.super_class = PXGMetalRenderEvent;
  v6 = [(PXGTungstenRecordingEvent *)&v14 initWithComponent:1 eventName:@"render"];
  v7 = v6;
  if (v6)
  {
    __copy_assignment_8_8_t0w16_s16_s24_s32_t40w1(&v6->_pipeline, pipeline);
    v8 = *&texture[1].var0;
    v10 = *&texture->var0;
    var2 = texture->var2;
    *&v7->_renderTexture.zPosition = *&texture->var3;
    *v7->_anon_88 = v8;
    *&v7->_renderTexture.texture = v10;
    v7->_renderTexture.bufferRange = var2;
    v7->_renderTexture.shader = 0;
    v11 = [[PXGMetalRecordingMetalSpriteTexture alloc] initWithTexture:texture->var0];
    recordingTexture = v7->_recordingTexture;
    v7->_recordingTexture = v11;
  }

  __destructor_8_s16_s24_s32(pipeline);
  return v7;
}

+ (id)eventWithRenderTexture:(id *)texture pipeline:(id *)pipeline
{
  v6 = [self alloc];
  v13 = *&pipeline->var0;
  v7 = pipeline->var2;
  v14 = v7;
  v8 = pipeline->var3;
  v15 = v8;
  v9 = pipeline->var4;
  v16 = v9;
  var5 = pipeline->var5;
  if (v6)
  {
    v10 = [v6 initWithRenderTexture:texture pipeline:&v13];
  }

  else
  {
    v11 = v9;

    v10 = 0;
  }

  __destructor_8_s16_s24_s32(pipeline);

  return v10;
}

@end