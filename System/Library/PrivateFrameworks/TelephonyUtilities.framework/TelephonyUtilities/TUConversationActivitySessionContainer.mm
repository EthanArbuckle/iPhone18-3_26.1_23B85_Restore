@interface TUConversationActivitySessionContainer
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToContainer:(id)a3;
- (NSString)capabilitiesDescription;
- (TUConversationActivitySessionContainer)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUConversationActivitySessionContainer

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationActivitySessionContainer *)self UUID];
  v6 = NSStringFromSelector(sel_UUID);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(TUConversationActivitySessionContainer *)self groupUUID];
  v8 = NSStringFromSelector(sel_groupUUID);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(TUConversationActivitySessionContainer *)self state];
  v10 = NSStringFromSelector(sel_state);
  [v4 encodeInteger:v9 forKey:v10];

  v11 = [(TUConversationActivitySessionContainer *)self activitySessions];
  v12 = NSStringFromSelector(sel_activitySessions);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(TUConversationActivitySessionContainer *)self remoteMembers];
  v14 = NSStringFromSelector(sel_remoteMembers);
  [v4 encodeObject:v13 forKey:v14];

  v15 = [(TUConversationActivitySessionContainer *)self localMember];
  v16 = NSStringFromSelector(sel_localMember);
  [v4 encodeObject:v15 forKey:v16];

  v17 = [(TUConversationActivitySessionContainer *)self initiator];
  v18 = NSStringFromSelector(sel_initiator);
  [v4 encodeObject:v17 forKey:v18];

  v19 = [(TUConversationActivitySessionContainer *)self localParticipantIdentifier];
  v20 = NSStringFromSelector(sel_localParticipantIdentifier);
  [v4 encodeInt64:v19 forKey:v20];

  v21 = [(TUConversationActivitySessionContainer *)self virtualParticipants];
  v22 = NSStringFromSelector(sel_virtualParticipants);
  [v4 encodeObject:v21 forKey:v22];

  v23 = [(TUConversationActivitySessionContainer *)self virtualParticipantConfig];
  v24 = NSStringFromSelector(sel_virtualParticipantConfig);
  [v4 encodeObject:v23 forKey:v24];

  v25 = [(TUConversationActivitySessionContainer *)self unreliableMessengerConfig];
  v26 = NSStringFromSelector(sel_unreliableMessengerConfig);
  [v4 encodeObject:v25 forKey:v26];

  v27 = [(TUConversationActivitySessionContainer *)self activeRemoteParticipants];
  v28 = NSStringFromSelector(sel_activeRemoteParticipants);
  [v4 encodeObject:v27 forKey:v28];

  v29 = [(TUConversationActivitySessionContainer *)self capabilities];
  v30 = NSStringFromSelector(sel_capabilities);
  [v4 encodeInteger:v29 forKey:v30];
}

