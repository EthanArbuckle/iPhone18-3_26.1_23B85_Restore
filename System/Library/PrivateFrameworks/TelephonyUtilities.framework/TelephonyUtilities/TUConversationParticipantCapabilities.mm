@interface TUConversationParticipantCapabilities
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCapabilities:(id)a3;
- (TUConversationParticipantCapabilities)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationParticipantCapabilities *)self isEqualToCapabilities:v4];

  return v5;
}

- (BOOL)isEqualToCapabilities:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationParticipantCapabilities *)self isMomentsAvailable];
  if (v5 != [v4 isMomentsAvailable])
  {
    goto LABEL_16;
  }

  v6 = [(TUConversationParticipantCapabilities *)self isScreenSharingAvailable];
  if (v6 != [v4 isScreenSharingAvailable])
  {
    goto LABEL_16;
  }

  v7 = [(TUConversationParticipantCapabilities *)self isGondolaCallingAvailable];
  if (v7 != [v4 isGondolaCallingAvailable])
  {
    goto LABEL_16;
  }

  v8 = [(TUConversationParticipantCapabilities *)self isPersonaAvailable];
  if (v8 != [v4 isPersonaAvailable])
  {
    goto LABEL_16;
  }

  v9 = [(TUConversationParticipantCapabilities *)self isGFTDowngradeToOneToOneAvailable];
  if (v9 != [v4 isGFTDowngradeToOneToOneAvailable])
  {
    goto LABEL_16;
  }

  v10 = [(TUConversationParticipantCapabilities *)self isUPlusNDowngradeAvailable];
  if (v10 != [v4 isUPlusNDowngradeAvailable])
  {
    goto LABEL_16;
  }

  v11 = [(TUConversationParticipantCapabilities *)self sharePlayProtocolVersion];
  if (v11 != [v4 sharePlayProtocolVersion])
  {
    goto LABEL_16;
  }

  v12 = [(TUConversationParticipantCapabilities *)self supportsLeaveContext];
  if (v12 != [v4 supportsLeaveContext])
  {
    goto LABEL_16;
  }

  v13 = [(TUConversationParticipantCapabilities *)self isUPlusOneAVLessAvailable];
  if (v13 == [v4 isUPlusOneAVLessAvailable] && (v14 = -[TUConversationParticipantCapabilities visionFeatureVersion](self, "visionFeatureVersion"), v14 == objc_msgSend(v4, "visionFeatureVersion")) && (v15 = -[TUConversationParticipantCapabilities visionCallEstablishmentVersion](self, "visionCallEstablishmentVersion"), v15 == objc_msgSend(v4, "visionCallEstablishmentVersion")) && (v16 = -[TUConversationParticipantCapabilities isUPlusOneVisionToVisionAvailable](self, "isUPlusOneVisionToVisionAvailable"), v16 == objc_msgSend(v4, "isUPlusOneVisionToVisionAvailable")) && (v17 = -[TUConversationParticipantCapabilities supportsRequestToScreenShare](self, "supportsRequestToScreenShare"), v17 == objc_msgSend(v4, "supportsRequestToScreenShare")) && (v18 = -[TUConversationParticipantCapabilities isPhotosSharePlayAvailable](self, "isPhotosSharePlayAvailable"), v18 == objc_msgSend(v4, "isPhotosSharePlayAvailable")) && (v19 = -[TUConversationParticipantCapabilities isTranslationAvailable](self, "isTranslationAvailable"), v19 == objc_msgSend(v4, "isTranslationAvailable")))
  {
    v22 = [(TUConversationParticipantCapabilities *)self nearbyFeatureVersion];
    v20 = v22 == [v4 nearbyFeatureVersion];
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
  v14 = [(TUConversationParticipantCapabilities *)self sharePlayProtocolVersion];
  v15 = v14 ^ [(TUConversationParticipantCapabilities *)self visionFeatureVersion];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
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

- (TUConversationParticipantCapabilities)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationParticipantCapabilities *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_isMomentsAvailable);
    v5->_momentsAvailable = [v4 decodeBoolForKey:v6];

    v7 = NSStringFromSelector(sel_isScreenSharingAvailable);
    v5->_screenSharingAvailable = [v4 decodeBoolForKey:v7];

    v8 = NSStringFromSelector(sel_isGondolaCallingAvailable);
    v5->_gondolaCallingAvailable = [v4 decodeBoolForKey:v8];

    v9 = NSStringFromSelector(sel_isPersonaAvailable);
    v5->_personaAvailable = [v4 decodeBoolForKey:v9];

    v10 = NSStringFromSelector(sel_isGFTDowngradeToOneToOneAvailable);
    v5->_gftDowngradeToOneToOneAvailable = [v4 decodeBoolForKey:v10];

    v11 = NSStringFromSelector(sel_isUPlusNDowngradeAvailable);
    v5->_uPlusNDowngradeAvailable = [v4 decodeBoolForKey:v11];

    v12 = NSStringFromSelector(sel_sharePlayProtocolVersion);
    v5->_sharePlayProtocolVersion = [v4 decodeIntegerForKey:v12];

    v13 = NSStringFromSelector(sel_visionFeatureVersion);
    v5->_visionFeatureVersion = [v4 decodeIntegerForKey:v13];

    v14 = NSStringFromSelector(sel_visionCallEstablishmentVersion);
    v5->_visionCallEstablishmentVersion = [v4 decodeIntegerForKey:v14];

    v15 = NSStringFromSelector(sel_isUPlusOneScreenShareAvailable);
    v5->_uPlusOneScreenShareAvailable = [v4 decodeBoolForKey:v15];

    v16 = NSStringFromSelector(sel_isUPlusOneAVLessAvailable);
    v5->_uPlusOneAVLessAvailable = [v4 decodeBoolForKey:v16];

    v17 = NSStringFromSelector(sel_isUPlusOneVisionToVisionAvailable);
    v5->_uPlusOneVisionToVisionAvailable = [v4 decodeBoolForKey:v17];

    v18 = NSStringFromSelector(sel_supportsLeaveContext);
    v5->_supportsLeaveContext = [v4 decodeBoolForKey:v18];

    v19 = NSStringFromSelector(sel_supportsRequestToScreenShare);
    v5->_supportsRequestToScreenShare = [v4 decodeBoolForKey:v19];

    v20 = NSStringFromSelector(sel_isPhotosSharePlayAvailable);
    v5->_photosSharePlayAvailable = [v4 decodeBoolForKey:v20];

    v21 = NSStringFromSelector(sel_isTranslationAvailable);
    v5->_translationAvailable = [v4 decodeBoolForKey:v21];

    v22 = NSStringFromSelector(sel_nearbyFeatureVersion);
    v5->_nearbyFeatureVersion = [v4 decodeIntegerForKey:v22];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationParticipantCapabilities *)self isMomentsAvailable];
  v6 = NSStringFromSelector(sel_isMomentsAvailable);
  [v4 encodeBool:v5 forKey:v6];

  v7 = [(TUConversationParticipantCapabilities *)self isScreenSharingAvailable];
  v8 = NSStringFromSelector(sel_isScreenSharingAvailable);
  [v4 encodeBool:v7 forKey:v8];

  v9 = [(TUConversationParticipantCapabilities *)self isGondolaCallingAvailable];
  v10 = NSStringFromSelector(sel_isGondolaCallingAvailable);
  [v4 encodeBool:v9 forKey:v10];

  v11 = [(TUConversationParticipantCapabilities *)self isPersonaAvailable];
  v12 = NSStringFromSelector(sel_isPersonaAvailable);
  [v4 encodeBool:v11 forKey:v12];

  v13 = [(TUConversationParticipantCapabilities *)self isGFTDowngradeToOneToOneAvailable];
  v14 = NSStringFromSelector(sel_isGFTDowngradeToOneToOneAvailable);
  [v4 encodeBool:v13 forKey:v14];

  v15 = [(TUConversationParticipantCapabilities *)self isUPlusOneScreenShareAvailable];
  v16 = NSStringFromSelector(sel_isUPlusOneScreenShareAvailable);
  [v4 encodeBool:v15 forKey:v16];

  v17 = [(TUConversationParticipantCapabilities *)self isUPlusOneAVLessAvailable];
  v18 = NSStringFromSelector(sel_isUPlusOneAVLessAvailable);
  [v4 encodeBool:v17 forKey:v18];

  v19 = [(TUConversationParticipantCapabilities *)self isUPlusNDowngradeAvailable];
  v20 = NSStringFromSelector(sel_isUPlusNDowngradeAvailable);
  [v4 encodeBool:v19 forKey:v20];

  v21 = [(TUConversationParticipantCapabilities *)self sharePlayProtocolVersion];
  v22 = NSStringFromSelector(sel_sharePlayProtocolVersion);
  [v4 encodeInteger:v21 forKey:v22];

  v23 = [(TUConversationParticipantCapabilities *)self visionFeatureVersion];
  v24 = NSStringFromSelector(sel_visionFeatureVersion);
  [v4 encodeInteger:v23 forKey:v24];

  v25 = [(TUConversationParticipantCapabilities *)self visionCallEstablishmentVersion];
  v26 = NSStringFromSelector(sel_visionCallEstablishmentVersion);
  [v4 encodeInteger:v25 forKey:v26];

  v27 = [(TUConversationParticipantCapabilities *)self isUPlusOneVisionToVisionAvailable];
  v28 = NSStringFromSelector(sel_isUPlusOneVisionToVisionAvailable);
  [v4 encodeBool:v27 forKey:v28];

  v29 = [(TUConversationParticipantCapabilities *)self supportsLeaveContext];
  v30 = NSStringFromSelector(sel_supportsLeaveContext);
  [v4 encodeBool:v29 forKey:v30];

  v31 = [(TUConversationParticipantCapabilities *)self supportsRequestToScreenShare];
  v32 = NSStringFromSelector(sel_supportsRequestToScreenShare);
  [v4 encodeBool:v31 forKey:v32];

  v33 = [(TUConversationParticipantCapabilities *)self isPhotosSharePlayAvailable];
  v34 = NSStringFromSelector(sel_isPhotosSharePlayAvailable);
  [v4 encodeBool:v33 forKey:v34];

  v35 = [(TUConversationParticipantCapabilities *)self isTranslationAvailable];
  v36 = NSStringFromSelector(sel_isTranslationAvailable);
  [v4 encodeBool:v35 forKey:v36];

  v37 = [(TUConversationParticipantCapabilities *)self nearbyFeatureVersion];
  v38 = NSStringFromSelector(sel_nearbyFeatureVersion);
  [v4 encodeInteger:v37 forKey:v38];
}

@end