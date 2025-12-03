@interface SILAssetDesc
- (BOOL)decompress:(unsigned __int16)decompress into:(void *)into withSize:(int64_t)size;
- (BOOL)frameDelayedWithFrameNumber:(unsigned __int16)number;
- (BOOL)frameInsecureWithFrameNumber:(unsigned __int16)number;
- (CGPoint)framePosOffsetWithFrameNumber:(unsigned __int16)number;
- (NSDictionary)userInfo;
- (_TtC10SILManager12SILAssetDesc)init;
- (int64_t)type;
- (void)setType:(int64_t)type;
@end

@implementation SILAssetDesc

- (int64_t)type
{
  v3 = OBJC_IVAR____TtC10SILManager12SILAssetDesc_type;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setType:(int64_t)type
{
  v5 = OBJC_IVAR____TtC10SILManager12SILAssetDesc_type;
  swift_beginAccess();
  *(self + v5) = type;
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

- (BOOL)frameInsecureWithFrameNumber:(unsigned __int16)number
{
  selfCopy = self;
  LOBYTE(number) = SILAssetDesc.frameInsecure(frameNumber:)(number);

  return number & 1;
}

- (BOOL)frameDelayedWithFrameNumber:(unsigned __int16)number
{
  selfCopy = self;
  LOBYTE(number) = SILAssetDesc.frameDelayed(frameNumber:)(number);

  return number & 1;
}

- (CGPoint)framePosOffsetWithFrameNumber:(unsigned __int16)number
{
  selfCopy = self;
  v5 = SILAssetDesc.framePosOffset(frameNumber:)(number);

  x = v5.x;
  y = v5.y;
  result.y = y;
  result.x = x;
  return result;
}

- (BOOL)decompress:(unsigned __int16)decompress into:(void *)into withSize:(int64_t)size
{
  decompressCopy = decompress;
  selfCopy = self;
  LOBYTE(size) = SILAssetDesc.decompress(_:into:withSize:)(decompressCopy, into, size);

  return size & 1;
}

- (_TtC10SILManager12SILAssetDesc)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end