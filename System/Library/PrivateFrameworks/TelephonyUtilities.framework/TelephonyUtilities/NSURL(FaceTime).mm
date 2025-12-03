@interface NSURL(FaceTime)
+ (id)_applyFaceTimeScheme:()FaceTime toFaceTimeURL:;
+ (id)_faceTimeURLWithDestinationID:()FaceTime addressBookUID:audioOnly:;
+ (id)_faceTimeURLWithHandle:()FaceTime addressBookUID:audioOnly:;
+ (id)faceTimeAnswerURLWithSourceIdentifier:()FaceTime;
+ (id)faceTimeAppJoinConversationLinkURL;
+ (id)faceTimeAppJoinConversationURLForConversationLinkURL:()FaceTime;
+ (id)faceTimeAppVideoMessagePlaybackURLForUUID:()FaceTime;
+ (id)faceTimeAppViewLinkDetailsURL;
+ (id)faceTimeAppViewLinkDetailsURLForPseudonym:()FaceTime;
+ (id)faceTimeAppViewLinkRequesetDetailsURL;
+ (id)faceTimeLaunchForIncomingCallURL;
+ (id)faceTimeLaunchForOutgoingConversationURL;
+ (id)faceTimeLaunchForScreeningURL;
+ (id)faceTimeNeedsBackgroundLaunchURL;
+ (id)faceTimePromptURLWithURL:()FaceTime;
+ (id)faceTimeRefreshShareableContentURL;
+ (id)faceTimeRefreshShareableContentURLForBundleIdentifier:()FaceTime;
+ (id)faceTimeShowAccessoryButtonEventsNoticeUIURL;
+ (id)faceTimeShowCarPlayInCallUIURL;
+ (id)faceTimeShowHandoffEligibleNearbyURL;
+ (id)faceTimeShowHandoffUIURL;
+ (id)faceTimeShowInCallUIURL;
+ (id)faceTimeShowIncomingTransmissionNoticeUIURL;
+ (id)faceTimeShowInviteUIURL;
+ (id)faceTimeShowLagunaPullConversationURL;
+ (id)faceTimeShowSystemCallControlsURL;
+ (id)faceTimeTelephonyURLWithPhoneNumber:()FaceTime showPrompt:;
+ (id)faceTimeURLWithDestinationID:()FaceTime addressBookUID:forceAssist:suppressAssist:wasAssisted:audioOnly:;
+ (id)faceTimeURLWithURL:()FaceTime;
+ (id)faceTimeUpdateForegroundAppURL;
+ (id)faceTimeUpdateForegroundAppURLForBundleIdentifier:()FaceTime applicationType:;
+ (id)faceTimeVideoMessagePlaybackURLForUUID:()FaceTime;
+ (id)facetimeAppViewLinkRequestDetailsURL;
+ (id)nearbyUpdateForegroundAppURLForBundleIdentifier:()FaceTime applicationType:;
+ (id)openNoteURLForRecordingSession:()FaceTime;
+ (id)phoneAppLaunchForIncomingCallURL;
+ (id)phoneAppLaunchForOutgoingConversationURL;
+ (id)phoneAppShowInCallUIURL;
+ (id)screenSharingAppURL;
+ (id)showKeypadURL;
- (BOOL)_isPhoneNumberID:()FaceTime;
- (BOOL)hasNoPromptOption;
- (BOOL)isAnswerRequestURL;
- (BOOL)isFaceTimeRecentsDetailsViewURL;
- (id)answerRequestSourceIdentifier;
- (id)conversationLinkURLForJoinConversation;
- (id)conversationLinkURLForOpenLinkURL;
- (id)faceTimeDestinationAccount;
- (id)foregroundAppBundleIdentifier;
- (id)nearbyOption;
- (id)pseudonymForLinkDetailsView;
- (id)recentsUniqueID;
- (id)videoMessageUUID;
- (uint64_t)foregroundAppApplicationType;
- (uint64_t)isDialCallURL;
- (uint64_t)isFaceTimeAppJoinConversationLinkURL;
- (uint64_t)isFaceTimeAppVideoMessagePlaybackURL;
- (uint64_t)isFaceTimeAppViewLinkDetailsURL;
- (uint64_t)isFaceTimeAppViewLinkRequestDetailsURL;
- (uint64_t)isFaceTimeAudioPromptURL;
- (uint64_t)isFaceTimeAudioURL;
- (uint64_t)isFaceTimeMultiwayURL;
- (uint64_t)isFaceTimeNeedsBackgroundLaunchURL;
- (uint64_t)isFaceTimeOpenLinkURL;
- (uint64_t)isFaceTimePromptURL;
- (uint64_t)isFaceTimeURL;
- (uint64_t)isLaunchForIncomingCallURL;
- (uint64_t)isLaunchForOutgoingConversationURL;
- (uint64_t)isLaunchForScreeningURL;
- (uint64_t)isRefreshShareableContentURL;
- (uint64_t)isShowAccessoryButtonEventsNoticeURL;
- (uint64_t)isShowCarPlayInCallUIURL;
- (uint64_t)isShowHandoffEligibleNearbyURL;
- (uint64_t)isShowInCallUIURL;
- (uint64_t)isShowIncomingTransmissionNoticeURL;
- (uint64_t)isShowKeypadURL;
- (uint64_t)isShowLagunaPullConversationURL;
- (uint64_t)isShowScreenSharingURL;
- (uint64_t)isShowSystemCallControlsURL;
- (uint64_t)isSystemCallControlsURL;
- (uint64_t)isUpdateForegroundAppURL;
- (uint64_t)isVideoMessagePlaybackURL;
- (void)conversationLinkURLForOpenLinkURL;
- (void)pseudonymForLinkDetailsView;
@end

