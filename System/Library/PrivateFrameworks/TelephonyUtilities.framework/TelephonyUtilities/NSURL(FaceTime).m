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
  v1 = [a1 tuQueryParameters];
  v2 = [v1 objectForKey:@"showInCallUI"];
  if ([v2 isEqualToString:@"1"])
  {
    v3 = 1;
  }

  else
  {
    v4 = [v1 objectForKey:@"showCarPlayInCallUI"];
    v3 = [v4 isEqualToString:@"1"];
  }

  return v3;
}

- (uint64_t)isShowKeypadURL
{
  v1 = [a1 tuQueryParameters];
  v2 = [v1 objectForKey:@"showKeypad"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (uint64_t)isShowSystemCallControlsURL
{
  v1 = [a1 tuQueryParameters];
  v2 = [v1 objectForKey:@"showSystemCallControls"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (uint64_t)isShowIncomingTransmissionNoticeURL
{
  v1 = [a1 tuQueryParameters];
  v2 = [v1 objectForKey:@"showIncomingTransmissionNotice"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (uint64_t)isRefreshShareableContentURL
{
  v1 = [a1 tuQueryParameters];
  v2 = [v1 objectForKey:@"refreshShareableContent"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (uint64_t)isFaceTimeMultiwayURL
{
  v1 = [a1 scheme];
  v2 = [MEMORY[0x1E695DFF8] faceTimeMultiwayScheme];
  v3 = [v1 isEqualToString:v2];

  return v3;
}

- (uint64_t)isLaunchForScreeningURL
{
  v1 = [a1 tuQueryParameters];
  v2 = [v1 objectForKey:@"launchForScreening"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (uint64_t)isShowHandoffEligibleNearbyURL
{
  v1 = [a1 tuQueryParameters];
  v2 = [v1 objectForKey:@"showHandoffEligibleNearby"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (uint64_t)isShowLagunaPullConversationURL
{
  v1 = [a1 tuQueryParameters];
  v2 = [v1 objectForKey:@"showLagunaPullConversation"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (uint64_t)isShowScreenSharingURL
{
  v1 = [a1 scheme];
  v2 = [v1 isEqualToString:@"system-screen-sharing"];

  return v2;
}

- (uint64_t)isShowAccessoryButtonEventsNoticeURL
{
  v1 = [a1 tuQueryParameters];
  v2 = [v1 objectForKey:@"showAccessoryButtonEventsNotice"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (uint64_t)isUpdateForegroundAppURL
{
  v1 = [a1 tuQueryParameters];
  v2 = [v1 objectForKey:@"updateForegroundApp"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (uint64_t)isFaceTimeOpenLinkURL
{
  v1 = [a1 scheme];
  v2 = [MEMORY[0x1E695DFF8] faceTimeOpenLinkScheme];
  v3 = [v1 isEqualToString:v2];

  return v3;
}

- (uint64_t)isLaunchForIncomingCallURL
{
  v1 = [a1 tuQueryParameters];
  v2 = [v1 objectForKey:@"launchForIncomingCall"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (BOOL)isAnswerRequestURL
{
  v1 = [a1 tuQueryParameters];
  v2 = [v1 objectForKey:@"answerSourceIdentifier"];
  v3 = v2 != 0;

  return v3;
}

- (uint64_t)isFaceTimeNeedsBackgroundLaunchURL
{
  v1 = [a1 tuQueryParameters];
  v2 = [v1 objectForKey:@"shouldBackgroundLaunch"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (uint64_t)isVideoMessagePlaybackURL
{
  v2 = [a1 scheme];
  if ([v2 isEqualToString:@"facetime-video-message"])
  {
    v3 = [a1 host];
    v4 = [v3 isEqualToString:@"player"];
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
  v2 = [MEMORY[0x1E695DFF8] faceTimeScheme];
  v3 = [v1 stringWithFormat:@"%@://", v2];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"showInCallUI"];

  return v5;
}

- (uint64_t)isShowCarPlayInCallUIURL
{
  v1 = [a1 tuQueryParameters];
  v2 = [v1 objectForKey:@"showCarPlayInCallUI"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (id)faceTimeDestinationAccount
{
  v1 = [a1 resourceSpecifier];
  v2 = [v1 stringByRemovingPercentEncoding];

  if ([v2 hasPrefix:@"//"])
  {
    v3 = [v2 substringFromIndex:2];

    v2 = v3;
  }

  v4 = [v2 rangeOfString:@"/"];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [v2 substringToIndex:v4];

    v2 = v5;
  }

  v6 = [v2 rangeOfString:@"?"];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v2 substringToIndex:v6];

    v2 = v7;
  }

  return v2;
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
  v9 = [a1 _faceTimeURLWithHandle:v8 addressBookUID:a4 audioOnly:a5];

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
  v10 = [v7 value];
  v11 = _FormatDestinationID(v10);
  [v9 setHost:v11];

  v12 = [MEMORY[0x1E695DF70] array];
  v13 = [MEMORY[0x1E696AF60] queryItemForHandleType:{objc_msgSend(v7, "type")}];
  [v12 addObject:v13];

  if (a4 != -1)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:a4];
    v15 = [v14 stringValue];

    v16 = [MEMORY[0x1E696AF60] queryItemWithName:@"uid" value:v15];
    [v12 addObject:v16];
  }

  if ([v12 count])
  {
    v17 = [v12 copy];
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
  v14 = [v12 queryItems];
  v15 = [v13 arrayWithArray:v14];

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
    v6 = [MEMORY[0x1E696AB08] URLHostAllowedCharacterSet];
    v7 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:v6];

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
  v7 = [v6 isFaceTimeURL];
  v8 = [v6 isFaceTimeAudioURL];
  if ((v7 & 1) != 0 || v8)
  {
    v9 = [v6 resourceSpecifier];
    if ([v9 hasPrefix:@"//"])
    {
      v10 = [v9 substringFromIndex:2];

      v9 = v10;
    }

    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@://%@", v5, v9];
    v12 = [MEMORY[0x1E695DFF8] URLWithString:v11];

    v6 = v12;
  }

  return v6;
}

+ (id)faceTimeURLWithURL:()FaceTime
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = a3;
  v5 = [v3 faceTimeScheme];
  v6 = [v3 _applyFaceTimeScheme:v5 toFaceTimeURL:v4];

  return v6;
}

+ (id)faceTimePromptURLWithURL:()FaceTime
{
  v3 = a3;
  v4 = [v3 isFaceTimeAudioURL];
  v5 = @"facetime-prompt";
  if (v4)
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
  v2 = [MEMORY[0x1E695DFF8] phoneAppScheme];
  v3 = [v1 stringWithFormat:@"%@://", v2];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"launchForIncomingCall"];

  return v5;
}

+ (id)faceTimeLaunchForIncomingCallURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  v2 = [MEMORY[0x1E695DFF8] faceTimeScheme];
  v3 = [v1 stringWithFormat:@"%@://", v2];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"launchForIncomingCall"];

  return v5;
}

+ (id)phoneAppLaunchForOutgoingConversationURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  v2 = [MEMORY[0x1E695DFF8] phoneAppScheme];
  v3 = [v1 stringWithFormat:@"%@://", v2];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"launchForOutgoingConversation"];

  return v5;
}

+ (id)faceTimeLaunchForOutgoingConversationURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  v2 = [MEMORY[0x1E695DFF8] faceTimeMultiwayScheme];
  v3 = [v1 stringWithFormat:@"%@://", v2];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"launchForOutgoingConversation"];

  return v5;
}

+ (id)faceTimeLaunchForScreeningURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  v2 = [MEMORY[0x1E695DFF8] faceTimeScheme];
  v3 = [v1 stringWithFormat:@"%@://", v2];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"launchForScreening"];

  return v5;
}

+ (id)phoneAppShowInCallUIURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  v2 = [MEMORY[0x1E695DFF8] phoneAppScheme];
  v3 = [v1 stringWithFormat:@"%@://", v2];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"showInCallUI"];

  return v5;
}

+ (id)faceTimeShowHandoffUIURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  v2 = [MEMORY[0x1E695DFF8] faceTimeScheme];
  v3 = [v1 stringWithFormat:@"%@://", v2];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"showInCallUI"];

  return v5;
}

+ (id)faceTimeShowInviteUIURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  v2 = [MEMORY[0x1E695DFF8] faceTimeScheme];
  v3 = [v1 stringWithFormat:@"%@://", v2];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"showInCallUI"];

  return v5;
}

+ (id)showKeypadURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  v2 = [MEMORY[0x1E695DFF8] faceTimeScheme];
  v3 = [v1 stringWithFormat:@"%@://", v2];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"showKeypad"];

  return v5;
}

+ (id)faceTimeShowCarPlayInCallUIURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  v2 = [MEMORY[0x1E695DFF8] faceTimeScheme];
  v3 = [v1 stringWithFormat:@"%@://", v2];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"showCarPlayInCallUI"];

  return v5;
}

+ (id)faceTimeShowSystemCallControlsURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  v2 = [MEMORY[0x1E695DFF8] faceTimeSystemCallControlsScheme];
  v3 = [v1 stringWithFormat:@"%@://", v2];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"showSystemCallControls"];

  return v5;
}

+ (id)faceTimeShowHandoffEligibleNearbyURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  v2 = [MEMORY[0x1E695DFF8] faceTimeSystemCallControlsScheme];
  v3 = [v1 stringWithFormat:@"%@://", v2];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"showHandoffEligibleNearby"];

  return v5;
}

+ (id)faceTimeShowLagunaPullConversationURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  v2 = [MEMORY[0x1E695DFF8] faceTimeSystemCallControlsScheme];
  v3 = [v1 stringWithFormat:@"%@://", v2];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"showLagunaPullConversation"];

  return v5;
}

+ (id)faceTimeShowIncomingTransmissionNoticeUIURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  v2 = [MEMORY[0x1E695DFF8] faceTimeScheme];
  v3 = [v1 stringWithFormat:@"%@://", v2];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"showIncomingTransmissionNotice"];

  return v5;
}

+ (id)faceTimeShowAccessoryButtonEventsNoticeUIURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  v2 = [MEMORY[0x1E695DFF8] faceTimeScheme];
  v3 = [v1 stringWithFormat:@"%@://", v2];
  v4 = [v0 URLWithString:v3];
  v5 = [v4 URLBySettingQueryParameterValue:@"1" forKey:@"showAccessoryButtonEventsNotice"];

  return v5;
}

