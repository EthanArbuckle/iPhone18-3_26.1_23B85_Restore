@interface ATXShortcutsEditorGroupedUIFeedbackPublisher
- (ATXShortcutsEditorGroupedUIFeedbackPublisher)initWithUIFeedbackPublisher:(id)a3;
- (id)shortcutsEditorUIFeedbackPublisher;
@end

@implementation ATXShortcutsEditorGroupedUIFeedbackPublisher

- (ATXShortcutsEditorGroupedUIFeedbackPublisher)initWithUIFeedbackPublisher:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXShortcutsEditorGroupedUIFeedbackPublisher;
  v6 = [(ATXShortcutsEditorGroupedUIFeedbackPublisher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uiFeedbackPublisher, a3);
  }

  return v7;
}

- (id)shortcutsEditorUIFeedbackPublisher
{
  v3 = objc_opt_new();
  uiFeedbackPublisher = self->_uiFeedbackPublisher;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__ATXShortcutsEditorGroupedUIFeedbackPublisher_shortcutsEditorUIFeedbackPublisher__block_invoke;
  v9[3] = &unk_1E86A4FB8;
  v10 = v3;
  v5 = v3;
  v6 = [(BPSPublisher *)uiFeedbackPublisher scanWithInitial:v5 nextPartialResult:v9];
  v7 = [v6 filterWithIsIncluded:&__block_literal_global_21];

  return v7;
}

id __82__ATXShortcutsEditorGroupedUIFeedbackPublisher_shortcutsEditorUIFeedbackPublisher__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 session];
  v8 = [v7 sessionMetadata];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v6 session];
    v11 = [v10 sessionMetadata];

    if ([v5 isGroupSessionComplete])
    {
      v12 = objc_opt_new();

      [v12 setNumShortcutsAtStart:{objc_msgSend(v11, "numStepsInShortcutAtStart")}];
      v5 = v12;
    }

    v13 = [v5 startDateOfFirstSession];

    if (!v13)
    {
      [v5 setNumShortcutsAtStart:{objc_msgSend(v11, "numStepsInShortcutAtStart")}];
    }

    [v5 updateWithIntermediateSessionResults:v6];
    if ([v11 stepWasManuallyAdded])
    {
      [v5 setNumManuallyAddedSteps:{objc_msgSend(v5, "numManuallyAddedSteps") + 1}];
    }

    if ([v11 isLastSession])
    {
      [v5 setIsGroupSessionComplete:1];
      [v5 setNumShortcutsAtEnd:{objc_msgSend(v11, "numStepsInShortcutAtEnd")}];
    }

    v5 = v5;

    v14 = v5;
  }

  else
  {
    v15 = __atxlog_handle_blending();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      __82__ATXShortcutsEditorGroupedUIFeedbackPublisher_shortcutsEditorUIFeedbackPublisher__block_invoke_cold_1(v15);
    }

    v14 = *(a1 + 32);
  }

  return v14;
}

@end