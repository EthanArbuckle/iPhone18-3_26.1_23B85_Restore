@interface TUConversationActivity
+ (id)lookupApplicationNameForBundleIdentifier:(id)identifier;
+ (id)placeholderActivity;
- (BOOL)isEligibleForHandoff;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConversationActivity:(id)activity;
- (BOOL)isEquivalentToActivity:(id)activity;
- (BOOL)isPlaceholderActivity;
- (BOOL)isScreenSharingActivity;
- (BOOL)isStaticActivity;
- (NSString)representativeBundleIdentifier;
- (TUConversationActivity)initWithBundleIdentifier:(id)identifier metadata:(id)metadata applicationContext:(id)context uuid:(id)uuid activityIdentifier:(id)activityIdentifier;
- (TUConversationActivity)initWithBundleIdentifier:(id)identifier metadata:(id)metadata applicationContext:(id)context uuid:(id)uuid activityIdentifier:(id)activityIdentifier fallbackApplicationName:(id)name;
- (TUConversationActivity)initWithCoder:(id)coder;
- (TUConversationActivity)initWithCreationRequest:(id)request bundleIdentifier:(id)identifier systemActivity:(BOOL)activity requiresParticipantTranslation:(BOOL)translation;
- (TUConversationActivityContext)activityContext;
- (id)concatenatedDescription;
- (id)concatenatedMetadataDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)localizedApplicationName;
- (id)representativeDisplayName;
- (id)sanitizedCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setActivityContext:(id)context;
- (void)setBundleIdentifier:(id)identifier;
@end

@implementation TUConversationActivity

- (TUConversationActivity)initWithBundleIdentifier:(id)identifier metadata:(id)metadata applicationContext:(id)context uuid:(id)uuid activityIdentifier:(id)activityIdentifier
{
  identifierCopy = identifier;
  metadataCopy = metadata;
  contextCopy = context;
  uuidCopy = uuid;
  activityIdentifierCopy = activityIdentifier;
  if (identifierCopy)
  {
    v17 = [objc_opt_class() lookupApplicationNameForBundleIdentifier:identifierCopy];
  }

  else
  {
    v17 = 0;
  }

  v18 = [(TUConversationActivity *)self initWithBundleIdentifier:identifierCopy metadata:metadataCopy applicationContext:contextCopy uuid:uuidCopy activityIdentifier:activityIdentifierCopy fallbackApplicationName:v17];

  return v18;
}

- (TUConversationActivity)initWithBundleIdentifier:(id)identifier metadata:(id)metadata applicationContext:(id)context uuid:(id)uuid activityIdentifier:(id)activityIdentifier fallbackApplicationName:(id)name
{
  identifierCopy = identifier;
  metadataCopy = metadata;
  contextCopy = context;
  uuidCopy = uuid;
  activityIdentifierCopy = activityIdentifier;
  nameCopy = name;
  v36.receiver = self;
  v36.super_class = TUConversationActivity;
  v20 = [(TUConversationActivity *)&v36 init];
  if (v20)
  {
    v21 = [uuidCopy copy];
    v22 = *(v20 + 2);
    *(v20 + 2) = v21;

    v23 = [activityIdentifierCopy copy];
    v24 = *(v20 + 5);
    *(v20 + 5) = v23;

    v25 = [identifierCopy copy];
    v26 = *(v20 + 4);
    *(v20 + 4) = v25;

    v27 = [contextCopy copy];
    v28 = *(v20 + 3);
    *(v20 + 3) = v27;

    v29 = [metadataCopy copy];
    v30 = *(v20 + 6);
    *(v20 + 6) = v29;

    v20[8] = 1;
    v31 = [MEMORY[0x1E695DF00] now];
    v32 = *(v20 + 9);
    *(v20 + 9) = v31;

    v33 = [nameCopy copy];
    v34 = *(v20 + 10);
    *(v20 + 10) = v33;

    v20[11] = 0;
    *(v20 + 9) = 1;
  }

  return v20;
}