@implementation NSURL(FaceTime)

- (uint64_t)isShowInCallUIURL
{
  tuQueryParameters = [self tuQueryParameters];
  v2 = [tuQueryParameters objectForKey:@"showInCallUI"];
  if ([v2 isEqualToString:@"1"])
  {
    v3 = 1;
  }

  else
  {
    v4 = [tuQueryParameters objectForKey:@"showCarPlayInCallUI"];
    v3 = [v4 isEqualToString:@"1"];
  }

  return v3;
}

- (uint64_t)isShowKeypadURL
{
  tuQueryParameters = [self tuQueryParameters];
  v2 = [tuQueryParameters objectForKey:@"showKeypad"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (uint64_t)isShowSystemCallControlsURL
{
  tuQueryParameters = [self tuQueryParameters];
  v2 = [tuQueryParameters objectForKey:@"showSystemCallControls"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (uint64_t)isShowIncomingTransmissionNoticeURL
{
  tuQueryParameters = [self tuQueryParameters];
  v2 = [tuQueryParameters objectForKey:@"showIncomingTransmissionNotice"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (uint64_t)isRefreshShareableContentURL
{
  tuQueryParameters = [self tuQueryParameters];
  v2 = [tuQueryParameters objectForKey:@"refreshShareableContent"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (uint64_t)isFaceTimeMultiwayURL
{
  scheme = [self scheme];
  faceTimeMultiwayScheme = [MEMORY[0x1E695DFF8] faceTimeMultiwayScheme];
  v3 = [scheme isEqualToString:faceTimeMultiwayScheme];

  return v3;
}

- (uint64_t)isLaunchForScreeningURL
{
  tuQueryParameters = [self tuQueryParameters];
  v2 = [tuQueryParameters objectForKey:@"launchForScreening"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (uint64_t)isShowHandoffEligibleNearbyURL
{
  tuQueryParameters = [self tuQueryParameters];
  v2 = [tuQueryParameters objectForKey:@"showHandoffEligibleNearby"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (uint64_t)isShowLagunaPullConversationURL
{
  tuQueryParameters = [self tuQueryParameters];
  v2 = [tuQueryParameters objectForKey:@"showLagunaPullConversation"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (uint64_t)isShowScreenSharingURL
{
  scheme = [self scheme];
  v2 = [scheme isEqualToString:@"system-screen-sharing"];

  return v2;
}

- (uint64_t)isShowAccessoryButtonEventsNoticeURL
{
  tuQueryParameters = [self tuQueryParameters];
  v2 = [tuQueryParameters objectForKey:@"showAccessoryButtonEventsNotice"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (uint64_t)isUpdateForegroundAppURL
{
  tuQueryParameters = [self tuQueryParameters];
  v2 = [tuQueryParameters objectForKey:@"updateForegroundApp"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (uint64_t)isFaceTimeOpenLinkURL
{
  scheme = [self scheme];
  faceTimeOpenLinkScheme = [MEMORY[0x1E695DFF8] faceTimeOpenLinkScheme];
  v3 = [scheme isEqualToString:faceTimeOpenLinkScheme];

  return v3;
}

- (uint64_t)isLaunchForIncomingCallURL
{
  tuQueryParameters = [self tuQueryParameters];
  v2 = [tuQueryParameters objectForKey:@"launchForIncomingCall"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (BOOL)isAnswerRequestURL
{
  tuQueryParameters = [self tuQueryParameters];
  v2 = [tuQueryParameters objectForKey:@"answerSourceIdentifier"];
  v3 = v2 != 0;

  return v3;
}

- (uint64_t)isFaceTimeNeedsBackgroundLaunchURL
{
  tuQueryParameters = [self tuQueryParameters];
  v2 = [tuQueryParameters objectForKey:@"shouldBackgroundLaunch"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (uint64_t)isVideoMessagePlaybackURL
{
  scheme = [self scheme];
  if ([scheme isEqualToString:@"facetime-video-message"])
  {
    host = [self host];
    v4 = [host isEqualToString:@"player"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)faceTimeShowInCallUIURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  faceTimeScheme = [MEMORY[0x1E695DFF8] faceTimeScheme];
  v3 = [v1 stringWithFormat:@"%@://", faceTimeScheme];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"showInCallUI"];

  return v5;
}

- (uint64_t)isShowCarPlayInCallUIURL
{
  tuQueryParameters = [self tuQueryParameters];
  v2 = [tuQueryParameters objectForKey:@"showCarPlayInCallUI"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (id)faceTimeDestinationAccount
{
  resourceSpecifier = [self resourceSpecifier];
  stringByRemovingPercentEncoding = [resourceSpecifier stringByRemovingPercentEncoding];

  if ([stringByRemovingPercentEncoding hasPrefix:@"//"])
  {
    v3 = [stringByRemovingPercentEncoding substringFromIndex:2];

    stringByRemovingPercentEncoding = v3;
  }

  v4 = [stringByRemovingPercentEncoding rangeOfString:@"/"];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [stringByRemovingPercentEncoding substringToIndex:v4];

    stringByRemovingPercentEncoding = v5;
  }

  v6 = [stringByRemovingPercentEncoding rangeOfString:@"?"];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [stringByRemovingPercentEncoding substringToIndex:v6];

    stringByRemovingPercentEncoding = v7;
  }

  return stringByRemovingPercentEncoding;
}

- (BOOL)_isPhoneNumberID:()FaceTime
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"\\+?[0-9]+" options:1024];
  v6 = v4 + v5;
  v7 = [v3 length];

  return v6 == v7;
}

+ (id)_faceTimeURLWithDestinationID:()FaceTime addressBookUID:audioOnly:
{
  v8 = [TUHandle handleWithDestinationID:?];
  v9 = [self _faceTimeURLWithHandle:v8 addressBookUID:a4 audioOnly:a5];

  return v9;
}

+ (id)_faceTimeURLWithHandle:()FaceTime addressBookUID:audioOnly:
{
  v7 = a3;
  if (a5)
  {
    [MEMORY[0x1E695DFF8] faceTimeAudioScheme];
  }

  else
  {
    [MEMORY[0x1E695DFF8] faceTimeScheme];
  }
  v8 = ;
  v9 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v9 setScheme:v8];
  value = [v7 value];
  v11 = _FormatDestinationID(value);
  [v9 setHost:v11];

  array = [MEMORY[0x1E695DF70] array];
  v13 = [MEMORY[0x1E696AF60] queryItemForHandleType:{objc_msgSend(v7, "type")}];
  [array addObject:v13];

  if (a4 != -1)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:a4];
    stringValue = [v14 stringValue];

    v16 = [MEMORY[0x1E696AF60] queryItemWithName:@"uid" value:stringValue];
    [array addObject:v16];
  }

  if ([array count])
  {
    v17 = [array copy];
    [v9 setQueryItems:v17];
  }

  v18 = [v9 URL];

  return v18;
}

+ (id)faceTimeURLWithDestinationID:()FaceTime addressBookUID:forceAssist:suppressAssist:wasAssisted:audioOnly:
{
  v11 = [MEMORY[0x1E695DFF8] faceTimeURLWithDestinationID:a3 addressBookUID:a4 audioOnly:a8];
  v12 = [MEMORY[0x1E696AF20] componentsWithURL:v11 resolvingAgainstBaseURL:0];
  v13 = MEMORY[0x1E695DF70];
  queryItems = [v12 queryItems];
  v15 = [v13 arrayWithArray:queryItems];

  if ((a5 & 1) != 0 || a6)
  {
    v16 = TelURLForceAssist;
    if (!a5)
    {
      v16 = TelURLSuppressAssist;
    }

    v17 = [MEMORY[0x1E696AF60] queryItemWithName:*v16 value:@"1"];
    [v15 addObject:v17];
  }

  if (a7)
  {
    v18 = [MEMORY[0x1E696AF60] queryItemWithName:@"wasAssisted" value:@"1"];
    [v15 addObject:v18];
  }

  [v12 setQueryItems:v15];
  v19 = [v12 URL];

  return v19;
}

+ (id)faceTimeTelephonyURLWithPhoneNumber:()FaceTime showPrompt:
{
  v5 = TUURLHostForTelephoneNumber(a3);
  if ([v5 length])
  {
    uRLHostAllowedCharacterSet = [MEMORY[0x1E696AB08] URLHostAllowedCharacterSet];
    v7 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:uRLHostAllowedCharacterSet];

    v5 = v7;
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://%@", @"tel", v5];
  v9 = v8;
  if ((a4 & 1) == 0)
  {
    v10 = [v8 stringByAppendingFormat:@"?%@", @"noprompt"];

    v9 = v10;
  }

  v11 = [MEMORY[0x1E695DFF8] URLWithString:v9];

  return v11;
}

+ (id)_applyFaceTimeScheme:()FaceTime toFaceTimeURL:
{
  v5 = a3;
  v6 = a4;
  isFaceTimeURL = [v6 isFaceTimeURL];
  isFaceTimeAudioURL = [v6 isFaceTimeAudioURL];
  if ((isFaceTimeURL & 1) != 0 || isFaceTimeAudioURL)
  {
    resourceSpecifier = [v6 resourceSpecifier];
    if ([resourceSpecifier hasPrefix:@"//"])
    {
      v10 = [resourceSpecifier substringFromIndex:2];

      resourceSpecifier = v10;
    }

    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@://%@", v5, resourceSpecifier];
    v12 = [MEMORY[0x1E695DFF8] URLWithString:v11];

    v6 = v12;
  }

  return v6;
}

+ (id)faceTimeURLWithURL:()FaceTime
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = a3;
  faceTimeScheme = [v3 faceTimeScheme];
  v6 = [v3 _applyFaceTimeScheme:faceTimeScheme toFaceTimeURL:v4];

  return v6;
}

+ (id)faceTimePromptURLWithURL:()FaceTime
{
  v3 = a3;
  isFaceTimeAudioURL = [v3 isFaceTimeAudioURL];
  v5 = @"facetime-prompt";
  if (isFaceTimeAudioURL)
  {
    v5 = @"facetime-audio-prompt";
  }

  v6 = v5;
  v7 = [v3 URLByDeletingQueryParameterWithKey:@"noprompt"];

  v8 = [MEMORY[0x1E695DFF8] _applyFaceTimeScheme:v6 toFaceTimeURL:v7];

  return v8;
}

+ (id)phoneAppLaunchForIncomingCallURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  phoneAppScheme = [MEMORY[0x1E695DFF8] phoneAppScheme];
  v3 = [v1 stringWithFormat:@"%@://", phoneAppScheme];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"launchForIncomingCall"];

  return v5;
}

+ (id)faceTimeLaunchForIncomingCallURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  faceTimeScheme = [MEMORY[0x1E695DFF8] faceTimeScheme];
  v3 = [v1 stringWithFormat:@"%@://", faceTimeScheme];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"launchForIncomingCall"];

  return v5;
}

+ (id)phoneAppLaunchForOutgoingConversationURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  phoneAppScheme = [MEMORY[0x1E695DFF8] phoneAppScheme];
  v3 = [v1 stringWithFormat:@"%@://", phoneAppScheme];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"launchForOutgoingConversation"];

  return v5;
}

+ (id)faceTimeLaunchForOutgoingConversationURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  faceTimeMultiwayScheme = [MEMORY[0x1E695DFF8] faceTimeMultiwayScheme];
  v3 = [v1 stringWithFormat:@"%@://", faceTimeMultiwayScheme];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"launchForOutgoingConversation"];

  return v5;
}

+ (id)faceTimeLaunchForScreeningURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  faceTimeScheme = [MEMORY[0x1E695DFF8] faceTimeScheme];
  v3 = [v1 stringWithFormat:@"%@://", faceTimeScheme];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"launchForScreening"];

  return v5;
}

+ (id)phoneAppShowInCallUIURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  phoneAppScheme = [MEMORY[0x1E695DFF8] phoneAppScheme];
  v3 = [v1 stringWithFormat:@"%@://", phoneAppScheme];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"showInCallUI"];

  return v5;
}

+ (id)faceTimeShowHandoffUIURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  faceTimeScheme = [MEMORY[0x1E695DFF8] faceTimeScheme];
  v3 = [v1 stringWithFormat:@"%@://", faceTimeScheme];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"showInCallUI"];

  return v5;
}

+ (id)faceTimeShowInviteUIURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  faceTimeScheme = [MEMORY[0x1E695DFF8] faceTimeScheme];
  v3 = [v1 stringWithFormat:@"%@://", faceTimeScheme];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"showInCallUI"];

  return v5;
}

