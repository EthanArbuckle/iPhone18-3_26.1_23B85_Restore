@interface TUConversationParticipantCapabilities
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCapabilities:(id)capabilities;
- (TUConversationParticipantCapabilities)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUConversationParticipantCapabilities

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" momentsAvailable=%d", -[TUConversationParticipantCapabilities isMomentsAvailable](self, "isMomentsAvailable")];
  [v3 appendFormat:@" screenSharingAvailable=%d", -[TUConversationParticipantCapabilities isScreenSharingAvailable](self, "isScreenSharingAvailable")];
  [v3 appendFormat:@" gondolaCallingAvailable=%d", -[TUConversationParticipantCapabilities isGondolaCallingAvailable](self, "isGondolaCallingAvailable")];
  [v3 appendFormat:@" personaAvailable=%d", -[TUConversationParticipantCapabilities isPersonaAvailable](self, "isPersonaAvailable")];
  [v3 appendFormat:@" gftDowngradeToOneToOneAvailable=%d", -[TUConversationParticipantCapabilities isGFTDowngradeToOneToOneAvailable](self, "isGFTDowngradeToOneToOneAvailable")];
  [v3 appendFormat:@" uPlusNDowngradeAvailable=%d", -[TUConversationParticipantCapabilities isUPlusNDowngradeAvailable](self, "isUPlusNDowngradeAvailable")];
  [v3 appendFormat:@" uPlusScreenShareAvailable=%d", -[TUConversationParticipantCapabilities isUPlusOneScreenShareAvailable](self, "isUPlusOneScreenShareAvailable")];
  [v3 appendFormat:@" uPlusOneAVLessAvailable=%d", -[TUConversationParticipantCapabilities isUPlusOneAVLessAvailable](self, "isUPlusOneAVLessAvailable")];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[TUConversationParticipantCapabilities sharePlayProtocolVersion](self, "sharePlayProtocolVersion")}];
  [v3 appendFormat:@" sharePlayProtocolVersion=%@", v4];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[TUConversationParticipantCapabilities supportsLeaveContext](self, "supportsLeaveContext")}];
  [v3 appendFormat:@" supportsLeaveContext=%@", v5];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[TUConversationParticipantCapabilities supportsRequestToScreenShare](self, "supportsRequestToScreenShare")}];
  [v3 appendFormat:@" supportsRequestToScreenShare=%@", v6];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[TUConversationParticipantCapabilities visionFeatureVersion](self, "visionFeatureVersion")}];
  [v3 appendFormat:@" visionFeatureVersion=%@", v7];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[TUConversationParticipantCapabilities visionCallEstablishmentVersion](self, "visionCallEstablishmentVersion")}];
  [v3 appendFormat:@" visionCallEstablishmentVersion=%@", v8];

  [v3 appendFormat:@" uPlusOneVisionToVisionAvailable=%d", -[TUConversationParticipantCapabilities isUPlusOneVisionToVisionAvailable](self, "isUPlusOneVisionToVisionAvailable")];
  [v3 appendFormat:@" photosSharePlayAvailable=%d", -[TUConversationParticipantCapabilities isPhotosSharePlayAvailable](self, "isPhotosSharePlayAvailable")];
  [v3 appendFormat:@" translationAvailable=%d", -[TUConversationParticipantCapabilities isTranslationAvailable](self, "isTranslationAvailable")];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[TUConversationParticipantCapabilities nearbyFeatureVersion](self, "nearbyFeatureVersion")}];
  [v3 appendFormat:@" nearbyFeatureVersion=%@", v9];

  [v3 appendString:@">"];
  v10 = [v3 copy];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationParticipantCapabilities *)self isEqualToCapabilities:equalCopy];

  return v5;
}

