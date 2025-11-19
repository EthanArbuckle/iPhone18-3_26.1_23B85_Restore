@interface TUConversationActivity
+ (id)lookupApplicationNameForBundleIdentifier:(id)a3;
+ (id)placeholderActivity;
- (BOOL)isEligibleForHandoff;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConversationActivity:(id)a3;
- (BOOL)isEquivalentToActivity:(id)a3;
- (BOOL)isPlaceholderActivity;
- (BOOL)isScreenSharingActivity;
- (BOOL)isStaticActivity;
- (NSString)representativeBundleIdentifier;
- (TUConversationActivity)initWithBundleIdentifier:(id)a3 metadata:(id)a4 applicationContext:(id)a5 uuid:(id)a6 activityIdentifier:(id)a7;
- (TUConversationActivity)initWithBundleIdentifier:(id)a3 metadata:(id)a4 applicationContext:(id)a5 uuid:(id)a6 activityIdentifier:(id)a7 fallbackApplicationName:(id)a8;
- (TUConversationActivity)initWithCoder:(id)a3;
- (TUConversationActivity)initWithCreationRequest:(id)a3 bundleIdentifier:(id)a4 systemActivity:(BOOL)a5 requiresParticipantTranslation:(BOOL)a6;
- (TUConversationActivityContext)activityContext;
- (id)concatenatedDescription;
- (id)concatenatedMetadataDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)localizedApplicationName;
- (id)representativeDisplayName;
- (id)sanitizedCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setActivityContext:(id)a3;
- (void)setBundleIdentifier:(id)a3;
@end

@implementation TUConversationActivity

- (TUConversationActivity)initWithBundleIdentifier:(id)a3 metadata:(id)a4 applicationContext:(id)a5 uuid:(id)a6 activityIdentifier:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12)
  {
    v17 = [objc_opt_class() lookupApplicationNameForBundleIdentifier:v12];
  }

  else
  {
    v17 = 0;
  }

  v18 = [(TUConversationActivity *)self initWithBundleIdentifier:v12 metadata:v13 applicationContext:v14 uuid:v15 activityIdentifier:v16 fallbackApplicationName:v17];

  return v18;
}

- (TUConversationActivity)initWithBundleIdentifier:(id)a3 metadata:(id)a4 applicationContext:(id)a5 uuid:(id)a6 activityIdentifier:(id)a7 fallbackApplicationName:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v36.receiver = self;
  v36.super_class = TUConversationActivity;
  v20 = [(TUConversationActivity *)&v36 init];
  if (v20)
  {
    v21 = [v17 copy];
    v22 = *(v20 + 2);
    *(v20 + 2) = v21;

    v23 = [v18 copy];
    v24 = *(v20 + 5);
    *(v20 + 5) = v23;

    v25 = [v14 copy];
    v26 = *(v20 + 4);
    *(v20 + 4) = v25;

    v27 = [v16 copy];
    v28 = *(v20 + 3);
    *(v20 + 3) = v27;

    v29 = [v15 copy];
    v30 = *(v20 + 6);
    *(v20 + 6) = v29;

    v20[8] = 1;
    v31 = [MEMORY[0x1E695DF00] now];
    v32 = *(v20 + 9);
    *(v20 + 9) = v31;

    v33 = [v19 copy];
    v34 = *(v20 + 10);
    *(v20 + 10) = v33;

    v20[11] = 0;
    *(v20 + 9) = 1;
  }

  return v20;
}

- (TUConversationActivity)initWithCreationRequest:(id)a3 bundleIdentifier:(id)a4 systemActivity:(BOOL)a5 requiresParticipantTranslation:(BOOL)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [v11 metadata];
  v13 = [v12 sanitizedCopy];

  v14 = [v11 applicationContext];
  v15 = [v11 UUID];
  v16 = [v11 activityIdentifier];
  v17 = [(TUConversationActivity *)self initWithBundleIdentifier:v10 metadata:v13 applicationContext:v14 uuid:v15 activityIdentifier:v16];

  v17->_requiresParticipantTranslation = a6;
  v17->_systemActivity = a5;
  v18 = [v11 staticIdentifier];

  staticIdentifier = v17->_staticIdentifier;
  v17->_staticIdentifier = v18;

  return v17;
}