+ (id)showKeypadURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  faceTimeScheme = [MEMORY[0x1E695DFF8] faceTimeScheme];
  v3 = [v1 stringWithFormat:@"%@://", faceTimeScheme];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"showKeypad"];

  return v5;
}

+ (id)faceTimeShowCarPlayInCallUIURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  faceTimeScheme = [MEMORY[0x1E695DFF8] faceTimeScheme];
  v3 = [v1 stringWithFormat:@"%@://", faceTimeScheme];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"showCarPlayInCallUI"];

  return v5;
}

+ (id)faceTimeShowSystemCallControlsURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  faceTimeSystemCallControlsScheme = [MEMORY[0x1E695DFF8] faceTimeSystemCallControlsScheme];
  v3 = [v1 stringWithFormat:@"%@://", faceTimeSystemCallControlsScheme];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"showSystemCallControls"];

  return v5;
}

+ (id)faceTimeShowHandoffEligibleNearbyURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  faceTimeSystemCallControlsScheme = [MEMORY[0x1E695DFF8] faceTimeSystemCallControlsScheme];
  v3 = [v1 stringWithFormat:@"%@://", faceTimeSystemCallControlsScheme];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"showHandoffEligibleNearby"];

  return v5;
}

+ (id)faceTimeShowLagunaPullConversationURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  faceTimeSystemCallControlsScheme = [MEMORY[0x1E695DFF8] faceTimeSystemCallControlsScheme];
  v3 = [v1 stringWithFormat:@"%@://", faceTimeSystemCallControlsScheme];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"showLagunaPullConversation"];

  return v5;
}

