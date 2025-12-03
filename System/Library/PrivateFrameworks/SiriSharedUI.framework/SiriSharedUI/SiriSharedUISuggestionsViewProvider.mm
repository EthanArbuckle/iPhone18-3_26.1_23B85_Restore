@interface SiriSharedUISuggestionsViewProvider
- (_TtC12SiriSharedUI35SiriSharedUISuggestionsViewProvider)init;
- (id)makeSuggestionsViewWithSuggestionsResizeHandler:(id)handler;
- (void)filterSuggestionsWithText:(id)text;
- (void)makeConversationContinuerSuggestionsViewWithRequestId:(id)id currentMode:(id)mode deviceLocked:(BOOL)locked keyboardShowing:(BOOL)showing suggestionTapHandler:(id)handler;
- (void)makeConversationStarterSuggestionsViewWithDeviceLocked:(BOOL)locked keyboardShowing:(BOOL)showing isVoiceTrigger:(BOOL)trigger invocationSource:(int64_t)source suggestionTapHandler:(id)handler;
- (void)makeConversationStarterSuggestionsViewWithDeviceLocked:(BOOL)locked keyboardShowing:(BOOL)showing isVoiceTrigger:(BOOL)trigger suggestionTapHandler:(id)handler;
- (void)makeConversationStarterSuggestionsViewWithDeviceLocked:(BOOL)locked keyboardShowing:(BOOL)showing suggestionTapHandler:(id)handler;
- (void)setShowSuggestions:(BOOL)suggestions;
@end

@implementation SiriSharedUISuggestionsViewProvider

- (id)makeSuggestionsViewWithSuggestionsResizeHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  v7 = sub_21E4603DC(sub_21E462CF0, v5);

  return v7;
}

- (void)makeConversationStarterSuggestionsViewWithDeviceLocked:(BOOL)locked keyboardShowing:(BOOL)showing suggestionTapHandler:(id)handler
{
  lockedCopy = locked;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  selfCopy = self;
  sub_21E4606B0(lockedCopy, showing, sub_21E462F40, v9);
}

- (void)makeConversationStarterSuggestionsViewWithDeviceLocked:(BOOL)locked keyboardShowing:(BOOL)showing isVoiceTrigger:(BOOL)trigger suggestionTapHandler:(id)handler
{
  triggerCopy = trigger;
  lockedCopy = locked;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  selfCopy = self;
  sub_21E460D1C(lockedCopy, showing, triggerCopy, sub_21E462F40, v11);
}

- (void)makeConversationStarterSuggestionsViewWithDeviceLocked:(BOOL)locked keyboardShowing:(BOOL)showing isVoiceTrigger:(BOOL)trigger invocationSource:(int64_t)source suggestionTapHandler:(id)handler
{
  triggerCopy = trigger;
  lockedCopy = locked;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  selfCopy = self;
  sub_21E461398(lockedCopy, showing, triggerCopy, source, sub_21E462F40, v13);
}

- (void)makeConversationContinuerSuggestionsViewWithRequestId:(id)id currentMode:(id)mode deviceLocked:(BOOL)locked keyboardShowing:(BOOL)showing suggestionTapHandler:(id)handler
{
  lockedCopy = locked;
  v11 = _Block_copy(handler);
  v12 = sub_21E4DCF78();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  modeCopy = mode;
  selfCopy = self;
  sub_21E461A30(v12, v14, modeCopy, lockedCopy, showing, sub_21E426DC0, v15);
}

- (void)setShowSuggestions:(BOOL)suggestions
{
  selfCopy = self;

  sub_21E457DD0(suggestions);
}

- (void)filterSuggestionsWithText:(id)text
{
  sub_21E4DCF78();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21E4DBDF8();
}

- (_TtC12SiriSharedUI35SiriSharedUISuggestionsViewProvider)init
{
  v3 = OBJC_IVAR____TtC12SiriSharedUI35SiriSharedUISuggestionsViewProvider_suggestionsDataModel;
  type metadata accessor for SiriSharedUISuggestionsDataModel();
  swift_allocObject();
  *(&self->super.isa + v3) = sub_21E456670();
  v4 = (&self->super.isa + OBJC_IVAR____TtC12SiriSharedUI35SiriSharedUISuggestionsViewProvider_suggestionsView);
  v5 = type metadata accessor for SiriSharedUISuggestionsViewProvider();
  *v4 = 0;
  v4[1] = 0;
  v7.receiver = self;
  v7.super_class = v5;
  return [(SiriSharedUISuggestionsViewProvider *)&v7 init];
}

@end