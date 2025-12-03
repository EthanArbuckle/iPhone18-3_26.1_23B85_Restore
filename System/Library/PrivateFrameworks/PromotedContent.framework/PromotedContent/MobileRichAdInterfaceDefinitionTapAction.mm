@interface MobileRichAdInterfaceDefinitionTapAction
- (_TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction)initWithActionType:(int64_t)type confirmedClickInterval:(double)interval;
@end

@implementation MobileRichAdInterfaceDefinitionTapAction

- (_TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction)initWithActionType:(int64_t)type confirmedClickInterval:(double)interval
{
  v6 = OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_url;
  v7 = sub_1C1B944A8();
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  *(&self->super.super.isa + OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_opensInstalledApp) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_adamIdentifier) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_iTunesMetadata) = 0;
  *(&self->super.super.isa + OBJC_IVAR___APPCTapAction_actionType) = 4;
  *(&self->super.super.isa + OBJC_IVAR___APPCTapAction_confirmedClickInterval) = interval;
  v9.receiver = self;
  v9.super_class = type metadata accessor for TapAction();
  return [(APPCTapAction *)&v9 init];
}

@end