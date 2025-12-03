@interface UIDictationTipController
+ (id)dictationTipPreferenceKey:(int64_t)key;
- (UIDictationTipController)init;
- (void)dictationCommandUsed:(unint64_t)used firstTargetString:(id)string secondTargetString:(id)targetString;
- (void)emitTipShowingInstrumentation:(int64_t)instrumentation;
- (void)finalizeSelectionTip;
- (void)incrementDictationTipDisplayCount:(int64_t)count stopFutureShowing:(BOOL)showing;
- (void)logDictationTipDimissialInstrumentation;
- (void)markDictationTipPreferenceToShown:(int64_t)shown;
- (void)presentDelayedTipIfNeeded;
- (void)processSoftwareKeyboardInteraction;
- (void)processUserInteractionEnded;
- (void)reset;
- (void)resetShowModelessTipSignal;
- (void)showDictationTipWithTitle:(id)title description:(id)description dictationTipType:(int64_t)type;
- (void)signalDictationClearAllTip;
- (void)signalDictationDeletionTip:(id)tip;
- (void)signalDictationEmojiTip:(id)tip;
- (void)signalDictationInsertionTip:(id)tip;
- (void)signalDictationReplacementTip:(id)tip;
- (void)signalDictationSelectionTip:(id)tip;
- (void)signalDictationSendMessageTip;
- (void)signalShowModelessTipIfNeeded;
- (void)triggerModelessInputTipDictationStoppedSignal;
@end

@implementation UIDictationTipController

- (UIDictationTipController)init
{
  v18.receiver = self;
  v18.super_class = UIDictationTipController;
  v2 = [(UIDictationTipController *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(UIDictationTipPresentationHandler);
    dictationTipPresentationHandler = v2->_dictationTipPresentationHandler;
    v2->_dictationTipPresentationHandler = v3;

    v5 = [[UIDictationTipReplacementHandler alloc] initWithDelegate:v2];
    dictationReplacementTipHandler = v2->_dictationReplacementTipHandler;
    v2->_dictationReplacementTipHandler = v5;

    v7 = [[UIDictationTipDeletionHandler alloc] initWithDelegate:v2];
    dictationDeletionTipHandler = v2->_dictationDeletionTipHandler;
    v2->_dictationDeletionTipHandler = v7;

    v9 = objc_alloc_init(UIDictationTipEmojiHandler);
    dictationEmojiTipHandler = v2->_dictationEmojiTipHandler;
    v2->_dictationEmojiTipHandler = v9;

    v11 = [[UIDictationTipSelectionHandler alloc] initWithDelegate:v2];
    dictationSelectionTipHandler = v2->_dictationSelectionTipHandler;
    v2->_dictationSelectionTipHandler = v11;

    v13 = [[UIDictationTipInsertionHandler alloc] initWithDelegate:v2];
    dictationInsertionTipHandler = v2->_dictationInsertionTipHandler;
    v2->_dictationInsertionTipHandler = v13;

    v15 = [[UIDictationTipModelessInputHandler alloc] initWithDelegate:v2];
    dictationTipModelessInputHandler = v2->_dictationTipModelessInputHandler;
    v2->_dictationTipModelessInputHandler = v15;
  }

  return v2;
}

- (void)resetShowModelessTipSignal
{
  dictationTipModelessInputHandler = [(UIDictationTipController *)self dictationTipModelessInputHandler];
  [dictationTipModelessInputHandler resetDictationTipModelessHandlerSignalFlags];
}

+ (id)dictationTipPreferenceKey:(int64_t)key
{
  if (key > 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&unk_1E712ADA8 + key);
  }

  return v4;
}

- (void)presentDelayedTipIfNeeded
{
  if (self->_delayedTip)
  {
    delayedTip = [(UIDictationTipController *)self delayedTip];
    delayedTip[2]();
  }
}

