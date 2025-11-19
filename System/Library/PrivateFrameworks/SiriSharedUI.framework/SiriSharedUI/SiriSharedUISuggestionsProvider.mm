@interface SiriSharedUISuggestionsProvider
- (_TtC12SiriSharedUI31SiriSharedUISuggestionsProvider)init;
@end

@implementation SiriSharedUISuggestionsProvider

- (_TtC12SiriSharedUI31SiriSharedUISuggestionsProvider)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_suggestionsExposureCallback);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.isa + OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_autoCompleteSuggestionsExposureCallback);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.isa + OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_continuerSuggestionsRenderedCallback);
  *v5 = 0;
  v5[1] = 0;
  sub_21E4DB688();
  *(&self->super.isa + OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_emittedRequestLink) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_cachedAutoCompletionsFacade) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SiriSharedUISuggestionsProvider();
  return [(SiriSharedUISuggestionsProvider *)&v7 init];
}

@end