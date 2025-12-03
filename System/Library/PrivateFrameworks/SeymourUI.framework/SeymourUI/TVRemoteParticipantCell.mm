@interface TVRemoteParticipantCell
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation TVRemoteParticipantCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20B862A48();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_20B862B40();
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_20B8636BC(contextCopy, coordinatorCopy);
}

@end