+ (id)faceTimeShowIncomingTransmissionNoticeUIURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  faceTimeScheme = [MEMORY[0x1E695DFF8] faceTimeScheme];
  v3 = [v1 stringWithFormat:@"%@://", faceTimeScheme];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"showIncomingTransmissionNotice"];

  return v5;
}

+ (id)faceTimeShowAccessoryButtonEventsNoticeUIURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  faceTimeScheme = [MEMORY[0x1E695DFF8] faceTimeScheme];
  v3 = [v1 stringWithFormat:@"%@://", faceTimeScheme];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"showAccessoryButtonEventsNotice"];

  return v5;
}

+ (id)faceTimeUpdateForegroundAppURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  faceTimeSystemCallControlsScheme = [MEMORY[0x1E695DFF8] faceTimeSystemCallControlsScheme];
  v3 = [v1 stringWithFormat:@"%@://", faceTimeSystemCallControlsScheme];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"updateForegroundApp"];

  return v5;
}

+ (id)faceTimeAppViewLinkDetailsURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://", @"facetimeapp"];
  v2 = [v0 URLWithString:v1];
  v3 = [v2 URLBySettingQueryParameterValue:@"1" forKey:@"viewLinkDetails"];

  return v3;
}

+ (id)faceTimeAppViewLinkRequesetDetailsURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://", @"facetimeapp"];
  v2 = [v0 URLWithString:v1];
  v3 = [v2 URLBySettingQueryParameterValue:@"1" forKey:@"viewLinkRequestDetails"];

  return v3;
}