+ (id)placeholderActivity
{
  v2 = [TUConversationActivity alloc];
  v3 = [MEMORY[0x1E695DEF0] data];
  v4 = [MEMORY[0x1E696AFB0] UUID];
  v5 = [(TUConversationActivity *)v2 initWithMetadata:0 applicationContext:v3 uuid:v4 activityIdentifier:@"com.apple.groupactivities.placeholder"];

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUConversationActivity *)self UUID];
  [v3 appendFormat:@" UUID=%@", v4];

  v5 = [(TUConversationActivity *)self bundleIdentifier];
  [v3 appendFormat:@" bundleIdentifier=%@", v5];

  v6 = [(TUConversationActivity *)self activityIdentifier];
  [v3 appendFormat:@" activityIdentifier=%@", v6];

  v7 = [(TUConversationActivity *)self metadata];
  [v3 appendFormat:@" metadata=%@", v7];

  [v3 appendFormat:@" isSupported=%d", -[TUConversationActivity isSupported](self, "isSupported")];
  v8 = [(TUConversationActivity *)self originator];
  [v3 appendFormat:@" originator=%@", v8];

  v9 = [(TUConversationActivity *)self timestamp];
  [v3 appendFormat:@" timestamp=%@", v9];

  v10 = [(TUConversationActivity *)self trustedFromHandle];
  [v3 appendFormat:@" trustedFromHandle=%@", v10];

  v11 = [(TUConversationActivity *)self fallbackApplicationName];

  if (v11)
  {
    v12 = [(TUConversationActivity *)self fallbackApplicationName];
    [v3 appendFormat:@" fallbackApplicationName=%@", v12];
  }

  v13 = [(TUConversationActivity *)self activationSceneIdentifier];

  if (v13)
  {
    v14 = [(TUConversationActivity *)self activationSceneIdentifier];
    [v3 appendFormat:@" activationSceneIdentifier=%@", v14];
  }

  v15 = objc_opt_self();
  v16 = [v15 isSystemActivity];

  if (v16)
  {
    v17 = objc_opt_self();
    [v3 appendFormat:@" self.isSystemActivity=%d", objc_msgSend(v17, "isSystemActivity")];
  }

  v18 = objc_opt_self();
  v19 = [v18 isPlaceholderActivity];

  if (v19)
  {
    v20 = objc_opt_self();
    [v3 appendFormat:@" self.isPlaceholderActivity=%d", objc_msgSend(v20, "isPlaceholderActivity")];
  }

  v21 = objc_opt_self();
  v22 = [v21 startWhenStaged];

  if (v22)
  {
    v23 = objc_opt_self();
    [v3 appendFormat:@" self.startWhenStaged=%d", objc_msgSend(v23, "startWhenStaged")];
  }

  if ([(TUConversationActivity *)self isStaticActivity])
  {
    [v3 appendFormat:@" isStaticActivity=%d", -[TUConversationActivity isStaticActivity](self, "isStaticActivity")];
  }

  v24 = objc_opt_self();
  v25 = [v24 requiresParticipantTranslation];

  if ((v25 & 1) == 0)
  {
    v26 = objc_opt_self();
    [v3 appendFormat:@" self.requiresParticipantTranslation=%d", objc_msgSend(v26, "requiresParticipantTranslation")];
  }

  [v3 appendString:@">"];
  v27 = [v3 copy];

  return v27;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationActivity *)self isEqualToConversationActivity:v4];

  return v5;
}

