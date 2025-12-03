@interface MarketingDynamicOfferCoordinator
- (_TtC9SeymourUI32MarketingDynamicOfferCoordinator)init;
- (void)dynamicViewController:(id)controller didFinishWithPurchaseResult:(id)result error:(id)error;
@end

@implementation MarketingDynamicOfferCoordinator

- (void)dynamicViewController:(id)controller didFinishWithPurchaseResult:(id)result error:(id)error
{
  v7 = sub_20C138FA4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    errorCopy = error;
    selfCopy = self;
    sub_20C138F94();
    sub_20BDDD25C();
    sub_20C13A764();

    swift_unknownObjectRelease();
    (*(v8 + 8))(v10, v7);
  }
}

- (_TtC9SeymourUI32MarketingDynamicOfferCoordinator)init
{
  *&self->eventHub[OBJC_IVAR____TtC9SeymourUI32MarketingDynamicOfferCoordinator_eventHub] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for MarketingDynamicOfferCoordinator();
  return [(MarketingDynamicOfferCoordinator *)&v4 init];
}

@end