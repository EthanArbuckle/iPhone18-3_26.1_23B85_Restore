@interface SBMedusaDragWindowContext
- (SBMedusaDragWindowContext)initWithDragWindow:(id)a3 traitsParticipant:(id)a4 traitsParticipantDelegate:(id)a5;
@end

@implementation SBMedusaDragWindowContext

- (SBMedusaDragWindowContext)initWithDragWindow:(id)a3 traitsParticipant:(id)a4 traitsParticipantDelegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SBMedusaDragWindowContext;
  v12 = [(SBMedusaDragWindowContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dragWindow, a3);
    objc_storeStrong(&v13->_traitsParticipant, a4);
    objc_storeStrong(&v13->_traitsParticipantDelegate, a5);
  }

  return v13;
}

@end