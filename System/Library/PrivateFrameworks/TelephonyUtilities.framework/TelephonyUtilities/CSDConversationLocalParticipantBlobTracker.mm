@interface CSDConversationLocalParticipantBlobTracker
- (void)handleConversationStateUpdated;
- (void)invalidateLocalParticipantBlobWantsDeliveryOverPush:(BOOL)push;
@end

@implementation CSDConversationLocalParticipantBlobTracker

- (void)handleConversationStateUpdated
{
  selfCopy = self;
  sub_10034CD4C();
}

- (void)invalidateLocalParticipantBlobWantsDeliveryOverPush:(BOOL)push
{
  selfCopy = self;
  sub_10034D040(push);
}

@end