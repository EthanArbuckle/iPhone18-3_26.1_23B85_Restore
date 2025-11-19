@interface APPCTapAction
+ (id)makeTapActionWith:(id)a3;
- (APPCTapAction)init;
- (APPCTapAction)initWithActionType:(int64_t)a3 confirmedClickInterval:(double)a4;
@end

@implementation APPCTapAction

- (APPCTapAction)initWithActionType:(int64_t)a3 confirmedClickInterval:(double)a4
{
  *(&self->super.isa + OBJC_IVAR___APPCTapAction_actionType) = a3;
  *(&self->super.isa + OBJC_IVAR___APPCTapAction_confirmedClickInterval) = a4;
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

+ (id)makeTapActionWith:(id)a3
{
  v3 = a3;
  v4 = _s15PromotedContent9TapActionC04makecD04withACSo05APTapD0C_tFZ_0(v3);

  return v4;
}

@end