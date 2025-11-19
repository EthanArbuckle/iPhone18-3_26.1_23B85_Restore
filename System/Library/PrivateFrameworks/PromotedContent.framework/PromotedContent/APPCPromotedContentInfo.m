@interface APPCPromotedContentInfo
- (APPCLifecycleMetricsHelping)metricsHelper;
- (APPCNativeRepresentation)nativeInfo;
- (APPCPromotedContentInfo)init;
- (BOOL)isDownloadable;
- (BOOL)isInteractive;
- (BOOL)isVideo;
- (BOOL)placeholder;
- (NSString)identifier;
- (id)ready;
- (int64_t)desiredPosition;
- (int64_t)unfilledReason;
- (void)dealloc;
- (void)setPlaceholder:(BOOL)a3;
- (void)setUnfilledReason:(int64_t)a3;
@end

@implementation APPCPromotedContentInfo

- (int64_t)unfilledReason
{
  v3 = OBJC_IVAR___APPCPromotedContentInfo_unfilledReason;
  swift_beginAccess();
  return *(self + v3);
}

- (void)dealloc
{
  v2 = *(self + OBJC_IVAR___APPCPromotedContentInfo_promotedContent);
  v3 = self;
  if ([v2 adType] == 1)
  {
    [*(v3 + OBJC_IVAR___APPCPromotedContentInfo_metricsHelper) manuallyDiscardWithReason_];
  }

  v4.receiver = v3;
  v4.super_class = type metadata accessor for PromotedContentInfo();
  [(APPCPromotedContentInfo *)&v4 dealloc];
}

- (APPCLifecycleMetricsHelping)metricsHelper
{
  v2 = *(self + OBJC_IVAR___APPCPromotedContentInfo_metricsHelper);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (id)ready
{
  if (*(self + OBJC_IVAR___APPCPromotedContentInfo_ready))
  {
    v2 = *(self + OBJC_IVAR___APPCPromotedContentInfo_ready + 8);
    v5[4] = *(self + OBJC_IVAR___APPCPromotedContentInfo_ready);
    v5[5] = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1C1B225C4;
    v5[3] = &unk_1F4151418;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)identifier
{
  v2 = [*(self + OBJC_IVAR___APPCPromotedContentInfo_promotedContent) identifier];

  return v2;
}

- (APPCNativeRepresentation)nativeInfo
{
  v2 = [*(self + OBJC_IVAR___APPCPromotedContentInfo_promotedContent) bestRepresentation];
  if (v2)
  {
    type metadata accessor for NativeRepresentation();
    v2 = swift_dynamicCastClass();
    if (!v2)
    {
      swift_unknownObjectRelease();
      v2 = 0;
    }
  }

  return v2;
}

- (int64_t)desiredPosition
{
  v2 = *(self + OBJC_IVAR___APPCPromotedContentInfo_promotedContent);
  v3 = self;
  v4 = [v2 bestRepresentation];
  if (v4)
  {
    v5 = [v4 desiredPosition];
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setUnfilledReason:(int64_t)a3
{
  v5 = OBJC_IVAR___APPCPromotedContentInfo_unfilledReason;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)placeholder
{
  v3 = OBJC_IVAR___APPCPromotedContentInfo_placeholder;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPlaceholder:(BOOL)a3
{
  v5 = OBJC_IVAR___APPCPromotedContentInfo_placeholder;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isInteractive
{
  v2 = *(self + OBJC_IVAR___APPCPromotedContentInfo_promotedContent);
  v3 = self;
  if ([v2 bestRepresentation])
  {
    type metadata accessor for ClientLayoutRepresentation();
    v4 = swift_dynamicCastClass() != 0;

    swift_unknownObjectRelease();
  }

  else
  {

    return 0;
  }

  return v4;
}

- (BOOL)isDownloadable
{
  v2 = self;
  v3 = sub_1C1B12214();

  return v3 & 1;
}

- (BOOL)isVideo
{
  v2 = *(self + OBJC_IVAR___APPCPromotedContentInfo_promotedContent);
  v3 = self;
  if ([v2 bestRepresentation])
  {
    type metadata accessor for VideoRepresentation();
    if (swift_dynamicCastClass())
    {

      swift_unknownObjectRelease();
      return 1;
    }

    swift_unknownObjectRelease();
  }

  v5 = [v2 isOutstreamVideoAd];

  return v5;
}

- (APPCPromotedContentInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end