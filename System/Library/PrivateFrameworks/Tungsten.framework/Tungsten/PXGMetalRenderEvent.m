@interface PXGMetalRenderEvent
+ (id)eventWithRenderTexture:(id *)a3 pipeline:(id *)a4;
- (PXGMetalRenderEvent)initWithRenderTexture:(id *)a3 pipeline:(id *)a4;
- (id)serializable;
@end

@implementation PXGMetalRenderEvent

- (id)serializable
{
  v3 = objc_alloc_init(PXGMetalRecordingRenderEventSerializable);
  v4 = [(PXGMetalRecordingMetalSpriteTexture *)self->_recordingTexture serializable];
  [(PXGMetalRecordingRenderEventSerializable *)v3 setTexture:v4];

  [(PXGMetalRecordingRenderEventSerializable *)v3 setBufferRange:self->_renderTexture.bufferRange.location, self->_renderTexture.bufferRange.length];
  *&v5 = self->_renderTexture.zPosition;
  [(PXGMetalRecordingRenderEventSerializable *)v3 setZPosition:v5];
  [(PXGMetalRecordingRenderEventSerializable *)v3 setContentsGravity:self->_renderTexture.contentsGravity];
  [(PXGMetalRecordingRenderEventSerializable *)v3 setIsOpaque:self->_anon_88[12]];
  v6 = MEMORY[0x277CBEB18];
  v7 = [(PXGMetalRecordingMetalSpriteTexture *)self->_recordingTexture spriteIndexes];
  v8 = [v6 arrayWithCapacity:{objc_msgSend(v7, "count")}];

  v9 = [(PXGMetalRecordingMetalSpriteTexture *)self->_recordingTexture spriteIndexes];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __35__PXGMetalRenderEvent_serializable__block_invoke;
  v12[3] = &unk_2782ABC08;
  v13 = v8;
  v10 = v8;
  [v9 enumerateIndexesUsingBlock:v12];

  [(PXGMetalRecordingRenderEventSerializable *)v3 setSpriteIndices:v10];

  return v3;
}

void __35__PXGMetalRenderEvent_serializable__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v2 addObject:v3];
}

- (PXGMetalRenderEvent)initWithRenderTexture:(id *)a3 pipeline:(id *)a4
{
  v14.receiver = self;
  v14.super_class = PXGMetalRenderEvent;
  v6 = [(PXGTungstenRecordingEvent *)&v14 initWithComponent:1 eventName:@"render"];
  v7 = v6;
  if (v6)
  {
    __copy_assignment_8_8_t0w16_s16_s24_s32_t40w1(&v6->_pipeline, a4);
    v8 = *&a3[1].var0;
    v10 = *&a3->var0;
    var2 = a3->var2;
    *&v7->_renderTexture.zPosition = *&a3->var3;
    *v7->_anon_88 = v8;
    *&v7->_renderTexture.texture = v10;
    v7->_renderTexture.bufferRange = var2;
    v7->_renderTexture.shader = 0;
    v11 = [[PXGMetalRecordingMetalSpriteTexture alloc] initWithTexture:a3->var0];
    recordingTexture = v7->_recordingTexture;
    v7->_recordingTexture = v11;
  }

  __destructor_8_s16_s24_s32(a4);
  return v7;
}

+ (id)eventWithRenderTexture:(id *)a3 pipeline:(id *)a4
{
  v6 = [a1 alloc];
  v13 = *&a4->var0;
  v7 = a4->var2;
  v14 = v7;
  v8 = a4->var3;
  v15 = v8;
  v9 = a4->var4;
  v16 = v9;
  var5 = a4->var5;
  if (v6)
  {
    v10 = [v6 initWithRenderTexture:a3 pipeline:&v13];
  }

  else
  {
    v11 = v9;

    v10 = 0;
  }

  __destructor_8_s16_s24_s32(a4);

  return v10;
}

@end