@interface SBBarSwipeAffordanceViewController
- (SBBarSwipeAffordanceViewController)initWithZStackParticipantIdentifier:(int64_t)a3 windowScene:(id)a4;
- (void)loadView;
@end

@implementation SBBarSwipeAffordanceViewController

- (void)loadView
{
  v3 = [(SBBarSwipeAffordanceController *)self->_barSwipeAffordanceController barSwipeAffordanceView];
  [(SBBarSwipeAffordanceViewController *)self setView:v3];
}

- (SBBarSwipeAffordanceViewController)initWithZStackParticipantIdentifier:(int64_t)a3 windowScene:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = SBBarSwipeAffordanceViewController;
  v7 = [(SBBarSwipeAffordanceViewController *)&v11 initWithNibName:0 bundle:0];
  if (v7)
  {
    v8 = [[SBBarSwipeAffordanceController alloc] initWithZStackParticipantIdentifier:a3 windowScene:v6];
    barSwipeAffordanceController = v7->_barSwipeAffordanceController;
    v7->_barSwipeAffordanceController = v8;
  }

  return v7;
}

@end