+ (id)faceTimeUpdateForegroundAppURL
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = MEMORY[0x1E696AEC0];
  v2 = [MEMORY[0x1E695DFF8] faceTimeSystemCallControlsScheme];
  v3 = [v1 stringWithFormat:@"%@://", v2];
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
  v2 = [MEMORY[0x1E695DFF8] faceTimeScheme];
  v3 = [v1 stringWithFormat:@"%@://", v2];
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
  v3 = [a1 faceTimeSystemCallControlsScheme];
  [v2 setScheme:v3];

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
  v9 = [a1 faceTimeUpdateForegroundAppURL];
  v10 = [v8 initWithURL:v9 resolvingAgainstBaseURL:0];

  v11 = [v10 queryItems];
  v12 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"bundleIdentifier" value:v7];

  v13 = objc_alloc(MEMORY[0x1E696AF60]);
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", a4, v12];
  v15 = [v13 initWithName:@"applicationType" value:v14];
  v21[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v17 = [v11 arrayByAddingObjectsFromArray:v16];
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
  v9 = [a1 faceTimeUpdateForegroundAppURL];
  v10 = [v8 initWithURL:v9 resolvingAgainstBaseURL:0];

  v11 = [v10 queryItems];
  v12 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"bundleIdentifier" value:v7];

  v22[0] = v12;
  v13 = objc_alloc(MEMORY[0x1E696AF60]);
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", a4];
  v15 = [v13 initWithName:@"applicationType" value:v14];
  v22[1] = v15;
  v16 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"nearbyType" value:@"wagoneer"];
  v22[2] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  v18 = [v11 arrayByAddingObjectsFromArray:v17];
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
  v6 = [v3 faceTimeScheme];
  v7 = [v4 stringWithFormat:@"%@://", v6];
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
  v7 = [a1 faceTimeAppViewLinkDetailsURL];
  v8 = [v6 initWithURL:v7 resolvingAgainstBaseURL:0];

  v9 = [v8 queryItems];
  v10 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"pseudonym" value:v5];

  v16[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v12 = [v9 arrayByAddingObjectsFromArray:v11];
  [v8 setQueryItems:v12];

  v13 = [v8 URL];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)facetimeAppViewLinkRequestDetailsURL
{
  v2 = objc_alloc(MEMORY[0x1E696AF20]);
  v3 = [a1 faceTimeAppViewLinkRequesetDetailsURL];
  v4 = [v2 initWithURL:v3 resolvingAgainstBaseURL:0];

  v5 = [v4 URL];

  return v5;
}

