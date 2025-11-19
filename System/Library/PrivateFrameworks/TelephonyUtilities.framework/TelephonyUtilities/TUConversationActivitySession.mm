@interface TUConversationActivitySession
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConversationActivitySession:(id)a3;
- (TUConversationActivitySession)initWithActivity:(id)a3 state:(unint64_t)a4 uuid:(id)a5 endpoint:(id)a6 locallyInitiated:(BOOL)a7 timestamp:(id)a8 isFirstJoin:(BOOL)a9 activeRemoteParticipants:(id)a10 isLocalParticipantActive:(BOOL)a11 applicationState:(unint64_t)a12;
- (TUConversationActivitySession)initWithCoder:(id)a3;
- (TUConversationActivitySession)initWithTUConversationActivitySession:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)publicCopy;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)launchApplicationWithForcedURL:(id)a3 completion:(id)a4;
- (void)setPersistentSceneIdentifier:(id)a3;
@end

@implementation TUConversationActivitySession

- (TUConversationActivitySession)initWithActivity:(id)a3 state:(unint64_t)a4 uuid:(id)a5 endpoint:(id)a6 locallyInitiated:(BOOL)a7 timestamp:(id)a8 isFirstJoin:(BOOL)a9 activeRemoteParticipants:(id)a10 isLocalParticipantActive:(BOOL)a11 applicationState:(unint64_t)a12
{
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v29 = a10;
  v30.receiver = self;
  v30.super_class = TUConversationActivitySession;
  v21 = [(TUConversationActivitySession *)&v30 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_UUID, a5);
    objc_storeStrong(&v22->_activity, a3);
    v22->_state = a4;
    objc_storeStrong(&v22->_endpoint, a6);
    v22->_isLocallyInitiated = a7;
    v22->_isLightweightPrimaryInitiated = 0;
    v22->_isStageInitiated = 0;
    objc_storeStrong(&v22->_timestamp, a8);
    v22->_isFirstJoin = a9;
    objc_storeStrong(&v22->_activeRemoteParticipants, a10);
    v22->_localParticipantActive = a11;
    v22->_permittedToJoin = 0;
    v22->_usingAirplay = 0;
    v22->_distributionCount = 0;
    v22->_applicationState = a12;
    v23 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    persistentSceneIdentifiers = v22->_persistentSceneIdentifiers;
    v22->_persistentSceneIdentifiers = v23;

    primarySceneAssociationIdentifier = v22->_primarySceneAssociationIdentifier;
    v22->_primarySceneAssociationIdentifier = 0;

    v22->_didAssociateScene = 0;
  }

  return v22;
}