- (void)showDictationTipWithTitle:(id)title description:(id)description dictationTipType:(int64_t)type
{
  titleCopy = title;
  descriptionCopy = description;
  v10 = +[UIDictationController sharedInstance];
  isDictationPaused = [v10 isDictationPaused];
  if (type == 7 || !isDictationPaused)
  {
  }

  else
  {

    if (type != 5)
    {
      objc_initWeak(&location, self);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __83__UIDictationTipController_showDictationTipWithTitle_description_dictationTipType___block_invoke;
      v13[3] = &unk_1E70F9070;
      objc_copyWeak(v16, &location);
      v14 = titleCopy;
      v15 = descriptionCopy;
      v16[1] = type;
      [(UIDictationTipController *)self setDelayedTip:v13];

      objc_destroyWeak(v16);
      objc_destroyWeak(&location);
      goto LABEL_10;
    }
  }

  if (!-[UIDictationTipPresentationHandler isShowingTip](self->_dictationTipPresentationHandler, "isShowingTip") && ([descriptionCopy _containsEmoji] & 1) == 0)
  {
    [(UIDictationTipPresentationHandler *)self->_dictationTipPresentationHandler signalTipPresentedInCurrentDictationSession];
    v12 = +[UIKeyboardImpl activeInstance];
    [v12 presentDictationMenuTipWithTitle:titleCopy description:descriptionCopy];

    [(UIDictationTipController *)self incrementDictationTipDisplayCount:type stopFutureShowing:0];
    [(UIDictationTipController *)self emitTipShowingInstrumentation:type];
    [(UIDictationTipController *)self setDelayedTip:0];
  }

  [(UIDictationTipPresentationHandler *)self->_dictationTipPresentationHandler resetDictationTipSignal];
LABEL_10:
}

void __83__UIDictationTipController_showDictationTipWithTitle_description_dictationTipType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained showDictationTipWithTitle:*(a1 + 32) description:*(a1 + 40) dictationTipType:*(a1 + 56)];
}

- (void)dictationCommandUsed:(unint64_t)used firstTargetString:(id)string secondTargetString:(id)targetString
{
  targetStringCopy = targetString;
  if (([string _containsEmoji] & 1) != 0 || objc_msgSend(targetStringCopy, "_containsEmoji"))
  {
    [(UIDictationTipController *)self incrementDictationTipDisplayCount:3 stopFutureShowing:1];
  }

  v8 = used - 1;
  if (used - 1 <= 0x13 && ((0x8603Bu >> v8) & 1) != 0)
  {
    [(UIDictationTipController *)self markDictationTipPreferenceToShown:qword_18A6838C8[v8]];
  }
}

- (void)incrementDictationTipDisplayCount:(int64_t)count stopFutureShowing:(BOOL)showing
{
  if (showing)
  {
    v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
    dictationTipPresentationHandler = [v5 valueForPreferenceKey:*MEMORY[0x1E69D9738]];

    integerValue = [dictationTipPresentationHandler integerValue];
  }

  else
  {
    dictationTipPresentationHandler = [(UIDictationTipController *)self dictationTipPresentationHandler];
    integerValue = [dictationTipPresentationHandler dictationTipDisplayCount:count] + 1;
  }

  v8 = [UIDictationTipController dictationTipPreferenceKey:count];
  if (v8)
  {
    v12 = v8;
    v9 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v9 preferencesActions];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
    [preferencesActions updateDictationTipDisplayCount:v11 dictationTipKey:v12];

    v8 = v12;
  }
}

- (void)markDictationTipPreferenceToShown:(int64_t)shown
{
  if (shown != 9)
  {
    [(UIDictationTipController *)self incrementDictationTipDisplayCount:shown stopFutureShowing:1];
  }
}

- (void)reset
{
  [(UIDictationTipPresentationHandler *)self->_dictationTipPresentationHandler resetHandler];
  [(UIDictationTipReplacementHandler *)self->_dictationReplacementTipHandler resetHandler];
  [(UIDictationTipDeletionHandler *)self->_dictationDeletionTipHandler resetHandler];
  dictationInsertionTipHandler = self->_dictationInsertionTipHandler;

  [(UIDictationTipInsertionHandler *)dictationInsertionTipHandler resetHandler];
}

- (void)logDictationTipDimissialInstrumentation
{
  dismissalReasonType = [(UIDictationTipController *)self dismissalReasonType];
  v3 = objc_alloc_init(getSISchemaUEIDictationDiscoveryToolTipDisplayContextClass());
  v4 = objc_alloc(getSISchemaUUIDClass_0());
  v5 = +[UIKeyboardImpl activeInstance];
  _sessionIdentifier = [v5 _sessionIdentifier];
  v7 = [v4 initWithNSUUID:_sessionIdentifier];
  [v3 setContextId:v7];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v8 = getSISchemaUEIDictationDiscoveryToolTipDismissedClass_softClass;
  v18 = getSISchemaUEIDictationDiscoveryToolTipDismissedClass_softClass;
  if (!getSISchemaUEIDictationDiscoveryToolTipDismissedClass_softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getSISchemaUEIDictationDiscoveryToolTipDismissedClass_block_invoke;
    v14[3] = &unk_1E70F2F20;
    v14[4] = &v15;
    __getSISchemaUEIDictationDiscoveryToolTipDismissedClass_block_invoke(v14);
    v8 = v16[3];
  }

  if (dismissalReasonType == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = dismissalReasonType == 1;
  }

  v10 = v8;
  _Block_object_dispose(&v15, 8);
  v11 = objc_alloc_init(v8);
  [v11 setDismissalReason:v9];
  [v3 setEnded:v11];
  v12 = +[UIDictationController sharedInstance];
  currentInstrumentationContext = [v12 currentInstrumentationContext];
  [currentInstrumentationContext emitInstrumentation:v3];
}