- (BOOL)isEquivalentToActivity:(id)a3
{
  v7 = a3;
  v8 = [(TUConversationActivity *)self bundleIdentifier];
  v9 = [v7 bundleIdentifier];
  if (!TUObjectsAreEqualOrNil(v8, v9))
  {
    LOBYTE(v11) = 0;
    goto LABEL_21;
  }

  v10 = [(TUConversationActivity *)self metadata];
  if (!v10)
  {
    v3 = [v7 metadata];
    if (!v3)
    {
      v22 = 0;
LABEL_9:
      v12 = [(TUConversationActivity *)self applicationContext];
      v13 = [v7 applicationContext];
      if ([v12 isEqual:v13])
      {
        v21 = v3;
        v14 = [(TUConversationActivity *)self activityIdentifier];
        v19 = [v7 activityIdentifier];
        v20 = v14;
        if ([v14 isEqual:?] && (v15 = -[TUConversationActivity isPlaceholderActivity](self, "isPlaceholderActivity"), v15 == objc_msgSend(v7, "isPlaceholderActivity")) && (v16 = -[TUConversationActivity startWhenStaged](self, "startWhenStaged"), v16 == objc_msgSend(v7, "startWhenStaged")))
        {
          v18 = [(TUConversationActivity *)self requiresParticipantTranslation];
          v11 = v18 ^ [v7 requiresParticipantTranslation] ^ 1;
        }

        else
        {
          LOBYTE(v11) = 0;
        }

        v3 = v21;
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

  v4 = [(TUConversationActivity *)self metadata];
  v5 = [v7 metadata];
  if ([v4 isEquivalentToActivityMetadata:v5])
  {
    v22 = 1;
    goto LABEL_9;
  }

  LOBYTE(v11) = 0;
LABEL_17:

LABEL_18:
  if (!v10)
  {
  }

LABEL_21:
  return v11;
}

- (BOOL)isEqualToConversationActivity:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationActivity *)self bundleIdentifier];
  v6 = [v4 bundleIdentifier];
  if (TUObjectsAreEqualOrNil(v5, v6))
  {
    v7 = [(TUConversationActivity *)self metadata];
    v8 = [v4 metadata];
    if (!TUObjectsAreEqualOrNil(v7, v8))
    {
      v15 = 0;
LABEL_40:

      goto LABEL_41;
    }

    v9 = [(TUConversationActivity *)self applicationContext];
    v10 = [v4 applicationContext];
    if (![v9 isEqualToData:v10])
    {
      v15 = 0;
LABEL_39:

      goto LABEL_40;
    }

    v11 = [(TUConversationActivity *)self UUID];
    v12 = [v4 UUID];
    if (![v11 isEqual:v12])
    {
      v15 = 0;
LABEL_38:

      goto LABEL_39;
    }

    v42 = v12;
    v13 = [(TUConversationActivity *)self activityIdentifier];
    [v4 activityIdentifier];
    v41 = v43 = v13;
    if ([v13 isEqualToString:?])
    {
      v40 = v11;
      v14 = [(TUConversationActivity *)self isSupported];
      if (v14 == [v4 isSupported])
      {
        v16 = [(TUConversationActivity *)self originator];
        v38 = [v4 originator];
        v39 = v16;
        if (TUObjectsAreEqualOrNil(v16, v38))
        {
          v17 = [(TUConversationActivity *)self timestamp];
          v36 = [v4 timestamp];
          v37 = v17;
          if ([v17 isEqualToDate:?])
          {
            v18 = [(TUConversationActivity *)self fallbackApplicationName];
            v34 = [v4 fallbackApplicationName];
            v35 = v18;
            if (TUObjectsAreEqualOrNil(v18, v34) && (v19 = -[TUConversationActivity isSystemActivity](self, "isSystemActivity"), v19 == [v4 isSystemActivity]))
            {
              v20 = [(TUConversationActivity *)self staticIdentifier];
              v32 = [v4 staticIdentifier];
              v33 = v20;
              if (TUObjectsAreEqualOrNil(v20, v32) && (v21 = -[TUConversationActivity isPlaceholderActivity](self, "isPlaceholderActivity"), v21 == [v4 isPlaceholderActivity]))
              {
                v22 = [(TUConversationActivity *)self trustedFromHandle];
                v30 = [v4 trustedFromHandle];
                v31 = v22;
                if (TUObjectsAreEqualOrNil(v22, v30) && (v23 = -[TUConversationActivity startWhenStaged](self, "startWhenStaged"), v23 == [v4 startWhenStaged]))
                {
                  v24 = [(TUConversationActivity *)self activationSceneIdentifier];
                  v29 = [v4 activationSceneIdentifier];
                  if (TUObjectsAreEqualOrNil(v24, v29) && (v25 = -[TUConversationActivity requiresParticipantTranslation](self, "requiresParticipantTranslation"), v25 == [v4 requiresParticipantTranslation]))
                  {
                    v28 = [(TUConversationActivity *)self screenShareAttributes];
                    v26 = [v4 screenShareAttributes];
                    v15 = TUObjectsAreEqualOrNil(v28, v26);
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

                v11 = v40;
                v12 = v42;
              }

              else
              {
                v15 = 0;
                v11 = v40;
                v12 = v42;
              }
            }

            else
            {
              v15 = 0;
              v11 = v40;
              v12 = v42;
            }
          }

          else
          {
            v15 = 0;
            v11 = v40;
            v12 = v42;
          }
        }

        else
        {
          v15 = 0;
          v11 = v40;
          v12 = v42;
        }

        goto LABEL_37;
      }

      v15 = 0;
      v11 = v40;
    }

    else
    {
      v15 = 0;
    }

    v12 = v42;
LABEL_37:

    goto LABEL_38;
  }

  v15 = 0;
LABEL_41:

  return v15;
}

- (unint64_t)hash
{
  v36 = [(TUConversationActivity *)self bundleIdentifier];
  v3 = [v36 hash];
  v35 = [(TUConversationActivity *)self metadata];
  v4 = [v35 hash] ^ v3;
  v34 = [(TUConversationActivity *)self applicationContext];
  v5 = [v34 hash];
  v33 = [(TUConversationActivity *)self UUID];
  v6 = v4 ^ v5 ^ [v33 hash];
  v32 = [(TUConversationActivity *)self activityIdentifier];
  v7 = [v32 hash];
  if ([(TUConversationActivity *)self isSupported])
  {
    v8 = 1231;
  }

  else
  {
    v8 = 1237;
  }

  v9 = v6 ^ v7 ^ v8;
  v10 = [(TUConversationActivity *)self originator];
  v11 = [v10 hash];
  v12 = [(TUConversationActivity *)self timestamp];
  v13 = v11 ^ [v12 hash];
  v14 = [(TUConversationActivity *)self fallbackApplicationName];
  v15 = v13 ^ [v14 hash];
  if ([(TUConversationActivity *)self isSystemActivity])
  {
    v16 = 1231;
  }

  else
  {
    v16 = 1237;
  }

  v17 = v9 ^ v15 ^ v16;
  v18 = [(TUConversationActivity *)self staticIdentifier];
  v19 = [v18 hash];
  if ([(TUConversationActivity *)self isPlaceholderActivity])
  {
    v20 = 1231;
  }

  else
  {
    v20 = 1237;
  }

  v21 = v19 ^ v20;
  v22 = [(TUConversationActivity *)self trustedFromHandle];
  v23 = v21 ^ [v22 hash];
  if ([(TUConversationActivity *)self startWhenStaged])
  {
    v24 = 1231;
  }

  else
  {
    v24 = 1237;
  }

  v25 = v17 ^ v23 ^ v24;
  v26 = [(TUConversationActivity *)self activationSceneIdentifier];
  v27 = [v26 hash];
  v28 = v27 ^ [(TUConversationActivity *)self requiresParticipantTranslation];
  v29 = [(TUConversationActivity *)self screenShareAttributes];
  v30 = v28 ^ [v29 hash];

  return v25 ^ v30;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(TUConversationActivity *)self bundleIdentifier];
  v6 = [(TUConversationActivity *)self metadata];
  v7 = [(TUConversationActivity *)self applicationContext];
  v8 = [(TUConversationActivity *)self UUID];
  v9 = [(TUConversationActivity *)self activityIdentifier];
  v10 = [(TUConversationActivity *)self fallbackApplicationName];
  v11 = [v4 initWithBundleIdentifier:v5 metadata:v6 applicationContext:v7 uuid:v8 activityIdentifier:v9 fallbackApplicationName:v10];

  [v11 setSupported:{-[TUConversationActivity isSupported](self, "isSupported")}];
  v12 = [(TUConversationActivity *)self originator];
  [v11 setOriginator:v12];

  v13 = [(TUConversationActivity *)self timestamp];
  [v11 setTimestamp:v13];

  [v11 setSystemActivity:{-[TUConversationActivity isSystemActivity](self, "isSystemActivity")}];
  v14 = [(TUConversationActivity *)self staticIdentifier];
  [v11 setStaticIdentifier:v14];

  v15 = [(TUConversationActivity *)self trustedFromHandle];
  [v11 setTrustedFromHandle:v15];

  [v11 setStartWhenStaged:{-[TUConversationActivity startWhenStaged](self, "startWhenStaged")}];
  v16 = [(TUConversationActivity *)self activationSceneIdentifier];
  [v11 setActivationSceneIdentifier:v16];

  [v11 setRequiresParticipantTranslation:{-[TUConversationActivity requiresParticipantTranslation](self, "requiresParticipantTranslation")}];
  v17 = [(TUConversationActivity *)self screenShareAttributes];
  [v11 setScreenShareAttributes:v17];

  return v11;
}

- (id)sanitizedCopyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(TUConversationActivity *)self bundleIdentifier];
  v6 = [(TUConversationActivity *)self metadata];
  v7 = [v6 sanitizedCopy];
  v8 = [(TUConversationActivity *)self applicationContext];
  v9 = [(TUConversationActivity *)self UUID];
  v10 = [(TUConversationActivity *)self activityIdentifier];
  v11 = [(TUConversationActivity *)self fallbackApplicationName];
  v12 = [v4 initWithBundleIdentifier:v5 metadata:v7 applicationContext:v8 uuid:v9 activityIdentifier:v10 fallbackApplicationName:v11];

  [v12 setSupported:{-[TUConversationActivity isSupported](self, "isSupported")}];
  v13 = [(TUConversationActivity *)self originator];
  [v12 setOriginator:v13];

  v14 = [(TUConversationActivity *)self timestamp];
  [v12 setTimestamp:v14];

  [v12 setSystemActivity:{-[TUConversationActivity isSystemActivity](self, "isSystemActivity")}];
  v15 = [(TUConversationActivity *)self staticIdentifier];
  [v12 setStaticIdentifier:v15];

  v16 = [(TUConversationActivity *)self trustedFromHandle];
  [v12 setTrustedFromHandle:v16];

  [v12 setStartWhenStaged:{-[TUConversationActivity startWhenStaged](self, "startWhenStaged")}];
  v17 = [(TUConversationActivity *)self activationSceneIdentifier];
  [v12 setActivationSceneIdentifier:v17];

  [v12 setRequiresParticipantTranslation:{-[TUConversationActivity requiresParticipantTranslation](self, "requiresParticipantTranslation")}];
  v18 = [(TUConversationActivity *)self screenShareAttributes];
  [v12 setScreenShareAttributes:v18];

  return v12;
}

