@interface WBSContentAvailabilityDisplayController
- (BOOL)isDisplaying;
- (NSString)currentLabel;
- (WBSContentAvailabilityDisplayController)initWithPresenter:(id)presenter;
- (WBSContentAvailabilityDisplayPresenting)presenter;
- (unint64_t)currentOptions;
- (void)displayTimerDidFire:(id)fire;
- (void)resetDisplay;
- (void)scheduleDisplayTimerIfNeeded;
- (void)updateToContentOptions:(unint64_t)options;
@end

@implementation WBSContentAvailabilityDisplayController

- (void)resetDisplay
{
  isDisplaying = [(WBSContentAvailabilityDisplayController *)self isDisplaying];
  self->_cumulativeOptions = 0;
  availabilityLabels = self->_availabilityLabels;
  self->_availabilityLabels = 0;

  self->_displayedIndex = 0;
  [(NSTimer *)self->_displayTimer invalidate];
  displayTimer = self->_displayTimer;
  self->_displayTimer = 0;

  if (isDisplaying)
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

- (WBSContentAvailabilityDisplayController)initWithPresenter:(id)presenter
{
  v6.receiver = self;
  v6.super_class = WBSContentAvailabilityDisplayController;
  presenterCopy = presenter;
  v4 = [(WBSContentAvailabilityDisplayController *)&v6 init];
  objc_storeWeak(&v4->_presenter, presenterCopy);

  v4->_labelDisplayDuration = 1.55;
  return v4;
}

- (void)updateToContentOptions:(unint64_t)options
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  v12 = WeakRetained;
  if (options && (v6 = [(WBSBrowsingAssistantAvailabilityLabels *)self->_availabilityLabels representsSupersetOfContentOptions:options], WeakRetained = v12, !v6))
  {
    self->_cumulativeOptions |= options;
    isDisplaying = [(WBSContentAvailabilityDisplayController *)self isDisplaying];
    availabilityLabels = self->_availabilityLabels;
    if (availabilityLabels)
    {
      [(WBSBrowsingAssistantAvailabilityLabels *)availabilityLabels possibleLabelsByIncorporatingContentOptions:options intoLabelsAfterIndex:self->_displayedIndex];
    }

    else
    {
      [WBSBrowsingAssistantAvailabilityLabels possibleLabelsForContentOptions:options];
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
    [v12 availabilityDisplayController:self didUpdateWithState:isDisplaying];
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
  if (self)
  {
    [*(self + 16) invalidate];
    v2 = *(self + 16);
    *(self + 16) = 0;

    if ([self isDisplaying])
    {
      v3 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel_displayTimerDidFire_ selector:0 userInfo:0 repeats:*(self + 40)];
      v4 = *(self + 16);
      *(self + 16) = v3;

      mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
      [mainRunLoop addTimer:*(self + 16) forMode:*MEMORY[0x1E695DA28]];
    }
  }
}

- (void)displayTimerDidFire:(id)fire
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