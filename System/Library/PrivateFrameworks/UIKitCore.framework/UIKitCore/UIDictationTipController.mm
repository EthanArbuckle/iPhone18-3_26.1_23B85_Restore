@interface UIDictationTipController
+ (id)dictationTipPreferenceKey:(int64_t)a3;
- (UIDictationTipController)init;
- (void)dictationCommandUsed:(unint64_t)a3 firstTargetString:(id)a4 secondTargetString:(id)a5;
- (void)emitTipShowingInstrumentation:(int64_t)a3;
- (void)finalizeSelectionTip;
- (void)incrementDictationTipDisplayCount:(int64_t)a3 stopFutureShowing:(BOOL)a4;
- (void)logDictationTipDimissialInstrumentation;
- (void)markDictationTipPreferenceToShown:(int64_t)a3;
- (void)presentDelayedTipIfNeeded;
- (void)processSoftwareKeyboardInteraction;
- (void)processUserInteractionEnded;
- (void)reset;
- (void)resetShowModelessTipSignal;
- (void)showDictationTipWithTitle:(id)a3 description:(id)a4 dictationTipType:(int64_t)a5;
- (void)signalDictationClearAllTip;
- (void)signalDictationDeletionTip:(id)a3;
- (void)signalDictationEmojiTip:(id)a3;
- (void)signalDictationInsertionTip:(id)a3;
- (void)signalDictationReplacementTip:(id)a3;
- (void)signalDictationSelectionTip:(id)a3;
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
  v2 = [(UIDictationTipController *)self dictationTipModelessInputHandler];
  [v2 resetDictationTipModelessHandlerSignalFlags];
}

+ (id)dictationTipPreferenceKey:(int64_t)a3
{
  if (a3 > 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&unk_1E712ADA8 + a3);
  }

  return v4;
}

- (void)presentDelayedTipIfNeeded
{
  if (self->_delayedTip)
  {
    v2 = [(UIDictationTipController *)self delayedTip];
    v2[2]();
  }
}