- (void)emitTipShowingInstrumentation:(int64_t)instrumentation
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v4 = getSISchemaUEIDictationDiscoveryToolTipShownClass_softClass;
  v20 = getSISchemaUEIDictationDiscoveryToolTipShownClass_softClass;
  if (!getSISchemaUEIDictationDiscoveryToolTipShownClass_softClass)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __getSISchemaUEIDictationDiscoveryToolTipShownClass_block_invoke;
    v16[3] = &unk_1E70F2F20;
    v16[4] = &v17;
    __getSISchemaUEIDictationDiscoveryToolTipShownClass_block_invoke(v16);
    v4 = v18[3];
  }

  v5 = v4;
  _Block_object_dispose(&v17, 8);
  v6 = objc_alloc_init(v4);
  v7 = v6;
  if (instrumentation > 6)
  {
    v8 = 0;
  }

  else
  {
    v8 = dword_18A683968[instrumentation];
  }

  [v6 setToolTipShown:v8];
  v9 = objc_alloc_init(getSISchemaUEIDictationDiscoveryToolTipDisplayContextClass());
  v10 = objc_alloc(getSISchemaUUIDClass_0());
  v11 = +[UIKeyboardImpl activeInstance];
  _sessionIdentifier = [v11 _sessionIdentifier];
  v13 = [v10 initWithNSUUID:_sessionIdentifier];
  [v9 setContextId:v13];

  [v9 setStartedOrChanged:v7];
  v14 = +[UIDictationController sharedInstance];
  currentInstrumentationContext = [v14 currentInstrumentationContext];
  [currentInstrumentationContext emitInstrumentation:v9];
}

- (void)signalDictationReplacementTip:(id)tip
{
  tipCopy = tip;
  v4 = +[UIDictationController sharedInstance];
  isDictationPaused = [v4 isDictationPaused];

  if (isDictationPaused && [(UIDictationTipPresentationHandler *)self->_dictationTipPresentationHandler shouldSignalDictationTip:0])
  {
    [(UIDictationTipReplacementHandler *)self->_dictationReplacementTipHandler startRecodingReplacementText:tipCopy];
  }
}

- (void)signalDictationDeletionTip:(id)tip
{
  tipCopy = tip;
  v4 = +[UIDictationController sharedInstance];
  isDictationPaused = [v4 isDictationPaused];

  if (isDictationPaused)
  {
    if ([(UIDictationTipPresentationHandler *)self->_dictationTipPresentationHandler shouldSignalDictationTip:1])
    {
      [(UIDictationTipDeletionHandler *)self->_dictationDeletionTipHandler startRecodingDeletionText:tipCopy];
    }

    else if ([(UIDictationTipPresentationHandler *)self->_dictationTipPresentationHandler getDictationTipSignaled]== 1)
    {
      [(UIDictationTipDeletionHandler *)self->_dictationDeletionTipHandler recordDictationTipDeletionText:tipCopy];
    }
  }
}

- (void)signalDictationClearAllTip
{
  v3 = +[UIDictationController sharedInstance];
  isDictationPaused = [v3 isDictationPaused];

  if (isDictationPaused)
  {
    [(UIDictationTipController *)self reset];
    if ([(UIDictationTipPresentationHandler *)self->_dictationTipPresentationHandler shouldSignalDictationTip:5])
    {
      v12 = _UILocalizedFormat(@"Dictation Clear All Tip Body", @"Description of the clear all tip", @"While dictating, just say 'Clear all...'", v5, v6, v7, v8, v9, v11);
      v10 = _UILocalizedString(@"Dictation Clear All Tip Title", @"Title of the Clear All tip", @"Clear All");
      [(UIDictationTipController *)self finalizeTextWithTipType:5 title:v10 andTipDescription:v12];
    }
  }
}

- (void)signalDictationSelectionTip:(id)tip
{
  tipCopy = tip;
  v4 = +[UIDictationController sharedInstance];
  isDictationPaused = [v4 isDictationPaused];

  if (isDictationPaused && [(UIDictationTipPresentationHandler *)self->_dictationTipPresentationHandler shouldSignalDictationTip:4])
  {
    [(UIDictationTipSelectionHandler *)self->_dictationSelectionTipHandler signalSelectedText:tipCopy];
  }
}

