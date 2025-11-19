@interface CSDConversationLocalParticipantBlobTracker
- (void)handleConversationStateUpdated;
- (void)invalidateLocalParticipantBlobWantsDeliveryOverPush:(BOOL)a3;
@end

@implementation CSDConversationLocalParticipantBlobTracker

- (void)handleConversationStateUpdated
{
  v2 = self;
  sub_10034CD4C();
}

- (void)invalidateLocalParticipantBlobWantsDeliveryOverPush:(BOOL)a3
{
  v4 = self;
  sub_10034D040(a3);
}

@end