- (BOOL)isEqualToCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  isMomentsAvailable = [(TUConversationParticipantCapabilities *)self isMomentsAvailable];
  if (isMomentsAvailable != [capabilitiesCopy isMomentsAvailable])
  {
    goto LABEL_16;
  }

  isScreenSharingAvailable = [(TUConversationParticipantCapabilities *)self isScreenSharingAvailable];
  if (isScreenSharingAvailable != [capabilitiesCopy isScreenSharingAvailable])
  {
    goto LABEL_16;
  }

  isGondolaCallingAvailable = [(TUConversationParticipantCapabilities *)self isGondolaCallingAvailable];
  if (isGondolaCallingAvailable != [capabilitiesCopy isGondolaCallingAvailable])
  {
    goto LABEL_16;
  }

  isPersonaAvailable = [(TUConversationParticipantCapabilities *)self isPersonaAvailable];
  if (isPersonaAvailable != [capabilitiesCopy isPersonaAvailable])
  {
    goto LABEL_16;
  }

  isGFTDowngradeToOneToOneAvailable = [(TUConversationParticipantCapabilities *)self isGFTDowngradeToOneToOneAvailable];
  if (isGFTDowngradeToOneToOneAvailable != [capabilitiesCopy isGFTDowngradeToOneToOneAvailable])
  {
    goto LABEL_16;
  }

  isUPlusNDowngradeAvailable = [(TUConversationParticipantCapabilities *)self isUPlusNDowngradeAvailable];
  if (isUPlusNDowngradeAvailable != [capabilitiesCopy isUPlusNDowngradeAvailable])
  {
    goto LABEL_16;
  }

  sharePlayProtocolVersion = [(TUConversationParticipantCapabilities *)self sharePlayProtocolVersion];
  if (sharePlayProtocolVersion != [capabilitiesCopy sharePlayProtocolVersion])
  {
    goto LABEL_16;
  }

  supportsLeaveContext = [(TUConversationParticipantCapabilities *)self supportsLeaveContext];
  if (supportsLeaveContext != [capabilitiesCopy supportsLeaveContext])
  {
    goto LABEL_16;
  }

  isUPlusOneAVLessAvailable = [(TUConversationParticipantCapabilities *)self isUPlusOneAVLessAvailable];
  if (isUPlusOneAVLessAvailable == [capabilitiesCopy isUPlusOneAVLessAvailable] && (v14 = -[TUConversationParticipantCapabilities visionFeatureVersion](self, "visionFeatureVersion"), v14 == objc_msgSend(capabilitiesCopy, "visionFeatureVersion")) && (v15 = -[TUConversationParticipantCapabilities visionCallEstablishmentVersion](self, "visionCallEstablishmentVersion"), v15 == objc_msgSend(capabilitiesCopy, "visionCallEstablishmentVersion")) && (v16 = -[TUConversationParticipantCapabilities isUPlusOneVisionToVisionAvailable](self, "isUPlusOneVisionToVisionAvailable"), v16 == objc_msgSend(capabilitiesCopy, "isUPlusOneVisionToVisionAvailable")) && (v17 = -[TUConversationParticipantCapabilities supportsRequestToScreenShare](self, "supportsRequestToScreenShare"), v17 == objc_msgSend(capabilitiesCopy, "supportsRequestToScreenShare")) && (v18 = -[TUConversationParticipantCapabilities isPhotosSharePlayAvailable](self, "isPhotosSharePlayAvailable"), v18 == objc_msgSend(capabilitiesCopy, "isPhotosSharePlayAvailable")) && (v19 = -[TUConversationParticipantCapabilities isTranslationAvailable](self, "isTranslationAvailable"), v19 == objc_msgSend(capabilitiesCopy, "isTranslationAvailable")))
  {
    nearbyFeatureVersion = [(TUConversationParticipantCapabilities *)self nearbyFeatureVersion];
    v20 = nearbyFeatureVersion == [capabilitiesCopy nearbyFeatureVersion];
  }

  else
  {
LABEL_16:
    v20 = 0;
  }

  return v20;
}

