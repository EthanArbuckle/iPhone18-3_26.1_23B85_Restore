@interface SBDashBoardHostableEntityPresentationRequest
- (SBDashBoardHostableEntityPresentationRequest)initWithEntity:(id)a3 transitionRequest:(id)a4 animated:(BOOL)a5 isEphemeralSwitcher:(BOOL)a6 dismissGestureEnabled:(BOOL)a7 presentationCompletion:(id)a8;
@end

@implementation SBDashBoardHostableEntityPresentationRequest

- (SBDashBoardHostableEntityPresentationRequest)initWithEntity:(id)a3 transitionRequest:(id)a4 animated:(BOOL)a5 isEphemeralSwitcher:(BOOL)a6 dismissGestureEnabled:(BOOL)a7 presentationCompletion:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = SBDashBoardHostableEntityPresentationRequest;
  v18 = [(SBDashBoardHostableEntityPresentationRequest *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_entity, a3);
    objc_storeStrong(&v19->_transitionRequest, a4);
    v19->_animated = a5;
    v19->_isEphemeralSwitcher = a6;
    v19->_dismissGestureEnabled = a7;
    v20 = [v17 copy];
    presentationCompletion = v19->_presentationCompletion;
    v19->_presentationCompletion = v20;
  }

  return v19;
}

@end