- (TUConversationActivitySessionContainer)initWithCoder:(id)a3
{
  v4 = a3;
  v58.receiver = self;
  v58.super_class = TUConversationActivitySessionContainer;
  v5 = [(TUConversationActivitySessionContainer *)&v58 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_UUID);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    UUID = v5->_UUID;
    v5->_UUID = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_groupUUID);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    groupUUID = v5->_groupUUID;
    v5->_groupUUID = v12;

    v14 = NSStringFromSelector(sel_state);
    v5->_state = [v4 decodeIntegerForKey:v14];

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = NSStringFromSelector(sel_activitySessions);
    v19 = [v4 decodeObjectOfClasses:v17 forKey:v18];
    activitySessions = v5->_activitySessions;
    v5->_activitySessions = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = NSStringFromSelector(sel_remoteMembers);
    v25 = [v4 decodeObjectOfClasses:v23 forKey:v24];
    remoteMembers = v5->_remoteMembers;
    v5->_remoteMembers = v25;

    v27 = objc_opt_class();
    v28 = NSStringFromSelector(sel_localMember);
    v29 = [v4 decodeObjectOfClass:v27 forKey:v28];
    localMember = v5->_localMember;
    v5->_localMember = v29;

    v31 = objc_opt_class();
    v32 = NSStringFromSelector(sel_initiator);
    v33 = [v4 decodeObjectOfClass:v31 forKey:v32];
    initiator = v5->_initiator;
    v5->_initiator = v33;

    v35 = NSStringFromSelector(sel_localParticipantIdentifier);
    v5->_localParticipantIdentifier = [v4 decodeInt64ForKey:v35];

    v36 = MEMORY[0x1E695DFD8];
    v37 = objc_opt_class();
    v38 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
    v39 = NSStringFromSelector(sel_virtualParticipants);
    v40 = [v4 decodeObjectOfClasses:v38 forKey:v39];
    virtualParticipants = v5->_virtualParticipants;
    v5->_virtualParticipants = v40;

    v42 = objc_opt_class();
    v43 = NSStringFromSelector(sel_virtualParticipantConfig);
    v44 = [v4 decodeObjectOfClass:v42 forKey:v43];
    virtualParticipantConfig = v5->_virtualParticipantConfig;
    v5->_virtualParticipantConfig = v44;

    v46 = objc_opt_class();
    v47 = NSStringFromSelector(sel_unreliableMessengerConfig);
    v48 = [v4 decodeObjectOfClass:v46 forKey:v47];
    unreliableMessengerConfig = v5->_unreliableMessengerConfig;
    v5->_unreliableMessengerConfig = v48;

    v50 = MEMORY[0x1E695DFD8];
    v51 = objc_opt_class();
    v52 = [v50 setWithObjects:{v51, objc_opt_class(), 0}];
    v53 = NSStringFromSelector(sel_activeRemoteParticipants);
    v54 = [v4 decodeObjectOfClasses:v52 forKey:v53];
    activeRemoteParticipants = v5->_activeRemoteParticipants;
    v5->_activeRemoteParticipants = v54;

    v56 = NSStringFromSelector(sel_capabilities);
    v5->_capabilities = [v4 decodeIntegerForKey:v56];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUConversationActivitySessionContainer *)self UUID];
  [v3 appendFormat:@" UUID=%@", v4];

  v5 = [(TUConversationActivitySessionContainer *)self groupUUID];
  [v3 appendFormat:@" groupUUID=%@", v5];

  [v3 appendFormat:@" state=%ld", -[TUConversationActivitySessionContainer state](self, "state")];
  v6 = [(TUConversationActivitySessionContainer *)self activitySessions];
  [v3 appendFormat:@" activitySessions=%@", v6];

  v7 = [(TUConversationActivitySessionContainer *)self remoteMembers];
  [v3 appendFormat:@" remoteMembers=%@", v7];

  v8 = [(TUConversationActivitySessionContainer *)self localMember];
  [v3 appendFormat:@" localMember=%@", v8];

  v9 = [(TUConversationActivitySessionContainer *)self initiator];
  [v3 appendFormat:@" initiator=%@", v9];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[TUConversationActivitySessionContainer localParticipantIdentifier](self, "localParticipantIdentifier")}];
  [v3 appendFormat:@" localParticipantIdentifier=%@", v10];

  v11 = [(TUConversationActivitySessionContainer *)self virtualParticipants];
  [v3 appendFormat:@" virtualParticipants=%@", v11];

  v12 = [(TUConversationActivitySessionContainer *)self virtualParticipantConfig];
  [v3 appendFormat:@" virtualParticipantConfig=%@", v12];

  v13 = [(TUConversationActivitySessionContainer *)self unreliableMessengerConfig];
  [v3 appendFormat:@" unreliableMessengerConfig=%@", v13];

  v14 = [(TUConversationActivitySessionContainer *)self activeRemoteParticipants];
  [v3 appendFormat:@" activeRemoteParticipants=%@", v14];

  v15 = [(TUConversationActivitySessionContainer *)self capabilitiesDescription];
  [v3 appendFormat:@" capabilities=%@", v15];

  [v3 appendString:@">"];
  v16 = [v3 copy];

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(TUConversationActivitySessionContainer);
  v5 = [(TUConversationActivitySessionContainer *)self UUID];
  v6 = [v5 copy];
  [(TUConversationActivitySessionContainer *)v4 setUUID:v6];

  v7 = [(TUConversationActivitySessionContainer *)self groupUUID];
  v8 = [v7 copy];
  [(TUConversationActivitySessionContainer *)v4 setGroupUUID:v8];

  [(TUConversationActivitySessionContainer *)v4 setState:[(TUConversationActivitySessionContainer *)self state]];
  v9 = [(TUConversationActivitySessionContainer *)self activitySessions];
  v10 = [v9 copy];
  [(TUConversationActivitySessionContainer *)v4 setActivitySessions:v10];

  v11 = [(TUConversationActivitySessionContainer *)self remoteMembers];
  v12 = [v11 copy];
  [(TUConversationActivitySessionContainer *)v4 setRemoteMembers:v12];

  v13 = [(TUConversationActivitySessionContainer *)self localMember];
  v14 = [v13 copy];
  [(TUConversationActivitySessionContainer *)v4 setLocalMember:v14];

  v15 = [(TUConversationActivitySessionContainer *)self initiator];
  v16 = [v15 copy];
  [(TUConversationActivitySessionContainer *)v4 setInitiator:v16];

  [(TUConversationActivitySessionContainer *)v4 setLocalParticipantIdentifier:[(TUConversationActivitySessionContainer *)self localParticipantIdentifier]];
  v17 = [(TUConversationActivitySessionContainer *)self virtualParticipants];
  v18 = [v17 copy];
  [(TUConversationActivitySessionContainer *)v4 setVirtualParticipants:v18];

  v19 = [(TUConversationActivitySessionContainer *)self virtualParticipantConfig];
  v20 = [v19 copy];
  [(TUConversationActivitySessionContainer *)v4 setVirtualParticipantConfig:v20];

  v21 = [(TUConversationActivitySessionContainer *)self unreliableMessengerConfig];
  v22 = [v21 copy];
  [(TUConversationActivitySessionContainer *)v4 setUnreliableMessengerConfig:v22];

  v23 = [(TUConversationActivitySessionContainer *)self activeRemoteParticipants];
  v24 = [v23 copy];
  [(TUConversationActivitySessionContainer *)v4 setActiveRemoteParticipants:v24];

  [(TUConversationActivitySessionContainer *)v4 setCapabilities:[(TUConversationActivitySessionContainer *)self capabilities]];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationActivitySessionContainer *)self isEqualToContainer:v4];
  }

  return v5;
}