- (TUConversationActivity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_bundleIdentifier);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_metadata);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_applicationContext);
  v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

  if (v13)
  {
    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_UUID);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];

    if (v16)
    {
      v17 = objc_opt_class();
      v18 = NSStringFromSelector(sel_activityIdentifier);
      v19 = [v4 decodeObjectOfClass:v17 forKey:v18];

      if (v19)
      {
        v60 = v19;
        v20 = NSStringFromSelector(sel_isSupported);
        v57 = [v4 decodeBoolForKey:v20];

        v21 = objc_opt_class();
        v22 = NSStringFromSelector(sel_originator);
        obj = [v4 decodeObjectOfClass:v21 forKey:v22];

        v23 = objc_opt_class();
        v24 = NSStringFromSelector(sel_timestamp);
        v25 = [v4 decodeObjectOfClass:v23 forKey:v24];

        v26 = v25;
        if (v25)
        {
          v58 = v25;
          v27 = objc_opt_class();
          v28 = NSStringFromSelector(sel_fallbackApplicationName);
          v56 = [v4 decodeObjectOfClass:v27 forKey:v28];

          v29 = NSStringFromSelector(sel_isSystemActivity);
          v55 = [v4 decodeBoolForKey:v29];

          v30 = objc_opt_class();
          v31 = NSStringFromSelector(sel_staticIdentifier);
          v54 = [v4 decodeObjectOfClass:v30 forKey:v31];

          v32 = objc_opt_class();
          v33 = NSStringFromSelector(sel_trustedFromHandle);
          v53 = [v4 decodeObjectOfClass:v32 forKey:v33];

          v34 = NSStringFromSelector(sel_startWhenStaged);
          v52 = [v4 decodeBoolForKey:v34];

          v35 = objc_opt_class();
          v36 = NSStringFromSelector(sel_activationSceneIdentifier);
          v37 = [v4 decodeObjectOfClass:v35 forKey:v36];

          v38 = NSStringFromSelector(sel_requiresParticipantTranslation);
          v51 = [v4 decodeBoolForKey:v38];

          v39 = objc_opt_class();
          v40 = NSStringFromSelector(sel_screenShareAttributes);
          v50 = [v4 decodeObjectOfClass:v39 forKey:v40];

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
          v25 = self;
        }

        v19 = v60;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationActivity *)self bundleIdentifier];
  v6 = NSStringFromSelector(sel_bundleIdentifier);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(TUConversationActivity *)self metadata];
  v8 = NSStringFromSelector(sel_metadata);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(TUConversationActivity *)self applicationContext];
  v10 = NSStringFromSelector(sel_applicationContext);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(TUConversationActivity *)self UUID];
  v12 = NSStringFromSelector(sel_UUID);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(TUConversationActivity *)self activityIdentifier];
  v14 = NSStringFromSelector(sel_activityIdentifier);
  [v4 encodeObject:v13 forKey:v14];

  v15 = [(TUConversationActivity *)self isSupported];
  v16 = NSStringFromSelector(sel_isSupported);
  [v4 encodeBool:v15 forKey:v16];

  v17 = [(TUConversationActivity *)self originator];
  v18 = NSStringFromSelector(sel_originator);
  [v4 encodeObject:v17 forKey:v18];

  v19 = [(TUConversationActivity *)self timestamp];
  v20 = NSStringFromSelector(sel_timestamp);
  [v4 encodeObject:v19 forKey:v20];

  v21 = [(TUConversationActivity *)self fallbackApplicationName];
  v22 = NSStringFromSelector(sel_fallbackApplicationName);
  [v4 encodeObject:v21 forKey:v22];

  v23 = [(TUConversationActivity *)self isSystemActivity];
  v24 = NSStringFromSelector(sel_isSystemActivity);
  [v4 encodeBool:v23 forKey:v24];

  v25 = [(TUConversationActivity *)self staticIdentifier];
  v26 = NSStringFromSelector(sel_staticIdentifier);
  [v4 encodeObject:v25 forKey:v26];

  v27 = [(TUConversationActivity *)self trustedFromHandle];
  v28 = NSStringFromSelector(sel_trustedFromHandle);
  [v4 encodeObject:v27 forKey:v28];

  v29 = [(TUConversationActivity *)self startWhenStaged];
  v30 = NSStringFromSelector(sel_startWhenStaged);
  [v4 encodeBool:v29 forKey:v30];

  v31 = [(TUConversationActivity *)self activationSceneIdentifier];
  v32 = NSStringFromSelector(sel_activationSceneIdentifier);
  [v4 encodeObject:v31 forKey:v32];

  v33 = [(TUConversationActivity *)self requiresParticipantTranslation];
  v34 = NSStringFromSelector(sel_requiresParticipantTranslation);
  [v4 encodeBool:v33 forKey:v34];

  v36 = [(TUConversationActivity *)self screenShareAttributes];
  v35 = NSStringFromSelector(sel_screenShareAttributes);
  [v4 encodeObject:v36 forKey:v35];
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
  v2 = [(TUConversationActivity *)self metadata];
  v3 = [v2 supportsContinuationOnTV];

  return v3;
}

