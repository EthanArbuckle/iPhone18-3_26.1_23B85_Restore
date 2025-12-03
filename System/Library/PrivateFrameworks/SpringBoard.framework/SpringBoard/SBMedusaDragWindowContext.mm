@interface SBMedusaDragWindowContext
- (SBMedusaDragWindowContext)initWithDragWindow:(id)window traitsParticipant:(id)participant traitsParticipantDelegate:(id)delegate;
@end

@implementation SBMedusaDragWindowContext

- (SBMedusaDragWindowContext)initWithDragWindow:(id)window traitsParticipant:(id)participant traitsParticipantDelegate:(id)delegate
{
  windowCopy = window;
  participantCopy = participant;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = SBMedusaDragWindowContext;
  v12 = [(SBMedusaDragWindowContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dragWindow, window);
    objc_storeStrong(&v13->_traitsParticipant, participant);
    objc_storeStrong(&v13->_traitsParticipantDelegate, delegate);
  }

  return v13;
}

@end