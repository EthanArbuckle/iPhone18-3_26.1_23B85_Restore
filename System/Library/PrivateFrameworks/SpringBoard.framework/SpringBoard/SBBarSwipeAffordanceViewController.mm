@interface SBBarSwipeAffordanceViewController
- (SBBarSwipeAffordanceViewController)initWithZStackParticipantIdentifier:(int64_t)identifier windowScene:(id)scene;
- (void)loadView;
@end

@implementation SBBarSwipeAffordanceViewController

- (void)loadView
{
  barSwipeAffordanceView = [(SBBarSwipeAffordanceController *)self->_barSwipeAffordanceController barSwipeAffordanceView];
  [(SBBarSwipeAffordanceViewController *)self setView:barSwipeAffordanceView];
}

- (SBBarSwipeAffordanceViewController)initWithZStackParticipantIdentifier:(int64_t)identifier windowScene:(id)scene
{
  sceneCopy = scene;
  v11.receiver = self;
  v11.super_class = SBBarSwipeAffordanceViewController;
  v7 = [(SBBarSwipeAffordanceViewController *)&v11 initWithNibName:0 bundle:0];
  if (v7)
  {
    v8 = [[SBBarSwipeAffordanceController alloc] initWithZStackParticipantIdentifier:identifier windowScene:sceneCopy];
    barSwipeAffordanceController = v7->_barSwipeAffordanceController;
    v7->_barSwipeAffordanceController = v8;
  }

  return v7;
}

@end