+ (id)faceTimeAppJoinConversationURLForConversationLinkURL:()FaceTime
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AF20];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [a1 faceTimeAppJoinConversationLinkURL];
  v8 = [v6 initWithURL:v7 resolvingAgainstBaseURL:0];

  v9 = [v8 queryItems];
  v10 = objc_alloc(MEMORY[0x1E696AF60]);
  v11 = [v5 absoluteString];

  v12 = [v10 initWithName:@"conversationLink" value:v11];
  v18[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v14 = [v9 arrayByAddingObjectsFromArray:v13];
  [v8 setQueryItems:v14];

  v15 = [v8 URL];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)faceTimeRefreshShareableContentURLForBundleIdentifier:()FaceTime
{
  v4 = MEMORY[0x1E696AF20];
  v5 = a3;
  v6 = [a1 faceTimeRefreshShareableContentURL];
  v7 = [v4 componentsWithURL:v6 resolvingAgainstBaseURL:0];

  v8 = [v7 queryItems];
  v9 = [MEMORY[0x1E696AF60] queryItemWithName:@"bundleIdentifier" value:v5];

  v10 = [v8 arrayByAddingObject:v9];
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
  v6 = [MEMORY[0x1E695DFF8] faceTimeVideoMessageScheme];
  [v5 setScheme:v6];

  [v5 setHost:@"player"];
  v7 = MEMORY[0x1E696AF60];
  v8 = [v4 UUIDString];

  v9 = [v7 queryItemWithName:@"uuid" value:v8];
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
  v7 = [v4 UUIDString];

  v8 = [v6 queryItemWithName:@"uuid" value:v7];
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
  v7 = [v4 callUUID];

  v8 = [v6 queryItemWithName:@"identifier" value:v7];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v5 setQueryItems:v9];

  v10 = [v5 URL];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (uint64_t)isFaceTimeURL
{
  v1 = [a1 scheme];
  v2 = [MEMORY[0x1E695DFF8] faceTimeScheme];
  if ([v1 isEqualToIgnoringCase:v2])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v1 isEqualToIgnoringCase:@"facetime-prompt"];
  }

  return v3;
}

- (uint64_t)isFaceTimePromptURL
{
  v1 = [a1 scheme];
  v2 = [v1 isEqualToIgnoringCase:@"facetime-prompt"];

  return v2;
}

- (uint64_t)isFaceTimeAudioURL
{
  v1 = [a1 scheme];
  v2 = [MEMORY[0x1E695DFF8] faceTimeAudioScheme];
  if ([v1 isEqualToIgnoringCase:v2])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v1 isEqualToIgnoringCase:@"facetime-audio-prompt"];
  }

  return v3;
}

- (uint64_t)isFaceTimeAudioPromptURL
{
  v1 = [a1 scheme];
  v2 = [v1 isEqualToIgnoringCase:@"facetime-audio-prompt"];

  return v2;
}

- (uint64_t)isSystemCallControlsURL
{
  v1 = [a1 scheme];
  v2 = [MEMORY[0x1E695DFF8] faceTimeSystemCallControlsScheme];
  v3 = [v1 isEqualToString:v2];

  return v3;
}

