@interface WFActionDragFeedbackGenerator
- (unsigned)reorderSound;
- (void)dealloc;
- (void)draggingActionsEnteredDeletionZone:(id)a3;
- (void)draggingInsertedActions:(id)a3 intoWorkflow:(id)a4 atIndex:(unint64_t)a5;
- (void)draggingItemSnapped;
- (void)draggingMovedActions:(id)a3 fromIndexes:(id)a4 toIndexes:(id)a5 inWorkflow:(id)a6;
- (void)draggingRemovedActions:(id)a3;
- (void)draggingStarted;
- (void)playReorderSound;
@end

@implementation WFActionDragFeedbackGenerator

- (void)dealloc
{
  if (self->_initializedReorderSound)
  {
    AudioServicesDisposeSystemSoundID(self->_reorderSound);
  }

  v3.receiver = self;
  v3.super_class = WFActionDragFeedbackGenerator;
  [(WFActionDragFeedbackGenerator *)&v3 dealloc];
}

- (void)playReorderSound
{
  v2 = [(WFActionDragFeedbackGenerator *)self reorderSound];

  AudioServicesPlaySystemSoundWithCompletion(v2, 0);
}

- (unsigned)reorderSound
{
  if (!self->_initializedReorderSound)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 URLForResource:@"Reorder" withExtension:@"aiff"];

    self->_initializedReorderSound = AudioServicesCreateSystemSoundID(v4, &self->_reorderSound) == 0;
  }

  return self->_reorderSound;
}

- (void)draggingActionsEnteredDeletionZone:(id)a3
{
  v10 = a3;
  [(WFActionDragFeedbackGenerator *)self draggingItemSnapped];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v4 = *MEMORY[0x277D76438];
    v5 = MEMORY[0x277CCACA8];
    v6 = WFLocalizedString(@"Release to remove %@");
    v7 = [v10 firstObject];
    v8 = [v7 localizedName];
    v9 = [v5 stringWithFormat:v6, v8];
    UIAccessibilityPostNotification(v4, v9);
  }
}

- (void)draggingMovedActions:(id)a3 fromIndexes:(id)a4 toIndexes:(id)a5 inWorkflow:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(WFActionDragFeedbackGenerator *)self draggingItemSnapped];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v14 = [v13 actions];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __87__WFActionDragFeedbackGenerator_draggingMovedActions_fromIndexes_toIndexes_inWorkflow___block_invoke;
    v28 = &unk_279EDBC00;
    v29 = v10;
    v15 = [v14 if_objectsPassingTest:&v25];

    v16 = [v11 lastIndex];
    if (v16 <= [v12 lastIndex])
    {
      v18 = [v12 firstIndex] - 1;
      v19 = @"moved below %@";
    }

    else
    {
      v17 = [v12 lastIndex];
      v18 = v17 - [v12 count] + 1;
      v19 = @"moved above %@";
    }

    v20 = [v15 objectAtIndex:v18];
    v21 = MEMORY[0x277CCACA8];
    v22 = WFLocalizedString(v19);
    v23 = [v20 accessibilityName];
    v24 = [v21 localizedStringWithFormat:v22, v23, v25, v26, v27, v28];

    UIAccessibilityPostNotification(*MEMORY[0x277D76438], v24);
    [(WFActionDragFeedbackGenerator *)self playReorderSound];
  }
}

- (void)draggingRemovedActions:(id)a3
{
  v9 = a3;
  [(WFActionDragFeedbackGenerator *)self draggingItemSnapped];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = WFLocalizedString(@"removed %@");
    v6 = [v9 firstObject];
    v7 = [v6 accessibilityName];
    v8 = [v4 localizedStringWithFormat:v5, v7];

    UIAccessibilityPostNotification(*MEMORY[0x277D76438], v8);
  }
}

- (void)draggingInsertedActions:(id)a3 intoWorkflow:(id)a4 atIndex:(unint64_t)a5
{
  v21 = a3;
  v8 = a4;
  [(WFActionDragFeedbackGenerator *)self draggingItemSnapped];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v9 = [v8 actions];
    v10 = v9;
    if (a5)
    {
      v11 = [v9 objectAtIndex:a5 - 1];

      v12 = MEMORY[0x277CCACA8];
      v13 = WFLocalizedString(@"added %1$@ to shortcut below %2$@");
      v14 = [v21 firstObject];
      v15 = [v14 accessibilityName];
      v16 = [v11 localizedName];
      v17 = [v12 localizedStringWithFormat:v13, v15, v16];
    }

    else
    {
      if ([v9 count])
      {
        v18 = [v8 actions];
        v11 = [v18 objectAtIndex:0];
      }

      else
      {
        v11 = 0;
      }

      v19 = [v21 firstObject];
      v13 = [v19 accessibilityName];

      v20 = MEMORY[0x277CCACA8];
      if (!v11)
      {
        v14 = WFLocalizedString(@"added %@ to shortcut");
        v17 = [v20 localizedStringWithFormat:v14, v13];
        goto LABEL_10;
      }

      v14 = WFLocalizedString(@"added %1$@ to shortcut above %2$@");
      v15 = [v11 accessibilityName];
      v17 = [v20 localizedStringWithFormat:v14, v13, v15];
    }

LABEL_10:
    UIAccessibilityPostNotification(*MEMORY[0x277D76438], v17);
    [(WFActionDragFeedbackGenerator *)self playReorderSound];
  }
}

- (void)draggingItemSnapped
{
  [(NSDate *)self->_lastDragStartDate timeIntervalSinceNow];
  if (fabs(v3) >= 0.3)
  {
    v4.receiver = self;
    v4.super_class = WFActionDragFeedbackGenerator;
    [(WFDragFeedbackGenerator *)&v4 draggingItemSnapped];
  }
}

- (void)draggingStarted
{
  v7.receiver = self;
  v7.super_class = WFActionDragFeedbackGenerator;
  [(WFDragFeedbackGenerator *)&v7 draggingStarted];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v3 = *MEMORY[0x277D76438];
    v4 = WFLocalizedString(@"dragging");
    UIAccessibilityPostNotification(v3, v4);
  }

  v5 = [MEMORY[0x277CBEAA8] date];
  lastDragStartDate = self->_lastDragStartDate;
  self->_lastDragStartDate = v5;
}

@end