- (void)showDictationTipWithTitle:(id)a3 description:(id)a4 dictationTipType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[UIDictationController sharedInstance];
  v11 = [v10 isDictationPaused];
  if (a5 == 7 || !v11)
  {
  }

  else
  {

    if (a5 != 5)
    {
      objc_initWeak(&location, self);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __83__UIDictationTipController_showDictationTipWithTitle_description_dictationTipType___block_invoke;
      v13[3] = &unk_1E70F9070;
      objc_copyWeak(v16, &location);
      v14 = v8;
      v15 = v9;
      v16[1] = a5;
      [(UIDictationTipController *)self setDelayedTip:v13];

      objc_destroyWeak(v16);
      objc_destroyWeak(&location);
      goto LABEL_10;
    }
  }

  if (!-[UIDictationTipPresentationHandler isShowingTip](self->_dictationTipPresentationHandler, "isShowingTip") && ([v9 _containsEmoji] & 1) == 0)
  {
    [(UIDictationTipPresentationHandler *)self->_dictationTipPresentationHandler signalTipPresentedInCurrentDictationSession];
    v12 = +[UIKeyboardImpl activeInstance];
    [v12 presentDictationMenuTipWithTitle:v8 description:v9];

    [(UIDictationTipController *)self incrementDictationTipDisplayCount:a5 stopFutureShowing:0];
    [(UIDictationTipController *)self emitTipShowingInstrumentation:a5];
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

- (void)dictationCommandUsed:(unint64_t)a3 firstTargetString:(id)a4 secondTargetString:(id)a5
{
  v9 = a5;
  if (([a4 _containsEmoji] & 1) != 0 || objc_msgSend(v9, "_containsEmoji"))
  {
    [(UIDictationTipController *)self incrementDictationTipDisplayCount:3 stopFutureShowing:1];
  }

  v8 = a3 - 1;
  if (a3 - 1 <= 0x13 && ((0x8603Bu >> v8) & 1) != 0)
  {
    [(UIDictationTipController *)self markDictationTipPreferenceToShown:qword_18A6838C8[v8]];
  }
}

- (void)incrementDictationTipDisplayCount:(int64_t)a3 stopFutureShowing:(BOOL)a4
{
  if (a4)
  {
    v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v6 = [v5 valueForPreferenceKey:*MEMORY[0x1E69D9738]];

    v7 = [v6 integerValue];
  }

  else
  {
    v6 = [(UIDictationTipController *)self dictationTipPresentationHandler];
    v7 = [v6 dictationTipDisplayCount:a3] + 1;
  }

  v8 = [UIDictationTipController dictationTipPreferenceKey:a3];
  if (v8)
  {
    v12 = v8;
    v9 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v10 = [v9 preferencesActions];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    [v10 updateDictationTipDisplayCount:v11 dictationTipKey:v12];

    v8 = v12;
  }
}

- (void)markDictationTipPreferenceToShown:(int64_t)a3
{
  if (a3 != 9)
  {
    [(UIDictationTipController *)self incrementDictationTipDisplayCount:a3 stopFutureShowing:1];
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
  v2 = [(UIDictationTipController *)self dismissalReasonType];
  v3 = objc_alloc_init(getSISchemaUEIDictationDiscoveryToolTipDisplayContextClass());
  v4 = objc_alloc(getSISchemaUUIDClass_0());
  v5 = +[UIKeyboardImpl activeInstance];
  v6 = [v5 _sessionIdentifier];
  v7 = [v4 initWithNSUUID:v6];
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

  if (v2 == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = v2 == 1;
  }

  v10 = v8;
  _Block_object_dispose(&v15, 8);
  v11 = objc_alloc_init(v8);
  [v11 setDismissalReason:v9];
  [v3 setEnded:v11];
  v12 = +[UIDictationController sharedInstance];
  v13 = [v12 currentInstrumentationContext];
  [v13 emitInstrumentation:v3];
}

- (void)emitTipShowingInstrumentation:(int64_t)a3
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
  if (a3 > 6)
  {
    v8 = 0;
  }

  else
  {
    v8 = dword_18A683968[a3];
  }

  [v6 setToolTipShown:v8];
  v9 = objc_alloc_init(getSISchemaUEIDictationDiscoveryToolTipDisplayContextClass());
  v10 = objc_alloc(getSISchemaUUIDClass_0());
  v11 = +[UIKeyboardImpl activeInstance];
  v12 = [v11 _sessionIdentifier];
  v13 = [v10 initWithNSUUID:v12];
  [v9 setContextId:v13];

  [v9 setStartedOrChanged:v7];
  v14 = +[UIDictationController sharedInstance];
  v15 = [v14 currentInstrumentationContext];
  [v15 emitInstrumentation:v9];
}

- (void)signalDictationReplacementTip:(id)a3
{
  v6 = a3;
  v4 = +[UIDictationController sharedInstance];
  v5 = [v4 isDictationPaused];

  if (v5 && [(UIDictationTipPresentationHandler *)self->_dictationTipPresentationHandler shouldSignalDictationTip:0])
  {
    [(UIDictationTipReplacementHandler *)self->_dictationReplacementTipHandler startRecodingReplacementText:v6];
  }
}

- (void)signalDictationDeletionTip:(id)a3
{
  v6 = a3;
  v4 = +[UIDictationController sharedInstance];
  v5 = [v4 isDictationPaused];

  if (v5)
  {
    if ([(UIDictationTipPresentationHandler *)self->_dictationTipPresentationHandler shouldSignalDictationTip:1])
    {
      [(UIDictationTipDeletionHandler *)self->_dictationDeletionTipHandler startRecodingDeletionText:v6];
    }

    else if ([(UIDictationTipPresentationHandler *)self->_dictationTipPresentationHandler getDictationTipSignaled]== 1)
    {
      [(UIDictationTipDeletionHandler *)self->_dictationDeletionTipHandler recordDictationTipDeletionText:v6];
    }
  }
}

- (void)signalDictationClearAllTip
{
  v3 = +[UIDictationController sharedInstance];
  v4 = [v3 isDictationPaused];

  if (v4)
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

- (void)signalDictationSelectionTip:(id)a3
{
  v6 = a3;
  v4 = +[UIDictationController sharedInstance];
  v5 = [v4 isDictationPaused];

  if (v5 && [(UIDictationTipPresentationHandler *)self->_dictationTipPresentationHandler shouldSignalDictationTip:4])
  {
    [(UIDictationTipSelectionHandler *)self->_dictationSelectionTipHandler signalSelectedText:v6];
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

- (void)signalDictationEmojiTip:(id)a3
{
  v14 = a3;
  [(UIDictationTipController *)self reset];
  if ([(UIDictationTipPresentationHandler *)self->_dictationTipPresentationHandler shouldSignalDictationTip:3])
  {
    dictationEmojiTipHandler = self->_dictationEmojiTipHandler;
    v5 = [(UIDictationTipEmojiHandler *)dictationEmojiTipHandler replaceEmojiInStringWithEmojiDictationCommand:v14];
    v6 = [(UIDictationTipEmojiHandler *)dictationEmojiTipHandler replaceEmojiInStringWithEmojiDictationCommand:v5];
    v12 = _UILocalizedFormat(@"Dictation Emoji Tip Body", @"Description of the emoji tip", @"While dictating, just say '%@'", v7, v8, v9, v10, v11, v6);

    v13 = _UILocalizedString(@"Dictation Emoji Tip Title", @"Title of the Emoji tip", @"Speak Emoji");
    [(UIDictationTipController *)self finalizeTextWithTipType:3 title:v13 andTipDescription:v12];
  }
}

- (void)signalDictationInsertionTip:(id)a3
{
  v8 = a3;
  v4 = +[UIDictationController sharedInstance];
  v5 = [v4 isDictationPaused];

  v6 = v8;
  if (v5)
  {
    if (-[UIDictationTipController dictationTipShown:](self, "dictationTipShown:", 3) || ![v8 _containsEmojiOnly])
    {
      if ([(UIDictationTipPresentationHandler *)self->_dictationTipPresentationHandler shouldSignalDictationTip:2])
      {
        [(UIDictationTipInsertionHandler *)self->_dictationInsertionTipHandler startRecodingText:v8];
      }

      else
      {
        v7 = [(UIDictationTipPresentationHandler *)self->_dictationTipPresentationHandler getDictationTipSignaled];
        v6 = v8;
        if (v7 != 2)
        {
          goto LABEL_10;
        }

        [(UIDictationTipInsertionHandler *)self->_dictationInsertionTipHandler recordDictationTipText:v8];
      }
    }

    else
    {
      [(UIDictationTipController *)self signalDictationEmojiTip:v8];
    }

    v6 = v8;
  }

LABEL_10:
}

- (void)triggerModelessInputTipDictationStoppedSignal
{
  v2 = [(UIDictationTipController *)self dictationTipModelessInputHandler];
  [v2 setModelessInputTipDictationStoppedSignal:1];
}

- (void)processSoftwareKeyboardInteraction
{
  v2 = [(UIDictationTipController *)self dictationTipModelessInputHandler];
  [v2 processSoftwareKeyboardInteraction];
}

- (void)processUserInteractionEnded
{
  if ([(UIDictationTipPresentationHandler *)self->_dictationTipPresentationHandler shouldSignalDictationTip:6])
  {
    v3 = [(UIDictationTipController *)self dictationTipModelessInputHandler];
    [v3 processUserInteractionEnded];
  }
}

- (void)signalShowModelessTipIfNeeded
{
  v2 = [(UIDictationTipController *)self dictationTipModelessInputHandler];
  [v2 setShouldAttemptToShowModelessTip:1];
}

@end