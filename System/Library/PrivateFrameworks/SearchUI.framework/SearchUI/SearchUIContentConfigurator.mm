@interface SearchUIContentConfigurator
+ (BOOL)supportsConfigurationFor:(id)a3;
+ (void)applyConfigurationTo:(id)a3 rowModel:(id)a4 cardSections:(id)a5 interactionDelegate:(id)a6;
+ (void)applyConfigurationTo:(id)a3 rowModel:(id)a4 interactionDelegate:(id)a5;
- (SearchUIContentConfigurator)init;
@end

@implementation SearchUIContentConfigurator

+ (BOOL)supportsConfigurationFor:(id)a3
{
  v3 = a3;
  v4 = [v3 cardSection];
  if (v4)
  {

    v5 = [v3 cardSection];
    if (!v5)
    {
      __break(1u);
      return v5;
    }

    v6 = v5;
    v7 = [v5 supportsConfiguration];

    if (v7)
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

  LOBYTE(v5) = v8;
  return v5;
}

+ (void)applyConfigurationTo:(id)a3 rowModel:(id)a4 cardSections:(id)a5 interactionDelegate:(id)a6
{
  sub_1DA173718(0, &unk_1EDAE5400);
  v8 = sub_1DA25F324();
  v9 = a3;
  v10 = a4;
  swift_unknownObjectRetain();
  sub_1DA232FF4(v9, v10, v8);

  swift_unknownObjectRelease();
}

+ (void)applyConfigurationTo:(id)a3 rowModel:(id)a4 interactionDelegate:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  sub_1DA233660(v7, v8, a5);

  swift_unknownObjectRelease();
}

- (SearchUIContentConfigurator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchUIContentConfigurator();
  return [(SearchUIContentConfigurator *)&v3 init];
}

@end