- (TUConversationActivity)initWithCreationRequest:(id)request bundleIdentifier:(id)identifier systemActivity:(BOOL)activity requiresParticipantTranslation:(BOOL)translation
{
  identifierCopy = identifier;
  requestCopy = request;
  metadata = [requestCopy metadata];
  sanitizedCopy = [metadata sanitizedCopy];

  applicationContext = [requestCopy applicationContext];
  uUID = [requestCopy UUID];
  activityIdentifier = [requestCopy activityIdentifier];
  v17 = [(TUConversationActivity *)self initWithBundleIdentifier:identifierCopy metadata:sanitizedCopy applicationContext:applicationContext uuid:uUID activityIdentifier:activityIdentifier];

  v17->_requiresParticipantTranslation = translation;
  v17->_systemActivity = activity;
  staticIdentifier = [requestCopy staticIdentifier];

  staticIdentifier = v17->_staticIdentifier;
  v17->_staticIdentifier = staticIdentifier;

  return v17;
}

+ (id)placeholderActivity
{
  v2 = [TUConversationActivity alloc];
  data = [MEMORY[0x1E695DEF0] data];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v5 = [(TUConversationActivity *)v2 initWithMetadata:0 applicationContext:data uuid:uUID activityIdentifier:@"com.apple.groupactivities.placeholder"];

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  uUID = [(TUConversationActivity *)self UUID];
  [v3 appendFormat:@" UUID=%@", uUID];

  bundleIdentifier = [(TUConversationActivity *)self bundleIdentifier];
  [v3 appendFormat:@" bundleIdentifier=%@", bundleIdentifier];

  activityIdentifier = [(TUConversationActivity *)self activityIdentifier];
  [v3 appendFormat:@" activityIdentifier=%@", activityIdentifier];

  metadata = [(TUConversationActivity *)self metadata];
  [v3 appendFormat:@" metadata=%@", metadata];

  [v3 appendFormat:@" isSupported=%d", -[TUConversationActivity isSupported](self, "isSupported")];
  originator = [(TUConversationActivity *)self originator];
  [v3 appendFormat:@" originator=%@", originator];

  timestamp = [(TUConversationActivity *)self timestamp];
  [v3 appendFormat:@" timestamp=%@", timestamp];

  trustedFromHandle = [(TUConversationActivity *)self trustedFromHandle];
  [v3 appendFormat:@" trustedFromHandle=%@", trustedFromHandle];

  fallbackApplicationName = [(TUConversationActivity *)self fallbackApplicationName];

  if (fallbackApplicationName)
  {
    fallbackApplicationName2 = [(TUConversationActivity *)self fallbackApplicationName];
    [v3 appendFormat:@" fallbackApplicationName=%@", fallbackApplicationName2];
  }

  activationSceneIdentifier = [(TUConversationActivity *)self activationSceneIdentifier];

  if (activationSceneIdentifier)
  {
    activationSceneIdentifier2 = [(TUConversationActivity *)self activationSceneIdentifier];
    [v3 appendFormat:@" activationSceneIdentifier=%@", activationSceneIdentifier2];
  }

  v15 = objc_opt_self();
  isSystemActivity = [v15 isSystemActivity];

  if (isSystemActivity)
  {
    v17 = objc_opt_self();
    [v3 appendFormat:@" self.isSystemActivity=%d", objc_msgSend(v17, "isSystemActivity")];
  }

  v18 = objc_opt_self();
  isPlaceholderActivity = [v18 isPlaceholderActivity];

  if (isPlaceholderActivity)
  {
    v20 = objc_opt_self();
    [v3 appendFormat:@" self.isPlaceholderActivity=%d", objc_msgSend(v20, "isPlaceholderActivity")];
  }

  v21 = objc_opt_self();
  startWhenStaged = [v21 startWhenStaged];

  if (startWhenStaged)
  {
    v23 = objc_opt_self();
    [v3 appendFormat:@" self.startWhenStaged=%d", objc_msgSend(v23, "startWhenStaged")];
  }

  if ([(TUConversationActivity *)self isStaticActivity])
  {
    [v3 appendFormat:@" isStaticActivity=%d", -[TUConversationActivity isStaticActivity](self, "isStaticActivity")];
  }

  v24 = objc_opt_self();
  requiresParticipantTranslation = [v24 requiresParticipantTranslation];

  if ((requiresParticipantTranslation & 1) == 0)
  {
    v26 = objc_opt_self();
    [v3 appendFormat:@" self.requiresParticipantTranslation=%d", objc_msgSend(v26, "requiresParticipantTranslation")];
  }

  [v3 appendString:@">"];
  v27 = [v3 copy];

  return v27;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationActivity *)self isEqualToConversationActivity:equalCopy];

  return v5;
}

