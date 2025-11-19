@interface SBUserNotificationAuthenticator
@end

@implementation SBUserNotificationAuthenticator

void ___SBUserNotificationAuthenticator_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.CFUserNotification" additionalCredentials:3];
  v1 = _SBUserNotificationAuthenticator___authenticator;
  _SBUserNotificationAuthenticator___authenticator = v0;
}

@end