- (unint64_t)hash
{
  v26 = [(TUConversationActivitySessionContainer *)self activeRemoteParticipants];
  v3 = [v26 hash];
  v25 = [(TUConversationActivitySessionContainer *)self activitySessions];
  v4 = [v25 hash] ^ v3;
  v24 = [(TUConversationActivitySessionContainer *)self groupUUID];
  v5 = [v24 hash];
  v6 = [(TUConversationActivitySessionContainer *)self initiator];
  v7 = v4 ^ v5 ^ [v6 hash];
  v8 = [(TUConversationActivitySessionContainer *)self localParticipantIdentifier];
  v9 = [(TUConversationActivitySessionContainer *)self localMember];
  v10 = v8 ^ [v9 hash];
  v11 = [(TUConversationActivitySessionContainer *)self remoteMembers];
  v12 = v7 ^ v10 ^ [v11 hash];
  v13 = [(TUConversationActivitySessionContainer *)self state];
  v14 = [(TUConversationActivitySessionContainer *)self UUID];
  v15 = v13 ^ [v14 hash];
  v16 = [(TUConversationActivitySessionContainer *)self virtualParticipants];
  v17 = v15 ^ [v16 hash];
  v18 = [(TUConversationActivitySessionContainer *)self virtualParticipantConfig];
  v19 = v12 ^ v17 ^ [v18 hash];
  v20 = [(TUConversationActivitySessionContainer *)self unreliableMessengerConfig];
  v21 = [v20 hash];
  v22 = v21 ^ [(TUConversationActivitySessionContainer *)self capabilities];

  return v19 ^ v22;
}