- (TUConversationActivitySession)initWithTUConversationActivitySession:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = TUConversationActivitySession;
  v5 = [(TUConversationActivitySession *)&v31 init];
  if (v5)
  {
    v6 = [v4 UUID];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [v4 activity];
    activity = v5->_activity;
    v5->_activity = v8;

    v5->_state = [v4 state];
    v10 = [v4 endpoint];
    endpoint = v5->_endpoint;
    v5->_endpoint = v10;

    v5->_isLocallyInitiated = [v4 isLocallyInitiated];
    v5->_isLightweightPrimaryInitiated = [v4 isLightweightPrimaryInitiated];
    v5->_isStageInitiated = [v4 isStageInitiated];
    v12 = [v4 timestamp];
    timestamp = v5->_timestamp;
    v5->_timestamp = v12;

    v5->_isFirstJoin = [v4 isFirstJoin];
    v14 = [v4 activeRemoteParticipants];
    activeRemoteParticipants = v5->_activeRemoteParticipants;
    v5->_activeRemoteParticipants = v14;

    v5->_localParticipantActive = [v4 isLocalParticipantActive];
    v5->_distributionCount = [v4 distributionCount];
    v5->_permittedToJoin = [v4 isPermittedToJoin];
    v5->_usingAirplay = [v4 isUsingAirplay];
    v5->_persistentSceneIsEligibleForAutoClose = [v4 persistentSceneIsEligibleForAutoClose];
    v16 = [v4 persistentSceneIdentifiers];
    persistentSceneIdentifiers = v5->_persistentSceneIdentifiers;
    v5->_persistentSceneIdentifiers = v16;

    v18 = [v4 primarySceneAssociationIdentifier];
    primarySceneAssociationIdentifier = v5->_primarySceneAssociationIdentifier;
    v5->_primarySceneAssociationIdentifier = v18;

    v5->_didAssociateScene = [v4 didAssociateScene];
    v5->_applicationState = [v4 applicationState];
    v20 = [v4 clientAudioSessionID];
    clientAudioSessionID = v5->_clientAudioSessionID;
    v5->_clientAudioSessionID = v20;

    v22 = [v4 externalParticipants];
    externalParticipants = v5->_externalParticipants;
    v5->_externalParticipants = v22;

    v24 = [v4 localCreationTimestamp];
    localCreationTimestamp = v5->_localCreationTimestamp;
    v5->_localCreationTimestamp = v24;

    v26 = [v4 permittedJoinTimestamp];
    permittedJoinTimestamp = v5->_permittedJoinTimestamp;
    v5->_permittedJoinTimestamp = v26;

    v28 = [v4 participantIdentifierMap];
    participantIdentifierMap = v5->_participantIdentifierMap;
    v5->_participantIdentifierMap = v28;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUConversationActivitySession *)self activity];
  [v3 appendFormat:@" activity=%@", v4];

  [v3 appendFormat:@" state=%lu", -[TUConversationActivitySession state](self, "state")];
  v5 = [(TUConversationActivitySession *)self UUID];
  [v3 appendFormat:@" UUID=%@", v5];

  v6 = [(TUConversationActivitySession *)self timestamp];
  [v3 appendFormat:@" timestamp=%@", v6];

  v7 = [(TUConversationActivitySession *)self endpoint];
  [v3 appendFormat:@" endpoint=%@", v7];

  v8 = [(TUConversationActivitySession *)self clientAudioSessionID];
  [v3 appendFormat:@" audioSessionID=%@", v8];

  if ([(TUConversationActivitySession *)self isLocallyInitiated])
  {
    [v3 appendFormat:@" isLocallyInitiated=%d", -[TUConversationActivitySession isLocallyInitiated](self, "isLocallyInitiated")];
  }

  if ([(TUConversationActivitySession *)self isLightweightPrimaryInitiated])
  {
    [v3 appendFormat:@" isLightweightPrimaryInitiated=%d", -[TUConversationActivitySession isLightweightPrimaryInitiated](self, "isLightweightPrimaryInitiated")];
  }

  if ([(TUConversationActivitySession *)self isStageInitiated])
  {
    [v3 appendFormat:@" isStageInitiated=%d", -[TUConversationActivitySession isStageInitiated](self, "isStageInitiated")];
  }

  if ([(TUConversationActivitySession *)self isFirstJoin])
  {
    [v3 appendFormat:@" isFirstJoin=%d", -[TUConversationActivitySession isFirstJoin](self, "isFirstJoin")];
  }

  if ([(TUConversationActivitySession *)self isPermittedToJoin])
  {
    [v3 appendFormat:@" isPermittedToJoin=%d", -[TUConversationActivitySession isPermittedToJoin](self, "isPermittedToJoin")];
  }

  if ([(TUConversationActivitySession *)self isUsingAirplay])
  {
    [v3 appendFormat:@" isUsingAirplay=%d", -[TUConversationActivitySession isUsingAirplay](self, "isUsingAirplay")];
  }

  if ([(TUConversationActivitySession *)self isLocalParticipantActive])
  {
    [v3 appendFormat:@" isLocalParticipantActive=%d", -[TUConversationActivitySession isLocalParticipantActive](self, "isLocalParticipantActive")];
  }

  v9 = [(TUConversationActivitySession *)self activeRemoteParticipants];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [(TUConversationActivitySession *)self activeRemoteParticipants];
    v12 = [v11 allObjects];
    v13 = [v12 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" activeRemoteParticipants=%@", v13];
  }

  if ([(TUConversationActivitySession *)self distributionCount])
  {
    [v3 appendFormat:@" distributionCount=%ld", -[TUConversationActivitySession distributionCount](self, "distributionCount")];
  }

  v14 = [(TUConversationActivitySession *)self persistentSceneIdentifiers];

  if (v14)
  {
    v15 = [(TUConversationActivitySession *)self persistentSceneIdentifiers];
    [v3 appendFormat:@" persistentSceneIdentifiers=%@", v15];
  }

  v16 = [(TUConversationActivitySession *)self primarySceneAssociationIdentifier];

  if (v16)
  {
    v17 = [(TUConversationActivitySession *)self primarySceneAssociationIdentifier];
    [v3 appendFormat:@" primarySceneAssociationIdentifier=%@", v17];
  }

  if ([(TUConversationActivitySession *)self didAssociateScene])
  {
    [v3 appendFormat:@" didAssociateScene=%d", -[TUConversationActivitySession didAssociateScene](self, "didAssociateScene")];
  }

  if ([(TUConversationActivitySession *)self persistentSceneIsEligibleForAutoClose])
  {
    [v3 appendFormat:@" persistentSceneIsEligibleForAutoClose=%d", -[TUConversationActivitySession persistentSceneIsEligibleForAutoClose](self, "persistentSceneIsEligibleForAutoClose")];
  }

  [v3 appendFormat:@" applicationState=%lu", -[TUConversationActivitySession applicationState](self, "applicationState")];
  v18 = [(TUConversationActivitySession *)self externalParticipants];
  [v3 appendFormat:@" externalParticipants=%@", v18];

  [v3 appendString:@">"];
  v19 = [v3 copy];

  return v19;
}