- (BOOL)isEquivalentToActivity:(id)activity
{
  activityCopy = activity;
  bundleIdentifier = [(TUConversationActivity *)self bundleIdentifier];
  bundleIdentifier2 = [activityCopy bundleIdentifier];
  if (!TUObjectsAreEqualOrNil(bundleIdentifier, bundleIdentifier2))
  {
    LOBYTE(v11) = 0;
    goto LABEL_21;
  }

  metadata = [(TUConversationActivity *)self metadata];
  if (!metadata)
  {
    metadata2 = [activityCopy metadata];
    if (!metadata2)
    {
      v22 = 0;
LABEL_9:
      applicationContext = [(TUConversationActivity *)self applicationContext];
      applicationContext2 = [activityCopy applicationContext];
      if ([applicationContext isEqual:applicationContext2])
      {
        v21 = metadata2;
        activityIdentifier = [(TUConversationActivity *)self activityIdentifier];
        activityIdentifier2 = [activityCopy activityIdentifier];
        v20 = activityIdentifier;
        if ([activityIdentifier isEqual:?] && (v15 = -[TUConversationActivity isPlaceholderActivity](self, "isPlaceholderActivity"), v15 == objc_msgSend(activityCopy, "isPlaceholderActivity")) && (v16 = -[TUConversationActivity startWhenStaged](self, "startWhenStaged"), v16 == objc_msgSend(activityCopy, "startWhenStaged")))
        {
          requiresParticipantTranslation = [(TUConversationActivity *)self requiresParticipantTranslation];
          v11 = requiresParticipantTranslation ^ [activityCopy requiresParticipantTranslation] ^ 1;
        }

        else
        {
          LOBYTE(v11) = 0;
        }

        metadata2 = v21;
      }

      else
      {
        LOBYTE(v11) = 0;
      }

      if (!v22)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  metadata3 = [(TUConversationActivity *)self metadata];
  metadata4 = [activityCopy metadata];
  if ([metadata3 isEquivalentToActivityMetadata:metadata4])
  {
    v22 = 1;
    goto LABEL_9;
  }

  LOBYTE(v11) = 0;
LABEL_17:

LABEL_18:
  if (!metadata)
  {
  }

LABEL_21:
  return v11;
}

- (BOOL)isEqualToConversationActivity:(id)activity
{
  activityCopy = activity;
  bundleIdentifier = [(TUConversationActivity *)self bundleIdentifier];
  bundleIdentifier2 = [activityCopy bundleIdentifier];
  if (TUObjectsAreEqualOrNil(bundleIdentifier, bundleIdentifier2))
  {
    metadata = [(TUConversationActivity *)self metadata];
    metadata2 = [activityCopy metadata];
    if (!TUObjectsAreEqualOrNil(metadata, metadata2))
    {
      v15 = 0;
LABEL_40:

      goto LABEL_41;
    }

    applicationContext = [(TUConversationActivity *)self applicationContext];
    applicationContext2 = [activityCopy applicationContext];
    if (![applicationContext isEqualToData:applicationContext2])
    {
      v15 = 0;
LABEL_39:

      goto LABEL_40;
    }

    uUID = [(TUConversationActivity *)self UUID];
    uUID2 = [activityCopy UUID];
    if (![uUID isEqual:uUID2])
    {
      v15 = 0;
LABEL_38:

      goto LABEL_39;
    }

    v42 = uUID2;
    activityIdentifier = [(TUConversationActivity *)self activityIdentifier];
    [activityCopy activityIdentifier];
    v41 = v43 = activityIdentifier;
    if ([activityIdentifier isEqualToString:?])
    {
      v40 = uUID;
      isSupported = [(TUConversationActivity *)self isSupported];
      if (isSupported == [activityCopy isSupported])
      {
        originator = [(TUConversationActivity *)self originator];
        originator2 = [activityCopy originator];
        v39 = originator;
        if (TUObjectsAreEqualOrNil(originator, originator2))
        {
          timestamp = [(TUConversationActivity *)self timestamp];
          timestamp2 = [activityCopy timestamp];
          v37 = timestamp;
          if ([timestamp isEqualToDate:?])
          {
            fallbackApplicationName = [(TUConversationActivity *)self fallbackApplicationName];
            fallbackApplicationName2 = [activityCopy fallbackApplicationName];
            v35 = fallbackApplicationName;
            if (TUObjectsAreEqualOrNil(fallbackApplicationName, fallbackApplicationName2) && (v19 = -[TUConversationActivity isSystemActivity](self, "isSystemActivity"), v19 == [activityCopy isSystemActivity]))
            {
              staticIdentifier = [(TUConversationActivity *)self staticIdentifier];
              staticIdentifier2 = [activityCopy staticIdentifier];
              v33 = staticIdentifier;
              if (TUObjectsAreEqualOrNil(staticIdentifier, staticIdentifier2) && (v21 = -[TUConversationActivity isPlaceholderActivity](self, "isPlaceholderActivity"), v21 == [activityCopy isPlaceholderActivity]))
              {
                trustedFromHandle = [(TUConversationActivity *)self trustedFromHandle];
                trustedFromHandle2 = [activityCopy trustedFromHandle];
                v31 = trustedFromHandle;
                if (TUObjectsAreEqualOrNil(trustedFromHandle, trustedFromHandle2) && (v23 = -[TUConversationActivity startWhenStaged](self, "startWhenStaged"), v23 == [activityCopy startWhenStaged]))
                {
                  activationSceneIdentifier = [(TUConversationActivity *)self activationSceneIdentifier];
                  activationSceneIdentifier2 = [activityCopy activationSceneIdentifier];
                  if (TUObjectsAreEqualOrNil(activationSceneIdentifier, activationSceneIdentifier2) && (v25 = -[TUConversationActivity requiresParticipantTranslation](self, "requiresParticipantTranslation"), v25 == [activityCopy requiresParticipantTranslation]))
                  {
                    screenShareAttributes = [(TUConversationActivity *)self screenShareAttributes];
                    screenShareAttributes2 = [activityCopy screenShareAttributes];
                    v15 = TUObjectsAreEqualOrNil(screenShareAttributes, screenShareAttributes2);
                  }

                  else
                  {
                    v15 = 0;
                  }
                }

                else
                {
                  v15 = 0;
                }

                uUID = v40;
                uUID2 = v42;
              }

              else
              {
                v15 = 0;
                uUID = v40;
                uUID2 = v42;
              }
            }

            else
            {
              v15 = 0;
              uUID = v40;
              uUID2 = v42;
            }
          }

          else
          {
            v15 = 0;
            uUID = v40;
            uUID2 = v42;
          }
        }

        else
        {
          v15 = 0;
          uUID = v40;
          uUID2 = v42;
        }

        goto LABEL_37;
      }

      v15 = 0;
      uUID = v40;
    }

    else
    {
      v15 = 0;
    }

    uUID2 = v42;
LABEL_37:

    goto LABEL_38;
  }

  v15 = 0;
LABEL_41:

  return v15;
}

- (unint64_t)hash
{
  bundleIdentifier = [(TUConversationActivity *)self bundleIdentifier];
  v3 = [bundleIdentifier hash];
  metadata = [(TUConversationActivity *)self metadata];
  v4 = [metadata hash] ^ v3;
  applicationContext = [(TUConversationActivity *)self applicationContext];
  v5 = [applicationContext hash];
  uUID = [(TUConversationActivity *)self UUID];
  v6 = v4 ^ v5 ^ [uUID hash];
  activityIdentifier = [(TUConversationActivity *)self activityIdentifier];
  v7 = [activityIdentifier hash];
  if ([(TUConversationActivity *)self isSupported])
  {
    v8 = 1231;
  }

  else
  {
    v8 = 1237;
  }

  v9 = v6 ^ v7 ^ v8;
  originator = [(TUConversationActivity *)self originator];
  v11 = [originator hash];
  timestamp = [(TUConversationActivity *)self timestamp];
  v13 = v11 ^ [timestamp hash];
  fallbackApplicationName = [(TUConversationActivity *)self fallbackApplicationName];
  v15 = v13 ^ [fallbackApplicationName hash];
  if ([(TUConversationActivity *)self isSystemActivity])
  {
    v16 = 1231;
  }

  else
  {
    v16 = 1237;
  }

  v17 = v9 ^ v15 ^ v16;
  staticIdentifier = [(TUConversationActivity *)self staticIdentifier];
  v19 = [staticIdentifier hash];
  if ([(TUConversationActivity *)self isPlaceholderActivity])
  {
    v20 = 1231;
  }

  else
  {
    v20 = 1237;
  }

  v21 = v19 ^ v20;
  trustedFromHandle = [(TUConversationActivity *)self trustedFromHandle];
  v23 = v21 ^ [trustedFromHandle hash];
  if ([(TUConversationActivity *)self startWhenStaged])
  {
    v24 = 1231;
  }

  else
  {
    v24 = 1237;
  }

  v25 = v17 ^ v23 ^ v24;
  activationSceneIdentifier = [(TUConversationActivity *)self activationSceneIdentifier];
  v27 = [activationSceneIdentifier hash];
  v28 = v27 ^ [(TUConversationActivity *)self requiresParticipantTranslation];
  screenShareAttributes = [(TUConversationActivity *)self screenShareAttributes];
  v30 = v28 ^ [screenShareAttributes hash];

  return v25 ^ v30;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  bundleIdentifier = [(TUConversationActivity *)self bundleIdentifier];
  metadata = [(TUConversationActivity *)self metadata];
  applicationContext = [(TUConversationActivity *)self applicationContext];
  uUID = [(TUConversationActivity *)self UUID];
  activityIdentifier = [(TUConversationActivity *)self activityIdentifier];
  fallbackApplicationName = [(TUConversationActivity *)self fallbackApplicationName];
  v11 = [v4 initWithBundleIdentifier:bundleIdentifier metadata:metadata applicationContext:applicationContext uuid:uUID activityIdentifier:activityIdentifier fallbackApplicationName:fallbackApplicationName];

  [v11 setSupported:{-[TUConversationActivity isSupported](self, "isSupported")}];
  originator = [(TUConversationActivity *)self originator];
  [v11 setOriginator:originator];

  timestamp = [(TUConversationActivity *)self timestamp];
  [v11 setTimestamp:timestamp];

  [v11 setSystemActivity:{-[TUConversationActivity isSystemActivity](self, "isSystemActivity")}];
  staticIdentifier = [(TUConversationActivity *)self staticIdentifier];
  [v11 setStaticIdentifier:staticIdentifier];

  trustedFromHandle = [(TUConversationActivity *)self trustedFromHandle];
  [v11 setTrustedFromHandle:trustedFromHandle];

  [v11 setStartWhenStaged:{-[TUConversationActivity startWhenStaged](self, "startWhenStaged")}];
  activationSceneIdentifier = [(TUConversationActivity *)self activationSceneIdentifier];
  [v11 setActivationSceneIdentifier:activationSceneIdentifier];

  [v11 setRequiresParticipantTranslation:{-[TUConversationActivity requiresParticipantTranslation](self, "requiresParticipantTranslation")}];
  screenShareAttributes = [(TUConversationActivity *)self screenShareAttributes];
  [v11 setScreenShareAttributes:screenShareAttributes];

  return v11;
}

- (id)sanitizedCopyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  bundleIdentifier = [(TUConversationActivity *)self bundleIdentifier];
  metadata = [(TUConversationActivity *)self metadata];
  sanitizedCopy = [metadata sanitizedCopy];
  applicationContext = [(TUConversationActivity *)self applicationContext];
  uUID = [(TUConversationActivity *)self UUID];
  activityIdentifier = [(TUConversationActivity *)self activityIdentifier];
  fallbackApplicationName = [(TUConversationActivity *)self fallbackApplicationName];
  v12 = [v4 initWithBundleIdentifier:bundleIdentifier metadata:sanitizedCopy applicationContext:applicationContext uuid:uUID activityIdentifier:activityIdentifier fallbackApplicationName:fallbackApplicationName];

  [v12 setSupported:{-[TUConversationActivity isSupported](self, "isSupported")}];
  originator = [(TUConversationActivity *)self originator];
  [v12 setOriginator:originator];

  timestamp = [(TUConversationActivity *)self timestamp];
  [v12 setTimestamp:timestamp];

  [v12 setSystemActivity:{-[TUConversationActivity isSystemActivity](self, "isSystemActivity")}];
  staticIdentifier = [(TUConversationActivity *)self staticIdentifier];
  [v12 setStaticIdentifier:staticIdentifier];

  trustedFromHandle = [(TUConversationActivity *)self trustedFromHandle];
  [v12 setTrustedFromHandle:trustedFromHandle];

  [v12 setStartWhenStaged:{-[TUConversationActivity startWhenStaged](self, "startWhenStaged")}];
  activationSceneIdentifier = [(TUConversationActivity *)self activationSceneIdentifier];
  [v12 setActivationSceneIdentifier:activationSceneIdentifier];

  [v12 setRequiresParticipantTranslation:{-[TUConversationActivity requiresParticipantTranslation](self, "requiresParticipantTranslation")}];
  screenShareAttributes = [(TUConversationActivity *)self screenShareAttributes];
  [v12 setScreenShareAttributes:screenShareAttributes];

  return v12;
}

- (TUConversationActivity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_bundleIdentifier);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_metadata);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_applicationContext);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

  if (v13)
  {
    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_UUID);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];

    if (v16)
    {
      v17 = objc_opt_class();
      v18 = NSStringFromSelector(sel_activityIdentifier);
      v19 = [coderCopy decodeObjectOfClass:v17 forKey:v18];

      if (v19)
      {
        v60 = v19;
        v20 = NSStringFromSelector(sel_isSupported);
        v57 = [coderCopy decodeBoolForKey:v20];

        v21 = objc_opt_class();
        v22 = NSStringFromSelector(sel_originator);
        obj = [coderCopy decodeObjectOfClass:v21 forKey:v22];

        v23 = objc_opt_class();
        v24 = NSStringFromSelector(sel_timestamp);
        selfCopy = [coderCopy decodeObjectOfClass:v23 forKey:v24];

        v26 = selfCopy;
        if (selfCopy)
        {
          v58 = selfCopy;
          v27 = objc_opt_class();
          v28 = NSStringFromSelector(sel_fallbackApplicationName);
          v56 = [coderCopy decodeObjectOfClass:v27 forKey:v28];

          v29 = NSStringFromSelector(sel_isSystemActivity);
          v55 = [coderCopy decodeBoolForKey:v29];

          v30 = objc_opt_class();
          v31 = NSStringFromSelector(sel_staticIdentifier);
          v54 = [coderCopy decodeObjectOfClass:v30 forKey:v31];

          v32 = objc_opt_class();
          v33 = NSStringFromSelector(sel_trustedFromHandle);
          v53 = [coderCopy decodeObjectOfClass:v32 forKey:v33];

          v34 = NSStringFromSelector(sel_startWhenStaged);
          v52 = [coderCopy decodeBoolForKey:v34];

          v35 = objc_opt_class();
          v36 = NSStringFromSelector(sel_activationSceneIdentifier);
          v37 = [coderCopy decodeObjectOfClass:v35 forKey:v36];

          v38 = NSStringFromSelector(sel_requiresParticipantTranslation);
          v51 = [coderCopy decodeBoolForKey:v38];

          v39 = objc_opt_class();
          v40 = NSStringFromSelector(sel_screenShareAttributes);
          v50 = [coderCopy decodeObjectOfClass:v39 forKey:v40];

          v41 = [(TUConversationActivity *)self initWithBundleIdentifier:v7 metadata:v10 applicationContext:v13 uuid:v16 activityIdentifier:v60 fallbackApplicationName:v56];
          v41->_supported = v57;
          objc_storeStrong(&v41->_originator, obj);
          objc_storeStrong(&v41->_timestamp, v58);
          v41->_systemActivity = v55;
          staticIdentifier = v41->_staticIdentifier;
          v41->_staticIdentifier = v54;
          v43 = v54;

          trustedFromHandle = v41->_trustedFromHandle;
          v41->_trustedFromHandle = v53;
          v45 = v53;

          v41->_startWhenStaged = v52;
          activationSceneIdentifier = v41->_activationSceneIdentifier;
          v41->_activationSceneIdentifier = v37;
          v47 = v37;

          v41->_requiresParticipantTranslation = v51;
          screenShareAttributes = v41->_screenShareAttributes;
          v41->_screenShareAttributes = v50;

          self = v41;
          v26 = v58;
          selfCopy = self;
        }

        v19 = v60;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(TUConversationActivity *)self bundleIdentifier];
  v6 = NSStringFromSelector(sel_bundleIdentifier);
  [coderCopy encodeObject:bundleIdentifier forKey:v6];

  metadata = [(TUConversationActivity *)self metadata];
  v8 = NSStringFromSelector(sel_metadata);
  [coderCopy encodeObject:metadata forKey:v8];

  applicationContext = [(TUConversationActivity *)self applicationContext];
  v10 = NSStringFromSelector(sel_applicationContext);
  [coderCopy encodeObject:applicationContext forKey:v10];

  uUID = [(TUConversationActivity *)self UUID];
  v12 = NSStringFromSelector(sel_UUID);
  [coderCopy encodeObject:uUID forKey:v12];

  activityIdentifier = [(TUConversationActivity *)self activityIdentifier];
  v14 = NSStringFromSelector(sel_activityIdentifier);
  [coderCopy encodeObject:activityIdentifier forKey:v14];

  isSupported = [(TUConversationActivity *)self isSupported];
  v16 = NSStringFromSelector(sel_isSupported);
  [coderCopy encodeBool:isSupported forKey:v16];

  originator = [(TUConversationActivity *)self originator];
  v18 = NSStringFromSelector(sel_originator);
  [coderCopy encodeObject:originator forKey:v18];

  timestamp = [(TUConversationActivity *)self timestamp];
  v20 = NSStringFromSelector(sel_timestamp);
  [coderCopy encodeObject:timestamp forKey:v20];

  fallbackApplicationName = [(TUConversationActivity *)self fallbackApplicationName];
  v22 = NSStringFromSelector(sel_fallbackApplicationName);
  [coderCopy encodeObject:fallbackApplicationName forKey:v22];

  isSystemActivity = [(TUConversationActivity *)self isSystemActivity];
  v24 = NSStringFromSelector(sel_isSystemActivity);
  [coderCopy encodeBool:isSystemActivity forKey:v24];

  staticIdentifier = [(TUConversationActivity *)self staticIdentifier];
  v26 = NSStringFromSelector(sel_staticIdentifier);
  [coderCopy encodeObject:staticIdentifier forKey:v26];

  trustedFromHandle = [(TUConversationActivity *)self trustedFromHandle];
  v28 = NSStringFromSelector(sel_trustedFromHandle);
  [coderCopy encodeObject:trustedFromHandle forKey:v28];

  startWhenStaged = [(TUConversationActivity *)self startWhenStaged];
  v30 = NSStringFromSelector(sel_startWhenStaged);
  [coderCopy encodeBool:startWhenStaged forKey:v30];

  activationSceneIdentifier = [(TUConversationActivity *)self activationSceneIdentifier];
  v32 = NSStringFromSelector(sel_activationSceneIdentifier);
  [coderCopy encodeObject:activationSceneIdentifier forKey:v32];

  requiresParticipantTranslation = [(TUConversationActivity *)self requiresParticipantTranslation];
  v34 = NSStringFromSelector(sel_requiresParticipantTranslation);
  [coderCopy encodeBool:requiresParticipantTranslation forKey:v34];

  screenShareAttributes = [(TUConversationActivity *)self screenShareAttributes];
  v35 = NSStringFromSelector(sel_screenShareAttributes);
  [coderCopy encodeObject:screenShareAttributes forKey:v35];
}

