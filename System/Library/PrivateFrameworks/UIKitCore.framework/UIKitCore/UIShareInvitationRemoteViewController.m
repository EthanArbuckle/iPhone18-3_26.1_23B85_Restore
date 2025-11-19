@interface UIShareInvitationRemoteViewController
@end

@implementation UIShareInvitationRemoteViewController

void __74___UIShareInvitationRemoteViewController__dismissAndRepresentForActivity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) publicController];
  [v2 _representFullscreenAfterActivityDismissal:*(a1 + 40)];
}

@end