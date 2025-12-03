@interface TGITokenMaskObjC
- (_TtC24TokenGenerationInference16TGITokenMaskObjC)init;
- (int64_t)count;
- (void)getTrailingMaskBytes:(id)bytes;
@end

@implementation TGITokenMaskObjC

- (int64_t)count
{
  v2 = *(self + OBJC_IVAR____TtC24TokenGenerationInference16TGITokenMaskObjC_tokenMask);
  v3 = *(self + OBJC_IVAR____TtC24TokenGenerationInference16TGITokenMaskObjC_tokenMask + 8);
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_5;
  }

  v6 = *(*(self + OBJC_IVAR____TtC24TokenGenerationInference16TGITokenMaskObjC_tokenMask + 16) + 16);
  self = v5 + v6;
  if (__OFADD__(v5, v6))
  {
LABEL_5:
    __break(1u);
  }

  return self;
}

- (void)getTrailingMaskBytes:(id)bytes
{
  v4 = _Block_copy(bytes);
  v5 = *&self->tokenMask[OBJC_IVAR____TtC24TokenGenerationInference16TGITokenMaskObjC_tokenMask + 8];
  v6 = *(v5 + 16);
  v7 = v4[2];
  selfCopy = self;
  v7(v4, v5 + 32, v6);
  _Block_release(v4);
}

- (_TtC24TokenGenerationInference16TGITokenMaskObjC)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end