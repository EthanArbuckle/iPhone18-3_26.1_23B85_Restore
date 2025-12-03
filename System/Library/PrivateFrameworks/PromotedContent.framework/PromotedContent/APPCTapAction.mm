@interface APPCTapAction
+ (id)makeTapActionWith:(id)with;
- (APPCTapAction)init;
- (APPCTapAction)initWithActionType:(int64_t)type confirmedClickInterval:(double)interval;
@end

@implementation APPCTapAction

- (APPCTapAction)initWithActionType:(int64_t)type confirmedClickInterval:(double)interval
{
  *(&self->super.isa + OBJC_IVAR___APPCTapAction_actionType) = type;
  *(&self->super.isa + OBJC_IVAR___APPCTapAction_confirmedClickInterval) = interval;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TapAction();
  return [(APPCTapAction *)&v5 init];
}

- (APPCTapAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)makeTapActionWith:(id)with
{
  withCopy = with;
  v4 = _s15PromotedContent9TapActionC04makecD04withACSo05APTapD0C_tFZ_0(withCopy);

  return v4;
}

@end