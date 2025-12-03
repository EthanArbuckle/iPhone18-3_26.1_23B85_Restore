@interface SBDashBoardHostableEntityPresentationRequest
- (SBDashBoardHostableEntityPresentationRequest)initWithEntity:(id)entity transitionRequest:(id)request animated:(BOOL)animated isEphemeralSwitcher:(BOOL)switcher dismissGestureEnabled:(BOOL)enabled presentationCompletion:(id)completion;
@end

@implementation SBDashBoardHostableEntityPresentationRequest

- (SBDashBoardHostableEntityPresentationRequest)initWithEntity:(id)entity transitionRequest:(id)request animated:(BOOL)animated isEphemeralSwitcher:(BOOL)switcher dismissGestureEnabled:(BOOL)enabled presentationCompletion:(id)completion
{
  entityCopy = entity;
  requestCopy = request;
  completionCopy = completion;
  v23.receiver = self;
  v23.super_class = SBDashBoardHostableEntityPresentationRequest;
  v18 = [(SBDashBoardHostableEntityPresentationRequest *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_entity, entity);
    objc_storeStrong(&v19->_transitionRequest, request);
    v19->_animated = animated;
    v19->_isEphemeralSwitcher = switcher;
    v19->_dismissGestureEnabled = enabled;
    v20 = [completionCopy copy];
    presentationCompletion = v19->_presentationCompletion;
    v19->_presentationCompletion = v20;
  }

  return v19;
}

@end