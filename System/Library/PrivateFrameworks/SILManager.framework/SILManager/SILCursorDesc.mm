@interface SILCursorDesc
- (int64_t)cursorType;
- (int64_t)fillSize;
- (int64_t)getPixelFormatSizeFrom:(id)from;
- (int64_t)maxBpr;
- (int64_t)outlineSize;
- (int64_t)overlaySize;
- (void)setCursorType:(int64_t)type;
- (void)setFillSize:(int64_t)size;
- (void)setMaxBpr:(int64_t)bpr;
- (void)setOutlineSize:(int64_t)size;
- (void)setOverlaySize:(int64_t)size;
@end

@implementation SILCursorDesc

- (int64_t)cursorType
{
  v3 = OBJC_IVAR____TtC10SILManager13SILCursorDesc_cursorType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCursorType:(int64_t)type
{
  v5 = OBJC_IVAR____TtC10SILManager13SILCursorDesc_cursorType;
  swift_beginAccess();
  *(self + v5) = type;
}

- (int64_t)overlaySize
{
  selfCopy = self;
  v3 = SILCursorDesc.overlaySize.getter();

  return v3;
}

- (void)setOverlaySize:(int64_t)size
{
  v3 = self + OBJC_IVAR____TtC10SILManager13SILCursorDesc____lazy_storage___overlaySize;
  *v3 = size;
  v3[8] = 0;
}

- (int64_t)outlineSize
{
  selfCopy = self;
  v3 = SILCursorDesc.outlineSize.getter();

  return v3;
}

- (void)setOutlineSize:(int64_t)size
{
  v3 = self + OBJC_IVAR____TtC10SILManager13SILCursorDesc____lazy_storage___outlineSize;
  *v3 = size;
  v3[8] = 0;
}

- (int64_t)fillSize
{
  selfCopy = self;
  v3 = SILCursorDesc.fillSize.getter();

  return v3;
}

- (void)setFillSize:(int64_t)size
{
  v3 = self + OBJC_IVAR____TtC10SILManager13SILCursorDesc____lazy_storage___fillSize;
  *v3 = size;
  v3[8] = 0;
}

- (int64_t)maxBpr
{
  selfCopy = self;
  v3 = SILCursorDesc.maxBpr.getter();

  return v3;
}

- (void)setMaxBpr:(int64_t)bpr
{
  v3 = self + OBJC_IVAR____TtC10SILManager13SILCursorDesc____lazy_storage___maxBpr;
  *v3 = bpr;
  v3[8] = 0;
}

- (int64_t)getPixelFormatSizeFrom:(id)from
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8 = specialized SILCursorDesc.getPixelFormatSize(from:)(v4, v6);

  return v8;
}

@end