- (void)setPersistentSceneIdentifier:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v8 count:1];

  [(TUConversationActivitySession *)self setPersistentSceneIdentifiers:v6, v8, v9];
  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationActivitySession *)self isEqualToConversationActivitySession:v4];

  return v5;
}

- (BOOL)isEqualToConversationActivitySession:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationActivitySession *)self UUID];
  v6 = [v4 UUID];
  if ([v5 isEqual:v6])
  {
    v7 = [(TUConversationActivitySession *)self timestamp];
    [v7 timeIntervalSince1970];
    v9 = v8;
    v10 = [v4 timestamp];
    [v10 timeIntervalSince1970];
    if (v9 == v11 && (v12 = -[TUConversationActivitySession state](self, "state"), v12 == [v4 state]))
    {
      v13 = [(TUConversationActivitySession *)self endpoint];
      v14 = [v4 endpoint];
      if (v13 == v14 && (v15 = -[TUConversationActivitySession isLocallyInitiated](self, "isLocallyInitiated"), v15 == [v4 isLocallyInitiated]) && (v16 = -[TUConversationActivitySession isLightweightPrimaryInitiated](self, "isLightweightPrimaryInitiated"), v16 == objc_msgSend(v4, "isLightweightPrimaryInitiated")) && (v17 = -[TUConversationActivitySession isStageInitiated](self, "isStageInitiated"), v17 == objc_msgSend(v4, "isStageInitiated")) && (v18 = -[TUConversationActivitySession isFirstJoin](self, "isFirstJoin"), v18 == objc_msgSend(v4, "isFirstJoin")) && (v19 = -[TUConversationActivitySession isPermittedToJoin](self, "isPermittedToJoin"), v19 == objc_msgSend(v4, "isPermittedToJoin")))
      {
        v22 = [(TUConversationActivitySession *)self activeRemoteParticipants];
        v23 = [v4 activeRemoteParticipants];
        if (TUObjectsAreEqualOrNil(v22, v23))
        {
          v46 = v22;
          v24 = [(TUConversationActivitySession *)self isLocalParticipantActive];
          if (v24 == [v4 isLocalParticipantActive] && (v25 = -[TUConversationActivitySession persistentSceneIsEligibleForAutoClose](self, "persistentSceneIsEligibleForAutoClose"), v25 == objc_msgSend(v4, "persistentSceneIsEligibleForAutoClose")))
          {
            v26 = [(TUConversationActivitySession *)self externalParticipants];
            v27 = [v4 externalParticipants];
            v45 = v26;
            v28 = v26 == v27;
            v22 = v46;
            if (v28)
            {
              v44 = v27;
              v29 = [(TUConversationActivitySession *)self persistentSceneIdentifiers];
              v42 = [v4 persistentSceneIdentifiers];
              v43 = v29;
              if (TUObjectsAreEqualOrNil(v29, v42))
              {
                v30 = [(TUConversationActivitySession *)self primarySceneAssociationIdentifier];
                v40 = [v4 primarySceneAssociationIdentifier];
                v41 = v30;
                if (TUObjectsAreEqualOrNil(v30, v40) && (v31 = -[TUConversationActivitySession didAssociateScene](self, "didAssociateScene"), v31 == [v4 didAssociateScene]) && (v32 = -[TUConversationActivitySession distributionCount](self, "distributionCount"), v32 == objc_msgSend(v4, "distributionCount")) && (v33 = -[TUConversationActivitySession isUsingAirplay](self, "isUsingAirplay"), v33 == objc_msgSend(v4, "isUsingAirplay")) && (v34 = -[TUConversationActivitySession applicationState](self, "applicationState"), v34 == objc_msgSend(v4, "applicationState")))
                {
                  v35 = [(TUConversationActivitySession *)self clientAudioSessionID];
                  v38 = [v4 clientAudioSessionID];
                  v39 = v35;
                  if (v35 == v38)
                  {
                    v37 = [(TUConversationActivitySession *)self participantIdentifierMap];
                    v36 = [v4 participantIdentifierMap];
                    v20 = TUObjectsAreEqualOrNil(v37, v36);
                  }

                  else
                  {
                    v20 = 0;
                  }
                }

                else
                {
                  v20 = 0;
                }
              }

              else
              {
                v20 = 0;
              }

              v22 = v46;
              v27 = v44;
            }

            else
            {
              v20 = 0;
            }
          }

          else
          {
            v20 = 0;
            v22 = v46;
          }
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (unint64_t)hash
{
  v40 = [(TUConversationActivitySession *)self UUID];
  v3 = [v40 hash];
  v39 = [(TUConversationActivitySession *)self activity];
  v4 = [v39 hash] ^ v3;
  v5 = [(TUConversationActivitySession *)self timestamp];
  v6 = [v5 hash];
  v7 = v4 ^ v6 ^ [(TUConversationActivitySession *)self state];
  v8 = [(TUConversationActivitySession *)self endpoint];
  v9 = [v8 hash];
  if ([(TUConversationActivitySession *)self isLocallyInitiated])
  {
    v10 = 1231;
  }

  else
  {
    v10 = 1237;
  }

  v11 = v7 ^ v9 ^ v10;
  if ([(TUConversationActivitySession *)self isLightweightPrimaryInitiated])
  {
    v12 = 1231;
  }

  else
  {
    v12 = 1237;
  }

  if ([(TUConversationActivitySession *)self isStageInitiated])
  {
    v13 = 1231;
  }

  else
  {
    v13 = 1237;
  }

  v14 = v12 ^ v13;
  if ([(TUConversationActivitySession *)self isFirstJoin])
  {
    v15 = 1231;
  }

  else
  {
    v15 = 1237;
  }

  v16 = v11 ^ v14 ^ v15;
  if ([(TUConversationActivitySession *)self isPermittedToJoin])
  {
    v17 = 1231;
  }

  else
  {
    v17 = 1237;
  }

  v18 = [(TUConversationActivitySession *)self activeRemoteParticipants];
  v19 = v17 ^ [v18 hash];
  if ([(TUConversationActivitySession *)self isLocalParticipantActive])
  {
    v20 = 1231;
  }

  else
  {
    v20 = 1237;
  }

  v21 = v19 ^ v20;
  if ([(TUConversationActivitySession *)self persistentSceneIsEligibleForAutoClose])
  {
    v22 = 1231;
  }

  else
  {
    v22 = 1237;
  }

  v23 = v16 ^ v21 ^ v22;
  v24 = [(TUConversationActivitySession *)self persistentSceneIdentifiers];
  v25 = [v24 hash];
  v26 = [(TUConversationActivitySession *)self primarySceneAssociationIdentifier];
  v27 = v25 ^ [v26 hash];
  if ([(TUConversationActivitySession *)self didAssociateScene])
  {
    v28 = 1231;
  }

  else
  {
    v28 = 1237;
  }

  v29 = v27 ^ v28 ^ [(TUConversationActivitySession *)self distributionCount];
  if ([(TUConversationActivitySession *)self isUsingAirplay])
  {
    v30 = 1231;
  }

  else
  {
    v30 = 1237;
  }

  v31 = v23 ^ v29 ^ v30 ^ [(TUConversationActivitySession *)self applicationState];
  v32 = [(TUConversationActivitySession *)self clientAudioSessionID];
  v33 = [v32 hash];
  v34 = [(TUConversationActivitySession *)self participantIdentifierMap];
  v35 = v33 ^ [v34 hash];
  v36 = [(TUConversationActivitySession *)self externalParticipants];
  v37 = v35 ^ [v36 hash];

  return v31 ^ v37;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TUConversationActivitySession allocWithZone:a3];

  return [(TUConversationActivitySession *)v4 initWithTUConversationActivitySession:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TUMutableConversationActivitySession allocWithZone:a3];

  return [(TUConversationActivitySession *)v4 initWithTUConversationActivitySession:self];
}

- (TUConversationActivitySession)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromSelector(sel_activity);
  v61 = [v3 decodeObjectOfClass:v4 forKey:v5];

  v6 = NSStringFromSelector(sel_state);
  v60 = [v3 decodeIntegerForKey:v6];

  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_endpoint);
  v63 = [v3 decodeObjectOfClass:v7 forKey:v8];

  v9 = NSStringFromSelector(sel_isLocallyInitiated);
  v10 = [v3 decodeBoolForKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_UUID);
  v13 = [v3 decodeObjectOfClass:v11 forKey:v12];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_timestamp);
  v16 = [v3 decodeObjectOfClass:v14 forKey:v15];

  v17 = NSStringFromSelector(sel_isFirstJoin);
  v18 = [v3 decodeBoolForKey:v17];

  v19 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  v22 = NSStringFromSelector(sel_activeRemoteParticipants);
  v23 = [v3 decodeObjectOfClasses:v21 forKey:v22];

  v24 = NSStringFromSelector(sel_isLocalParticipantActive);
  LOBYTE(v22) = [v3 decodeBoolForKey:v24];

  v25 = NSStringFromSelector(sel_applicationState);
  v26 = [v3 decodeIntegerForKey:v25];

  LOBYTE(v59) = v22;
  LOBYTE(v58) = v18;
  v27 = [(TUConversationActivitySession *)self initWithActivity:v61 state:v60 uuid:v13 endpoint:v63 locallyInitiated:v10 timestamp:v16 isFirstJoin:v58 activeRemoteParticipants:v23 isLocalParticipantActive:v59 applicationState:v26];
  v28 = NSStringFromSelector(sel_distributionCount);
  -[TUConversationActivitySession setDistributionCount:](v27, "setDistributionCount:", [v3 decodeIntegerForKey:v28]);

  v29 = NSStringFromSelector(sel_isLightweightPrimaryInitiated);
  -[TUConversationActivitySession setIsLightweightPrimaryInitiated:](v27, "setIsLightweightPrimaryInitiated:", [v3 decodeBoolForKey:v29]);

  v30 = NSStringFromSelector(sel_isStageInitiated);
  -[TUConversationActivitySession setIsStageInitiated:](v27, "setIsStageInitiated:", [v3 decodeBoolForKey:v30]);

  v31 = NSStringFromSelector(sel_isPermittedToJoin);
  -[TUConversationActivitySession setPermittedToJoin:](v27, "setPermittedToJoin:", [v3 decodeBoolForKey:v31]);

  v32 = NSStringFromSelector(sel_persistentSceneIsEligibleForAutoClose);
  -[TUConversationActivitySession setPersistentSceneIsEligibleForAutoClose:](v27, "setPersistentSceneIsEligibleForAutoClose:", [v3 decodeBoolForKey:v32]);

  v33 = objc_opt_class();
  v34 = NSStringFromSelector(sel_externalParticipants);
  v35 = [v3 decodeArrayOfObjectsOfClass:v33 forKey:v34];
  [(TUConversationActivitySession *)v27 setExternalParticipants:v35];

  v36 = NSStringFromSelector(sel_isUsingAirplay);
  -[TUConversationActivitySession setUsingAirplay:](v27, "setUsingAirplay:", [v3 decodeBoolForKey:v36]);

  v37 = objc_opt_class();
  v38 = NSStringFromSelector(sel_persistentSceneIdentifiers);
  v39 = [v3 decodeArrayOfObjectsOfClass:v37 forKey:v38];
  [(TUConversationActivitySession *)v27 setPersistentSceneIdentifiers:v39];

  v40 = objc_opt_class();
  v41 = NSStringFromSelector(sel_primarySceneAssociationIdentifier);
  v42 = [v3 decodeObjectOfClass:v40 forKey:v41];
  [(TUConversationActivitySession *)v27 setPrimarySceneAssociationIdentifier:v42];

  v43 = NSStringFromSelector(sel_didAssociateScene);
  -[TUConversationActivitySession setDidAssociateScene:](v27, "setDidAssociateScene:", [v3 decodeBoolForKey:v43]);

  v44 = objc_opt_class();
  v45 = NSStringFromSelector(sel_clientAudioSessionID);
  v46 = [v3 decodeObjectOfClass:v44 forKey:v45];
  [(TUConversationActivitySession *)v27 setClientAudioSessionID:v46];

  v47 = objc_opt_class();
  v48 = NSStringFromSelector(sel_localCreationTimestamp);
  v49 = [v3 decodeObjectOfClass:v47 forKey:v48];
  [(TUConversationActivitySession *)v27 setLocalCreationTimestamp:v49];

  v50 = objc_opt_class();
  v51 = NSStringFromSelector(sel_permittedJoinTimestamp);
  v52 = [v3 decodeObjectOfClass:v50 forKey:v51];
  [(TUConversationActivitySession *)v27 setPermittedJoinTimestamp:v52];

  v53 = objc_opt_class();
  v54 = objc_opt_class();
  v55 = NSStringFromSelector(sel_participantIdentifierMap);
  v56 = [v3 decodeDictionaryWithKeysOfClass:v53 objectsOfClass:v54 forKey:v55];

  [(TUConversationActivitySession *)v27 setParticipantIdentifierMap:v56];
  return v27;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationActivitySession *)self UUID];
  v6 = NSStringFromSelector(sel_UUID);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(TUConversationActivitySession *)self timestamp];
  v8 = NSStringFromSelector(sel_timestamp);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(TUConversationActivitySession *)self activity];
  v10 = NSStringFromSelector(sel_activity);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(TUConversationActivitySession *)self state];
  v12 = NSStringFromSelector(sel_state);
  [v4 encodeInteger:v11 forKey:v12];

  v13 = [(TUConversationActivitySession *)self endpoint];
  v14 = NSStringFromSelector(sel_endpoint);
  [v4 encodeObject:v13 forKey:v14];

  v15 = [(TUConversationActivitySession *)self isLocallyInitiated];
  v16 = NSStringFromSelector(sel_isLocallyInitiated);
  [v4 encodeBool:v15 forKey:v16];

  v17 = [(TUConversationActivitySession *)self isLightweightPrimaryInitiated];
  v18 = NSStringFromSelector(sel_isLightweightPrimaryInitiated);
  [v4 encodeBool:v17 forKey:v18];

  v19 = [(TUConversationActivitySession *)self isStageInitiated];
  v20 = NSStringFromSelector(sel_isStageInitiated);
  [v4 encodeBool:v19 forKey:v20];

  v21 = [(TUConversationActivitySession *)self isFirstJoin];
  v22 = NSStringFromSelector(sel_isFirstJoin);
  [v4 encodeBool:v21 forKey:v22];

  v23 = [(TUConversationActivitySession *)self activeRemoteParticipants];
  v24 = NSStringFromSelector(sel_activeRemoteParticipants);
  [v4 encodeObject:v23 forKey:v24];

  v25 = [(TUConversationActivitySession *)self isLocalParticipantActive];
  v26 = NSStringFromSelector(sel_isLocalParticipantActive);
  [v4 encodeBool:v25 forKey:v26];

  v27 = [(TUConversationActivitySession *)self distributionCount];
  v28 = NSStringFromSelector(sel_distributionCount);
  [v4 encodeInteger:v27 forKey:v28];

  v29 = [(TUConversationActivitySession *)self isPermittedToJoin];
  v30 = NSStringFromSelector(sel_isPermittedToJoin);
  [v4 encodeBool:v29 forKey:v30];

  v31 = [(TUConversationActivitySession *)self persistentSceneIsEligibleForAutoClose];
  v32 = NSStringFromSelector(sel_persistentSceneIsEligibleForAutoClose);
  [v4 encodeBool:v31 forKey:v32];

  v33 = [(TUConversationActivitySession *)self persistentSceneIdentifiers];
  v34 = NSStringFromSelector(sel_persistentSceneIdentifiers);
  [v4 encodeObject:v33 forKey:v34];

  v35 = [(TUConversationActivitySession *)self primarySceneAssociationIdentifier];
  v36 = NSStringFromSelector(sel_primarySceneAssociationIdentifier);
  [v4 encodeObject:v35 forKey:v36];

  v37 = [(TUConversationActivitySession *)self didAssociateScene];
  v38 = NSStringFromSelector(sel_didAssociateScene);
  [v4 encodeBool:v37 forKey:v38];

  v39 = [(TUConversationActivitySession *)self externalParticipants];
  v40 = NSStringFromSelector(sel_externalParticipants);
  [v4 encodeObject:v39 forKey:v40];

  v41 = [(TUConversationActivitySession *)self isUsingAirplay];
  v42 = NSStringFromSelector(sel_isUsingAirplay);
  [v4 encodeBool:v41 forKey:v42];

  v43 = [(TUConversationActivitySession *)self applicationState];
  v44 = NSStringFromSelector(sel_applicationState);
  [v4 encodeInteger:v43 forKey:v44];

  v45 = [(TUConversationActivitySession *)self clientAudioSessionID];
  v46 = NSStringFromSelector(sel_clientAudioSessionID);
  [v4 encodeObject:v45 forKey:v46];

  v47 = [(TUConversationActivitySession *)self localCreationTimestamp];
  v48 = NSStringFromSelector(sel_localCreationTimestamp);
  [v4 encodeObject:v47 forKey:v48];

  v49 = [(TUConversationActivitySession *)self permittedJoinTimestamp];
  v50 = NSStringFromSelector(sel_permittedJoinTimestamp);
  [v4 encodeObject:v49 forKey:v50];

  v52 = [(TUConversationActivitySession *)self participantIdentifierMap];
  v51 = NSStringFromSelector(sel_participantIdentifierMap);
  [v4 encodeObject:v52 forKey:v51];
}

