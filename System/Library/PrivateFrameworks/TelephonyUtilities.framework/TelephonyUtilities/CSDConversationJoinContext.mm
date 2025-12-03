@interface CSDConversationJoinContext
- (CSDConversationJoinContext)init;
- (id)description;
@end

@implementation CSDConversationJoinContext

- (CSDConversationJoinContext)init
{
  v3.receiver = self;
  v3.super_class = CSDConversationJoinContext;
  result = [(CSDConversationJoinContext *)&v3 init];
  if (result)
  {
    result->_uPlusOneAVLessAvailable = 1;
    result->_translationAvailable = 1;
  }

  return result;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector("isInvitation");
  [v3 appendFormat:@"%@=%d", v4, -[CSDConversationJoinContext isInvitation](self, "isInvitation")];

  [v3 appendFormat:@", "];
  v5 = NSStringFromSelector("isMomentsAvailable");
  [v3 appendFormat:@"%@=%d", v5, -[CSDConversationJoinContext isMomentsAvailable](self, "isMomentsAvailable")];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector("isPersonaAvailable");
  [v3 appendFormat:@"%@=%d", v6, -[CSDConversationJoinContext isPersonaAvailable](self, "isPersonaAvailable")];

  [v3 appendFormat:@", "];
  v7 = NSStringFromSelector("isUpgrade");
  [v3 appendFormat:@"%@=%d", v7, -[CSDConversationJoinContext isUpgrade](self, "isUpgrade")];

  [v3 appendFormat:@", "];
  v8 = NSStringFromSelector("isUpgradeToVideo");
  [v3 appendFormat:@"%@=%d", v8, -[CSDConversationJoinContext isUpgradeToVideo](self, "isUpgradeToVideo")];

  [v3 appendFormat:@", "];
  v9 = NSStringFromSelector("isVideo");
  [v3 appendFormat:@"%@=%d", v9, -[CSDConversationJoinContext isVideo](self, "isVideo")];

  [v3 appendFormat:@", "];
  v10 = NSStringFromSelector("isVideoEnabled");
  [v3 appendFormat:@"%@=%d", v10, -[CSDConversationJoinContext isVideoEnabled](self, "isVideoEnabled")];

  [v3 appendFormat:@", "];
  v11 = NSStringFromSelector("shouldSuppressInCallUI");
  [v3 appendFormat:@"%@=%d", v11, -[CSDConversationJoinContext shouldSuppressInCallUI](self, "shouldSuppressInCallUI")];

  [v3 appendFormat:@", "];
  v12 = NSStringFromSelector("wantsStagingArea");
  [v3 appendFormat:@"%@=%d", v12, -[CSDConversationJoinContext wantsStagingArea](self, "wantsStagingArea")];

  [v3 appendFormat:@", "];
  v13 = NSStringFromSelector("upgradeSessionUUID");
  upgradeSessionUUID = [(CSDConversationJoinContext *)self upgradeSessionUUID];
  [v3 appendFormat:@"%@=%@", v13, upgradeSessionUUID];

  [v3 appendFormat:@", "];
  v15 = NSStringFromSelector("isOneToOneModeEnabled");
  [v3 appendFormat:@"%@=%d", v15, -[CSDConversationJoinContext isOneToOneModeEnabled](self, "isOneToOneModeEnabled")];

  [v3 appendFormat:@", "];
  v16 = NSStringFromSelector("provider");
  provider = [(CSDConversationJoinContext *)self provider];
  [v3 appendFormat:@"%@=%@", v16, provider];

  [v3 appendFormat:@", "];
  v18 = NSStringFromSelector("invitationPreferences");
  invitationPreferences = [(CSDConversationJoinContext *)self invitationPreferences];
  [v3 appendFormat:@"%@=%@", v18, invitationPreferences];

  [v3 appendFormat:@", "];
  v20 = NSStringFromSelector("isLightweight");
  [v3 appendFormat:@"%@=%d", v20, -[CSDConversationJoinContext isLightweight](self, "isLightweight")];

  [v3 appendFormat:@", "];
  v21 = NSStringFromSelector("sharePlayProtocolVersion");
  v22 = [NSNumber numberWithUnsignedInteger:[(CSDConversationJoinContext *)self sharePlayProtocolVersion]];
  [v3 appendFormat:@"%@=%@", v21, v22];

  [v3 appendFormat:@", "];
  v23 = NSStringFromSelector("visionFeatureVersion");
  v24 = [NSNumber numberWithUnsignedInteger:[(CSDConversationJoinContext *)self visionFeatureVersion]];
  [v3 appendFormat:@"%@=%@", v23, v24];

  [v3 appendFormat:@", "];
  v25 = NSStringFromSelector("visionCallEstablishmentVersion");
  v26 = [NSNumber numberWithUnsignedInteger:[(CSDConversationJoinContext *)self visionCallEstablishmentVersion]];
  [v3 appendFormat:@"%@=%@", v25, v26];

  [v3 appendFormat:@", "];
  v27 = NSStringFromSelector("isGFTDowngradeToOneToOneAvailable");
  [v3 appendFormat:@"%@=%d", v27, -[CSDConversationJoinContext isGFTDowngradeToOneToOneAvailable](self, "isGFTDowngradeToOneToOneAvailable")];

  [v3 appendFormat:@", "];
  v28 = NSStringFromSelector("isUPlusNDowngradeAvailable");
  [v3 appendFormat:@"%@=%d", v28, -[CSDConversationJoinContext isUPlusNDowngradeAvailable](self, "isUPlusNDowngradeAvailable")];

  [v3 appendFormat:@", "];
  v29 = NSStringFromSelector("supportsLeaveContext");
  [v3 appendFormat:@"%@=%d", v29, -[CSDConversationJoinContext supportsLeaveContext](self, "supportsLeaveContext")];

  [v3 appendFormat:@", "];
  v30 = NSStringFromSelector("supportsRequestToScreenShare");
  [v3 appendFormat:@"%@=%d", v30, -[CSDConversationJoinContext supportsRequestToScreenShare](self, "supportsRequestToScreenShare")];

  [v3 appendFormat:@", "];
  v31 = NSStringFromSelector("isUPlusOneScreenShareAvailable");
  [v3 appendFormat:@"%@=%d", v31, -[CSDConversationJoinContext isUPlusOneScreenShareAvailable](self, "isUPlusOneScreenShareAvailable")];

  [v3 appendFormat:@", "];
  v32 = NSStringFromSelector("isUPlusOneAVLessAvailable");
  [v3 appendFormat:@"%@=%d", v32, -[CSDConversationJoinContext isUPlusOneAVLessAvailable](self, "isUPlusOneAVLessAvailable")];

  [v3 appendFormat:@", "];
  v33 = NSStringFromSelector("avMode");
  [v3 appendFormat:@"%@=%lu", v33, -[CSDConversationJoinContext avMode](self, "avMode")];

  [v3 appendFormat:@", "];
  v34 = NSStringFromSelector("presentationMode");
  [v3 appendFormat:@"%@=%lu", v34, -[CSDConversationJoinContext presentationMode](self, "presentationMode")];

  [v3 appendFormat:@", "];
  v35 = NSStringFromSelector("screening");
  [v3 appendFormat:@"%@=%d", v35, -[CSDConversationJoinContext isScreening](self, "isScreening")];

  participantAssociation = [(CSDConversationJoinContext *)self participantAssociation];

  if (participantAssociation)
  {
    [v3 appendFormat:@", "];
    v37 = NSStringFromSelector("participantAssociation");
    participantAssociation2 = [(CSDConversationJoinContext *)self participantAssociation];
    [v3 appendFormat:@"%@=%@", v37, participantAssociation2];
  }

  activity = [(CSDConversationJoinContext *)self activity];

  if (activity)
  {
    [v3 appendFormat:@", "];
    v40 = NSStringFromSelector("activity");
    activity2 = [(CSDConversationJoinContext *)self activity];
    [v3 appendFormat:@"%@=%@", v40, activity2];
  }

  screenSharingRequest = [(CSDConversationJoinContext *)self screenSharingRequest];

  if (screenSharingRequest)
  {
    [v3 appendFormat:@", "];
    v43 = NSStringFromSelector("screenSharingRequest");
    screenSharingRequest2 = [(CSDConversationJoinContext *)self screenSharingRequest];
    [v3 appendFormat:@"%@=%@", v43, screenSharingRequest2];
  }

  [v3 appendFormat:@", "];
  v45 = NSStringFromSelector("isSpatialPersonaEnabled");
  [v3 appendFormat:@"%@=%d", v45, -[CSDConversationJoinContext isSpatialPersonaEnabled](self, "isSpatialPersonaEnabled")];

  [v3 appendFormat:@", "];
  v46 = NSStringFromSelector("isUPlusOneVisionToVisionAvailable");
  [v3 appendFormat:@"%@=%d", v46, -[CSDConversationJoinContext isUPlusOneVisionToVisionAvailable](self, "isUPlusOneVisionToVisionAvailable")];

  participantCluster = [(CSDConversationJoinContext *)self participantCluster];

  if (participantCluster)
  {
    [v3 appendFormat:@", "];
    v48 = NSStringFromSelector("participantCluster");
    participantCluster2 = [(CSDConversationJoinContext *)self participantCluster];
    [v3 appendFormat:@"%@=%@", v48, participantCluster2];
  }

  [v3 appendFormat:@", "];
  v50 = NSStringFromSelector("isNearbySharePlay");
  [v3 appendFormat:@"%@=%d", v50, -[CSDConversationJoinContext isNearbySharePlay](self, "isNearbySharePlay")];

  v51 = NSStringFromSelector("isTranslationAvailable");
  [v3 appendFormat:@"%@=%d", v51, -[CSDConversationJoinContext isTranslationAvailable](self, "isTranslationAvailable")];

  [v3 appendFormat:@", "];
  v52 = NSStringFromSelector("nearbyFeatureVersion");
  v53 = [NSNumber numberWithUnsignedInteger:[(CSDConversationJoinContext *)self nearbyFeatureVersion]];
  [v3 appendFormat:@"%@=%@", v52, v53];

  [v3 appendFormat:@">"];
  v54 = [v3 copy];

  return v54;
}

@end