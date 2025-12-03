@interface SearchUIContentConfigurator
+ (BOOL)supportsConfigurationFor:(id)for;
+ (void)applyConfigurationTo:(id)to rowModel:(id)model cardSections:(id)sections interactionDelegate:(id)delegate;
+ (void)applyConfigurationTo:(id)to rowModel:(id)model interactionDelegate:(id)delegate;
- (SearchUIContentConfigurator)init;
@end

@implementation SearchUIContentConfigurator

+ (BOOL)supportsConfigurationFor:(id)for
{
  forCopy = for;
  cardSection = [forCopy cardSection];
  if (cardSection)
  {

    cardSection2 = [forCopy cardSection];
    if (!cardSection2)
    {
      __break(1u);
      return cardSection2;
    }

    v6 = cardSection2;
    supportsConfiguration = [cardSection2 supportsConfiguration];

    if (supportsConfiguration)
    {
      v8 = 1;
    }

    else
    {
      type metadata accessor for SearchUIArchivedRowModel();
      v8 = swift_dynamicCastClass() != 0;
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(cardSection2) = v8;
  return cardSection2;
}

+ (void)applyConfigurationTo:(id)to rowModel:(id)model cardSections:(id)sections interactionDelegate:(id)delegate
{
  sub_1DA173718(0, &unk_1EDAE5400);
  v8 = sub_1DA25F324();
  toCopy = to;
  modelCopy = model;
  swift_unknownObjectRetain();
  sub_1DA232FF4(toCopy, modelCopy, v8);

  swift_unknownObjectRelease();
}

+ (void)applyConfigurationTo:(id)to rowModel:(id)model interactionDelegate:(id)delegate
{
  toCopy = to;
  modelCopy = model;
  swift_unknownObjectRetain();
  sub_1DA233660(toCopy, modelCopy, delegate);

  swift_unknownObjectRelease();
}

- (SearchUIContentConfigurator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchUIContentConfigurator();
  return [(SearchUIContentConfigurator *)&v3 init];
}

@end