+ (id)faceTimeNeedsBackgroundLaunchURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  faceTimeScheme = [MEMORY[0x1E695DFF8] faceTimeScheme];
  v3 = [v1 stringWithFormat:@"%@://", faceTimeScheme];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"shouldBackgroundLaunch"];

  return v5;
}

+ (id)faceTimeAppJoinConversationLinkURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://", @"facetimeapp"];
  v2 = [v0 URLWithString:v1];
  v3 = [v2 URLBySettingQueryParameterValue:@"1" forKey:@"joinConversationLink"];

  return v3;
}

+ (id)faceTimeRefreshShareableContentURL
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AF20]);
  faceTimeSystemCallControlsScheme = [self faceTimeSystemCallControlsScheme];
  [v2 setScheme:faceTimeSystemCallControlsScheme];

  v4 = [MEMORY[0x1E696AF60] queryItemWithName:@"refreshShareableContent" value:@"1"];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [v2 setQueryItems:v5];

  v6 = [v2 URL];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)faceTimeUpdateForegroundAppURLForBundleIdentifier:()FaceTime applicationType:
{
  v21[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AF20];
  v7 = a3;
  v8 = [v6 alloc];
  faceTimeUpdateForegroundAppURL = [self faceTimeUpdateForegroundAppURL];
  v10 = [v8 initWithURL:faceTimeUpdateForegroundAppURL resolvingAgainstBaseURL:0];

  queryItems = [v10 queryItems];
  v12 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"bundleIdentifier" value:v7];

  v13 = objc_alloc(MEMORY[0x1E696AF60]);
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", a4, v12];
  v15 = [v13 initWithName:@"applicationType" value:v14];
  v21[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v17 = [queryItems arrayByAddingObjectsFromArray:v16];
  [v10 setQueryItems:v17];

  v18 = [v10 URL];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)nearbyUpdateForegroundAppURLForBundleIdentifier:()FaceTime applicationType:
{
  v22[3] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AF20];
  v7 = a3;
  v8 = [v6 alloc];
  faceTimeUpdateForegroundAppURL = [self faceTimeUpdateForegroundAppURL];
  v10 = [v8 initWithURL:faceTimeUpdateForegroundAppURL resolvingAgainstBaseURL:0];

  queryItems = [v10 queryItems];
  v12 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"bundleIdentifier" value:v7];

  v22[0] = v12;
  v13 = objc_alloc(MEMORY[0x1E696AF60]);
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", a4];
  v15 = [v13 initWithName:@"applicationType" value:v14];
  v22[1] = v15;
  v16 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"nearbyType" value:@"wagoneer"];
  v22[2] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  v18 = [queryItems arrayByAddingObjectsFromArray:v17];
  [v10 setQueryItems:v18];

  v19 = [v10 URL];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)faceTimeAnswerURLWithSourceIdentifier:()FaceTime
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  faceTimeScheme = [v3 faceTimeScheme];
  v7 = [v4 stringWithFormat:@"%@://", faceTimeScheme];
  v8 = [v3 URLWithString:v7];
  v9 = [v8 URLBySettingQueryParameterValue:v5 forKey:@"answerSourceIdentifier"];

  return v9;
}