- (NSString)representativeBundleIdentifier
{
  if ([(TUConversationActivity *)self isEligibleForWebBrowser])
  {
    v3 = @"com.apple.Safari";
  }

  else
  {
    if ([(TUConversationActivity *)self isScreenSharingActivity])
    {
      [(TUConversationActivity *)self platformScreenSharingBundleIdentifier];
    }

    else
    {
      [(TUConversationActivity *)self bundleIdentifier];
    }
    v3 = ;
  }

  return v3;
}

- (BOOL)isEligibleForHandoff
{
  metadata = [(TUConversationActivity *)self metadata];
  supportsContinuationOnTV = [metadata supportsContinuationOnTV];

  return supportsContinuationOnTV;
}

- (BOOL)isPlaceholderActivity
{
  activityIdentifier = [(TUConversationActivity *)self activityIdentifier];
  v3 = [activityIdentifier isEqual:@"com.apple.groupactivities.placeholder"];

  return v3;
}

- (BOOL)isStaticActivity
{
  staticIdentifier = [(TUConversationActivity *)self staticIdentifier];
  v3 = staticIdentifier != 0;

  return v3;
}

- (void)setBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self->_bundleIdentifier != identifierCopy)
  {
    v8 = identifierCopy;
    objc_storeStrong(&self->_bundleIdentifier, identifier);
    if (self->_bundleIdentifier)
    {
      v6 = [objc_opt_class() lookupApplicationNameForBundleIdentifier:v8];
    }

    else
    {
      v6 = 0;
    }

    fallbackApplicationName = self->_fallbackApplicationName;
    self->_fallbackApplicationName = v6;

    identifierCopy = v8;
  }
}