- (unint64_t)hash
{
  if ([(TUConversationParticipantCapabilities *)self isMomentsAvailable])
  {
    v3 = 1231;
  }

  else
  {
    v3 = 1237;
  }

  if ([(TUConversationParticipantCapabilities *)self isScreenSharingAvailable])
  {
    v4 = 1231;
  }

  else
  {
    v4 = 1237;
  }

  v5 = v4 ^ v3;
  if ([(TUConversationParticipantCapabilities *)self isGondolaCallingAvailable])
  {
    v6 = 1231;
  }

  else
  {
    v6 = 1237;
  }

  if ([(TUConversationParticipantCapabilities *)self isPersonaAvailable])
  {
    v7 = 1231;
  }

  else
  {
    v7 = 1237;
  }

  v8 = v5 ^ v6 ^ v7;
  if ([(TUConversationParticipantCapabilities *)self isGFTDowngradeToOneToOneAvailable])
  {
    v9 = 1231;
  }

  else
  {
    v9 = 1237;
  }

  if ([(TUConversationParticipantCapabilities *)self isUPlusNDowngradeAvailable])
  {
    v10 = 1231;
  }

  else
  {
    v10 = 1237;
  }

  v11 = v9 ^ v10;
  if ([(TUConversationParticipantCapabilities *)self isUPlusOneAVLessAvailable])
  {
    v12 = 1231;
  }

  else
  {
    v12 = 1237;
  }

  v13 = v8 ^ v11 ^ v12;
  sharePlayProtocolVersion = [(TUConversationParticipantCapabilities *)self sharePlayProtocolVersion];
  v15 = sharePlayProtocolVersion ^ [(TUConversationParticipantCapabilities *)self visionFeatureVersion];
  v16 = v15 ^ [(TUConversationParticipantCapabilities *)self visionCallEstablishmentVersion];
  if ([(TUConversationParticipantCapabilities *)self isUPlusOneVisionToVisionAvailable])
  {
    v17 = 1231;
  }

  else
  {
    v17 = 1237;
  }

  v18 = v16 ^ v17;
  if ([(TUConversationParticipantCapabilities *)self supportsLeaveContext])
  {
    v19 = 1231;
  }

  else
  {
    v19 = 1237;
  }

  v20 = v18 ^ v19;
  if ([(TUConversationParticipantCapabilities *)self supportsRequestToScreenShare])
  {
    v21 = 1231;
  }

  else
  {
    v21 = 1237;
  }

  v22 = v13 ^ v20 ^ v21;
  if ([(TUConversationParticipantCapabilities *)self isPhotosSharePlayAvailable])
  {
    v23 = 1231;
  }

  else
  {
    v23 = 1237;
  }

  if ([(TUConversationParticipantCapabilities *)self isTranslationAvailable])
  {
    v24 = 1231;
  }

  else
  {
    v24 = 1237;
  }

  return v22 ^ v23 ^ v24 ^ [(TUConversationParticipantCapabilities *)self nearbyFeatureVersion];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [v4 setScreenSharingAvailable:{-[TUConversationParticipantCapabilities isScreenSharingAvailable](self, "isScreenSharingAvailable")}];
  [v4 setMomentsAvailable:{-[TUConversationParticipantCapabilities isMomentsAvailable](self, "isMomentsAvailable")}];
  [v4 setGondolaCallingAvailable:{-[TUConversationParticipantCapabilities isGondolaCallingAvailable](self, "isGondolaCallingAvailable")}];
  [v4 setPersonaAvailable:{-[TUConversationParticipantCapabilities isPersonaAvailable](self, "isPersonaAvailable")}];
  [v4 setGftDowngradeToOneToOneAvailable:{-[TUConversationParticipantCapabilities isGFTDowngradeToOneToOneAvailable](self, "isGFTDowngradeToOneToOneAvailable")}];
  [v4 setUPlusOneScreenShareAvailable:{-[TUConversationParticipantCapabilities isUPlusOneScreenShareAvailable](self, "isUPlusOneScreenShareAvailable")}];
  [v4 setUPlusOneAVLessAvailable:{-[TUConversationParticipantCapabilities isUPlusOneAVLessAvailable](self, "isUPlusOneAVLessAvailable")}];
  [v4 setUPlusNDowngradeAvailable:{-[TUConversationParticipantCapabilities isUPlusNDowngradeAvailable](self, "isUPlusNDowngradeAvailable")}];
  [v4 setSharePlayProtocolVersion:{-[TUConversationParticipantCapabilities sharePlayProtocolVersion](self, "sharePlayProtocolVersion")}];
  [v4 setVisionFeatureVersion:{-[TUConversationParticipantCapabilities visionFeatureVersion](self, "visionFeatureVersion")}];
  [v4 setVisionCallEstablishmentVersion:{-[TUConversationParticipantCapabilities visionCallEstablishmentVersion](self, "visionCallEstablishmentVersion")}];
  [v4 setUPlusOneVisionToVisionAvailable:{-[TUConversationParticipantCapabilities isUPlusOneVisionToVisionAvailable](self, "isUPlusOneVisionToVisionAvailable")}];
  [v4 setSupportsLeaveContext:{-[TUConversationParticipantCapabilities supportsLeaveContext](self, "supportsLeaveContext")}];
  [v4 setSupportsRequestToScreenShare:{-[TUConversationParticipantCapabilities supportsRequestToScreenShare](self, "supportsRequestToScreenShare")}];
  [v4 setPhotosSharePlayAvailable:{-[TUConversationParticipantCapabilities isPhotosSharePlayAvailable](self, "isPhotosSharePlayAvailable")}];
  [v4 setTranslationAvailable:{-[TUConversationParticipantCapabilities isTranslationAvailable](self, "isTranslationAvailable")}];
  [v4 setNearbyFeatureVersion:{-[TUConversationParticipantCapabilities nearbyFeatureVersion](self, "nearbyFeatureVersion")}];
  return v4;
}