- (uint64_t)isFaceTimeAppViewLinkDetailsURL
{
  v1 = [a1 tuQueryParameters];
  v2 = [v1 objectForKey:@"viewLinkDetails"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (uint64_t)isFaceTimeAppViewLinkRequestDetailsURL
{
  v1 = [a1 tuQueryParameters];
  v2 = [v1 objectForKey:@"viewLinkRequestDetails"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (id)pseudonymForLinkDetailsView
{
  v27 = *MEMORY[0x1E69E9840];
  if ([a1 isFaceTimeAppViewLinkDetailsURL])
  {
    v2 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:a1 resolvingAgainstBaseURL:0];
    v3 = [v2 queryItems];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = v3;
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
          v10 = [v9 name];
          v11 = [v10 isEqualToString:@"pseudonym"];

          if (v11)
          {
            v19 = [v9 value];
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
      [(NSURL(FaceTime) *)a1 pseudonymForLinkDetailsView:v12];
    }

    v19 = 0;
LABEL_15:
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)conversationLinkURLForOpenLinkURL
{
  v29 = *MEMORY[0x1E69E9840];
  if ([a1 isFaceTimeOpenLinkURL])
  {
    v2 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:a1 resolvingAgainstBaseURL:0];
    v3 = [v2 queryItems];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = v3;
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
          v10 = [v9 name];
          v11 = [v10 isEqualToString:@"link"];

          if (v11)
          {
            v20 = MEMORY[0x1E695DFF8];
            v21 = [v9 value];
            v19 = [v20 URLWithString:v21];

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
      [(NSURL(FaceTime) *)a1 conversationLinkURLForOpenLinkURL:v12];
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
  v1 = [a1 tuQueryParameters];
  v2 = [v1 objectForKey:@"joinConversationLink"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (id)conversationLinkURLForJoinConversation
{
  v29 = *MEMORY[0x1E69E9840];
  if ([a1 isFaceTimeAppJoinConversationLinkURL])
  {
    v2 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:a1 resolvingAgainstBaseURL:0];
    v3 = [v2 queryItems];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = v3;
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
          v10 = [v9 name];
          v11 = [v10 isEqualToString:@"conversationLink"];

          if (v11)
          {
            v20 = MEMORY[0x1E695DFF8];
            v21 = [v9 value];
            v19 = [v20 URLWithString:v21];

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
      [(NSURL(FaceTime) *)a1 conversationLinkURLForOpenLinkURL:v12];
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
  if ([a1 isFaceTimePromptURL] & 1) != 0 || (objc_msgSend(a1, "isFaceTimeAudioPromptURL"))
  {
    return 0;
  }

  v3 = [a1 scheme];
  v2 = [v3 caseInsensitiveCompare:@"telprompt"] != 0;

  return v2;
}

- (uint64_t)isDialCallURL
{
  if ([a1 isLaunchForIncomingCallURL])
  {
    return 0;
  }

  else
  {
    return [a1 isShowInCallUIURL] ^ 1;
  }
}

- (uint64_t)isLaunchForOutgoingConversationURL
{
  v1 = [a1 tuQueryParameters];
  v2 = [v1 objectForKey:@"launchForOutgoingConversation"];
  v3 = [v2 isEqualToString:@"1"];

  return v3;
}

- (uint64_t)isFaceTimeAppVideoMessagePlaybackURL
{
  v2 = [a1 scheme];
  if ([v2 isEqualToString:@"facetimeapp"])
  {
    v3 = [a1 host];
    v4 = [v3 isEqualToString:@"player"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)videoMessageUUID
{
  if (([a1 isVideoMessagePlaybackURL] & 1) != 0 || objc_msgSend(a1, "isFaceTimeAppVideoMessagePlaybackURL"))
  {
    v2 = objc_alloc(MEMORY[0x1E696AF20]);
    v3 = [a1 absoluteString];
    v4 = [v2 initWithString:v3];

    v5 = [v4 queryItems];
    v6 = [v5 firstObject];

    v7 = [v6 name];
    v8 = [v7 isEqualToString:@"uuid"];

    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x1E696AFB0]);
      v10 = [v6 value];
      v11 = [v9 initWithUUIDString:v10];
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
  v2 = [a1 scheme];
  if ([v2 isEqualToString:@"facetime-recents"])
  {
    v3 = [a1 recentsUniqueID];
    v4 = [v3 length] != 0;
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
  v3 = [a1 absoluteString];
  v4 = [v2 initWithString:v3];

  v5 = [v4 queryItems];
  v6 = [v5 firstObject];

  v7 = [v6 name];
  if ([v7 isEqualToString:@"uniqueId"])
  {
    v8 = [v6 value];

    if (v8)
    {
      v9 = [v6 value];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (id)foregroundAppBundleIdentifier
{
  v1 = [a1 tuQueryParameters];
  v2 = [v1 objectForKey:@"bundleIdentifier"];

  return v2;
}

- (id)nearbyOption
{
  v1 = [a1 tuQueryParameters];
  v2 = [v1 objectForKey:@"nearbyType"];

  return v2;
}

- (uint64_t)foregroundAppApplicationType
{
  v1 = [a1 tuQueryParameters];
  v2 = [v1 objectForKey:@"applicationType"];
  v3 = [v2 integerValue];

  return v3;
}

- (id)answerRequestSourceIdentifier
{
  v1 = [a1 tuQueryParameters];
  v2 = [v1 objectForKey:@"answerSourceIdentifier"];

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