- (id)localizedApplicationName
{
  bundleIdentifier = [(TUConversationActivity *)self bundleIdentifier];

  if (bundleIdentifier)
  {
    v4 = objc_opt_class();
    bundleIdentifier2 = [(TUConversationActivity *)self bundleIdentifier];
    bundleIdentifier = [v4 lookupApplicationNameForBundleIdentifier:bundleIdentifier2];

    if (![bundleIdentifier length])
    {
      fallbackApplicationName = [(TUConversationActivity *)self fallbackApplicationName];
      v7 = [fallbackApplicationName length];

      if (v7)
      {
        fallbackApplicationName2 = [(TUConversationActivity *)self fallbackApplicationName];
        v9 = [fallbackApplicationName2 copy];

        bundleIdentifier = v9;
      }
    }
  }

  return bundleIdentifier;
}

- (id)representativeDisplayName
{
  if ([(TUConversationActivity *)self isEligibleForWebBrowser])
  {
    metadata = [(TUConversationActivity *)self metadata];
    fallbackURL = [metadata fallbackURL];
    host = [fallbackURL host];
  }

  else
  {
    host = [(TUConversationActivity *)self localizedApplicationName];
  }

  return host;
}

+ (id)lookupApplicationNameForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.TelephonyUtilities"])
  {
    v4 = 0;
    goto LABEL_11;
  }

  v10 = 0;
  v5 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:&v10];
  v6 = v10;
  if (v6)
  {
    v7 = TUDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(TUConversationActivity *)identifierCopy lookupApplicationNameForBundleIdentifier:v6, v7];
    }
  }

  else if (v5)
  {
    localizedName = [v5 localizedName];
    goto LABEL_10;
  }

  localizedName = 0;