+ (id)faceTimeAppViewLinkDetailsURLForPseudonym:()FaceTime
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AF20];
  v5 = a3;
  v6 = [v4 alloc];
  faceTimeAppViewLinkDetailsURL = [self faceTimeAppViewLinkDetailsURL];
  v8 = [v6 initWithURL:faceTimeAppViewLinkDetailsURL resolvingAgainstBaseURL:0];

  queryItems = [v8 queryItems];
  v10 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"pseudonym" value:v5];

  v16[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v12 = [queryItems arrayByAddingObjectsFromArray:v11];
  [v8 setQueryItems:v12];

  v13 = [v8 URL];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)facetimeAppViewLinkRequestDetailsURL
{
  v2 = objc_alloc(MEMORY[0x1E696AF20]);
  faceTimeAppViewLinkRequesetDetailsURL = [self faceTimeAppViewLinkRequesetDetailsURL];
  v4 = [v2 initWithURL:faceTimeAppViewLinkRequesetDetailsURL resolvingAgainstBaseURL:0];

  v5 = [v4 URL];

  return v5;
}

+ (id)faceTimeAppJoinConversationURLForConversationLinkURL:()FaceTime
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AF20];
  v5 = a3;
  v6 = [v4 alloc];
  faceTimeAppJoinConversationLinkURL = [self faceTimeAppJoinConversationLinkURL];
  v8 = [v6 initWithURL:faceTimeAppJoinConversationLinkURL resolvingAgainstBaseURL:0];

  queryItems = [v8 queryItems];
  v10 = objc_alloc(MEMORY[0x1E696AF60]);
  absoluteString = [v5 absoluteString];

  v12 = [v10 initWithName:@"conversationLink" value:absoluteString];
  v18[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v14 = [queryItems arrayByAddingObjectsFromArray:v13];
  [v8 setQueryItems:v14];

  v15 = [v8 URL];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)faceTimeRefreshShareableContentURLForBundleIdentifier:()FaceTime
{
  v4 = MEMORY[0x1E696AF20];
  v5 = a3;
  faceTimeRefreshShareableContentURL = [self faceTimeRefreshShareableContentURL];
  v7 = [v4 componentsWithURL:faceTimeRefreshShareableContentURL resolvingAgainstBaseURL:0];

  queryItems = [v7 queryItems];
  v9 = [MEMORY[0x1E696AF60] queryItemWithName:@"bundleIdentifier" value:v5];

  v10 = [queryItems arrayByAddingObject:v9];
  [v7 setQueryItems:v10];

  v11 = [v7 URL];

  return v11;
}

