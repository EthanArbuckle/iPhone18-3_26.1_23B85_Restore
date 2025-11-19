@interface OutstreamVideoTapAction
- (_TtC15PromotedContent23OutstreamVideoTapAction)initWithActionType:(int64_t)a3 confirmedClickInterval:(double)a4;
@end

@implementation OutstreamVideoTapAction

- (_TtC15PromotedContent23OutstreamVideoTapAction)initWithActionType:(int64_t)a3 confirmedClickInterval:(double)a4
{
  v6 = OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_url;
  v7 = sub_1C1B944A8();
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  *(&self->super.super.isa + OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_opensInstalledApp) = 2;
  *(&self->super.super.isa + OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_adamIdentifier) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_iTunesMetadata) = 0;
  *(&self->super.super.isa + OBJC_IVAR___APPCTapAction_actionType) = 4;
  *(&self->super.super.isa + OBJC_IVAR___APPCTapAction_confirmedClickInterval) = a4;
  v9.receiver = self;
  v9.super_class = type metadata accessor for TapAction();
  return [(APPCTapAction *)&v9 init];
}

@end