LABEL_10:
  v4 = localizedName;

LABEL_11:

  return v4;
}

- (BOOL)isScreenSharingActivity
{
  activityIdentifier = [(TUConversationActivity *)self activityIdentifier];
  v4 = [activityIdentifier isEqualToString:@"com.apple.FaceTime.ScreenSharing"];

  if (!v4)
  {
    return 0;
  }

  bundleIdentifier = [(TUConversationActivity *)self bundleIdentifier];
  if ([bundleIdentifier isEqualToString:@"com.apple.TelephonyUtilities"])
  {
    v6 = 1;
  }

  else
  {
    v6 = [bundleIdentifier isEqualToString:@"com.apple.InCallService"];
  }

  return v6;
}

- (id)concatenatedMetadataDescription
{
  metadata = [(TUConversationActivity *)self metadata];

  if (!metadata)
  {
    goto LABEL_7;
  }

  metadata2 = [(TUConversationActivity *)self metadata];
  title = [metadata2 title];

  metadata3 = [(TUConversationActivity *)self metadata];
  subTitle = [metadata3 subTitle];

  if (!title)
  {
    if (subTitle)
    {
      metadata4 = [(TUConversationActivity *)self metadata];
      subTitle2 = [metadata4 subTitle];
LABEL_9:
      title2 = subTitle2;
      v13 = [subTitle2 copy];
      goto LABEL_10;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_11;
  }

  if (!subTitle)
  {
    metadata4 = [(TUConversationActivity *)self metadata];
    subTitle2 = [metadata4 title];
    goto LABEL_9;
  }

  v8 = MEMORY[0x1E696AEC0];
  metadata4 = [(TUConversationActivity *)self metadata];
  title2 = [metadata4 title];
  metadata5 = [(TUConversationActivity *)self metadata];
  subTitle3 = [metadata5 subTitle];
  v13 = [v8 stringWithFormat:@"%@ ⋅ %@", title2, subTitle3];

LABEL_10:
LABEL_11:

  return v13;
}

- (id)concatenatedDescription
{
  concatenatedMetadataDescription = [(TUConversationActivity *)self concatenatedMetadataDescription];
  v3 = concatenatedMetadataDescription;
  if (concatenatedMetadataDescription)
  {
    v4 = concatenatedMetadataDescription;
  }

  else
  {
    v5 = TUBundle();
    v4 = [v5 localizedStringForKey:@"ACTIVITY" value:&stru_1F098C218 table:@"TelephonyUtilities"];
  }

  return v4;
}

- (TUConversationActivityContext)activityContext
{
  metadata = [(TUConversationActivity *)self metadata];
  context = [metadata context];

  return context;
}

- (void)setActivityContext:(id)context
{
  v8 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = contextCopy;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "[WARN] Not setting activity context: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)lookupApplicationNameForBundleIdentifier:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1956FD000, log, OS_LOG_TYPE_ERROR, "Lookup failed when trying to retrieve a name for bundle ID %@ with error %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end