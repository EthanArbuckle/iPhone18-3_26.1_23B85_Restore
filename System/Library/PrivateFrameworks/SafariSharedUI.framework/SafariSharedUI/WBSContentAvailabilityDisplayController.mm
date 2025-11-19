@interface WBSContentAvailabilityDisplayController
- (BOOL)isDisplaying;
- (NSString)currentLabel;
- (WBSContentAvailabilityDisplayController)initWithPresenter:(id)a3;
- (WBSContentAvailabilityDisplayPresenting)presenter;
- (unint64_t)currentOptions;
- (void)displayTimerDidFire:(id)a3;
- (void)resetDisplay;
- (void)scheduleDisplayTimerIfNeeded;
- (void)updateToContentOptions:(unint64_t)a3;
@end

@implementation WBSContentAvailabilityDisplayController

- (void)resetDisplay
{
  v3 = [(WBSContentAvailabilityDisplayController *)self isDisplaying];
  self->_cumulativeOptions = 0;
  availabilityLabels = self->_availabilityLabels;
  self->_availabilityLabels = 0;

  self->_displayedIndex = 0;
  [(NSTimer *)self->_displayTimer invalidate];
  displayTimer = self->_displayTimer;
  self->_displayTimer = 0;

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_presenter);
    [WeakRetained availabilityDisplayController:self didUpdateWithState:2];
  }
}

- (BOOL)isDisplaying
{
  availabilityLabels = self->_availabilityLabels;
  if (availabilityLabels)
  {
    displayedIndex = self->_displayedIndex;
    LOBYTE(availabilityLabels) = displayedIndex < [(WBSBrowsingAssistantAvailabilityLabels *)availabilityLabels count];
  }

  return availabilityLabels;
}

- (WBSContentAvailabilityDisplayController)initWithPresenter:(id)a3
{
  v6.receiver = self;
  v6.super_class = WBSContentAvailabilityDisplayController;
  v3 = a3;
  v4 = [(WBSContentAvailabilityDisplayController *)&v6 init];
  objc_storeWeak(&v4->_presenter, v3);

  v4->_labelDisplayDuration = 1.55;
  return v4;
}

- (void)updateToContentOptions:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  v12 = WeakRetained;
  if (a3 && (v6 = [(WBSBrowsingAssistantAvailabilityLabels *)self->_availabilityLabels representsSupersetOfContentOptions:a3], WeakRetained = v12, !v6))
  {
    self->_cumulativeOptions |= a3;
    v7 = [(WBSContentAvailabilityDisplayController *)self isDisplaying];
    availabilityLabels = self->_availabilityLabels;
    if (availabilityLabels)
    {
      [(WBSBrowsingAssistantAvailabilityLabels *)availabilityLabels possibleLabelsByIncorporatingContentOptions:a3 intoLabelsAfterIndex:self->_displayedIndex];
    }

    else
    {
      [WBSBrowsingAssistantAvailabilityLabels possibleLabelsForContentOptions:a3];
    }
    v9 = ;
    if ([v9 count] >= 2 && v12)
    {
      v10 = [v12 availabilityDisplayController:self determineBestLabelsForPresentation:v9];
    }

    else
    {
      v10 = [v9 objectAtIndexedSubscript:0];
    }

    v11 = self->_availabilityLabels;
    self->_availabilityLabels = v10;

    self->_displayedIndex = 0;
    [(WBSContentAvailabilityDisplayController *)self scheduleDisplayTimerIfNeeded];
    [v12 availabilityDisplayController:self didUpdateWithState:v7];
  }

  else
  {
    if (!WeakRetained)
    {
      goto LABEL_6;
    }

    [WeakRetained availabilityDisplayController:self didUpdateWithState:0];
  }

  WeakRetained = v12;
LABEL_6:
}

- (NSString)currentLabel
{
  if ([(WBSContentAvailabilityDisplayController *)self isDisplaying])
  {
    v3 = [(WBSBrowsingAssistantAvailabilityLabels *)self->_availabilityLabels textForOptionsAtIndex:self->_displayedIndex];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)currentOptions
{
  if (![(WBSContentAvailabilityDisplayController *)self isDisplaying])
  {
    return 0;
  }

  availabilityLabels = self->_availabilityLabels;
  displayedIndex = self->_displayedIndex;

  return [(WBSBrowsingAssistantAvailabilityLabels *)availabilityLabels representedOptionsAtIndex:displayedIndex];
}

- (WBSContentAvailabilityDisplayPresenting)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

- (void)scheduleDisplayTimerIfNeeded
{
  if (a1)
  {
    [*(a1 + 16) invalidate];
    v2 = *(a1 + 16);
    *(a1 + 16) = 0;

    if ([a1 isDisplaying])
    {
      v3 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:a1 target:sel_displayTimerDidFire_ selector:0 userInfo:0 repeats:*(a1 + 40)];
      v4 = *(a1 + 16);
      *(a1 + 16) = v3;

      v5 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [v5 addTimer:*(a1 + 16) forMode:*MEMORY[0x1E695DA28]];
    }
  }
}

- (void)displayTimerDidFire:(id)a3
{
  ++self->_displayedIndex;
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  if ([(WBSContentAvailabilityDisplayController *)self isDisplaying])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  [WeakRetained availabilityDisplayController:self didUpdateWithState:v5];

  [(WBSContentAvailabilityDisplayController *)self scheduleDisplayTimerIfNeeded];
}

@end