- (void)launchApplicationWithForcedURL:(id)a3 completion:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(TUConversationActivitySession *)self activity];
  v9 = [v8 representativeBundleIdentifier];

  if (v9 && [v9 length])
  {
    v10 = TUDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(TUConversationActivitySession *)self activity];
      v12 = [v11 activityIdentifier];
      *buf = 138412802;
      v35 = v9;
      v36 = 2112;
      v37 = self;
      v38 = 2112;
      v39 = v12;
      _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Manually launching Expanse app with bundleIdentifier: %@ for activity session: %@ with activity identifier: %@", buf, 0x20u);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__TUConversationActivitySession_launchApplicationWithForcedURL_completion___block_invoke;
    aBlock[3] = &unk_1E7427D30;
    v13 = v9;
    v32 = v13;
    v33 = v7;
    v14 = _Block_copy(aBlock);
    v15 = objc_alloc_init(MEMORY[0x1E69636B8]);
    v16 = TUUnlockDeviceWithPromptFrontBoardOptionsDictionary(v6 != 0);
    [v15 setFrontBoardOptions:v16];

    v17 = CUTWeakLinkClass();
    v18 = v17;
    if (v6)
    {
      v19 = [v17 defaultWorkspace];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __75__TUConversationActivitySession_launchApplicationWithForcedURL_completion___block_invoke_138;
      v29[3] = &unk_1E7426178;
      v30 = v14;
      [v19 openURL:v6 configuration:v15 completionHandler:v29];

      v20 = v30;
    }

    else
    {
      v28 = 0;
      v22 = [objc_alloc(CUTWeakLinkClass()) initWithBundleIdentifier:v13 allowPlaceholder:0 error:&v28];
      v23 = v28;
      v20 = v23;
      if (!v22 || v23)
      {
        (*(v14 + 2))(v14, 0, 0, v23);
      }

      else
      {
        v24 = [v18 defaultWorkspace];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __75__TUConversationActivitySession_launchApplicationWithForcedURL_completion___block_invoke_2;
        v26[3] = &unk_1E7424A38;
        v27 = v14;
        [v24 openApplicationWithBundleIdentifier:v13 configuration:v15 completionHandler:v26];
      }
    }
  }

  else
  {
    v21 = TUDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(TUConversationActivitySession *)self launchApplicationWithForcedURL:v9 completion:v21];
    }

    if (v7)
    {
      (*(v7 + 2))(v7, 0, 0);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __75__TUConversationActivitySession_launchApplicationWithForcedURL_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  if ((a3 & 1) == 0)
  {
    v9 = TUDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v13 = 138412546;
      v14 = v10;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Application for activity session is not installed with bundleIdentifier: %@; error: %{public}@", &v13, 0x16u);
    }

    goto LABEL_8;
  }

  if (v7 || (a2 & 1) == 0)
  {
    v9 = TUDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __75__TUConversationActivitySession_launchApplicationWithForcedURL_completion___block_invoke_cold_1(a1, v8, v9);
    }

LABEL_8:
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, a2, a3);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)publicCopy
{
  v2 = [(TUConversationActivitySession *)self copy];
  v3 = [MEMORY[0x1E695DFD8] set];
  v4 = v2[9];
  v2[9] = v3;

  v5 = v2[18];
  v2[18] = 0;

  return v2;
}

- (void)launchApplicationWithForcedURL:(NSObject *)a3 completion:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_1956FD000, a2, a3, "Failed to launch activity session: %@ with bundle identifier: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

void __75__TUConversationActivitySession_launchApplicationWithForcedURL_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_1956FD000, a2, a3, "Failed to open activity session with bundleIdentifier: %@; error: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

@end