- (TUConversationParticipantCapabilities)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(TUConversationParticipantCapabilities *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_isMomentsAvailable);
    v5->_momentsAvailable = [coderCopy decodeBoolForKey:v6];

    v7 = NSStringFromSelector(sel_isScreenSharingAvailable);
    v5->_screenSharingAvailable = [coderCopy decodeBoolForKey:v7];

    v8 = NSStringFromSelector(sel_isGondolaCallingAvailable);
    v5->_gondolaCallingAvailable = [coderCopy decodeBoolForKey:v8];

    v9 = NSStringFromSelector(sel_isPersonaAvailable);
    v5->_personaAvailable = [coderCopy decodeBoolForKey:v9];

    v10 = NSStringFromSelector(sel_isGFTDowngradeToOneToOneAvailable);
    v5->_gftDowngradeToOneToOneAvailable = [coderCopy decodeBoolForKey:v10];

    v11 = NSStringFromSelector(sel_isUPlusNDowngradeAvailable);
    v5->_uPlusNDowngradeAvailable = [coderCopy decodeBoolForKey:v11];

    v12 = NSStringFromSelector(sel_sharePlayProtocolVersion);
    v5->_sharePlayProtocolVersion = [coderCopy decodeIntegerForKey:v12];

    v13 = NSStringFromSelector(sel_visionFeatureVersion);
    v5->_visionFeatureVersion = [coderCopy decodeIntegerForKey:v13];

    v14 = NSStringFromSelector(sel_visionCallEstablishmentVersion);
    v5->_visionCallEstablishmentVersion = [coderCopy decodeIntegerForKey:v14];

    v15 = NSStringFromSelector(sel_isUPlusOneScreenShareAvailable);
    v5->_uPlusOneScreenShareAvailable = [coderCopy decodeBoolForKey:v15];

    v16 = NSStringFromSelector(sel_isUPlusOneAVLessAvailable);
    v5->_uPlusOneAVLessAvailable = [coderCopy decodeBoolForKey:v16];

    v17 = NSStringFromSelector(sel_isUPlusOneVisionToVisionAvailable);
    v5->_uPlusOneVisionToVisionAvailable = [coderCopy decodeBoolForKey:v17];

    v18 = NSStringFromSelector(sel_supportsLeaveContext);
    v5->_supportsLeaveContext = [coderCopy decodeBoolForKey:v18];

    v19 = NSStringFromSelector(sel_supportsRequestToScreenShare);
    v5->_supportsRequestToScreenShare = [coderCopy decodeBoolForKey:v19];

    v20 = NSStringFromSelector(sel_isPhotosSharePlayAvailable);
    v5->_photosSharePlayAvailable = [coderCopy decodeBoolForKey:v20];

    v21 = NSStringFromSelector(sel_isTranslationAvailable);
    v5->_translationAvailable = [coderCopy decodeBoolForKey:v21];

    v22 = NSStringFromSelector(sel_nearbyFeatureVersion);
    v5->_nearbyFeatureVersion = [coderCopy decodeIntegerForKey:v22];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  isMomentsAvailable = [(TUConversationParticipantCapabilities *)self isMomentsAvailable];
  v6 = NSStringFromSelector(sel_isMomentsAvailable);
  [coderCopy encodeBool:isMomentsAvailable forKey:v6];

  isScreenSharingAvailable = [(TUConversationParticipantCapabilities *)self isScreenSharingAvailable];
  v8 = NSStringFromSelector(sel_isScreenSharingAvailable);
  [coderCopy encodeBool:isScreenSharingAvailable forKey:v8];

  isGondolaCallingAvailable = [(TUConversationParticipantCapabilities *)self isGondolaCallingAvailable];
  v10 = NSStringFromSelector(sel_isGondolaCallingAvailable);
  [coderCopy encodeBool:isGondolaCallingAvailable forKey:v10];

  isPersonaAvailable = [(TUConversationParticipantCapabilities *)self isPersonaAvailable];
  v12 = NSStringFromSelector(sel_isPersonaAvailable);
  [coderCopy encodeBool:isPersonaAvailable forKey:v12];

  isGFTDowngradeToOneToOneAvailable = [(TUConversationParticipantCapabilities *)self isGFTDowngradeToOneToOneAvailable];
  v14 = NSStringFromSelector(sel_isGFTDowngradeToOneToOneAvailable);
  [coderCopy encodeBool:isGFTDowngradeToOneToOneAvailable forKey:v14];

  isUPlusOneScreenShareAvailable = [(TUConversationParticipantCapabilities *)self isUPlusOneScreenShareAvailable];
  v16 = NSStringFromSelector(sel_isUPlusOneScreenShareAvailable);
  [coderCopy encodeBool:isUPlusOneScreenShareAvailable forKey:v16];

  isUPlusOneAVLessAvailable = [(TUConversationParticipantCapabilities *)self isUPlusOneAVLessAvailable];
  v18 = NSStringFromSelector(sel_isUPlusOneAVLessAvailable);
  [coderCopy encodeBool:isUPlusOneAVLessAvailable forKey:v18];

  isUPlusNDowngradeAvailable = [(TUConversationParticipantCapabilities *)self isUPlusNDowngradeAvailable];
  v20 = NSStringFromSelector(sel_isUPlusNDowngradeAvailable);
  [coderCopy encodeBool:isUPlusNDowngradeAvailable forKey:v20];

  sharePlayProtocolVersion = [(TUConversationParticipantCapabilities *)self sharePlayProtocolVersion];
  v22 = NSStringFromSelector(sel_sharePlayProtocolVersion);
  [coderCopy encodeInteger:sharePlayProtocolVersion forKey:v22];

  visionFeatureVersion = [(TUConversationParticipantCapabilities *)self visionFeatureVersion];
  v24 = NSStringFromSelector(sel_visionFeatureVersion);
  [coderCopy encodeInteger:visionFeatureVersion forKey:v24];

  visionCallEstablishmentVersion = [(TUConversationParticipantCapabilities *)self visionCallEstablishmentVersion];
  v26 = NSStringFromSelector(sel_visionCallEstablishmentVersion);
  [coderCopy encodeInteger:visionCallEstablishmentVersion forKey:v26];

  isUPlusOneVisionToVisionAvailable = [(TUConversationParticipantCapabilities *)self isUPlusOneVisionToVisionAvailable];
  v28 = NSStringFromSelector(sel_isUPlusOneVisionToVisionAvailable);
  [coderCopy encodeBool:isUPlusOneVisionToVisionAvailable forKey:v28];

  supportsLeaveContext = [(TUConversationParticipantCapabilities *)self supportsLeaveContext];
  v30 = NSStringFromSelector(sel_supportsLeaveContext);
  [coderCopy encodeBool:supportsLeaveContext forKey:v30];

  supportsRequestToScreenShare = [(TUConversationParticipantCapabilities *)self supportsRequestToScreenShare];
  v32 = NSStringFromSelector(sel_supportsRequestToScreenShare);
  [coderCopy encodeBool:supportsRequestToScreenShare forKey:v32];

  isPhotosSharePlayAvailable = [(TUConversationParticipantCapabilities *)self isPhotosSharePlayAvailable];
  v34 = NSStringFromSelector(sel_isPhotosSharePlayAvailable);
  [coderCopy encodeBool:isPhotosSharePlayAvailable forKey:v34];

  isTranslationAvailable = [(TUConversationParticipantCapabilities *)self isTranslationAvailable];
  v36 = NSStringFromSelector(sel_isTranslationAvailable);
  [coderCopy encodeBool:isTranslationAvailable forKey:v36];

  nearbyFeatureVersion = [(TUConversationParticipantCapabilities *)self nearbyFeatureVersion];
  v38 = NSStringFromSelector(sel_nearbyFeatureVersion);
  [coderCopy encodeInteger:nearbyFeatureVersion forKey:v38];
}

@end