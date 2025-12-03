@interface TUICandidateCollectionView
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation TUICandidateCollectionView

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  eventCopy = event;
  endedCopy = ended;
  _authenticationMessage = [eventCopy _authenticationMessage];
  activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
  [activeInstance _attemptAuthenticationWithMessage:_authenticationMessage];

  v10.receiver = self;
  v10.super_class = TUICandidateCollectionView;
  [(TUICandidateCollectionView *)&v10 touchesEnded:endedCopy withEvent:eventCopy];
}

@end