+ (id)faceTimeVideoMessagePlaybackURLForUUID:()FaceTime
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AF20];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  faceTimeVideoMessageScheme = [MEMORY[0x1E695DFF8] faceTimeVideoMessageScheme];
  [v5 setScheme:faceTimeVideoMessageScheme];

  [v5 setHost:@"player"];
  v7 = MEMORY[0x1E696AF60];
  uUIDString = [v4 UUIDString];

  v9 = [v7 queryItemWithName:@"uuid" value:uUIDString];
  v14[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v5 setQueryItems:v10];

  v11 = [v5 URL];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)faceTimeAppVideoMessagePlaybackURLForUUID:()FaceTime
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AF20];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setScheme:@"facetimeapp"];
  [v5 setHost:@"player"];
  v6 = MEMORY[0x1E696AF60];
  uUIDString = [v4 UUIDString];

  v8 = [v6 queryItemWithName:@"uuid" value:uUIDString];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v5 setQueryItems:v9];

  v10 = [v5 URL];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)openNoteURLForRecordingSession:()FaceTime
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AF20];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setScheme:@"applenotes"];
  [v5 setHost:@"showNote"];
  v6 = MEMORY[0x1E696AF60];
  callUUID = [v4 callUUID];

  v8 = [v6 queryItemWithName:@"identifier" value:callUUID];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v5 setQueryItems:v9];

  v10 = [v5 URL];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (uint64_t)isFaceTimeURL
{
  scheme = [self scheme];
  faceTimeScheme = [MEMORY[0x1E695DFF8] faceTimeScheme];
  if ([scheme isEqualToIgnoringCase:faceTimeScheme])
  {
    v3 = 1;
  }

  else
  {
    v3 = [scheme isEqualToIgnoringCase:@"facetime-prompt"];
  }

  return v3;
}

- (uint64_t)isFaceTimePromptURL
{
  scheme = [self scheme];
  v2 = [scheme isEqualToIgnoringCase:@"facetime-prompt"];

  return v2;
}

- (uint64_t)isFaceTimeAudioURL
{
  scheme = [self scheme];
  faceTimeAudioScheme = [MEMORY[0x1E695DFF8] faceTimeAudioScheme];
  if ([scheme isEqualToIgnoringCase:faceTimeAudioScheme])
  {
    v3 = 1;
  }

  else
  {
    v3 = [scheme isEqualToIgnoringCase:@"facetime-audio-prompt"];
  }

  return v3;
}

- (uint64_t)isFaceTimeAudioPromptURL
{
  scheme = [self scheme];
  v2 = [scheme isEqualToIgnoringCase:@"facetime-audio-prompt"];

  return v2;
}

- (uint64_t)isSystemCallControlsURL
{
  scheme = [self scheme];
  faceTimeSystemCallControlsScheme = [MEMORY[0x1E695DFF8] faceTimeSystemCallControlsScheme];
  v3 = [scheme isEqualToString:faceTimeSystemCallControlsScheme];

  return v3;
}

- (uint64_t)isFaceTimeAppViewLinkDetailsURL
{
  tuQueryParameters = [self tuQueryParameters];
  v2 = [tuQueryParameters objectForKey:@"viewLinkDetails"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (uint64_t)isFaceTimeAppViewLinkRequestDetailsURL
{
  tuQueryParameters = [self tuQueryParameters];
  v2 = [tuQueryParameters objectForKey:@"viewLinkRequestDetails"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (id)pseudonymForLinkDetailsView
{
  v27 = *MEMORY[0x1E69E9840];
  if ([self isFaceTimeAppViewLinkDetailsURL])
  {
    v2 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:self resolvingAgainstBaseURL:0];
    queryItems = [v2 queryItems];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = queryItems;
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          name = [v9 name];
          v11 = [name isEqualToString:@"pseudonym"];

          if (v11)
          {
            value = [v9 value];
            v12 = v4;
            goto LABEL_15;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v12 = TUDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(NSURL(FaceTime) *)self pseudonymForLinkDetailsView:v12];
    }

    value = 0;
LABEL_15:
  }

  else
  {
    value = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return value;
}

- (id)conversationLinkURLForOpenLinkURL
{
  v29 = *MEMORY[0x1E69E9840];
  if ([self isFaceTimeOpenLinkURL])
  {
    v2 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:self resolvingAgainstBaseURL:0];
    queryItems = [v2 queryItems];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = queryItems;
    v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v25;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v24 + 1) + 8 * i);
          name = [v9 name];
          v11 = [name isEqualToString:@"link"];

          if (v11)
          {
            v20 = MEMORY[0x1E695DFF8];
            value = [v9 value];
            v19 = [v20 URLWithString:value];

            v12 = v4;
            goto LABEL_15;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v12 = TUDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(NSURL(FaceTime) *)self conversationLinkURLForOpenLinkURL:v12];
    }

    v19 = 0;
LABEL_15:
  }

  else
  {
    v19 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v19;
}

