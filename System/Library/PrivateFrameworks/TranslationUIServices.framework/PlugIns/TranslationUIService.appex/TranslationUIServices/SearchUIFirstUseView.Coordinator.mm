@interface SearchUIFirstUseView.Coordinator
- (_TtCV20TranslationUIService20SearchUIFirstUseView11Coordinator)init;
- (void)firstTimeExperienceContinueButtonPressed;
@end

@implementation SearchUIFirstUseView.Coordinator

- (void)firstTimeExperienceContinueButtonPressed
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtCV20TranslationUIService20SearchUIFirstUseView11Coordinator_continueAction);
  if (v2)
  {
    v3 = *&self->continueAction[OBJC_IVAR____TtCV20TranslationUIService20SearchUIFirstUseView11Coordinator_continueAction];
    v4 = self;
    v5 = sub_10000BAB4(v2);
    v2(v5);

    sub_100009F24(v2);
  }
}

- (_TtCV20TranslationUIService20SearchUIFirstUseView11Coordinator)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtCV20TranslationUIService20SearchUIFirstUseView11Coordinator_continueAction);
  v4 = type metadata accessor for SearchUIFirstUseView.Coordinator();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(SearchUIFirstUseView.Coordinator *)&v6 init];
}

@end