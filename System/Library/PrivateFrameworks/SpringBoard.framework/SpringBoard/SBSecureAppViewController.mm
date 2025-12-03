@interface SBSecureAppViewController
- (BOOL)handleEvent:(id)event;
- (void)_updateDisplayLayoutElementForActivation:(id)activation;
@end

@implementation SBSecureAppViewController

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy type] == 13)
  {
    value = [eventCopy value];
    bOOLValue = [value BOOLValue];

    if (bOOLValue)
    {
      delegate = [(SBDashBoardHostedAppViewController *)self delegate];
      [delegate secureAppViewControllerDidAuthenticate:self];
    }
  }

  v10.receiver = self;
  v10.super_class = SBSecureAppViewController;
  v8 = [(SBDashBoardHostedAppViewController *)&v10 handleEvent:eventCopy];

  return v8;
}

- (void)_updateDisplayLayoutElementForActivation:(id)activation
{
  v7.receiver = self;
  v7.super_class = SBSecureAppViewController;
  activationCopy = activation;
  [(SBDashBoardHostedAppViewController *)&v7 _updateDisplayLayoutElementForActivation:activationCopy];
  v4 = [SBCoverSheetPresentationManager sharedInstance:v7.receiver];
  coverSheetWindow = [v4 coverSheetWindow];
  [coverSheetWindow level];
  [activationCopy setLevel:v6];
}

@end