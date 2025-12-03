@interface SiriSharedUIAssistantSuggestionView
- (BOOL)isPresented;
- (CGSize)sizeThatFits:(CGSize)result;
- (SiriSharedUIAssistantSuggestionView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setPressDownHandler:(id)handler;
- (void)setPressDownHandlerWithData:(id)data;
- (void)setPressUpHandler:(id)handler;
- (void)setPressUpHandlerWithData:(id)data;
- (void)setSuggestionFocused:(BOOL)focused;
@end

@implementation SiriSharedUIAssistantSuggestionView

- (void)setPressDownHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_21E48C5A8;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressDownHandler);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_21E3F1EB0(v7);
}

- (void)setPressUpHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_21E48C488;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressUpHandler);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_21E3F1EB0(v7);
}

- (void)setPressDownHandlerWithData:(id)data
{
  v4 = _Block_copy(data);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_21E48C5DC;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressDownHandlerWithData);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_21E3F1EB0(v7);
}

- (void)setPressUpHandlerWithData:(id)data
{
  v4 = _Block_copy(data);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_21E48C468;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_pressUpHandlerWithData);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_21E3F1EB0(v7);
}

- (void)setSuggestionFocused:(BOOL)focused
{
  selfCopy = self;
  sub_21E488E08(focused);
}

- (BOOL)isPresented
{
  v3 = *(self + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_suggestionsModel);
  swift_getKeyPath();
  sub_21E48C4FC(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);
  selfCopy = self;

  sub_21E4DB718();

  LODWORD(selfCopy) = *(v3 + 33);

  return selfCopy == 1;
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = *(self + OBJC_IVAR___SiriSharedUIAssistantSuggestionView_hostingView);
  if (v3)
  {
    [v3 _layoutSizeThatFits_fixedAxes_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_21E48AF4C();
}

- (SiriSharedUIAssistantSuggestionView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end