- (BOOL)isPlaceholderActivity
{
  v2 = [(TUConversationActivity *)self activityIdentifier];
  v3 = [v2 isEqual:@"com.apple.groupactivities.placeholder"];

  return v3;
}

- (BOOL)isStaticActivity
{
  v2 = [(TUConversationActivity *)self staticIdentifier];
  v3 = v2 != 0;

  return v3;
}

- (void)setBundleIdentifier:(id)a3
{
  v5 = a3;
  if (self->_bundleIdentifier != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_bundleIdentifier, a3);
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

    v5 = v8;
  }
}

- (id)localizedApplicationName
{
  v3 = [(TUConversationActivity *)self bundleIdentifier];

  if (v3)
  {
    v4 = objc_opt_class();
    v5 = [(TUConversationActivity *)self bundleIdentifier];
    v3 = [v4 lookupApplicationNameForBundleIdentifier:v5];

    if (![v3 length])
    {
      v6 = [(TUConversationActivity *)self fallbackApplicationName];
      v7 = [v6 length];

      if (v7)
      {
        v8 = [(TUConversationActivity *)self fallbackApplicationName];
        v9 = [v8 copy];

        v3 = v9;
      }
    }
  }

  return v3;
}

- (id)representativeDisplayName
{
  if ([(TUConversationActivity *)self isEligibleForWebBrowser])
  {
    v3 = [(TUConversationActivity *)self metadata];
    v4 = [v3 fallbackURL];
    v5 = [v4 host];
  }

  else
  {
    v5 = [(TUConversationActivity *)self localizedApplicationName];
  }

  return v5;
}

+ (id)lookupApplicationNameForBundleIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.TelephonyUtilities"])
  {
    v4 = 0;
    goto LABEL_11;
  }

  v10 = 0;
  v5 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v3 allowPlaceholder:1 error:&v10];
  v6 = v10;
  if (v6)
  {
    v7 = TUDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(TUConversationActivity *)v3 lookupApplicationNameForBundleIdentifier:v6, v7];
    }
  }

  else if (v5)
  {
    v8 = [v5 localizedName];
    goto LABEL_10;
  }

  v8 = 0;
LABEL_10:
  v4 = v8;

LABEL_11:

  return v4;
}

- (BOOL)isScreenSharingActivity
{
  v3 = [(TUConversationActivity *)self activityIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.FaceTime.ScreenSharing"];

  if (!v4)
  {
    return 0;
  }

  v5 = [(TUConversationActivity *)self bundleIdentifier];
  if ([v5 isEqualToString:@"com.apple.TelephonyUtilities"])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 isEqualToString:@"com.apple.InCallService"];
  }

  return v6;
}

- (id)concatenatedMetadataDescription
{
  v3 = [(TUConversationActivity *)self metadata];

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = [(TUConversationActivity *)self metadata];
  v5 = [v4 title];

  v6 = [(TUConversationActivity *)self metadata];
  v7 = [v6 subTitle];

  if (!v5)
  {
    if (v7)
    {
      v9 = [(TUConversationActivity *)self metadata];
      v14 = [v9 subTitle];
LABEL_9:
      v10 = v14;
      v13 = [v14 copy];
      goto LABEL_10;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_11;
  }

  if (!v7)
  {
    v9 = [(TUConversationActivity *)self metadata];
    v14 = [v9 title];
    goto LABEL_9;
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(TUConversationActivity *)self metadata];
  v10 = [v9 title];
  v11 = [(TUConversationActivity *)self metadata];
  v12 = [v11 subTitle];
  v13 = [v8 stringWithFormat:@"%@ ⋅ %@", v10, v12];

LABEL_10:
LABEL_11:

  return v13;
}

- (id)concatenatedDescription
{
  v2 = [(TUConversationActivity *)self concatenatedMetadataDescription];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
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
  v2 = [(TUConversationActivity *)self metadata];
  v3 = [v2 context];

  return v3;
}

- (void)setActivityContext:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
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