@interface WFActionDragFeedbackGenerator
- (unsigned)reorderSound;
- (void)dealloc;
- (void)draggingActionsEnteredDeletionZone:(id)zone;
- (void)draggingInsertedActions:(id)actions intoWorkflow:(id)workflow atIndex:(unint64_t)index;
- (void)draggingItemSnapped;
- (void)draggingMovedActions:(id)actions fromIndexes:(id)indexes toIndexes:(id)toIndexes inWorkflow:(id)workflow;
- (void)draggingRemovedActions:(id)actions;
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
  reorderSound = [(WFActionDragFeedbackGenerator *)self reorderSound];

  AudioServicesPlaySystemSoundWithCompletion(reorderSound, 0);
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

- (void)draggingActionsEnteredDeletionZone:(id)zone
{
  zoneCopy = zone;
  [(WFActionDragFeedbackGenerator *)self draggingItemSnapped];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v4 = *MEMORY[0x277D76438];
    v5 = MEMORY[0x277CCACA8];
    v6 = WFLocalizedString(@"Release to remove %@");
    firstObject = [zoneCopy firstObject];
    localizedName = [firstObject localizedName];
    v9 = [v5 stringWithFormat:v6, localizedName];
    UIAccessibilityPostNotification(v4, v9);
  }
}

- (void)draggingMovedActions:(id)actions fromIndexes:(id)indexes toIndexes:(id)toIndexes inWorkflow:(id)workflow
{
  actionsCopy = actions;
  indexesCopy = indexes;
  toIndexesCopy = toIndexes;
  workflowCopy = workflow;
  [(WFActionDragFeedbackGenerator *)self draggingItemSnapped];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    actions = [workflowCopy actions];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __87__WFActionDragFeedbackGenerator_draggingMovedActions_fromIndexes_toIndexes_inWorkflow___block_invoke;
    v28 = &unk_279EDBC00;
    v29 = actionsCopy;
    v15 = [actions if_objectsPassingTest:&v25];

    lastIndex = [indexesCopy lastIndex];
    if (lastIndex <= [toIndexesCopy lastIndex])
    {
      v18 = [toIndexesCopy firstIndex] - 1;
      v19 = @"moved below %@";
    }

    else
    {
      lastIndex2 = [toIndexesCopy lastIndex];
      v18 = lastIndex2 - [toIndexesCopy count] + 1;
      v19 = @"moved above %@";
    }

    v20 = [v15 objectAtIndex:v18];
    v21 = MEMORY[0x277CCACA8];
    v22 = WFLocalizedString(v19);
    accessibilityName = [v20 accessibilityName];
    v24 = [v21 localizedStringWithFormat:v22, accessibilityName, v25, v26, v27, v28];

    UIAccessibilityPostNotification(*MEMORY[0x277D76438], v24);
    [(WFActionDragFeedbackGenerator *)self playReorderSound];
  }
}

- (void)draggingRemovedActions:(id)actions
{
  actionsCopy = actions;
  [(WFActionDragFeedbackGenerator *)self draggingItemSnapped];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = WFLocalizedString(@"removed %@");
    firstObject = [actionsCopy firstObject];
    accessibilityName = [firstObject accessibilityName];
    v8 = [v4 localizedStringWithFormat:v5, accessibilityName];

    UIAccessibilityPostNotification(*MEMORY[0x277D76438], v8);
  }
}

- (void)draggingInsertedActions:(id)actions intoWorkflow:(id)workflow atIndex:(unint64_t)index
{
  actionsCopy = actions;
  workflowCopy = workflow;
  [(WFActionDragFeedbackGenerator *)self draggingItemSnapped];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    actions = [workflowCopy actions];
    v10 = actions;
    if (index)
    {
      v11 = [actions objectAtIndex:index - 1];

      v12 = MEMORY[0x277CCACA8];
      accessibilityName2 = WFLocalizedString(@"added %1$@ to shortcut below %2$@");
      firstObject = [actionsCopy firstObject];
      accessibilityName = [firstObject accessibilityName];
      localizedName = [v11 localizedName];
      v17 = [v12 localizedStringWithFormat:accessibilityName2, accessibilityName, localizedName];
    }

    else
    {
      if ([actions count])
      {
        actions2 = [workflowCopy actions];
        v11 = [actions2 objectAtIndex:0];
      }

      else
      {
        v11 = 0;
      }

      firstObject2 = [actionsCopy firstObject];
      accessibilityName2 = [firstObject2 accessibilityName];

      v20 = MEMORY[0x277CCACA8];
      if (!v11)
      {
        firstObject = WFLocalizedString(@"added %@ to shortcut");
        v17 = [v20 localizedStringWithFormat:firstObject, accessibilityName2];
        goto LABEL_10;
      }

      firstObject = WFLocalizedString(@"added %1$@ to shortcut above %2$@");
      accessibilityName = [v11 accessibilityName];
      v17 = [v20 localizedStringWithFormat:firstObject, accessibilityName2, accessibilityName];
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

  date = [MEMORY[0x277CBEAA8] date];
  lastDragStartDate = self->_lastDragStartDate;
  self->_lastDragStartDate = date;
}

@end