- (uint64_t)isFaceTimeAppJoinConversationLinkURL
{
  tuQueryParameters = [self tuQueryParameters];
  v2 = [tuQueryParameters objectForKey:@"joinConversationLink"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (id)conversationLinkURLForJoinConversation
{
  v29 = *MEMORY[0x1E69E9840];
  if ([self isFaceTimeAppJoinConversationLinkURL])
  {
    v2 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:self resolvingAgainstBaseURL:0];
    queryItems = [v2 queryItems];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = queryItems;
    v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v25;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v24 + 1) + 8 * i);
          name = [v9 name];
          v11 = [name isEqualToString:@"conversationLink"];

          if (v11)
          {
            v20 = MEMORY[0x1E695DFF8];
            value = [v9 value];
            v19 = [v20 URLWithString:value];

            v12 = v4;
            goto LABEL_15;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v12 = TUDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(NSURL(FaceTime) *)self conversationLinkURLForOpenLinkURL:v12];
    }

    v19 = 0;
LABEL_15:
  }

  else
  {
    v19 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v19;
}

- (BOOL)hasNoPromptOption
{
  if ([self isFaceTimePromptURL] & 1) != 0 || (objc_msgSend(self, "isFaceTimeAudioPromptURL"))
  {
    return 0;
  }

  scheme = [self scheme];
  v2 = [scheme caseInsensitiveCompare:@"telprompt"] != 0;

  return v2;
}

- (uint64_t)isDialCallURL
{
  if ([self isLaunchForIncomingCallURL])
  {
    return 0;
  }

  else
  {
    return [self isShowInCallUIURL] ^ 1;
  }
}

- (uint64_t)isLaunchForOutgoingConversationURL
{
  tuQueryParameters = [self tuQueryParameters];
  v2 = [tuQueryParameters objectForKey:@"launchForOutgoingConversation"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (uint64_t)isFaceTimeAppVideoMessagePlaybackURL
{
  scheme = [self scheme];
  if ([scheme isEqualToString:@"facetimeapp"])
  {
    host = [self host];
    v4 = [host isEqualToString:@"player"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)videoMessageUUID
{
  if (([self isVideoMessagePlaybackURL] & 1) != 0 || objc_msgSend(self, "isFaceTimeAppVideoMessagePlaybackURL"))
  {
    v2 = objc_alloc(MEMORY[0x1E696AF20]);
    absoluteString = [self absoluteString];
    v4 = [v2 initWithString:absoluteString];

    queryItems = [v4 queryItems];
    firstObject = [queryItems firstObject];

    name = [firstObject name];
    v8 = [name isEqualToString:@"uuid"];

    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x1E696AFB0]);
      value = [firstObject value];
      v11 = [v9 initWithUUIDString:value];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isFaceTimeRecentsDetailsViewURL
{
  scheme = [self scheme];
  if ([scheme isEqualToString:@"facetime-recents"])
  {
    recentsUniqueID = [self recentsUniqueID];
    v4 = [recentsUniqueID length] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)recentsUniqueID
{
  v2 = objc_alloc(MEMORY[0x1E696AF20]);
  absoluteString = [self absoluteString];
  v4 = [v2 initWithString:absoluteString];

  queryItems = [v4 queryItems];
  firstObject = [queryItems firstObject];

  name = [firstObject name];
  if ([name isEqualToString:@"uniqueId"])
  {
    value = [firstObject value];

    if (value)
    {
      value2 = [firstObject value];
      goto LABEL_6;
    }
  }

  else
  {
  }

  value2 = 0;
LABEL_6:

  return value2;
}

- (id)foregroundAppBundleIdentifier
{
  tuQueryParameters = [self tuQueryParameters];
  v2 = [tuQueryParameters objectForKey:@"bundleIdentifier"];

  return v2;
}

- (id)nearbyOption
{
  tuQueryParameters = [self tuQueryParameters];
  v2 = [tuQueryParameters objectForKey:@"nearbyType"];

  return v2;
}

- (uint64_t)foregroundAppApplicationType
{
  tuQueryParameters = [self tuQueryParameters];
  v2 = [tuQueryParameters objectForKey:@"applicationType"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (id)answerRequestSourceIdentifier
{
  tuQueryParameters = [self tuQueryParameters];
  v2 = [tuQueryParameters objectForKey:@"answerSourceIdentifier"];

  return v2;
}

+ (id)screenSharingAppURL
{
  v9[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFF8];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://", @"system-screen-sharing"];
  v2 = [v0 URLWithString:v1];

  v3 = [MEMORY[0x1E696AF60] queryItemWithName:@"updateForegroundApp" value:@"1"];
  v4 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v2 resolvingAgainstBaseURL:0];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [v4 setQueryItems:v5];

  v6 = [v4 URL];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)pseudonymForLinkDetailsView
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1956FD000, a2, a3, "Unable to extract pseudonym from URL: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)conversationLinkURLForOpenLinkURL
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1956FD000, a2, a3, "Unable to extract conversationLink from URL: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end