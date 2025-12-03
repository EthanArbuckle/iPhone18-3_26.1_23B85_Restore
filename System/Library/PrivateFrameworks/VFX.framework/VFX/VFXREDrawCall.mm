@interface VFXREDrawCall
- (NSString)renderPassName;
- (id)customHandler;
- (id)indexBuffer;
- (int64_t)emitterObjectID;
- (int64_t)indexBufferOffset;
- (int64_t)indexBufferSize;
- (void)setRenderPassName:(id)name;
@end

@implementation VFXREDrawCall

- (id)indexBuffer
{
  v3 = *(*(self + OBJC_IVAR___VFXREDrawCall_drawCall) + 32);
  if (v3)
  {
    v3 = swift_unknownObjectRetain();
    v2 = vars8;
  }

  return v3;
}

- (int64_t)indexBufferOffset
{
  v2 = *(self + OBJC_IVAR___VFXREDrawCall_drawCall);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (int64_t)indexBufferSize
{
  v2 = *(self + OBJC_IVAR___VFXREDrawCall_drawCall);
  v3 = *(v2 + 32);
  v4 = *(v2 + 44);
  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (id)customHandler
{
  v2 = *(self + OBJC_IVAR___VFXREDrawCall_handler + 8);
  v5[4] = *(self + OBJC_IVAR___VFXREDrawCall_handler);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1AF756610;
  v5[3] = &unk_1F24E6050;
  v3 = _Block_copy(v5);

  return v3;
}

- (NSString)renderPassName
{

  v2 = sub_1AFDFCEC8();

  return v2;
}

- (void)setRenderPassName:(id)name
{
  v4 = sub_1AFDFCEF8();
  v5 = (self + OBJC_IVAR___VFXREDrawCall_renderPassName);
  *v5 = v4;
  v5[1] = v6;
}

- (int64_t)emitterObjectID
{
  v3 = *(self + OBJC_IVAR___VFXREDrawCall_emitter);
  v2 = *(self + OBJC_IVAR___VFXREDrawCall_emitter + 4);
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3 == 0xFFFFFFFFLL;
  }

  v5 = v3 | (v2 << 32);
  if (v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

@end