- (BOOL)isEqualToContainer:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationActivitySessionContainer *)self activeRemoteParticipants];
  v6 = [v4 activeRemoteParticipants];
  if (TUObjectsAreEqualOrNil(v5, v6))
  {
    v7 = [(TUConversationActivitySessionContainer *)self activitySessions];
    v8 = [v4 activitySessions];
    if (TUObjectsAreEqualOrNil(v7, v8))
    {
      v9 = [(TUConversationActivitySessionContainer *)self groupUUID];
      v10 = [v4 groupUUID];
      if ([v9 isEqual:v10])
      {
        v11 = [(TUConversationActivitySessionContainer *)self initiator];
        v12 = [v4 initiator];
        if (TUObjectsAreEqualOrNil(v11, v12))
        {
          v35 = v11;
          v13 = [(TUConversationActivitySessionContainer *)self localParticipantIdentifier];
          if (v13 == [v4 localParticipantIdentifier])
          {
            v14 = [(TUConversationActivitySessionContainer *)self localMember];
            v33 = [v4 localMember];
            v34 = v14;
            if (TUObjectsAreEqualOrNil(v14, v33))
            {
              v15 = [(TUConversationActivitySessionContainer *)self remoteMembers];
              v31 = [v4 remoteMembers];
              v32 = v15;
              if (TUObjectsAreEqualOrNil(v15, v31) && (v16 = -[TUConversationActivitySessionContainer state](self, "state"), v16 == [v4 state]))
              {
                v17 = [(TUConversationActivitySessionContainer *)self UUID];
                v29 = [v4 UUID];
                v30 = v17;
                v18 = [v17 isEqual:?];
                v11 = v35;
                if (v18)
                {
                  v28 = [(TUConversationActivitySessionContainer *)self virtualParticipants];
                  v27 = [v4 virtualParticipants];
                  if (TUObjectsAreEqualOrNil(v28, v27))
                  {
                    v26 = [(TUConversationActivitySessionContainer *)self virtualParticipantConfig];
                    v25 = [v4 virtualParticipantConfig];
                    if (TUObjectsAreEqualOrNil(v26, v25))
                    {
                      v24 = [(TUConversationActivitySessionContainer *)self unreliableMessengerConfig];
                      v23 = [v4 unreliableMessengerConfig];
                      if (TUObjectsAreEqualOrNil(v24, v23))
                      {
                        v19 = [(TUConversationActivitySessionContainer *)self capabilities];
                        v20 = v19 == [v4 capabilities];
                        v11 = v35;
                        v21 = v20;
                      }

                      else
                      {
                        v21 = 0;
                      }
                    }

                    else
                    {
                      v21 = 0;
                    }
                  }

                  else
                  {
                    v21 = 0;
                  }
                }

                else
                {
                  v21 = 0;
                }
              }

              else
              {
                v21 = 0;
                v11 = v35;
              }
            }

            else
            {
              v21 = 0;
              v11 = v35;
            }
          }

          else
          {
            v21 = 0;
            v11 = v35;
          }
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (NSString)capabilitiesDescription
{
  v2 = self;
  TUConversationActivitySessionContainerCapabilities.description.getter([(TUConversationActivitySessionContainer *)v2 capabilities]);

  v3 = sub_19586ED30();

  return v3;
}

@end