- (void)finalizeSelectionTip
{
  if ([(UIDictationTipPresentationHandler *)self->_dictationTipPresentationHandler getDictationTipSignaled]== 4)
  {
    dictationSelectionTipHandler = self->_dictationSelectionTipHandler;

    [(UIDictationTipSelectionHandler *)dictationSelectionTipHandler finalizeSelectionTip];
  }
}

- (void)signalDictationSendMessageTip
{
  [(UIDictationTipController *)self reset];
  if ([(UIDictationTipPresentationHandler *)self->_dictationTipPresentationHandler shouldSignalDictationTip:7])
  {
    v10 = _UILocalizedFormat(@"Dictation Send Message Tip Body", @"Description of the send message tip", @"When you're done dictating a message, just say 'Send it'", v3, v4, v5, v6, v7, v9);
    v8 = _UILocalizedString(@"Dictation Send Message Tip Title", @"Title of the Send Message tip", @"Send It");
    [(UIDictationTipController *)self finalizeTextWithTipType:5 title:v8 andTipDescription:v10];
  }
}

- (void)signalDictationEmojiTip:(id)tip
{
  tipCopy = tip;
  [(UIDictationTipController *)self reset];
  if ([(UIDictationTipPresentationHandler *)self->_dictationTipPresentationHandler shouldSignalDictationTip:3])
  {
    dictationEmojiTipHandler = self->_dictationEmojiTipHandler;
    v5 = [(UIDictationTipEmojiHandler *)dictationEmojiTipHandler replaceEmojiInStringWithEmojiDictationCommand:tipCopy];
    v6 = [(UIDictationTipEmojiHandler *)dictationEmojiTipHandler replaceEmojiInStringWithEmojiDictationCommand:v5];
    v12 = _UILocalizedFormat(@"Dictation Emoji Tip Body", @"Description of the emoji tip", @"While dictating, just say '%@'", v7, v8, v9, v10, v11, v6);

    v13 = _UILocalizedString(@"Dictation Emoji Tip Title", @"Title of the Emoji tip", @"Speak Emoji");
    [(UIDictationTipController *)self finalizeTextWithTipType:3 title:v13 andTipDescription:v12];
  }
}

- (void)signalDictationInsertionTip:(id)tip
{
  tipCopy = tip;
  v4 = +[UIDictationController sharedInstance];
  isDictationPaused = [v4 isDictationPaused];

  v6 = tipCopy;
  if (isDictationPaused)
  {
    if (-[UIDictationTipController dictationTipShown:](self, "dictationTipShown:", 3) || ![tipCopy _containsEmojiOnly])
    {
      if ([(UIDictationTipPresentationHandler *)self->_dictationTipPresentationHandler shouldSignalDictationTip:2])
      {
        [(UIDictationTipInsertionHandler *)self->_dictationInsertionTipHandler startRecodingText:tipCopy];
      }

      else
      {
        getDictationTipSignaled = [(UIDictationTipPresentationHandler *)self->_dictationTipPresentationHandler getDictationTipSignaled];
        v6 = tipCopy;
        if (getDictationTipSignaled != 2)
        {
          goto LABEL_10;
        }

        [(UIDictationTipInsertionHandler *)self->_dictationInsertionTipHandler recordDictationTipText:tipCopy];
      }
    }

    else
    {
      [(UIDictationTipController *)self signalDictationEmojiTip:tipCopy];
    }

    v6 = tipCopy;
  }

LABEL_10:
}

- (void)triggerModelessInputTipDictationStoppedSignal
{
  dictationTipModelessInputHandler = [(UIDictationTipController *)self dictationTipModelessInputHandler];
  [dictationTipModelessInputHandler setModelessInputTipDictationStoppedSignal:1];
}

- (void)processSoftwareKeyboardInteraction
{
  dictationTipModelessInputHandler = [(UIDictationTipController *)self dictationTipModelessInputHandler];
  [dictationTipModelessInputHandler processSoftwareKeyboardInteraction];
}

- (void)processUserInteractionEnded
{
  if ([(UIDictationTipPresentationHandler *)self->_dictationTipPresentationHandler shouldSignalDictationTip:6])
  {
    dictationTipModelessInputHandler = [(UIDictationTipController *)self dictationTipModelessInputHandler];
    [dictationTipModelessInputHandler processUserInteractionEnded];
  }
}

- (void)signalShowModelessTipIfNeeded
{
  dictationTipModelessInputHandler = [(UIDictationTipController *)self dictationTipModelessInputHandler];
  [dictationTipModelessInputHandler setShouldAttemptToShowModelessTip:1];
}

@end