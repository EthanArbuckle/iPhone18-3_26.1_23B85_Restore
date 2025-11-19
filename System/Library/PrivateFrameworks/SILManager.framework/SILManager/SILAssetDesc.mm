@interface SILAssetDesc
- (BOOL)decompress:(unsigned __int16)a3 into:(void *)a4 withSize:(int64_t)a5;
- (BOOL)frameDelayedWithFrameNumber:(unsigned __int16)a3;
- (BOOL)frameInsecureWithFrameNumber:(unsigned __int16)a3;
- (CGPoint)framePosOffsetWithFrameNumber:(unsigned __int16)a3;
- (NSDictionary)userInfo;
- (_TtC10SILManager12SILAssetDesc)init;
- (int64_t)type;
- (void)setType:(int64_t)a3;
@end

@implementation SILAssetDesc

- (int64_t)type
{
  v3 = OBJC_IVAR____TtC10SILManager12SILAssetDesc_type;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setType:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC10SILManager12SILAssetDesc_type;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSDictionary)userInfo
{
  if (*(self + OBJC_IVAR____TtC10SILManager12SILAssetDesc_userInfo))
  {

    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

- (BOOL)frameInsecureWithFrameNumber:(unsigned __int16)a3
{
  v4 = self;
  LOBYTE(a3) = SILAssetDesc.frameInsecure(frameNumber:)(a3);

  return a3 & 1;
}

- (BOOL)frameDelayedWithFrameNumber:(unsigned __int16)a3
{
  v4 = self;
  LOBYTE(a3) = SILAssetDesc.frameDelayed(frameNumber:)(a3);

  return a3 & 1;
}

- (CGPoint)framePosOffsetWithFrameNumber:(unsigned __int16)a3
{
  v4 = self;
  v5 = SILAssetDesc.framePosOffset(frameNumber:)(a3);

  x = v5.x;
  y = v5.y;
  result.y = y;
  result.x = x;
  return result;
}

- (BOOL)decompress:(unsigned __int16)a3 into:(void *)a4 withSize:(int64_t)a5
{
  v7 = a3;
  v8 = self;
  LOBYTE(a5) = SILAssetDesc.decompress(_:into:withSize:)(v7, a4, a5);

  return a5 & 1;
}

- (_TtC10SILManager12SILAssetDesc)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end