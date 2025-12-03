@interface FBSExtensionInfo(SpringBoard)
- (uint64_t)sb_type;
@end

@implementation FBSExtensionInfo(SpringBoard)

- (uint64_t)sb_type
{
  typeIdentifier = [self typeIdentifier];
  if ([typeIdentifier isEqualToString:@"com.apple.services"])
  {
    v2 = 1;
  }

  else if ([typeIdentifier isEqualToString:@"com.apple.ui-services"])
  {
    v2 = 2;
  }

  else if ([typeIdentifier isEqualToString:@"com.apple.keyboard-service"])
  {
    v2 = 3;
  }

  else if ([typeIdentifier isEqualToString:@"com.apple.fileprovider-ui"])
  {
    v2 = 4;
  }

  else if ([typeIdentifier isEqualToString:@"com.apple.fileprovider-nonui"])
  {
    v2 = 5;
  }

  else if ([typeIdentifier isEqualToString:@"com.apple.photo-editing"])
  {
    v2 = 6;
  }

  else if ([typeIdentifier isEqualToString:@"com.apple.share-services"])
  {
    v2 = 7;
  }

  else if ([typeIdentifier isEqualToString:@"com.apple.widget-extension"])
  {
    v2 = 8;
  }

  else if ([typeIdentifier isEqualToString:@"com.apple.watchkit"])
  {
    v2 = 9;
  }

  else if ([typeIdentifier isEqualToString:@"com.apple.usernotifications.service"])
  {
    v2 = 14;
  }

  else if ([typeIdentifier isEqualToString:@"com.apple.usernotifications.content-extension"])
  {
    v2 = 15;
  }

  else if ([typeIdentifier isEqualToString:@"com.apple.callkit.call-directory"])
  {
    v2 = 16;
  }

  else if ([typeIdentifier isEqualToString:@"com.apple.message-payload-provider"])
  {
    v2 = 17;
  }

  else if ([typeIdentifier isEqualToString:@"com.apple.intents-ui-service"])
  {
    v2 = 19;
  }

  else if ([typeIdentifier isEqualToString:@"com.apple.intents-service"])
  {
    v2 = 18;
  }

  else if ([typeIdentifier isEqualToString:@"com.apple.broadcast-services"] & 1) != 0 || (objc_msgSend(typeIdentifier, "isEqualToString:", @"com.apple.Safari.sharedlinks-service"))
  {
    v2 = 20;
  }

  else if ([typeIdentifier isEqualToString:@"com.apple.Safari.content-blocker"])
  {
    v2 = 11;
  }

  else if ([typeIdentifier isEqualToString:@"com.apple.spotlight.index"])
  {
    v2 = 12;
  }

  else if ([typeIdentifier isEqualToString:@"com.apple.AudioUnit-UI"])
  {
    v2 = 13;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end