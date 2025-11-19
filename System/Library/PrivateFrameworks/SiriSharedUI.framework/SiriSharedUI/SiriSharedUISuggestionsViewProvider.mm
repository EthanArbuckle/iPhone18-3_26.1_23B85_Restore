@interface SiriSharedUISuggestionsViewProvider
- (_TtC12SiriSharedUI35SiriSharedUISuggestionsViewProvider)init;
- (id)makeSuggestionsViewWithSuggestionsResizeHandler:(id)a3;
- (void)filterSuggestionsWithText:(id)a3;
- (void)makeConversationContinuerSuggestionsViewWithRequestId:(id)a3 currentMode:(id)a4 deviceLocked:(BOOL)a5 keyboardShowing:(BOOL)a6 suggestionTapHandler:(id)a7;
- (void)makeConversationStarterSuggestionsViewWithDeviceLocked:(BOOL)a3 keyboardShowing:(BOOL)a4 isVoiceTrigger:(BOOL)a5 invocationSource:(int64_t)a6 suggestionTapHandler:(id)a7;
- (void)makeConversationStarterSuggestionsViewWithDeviceLocked:(BOOL)a3 keyboardShowing:(BOOL)a4 isVoiceTrigger:(BOOL)a5 suggestionTapHandler:(id)a6;
- (void)makeConversationStarterSuggestionsViewWithDeviceLocked:(BOOL)a3 keyboardShowing:(BOOL)a4 suggestionTapHandler:(id)a5;
- (void)setShowSuggestions:(BOOL)a3;
@end

@implementation SiriSharedUISuggestionsViewProvider

- (id)makeSuggestionsViewWithSuggestionsResizeHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  v7 = sub_21E4603DC(sub_21E462CF0, v5);

  return v7;
}

- (void)makeConversationStarterSuggestionsViewWithDeviceLocked:(BOOL)a3 keyboardShowing:(BOOL)a4 suggestionTapHandler:(id)a5
{
  v6 = a3;
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = self;
  sub_21E4606B0(v6, a4, sub_21E462F40, v9);
}

- (void)makeConversationStarterSuggestionsViewWithDeviceLocked:(BOOL)a3 keyboardShowing:(BOOL)a4 isVoiceTrigger:(BOOL)a5 suggestionTapHandler:(id)a6
{
  v6 = a5;
  v8 = a3;
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = self;
  sub_21E460D1C(v8, a4, v6, sub_21E462F40, v11);
}

- (void)makeConversationStarterSuggestionsViewWithDeviceLocked:(BOOL)a3 keyboardShowing:(BOOL)a4 isVoiceTrigger:(BOOL)a5 invocationSource:(int64_t)a6 suggestionTapHandler:(id)a7
{
  v8 = a5;
  v10 = a3;
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = self;
  sub_21E461398(v10, a4, v8, a6, sub_21E462F40, v13);
}

- (void)makeConversationContinuerSuggestionsViewWithRequestId:(id)a3 currentMode:(id)a4 deviceLocked:(BOOL)a5 keyboardShowing:(BOOL)a6 suggestionTapHandler:(id)a7
{
  v8 = a5;
  v11 = _Block_copy(a7);
  v12 = sub_21E4DCF78();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = a4;
  v17 = self;
  sub_21E461A30(v12, v14, v16, v8, a6, sub_21E426DC0, v15);
}

- (void)setShowSuggestions:(BOOL)a3
{
  v4 = self;

  sub_21E457DD0(a3);
}

- (void)filterSuggestionsWithText:(id)a3
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