@interface TUConversationActivitySessionContainer
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContainer:(id)container;
- (NSString)capabilitiesDescription;
- (TUConversationActivitySessionContainer)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUConversationActivitySessionContainer

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(TUConversationActivitySessionContainer *)self UUID];
  v6 = NSStringFromSelector(sel_UUID);
  [coderCopy encodeObject:uUID forKey:v6];

  groupUUID = [(TUConversationActivitySessionContainer *)self groupUUID];
  v8 = NSStringFromSelector(sel_groupUUID);
  [coderCopy encodeObject:groupUUID forKey:v8];

  state = [(TUConversationActivitySessionContainer *)self state];
  v10 = NSStringFromSelector(sel_state);
  [coderCopy encodeInteger:state forKey:v10];

  activitySessions = [(TUConversationActivitySessionContainer *)self activitySessions];
  v12 = NSStringFromSelector(sel_activitySessions);
  [coderCopy encodeObject:activitySessions forKey:v12];

  remoteMembers = [(TUConversationActivitySessionContainer *)self remoteMembers];
  v14 = NSStringFromSelector(sel_remoteMembers);
  [coderCopy encodeObject:remoteMembers forKey:v14];

  localMember = [(TUConversationActivitySessionContainer *)self localMember];
  v16 = NSStringFromSelector(sel_localMember);
  [coderCopy encodeObject:localMember forKey:v16];

  initiator = [(TUConversationActivitySessionContainer *)self initiator];
  v18 = NSStringFromSelector(sel_initiator);
  [coderCopy encodeObject:initiator forKey:v18];

  localParticipantIdentifier = [(TUConversationActivitySessionContainer *)self localParticipantIdentifier];
  v20 = NSStringFromSelector(sel_localParticipantIdentifier);
  [coderCopy encodeInt64:localParticipantIdentifier forKey:v20];

  virtualParticipants = [(TUConversationActivitySessionContainer *)self virtualParticipants];
  v22 = NSStringFromSelector(sel_virtualParticipants);
  [coderCopy encodeObject:virtualParticipants forKey:v22];

  virtualParticipantConfig = [(TUConversationActivitySessionContainer *)self virtualParticipantConfig];
  v24 = NSStringFromSelector(sel_virtualParticipantConfig);
  [coderCopy encodeObject:virtualParticipantConfig forKey:v24];

  unreliableMessengerConfig = [(TUConversationActivitySessionContainer *)self unreliableMessengerConfig];
  v26 = NSStringFromSelector(sel_unreliableMessengerConfig);
  [coderCopy encodeObject:unreliableMessengerConfig forKey:v26];

  activeRemoteParticipants = [(TUConversationActivitySessionContainer *)self activeRemoteParticipants];
  v28 = NSStringFromSelector(sel_activeRemoteParticipants);
  [coderCopy encodeObject:activeRemoteParticipants forKey:v28];

  capabilities = [(TUConversationActivitySessionContainer *)self capabilities];
  v30 = NSStringFromSelector(sel_capabilities);
  [coderCopy encodeInteger:capabilities forKey:v30];
}

- (TUConversationActivitySessionContainer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v58.receiver = self;
  v58.super_class = TUConversationActivitySessionContainer;
  v5 = [(TUConversationActivitySessionContainer *)&v58 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_UUID);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    UUID = v5->_UUID;
    v5->_UUID = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_groupUUID);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    groupUUID = v5->_groupUUID;
    v5->_groupUUID = v12;

    v14 = NSStringFromSelector(sel_state);
    v5->_state = [coderCopy decodeIntegerForKey:v14];

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = NSStringFromSelector(sel_activitySessions);
    v19 = [coderCopy decodeObjectOfClasses:v17 forKey:v18];
    activitySessions = v5->_activitySessions;
    v5->_activitySessions = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = NSStringFromSelector(sel_remoteMembers);
    v25 = [coderCopy decodeObjectOfClasses:v23 forKey:v24];
    remoteMembers = v5->_remoteMembers;
    v5->_remoteMembers = v25;

    v27 = objc_opt_class();
    v28 = NSStringFromSelector(sel_localMember);
    v29 = [coderCopy decodeObjectOfClass:v27 forKey:v28];
    localMember = v5->_localMember;
    v5->_localMember = v29;

    v31 = objc_opt_class();
    v32 = NSStringFromSelector(sel_initiator);
    v33 = [coderCopy decodeObjectOfClass:v31 forKey:v32];
    initiator = v5->_initiator;
    v5->_initiator = v33;

    v35 = NSStringFromSelector(sel_localParticipantIdentifier);
    v5->_localParticipantIdentifier = [coderCopy decodeInt64ForKey:v35];

    v36 = MEMORY[0x1E695DFD8];
    v37 = objc_opt_class();
    v38 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
    v39 = NSStringFromSelector(sel_virtualParticipants);
    v40 = [coderCopy decodeObjectOfClasses:v38 forKey:v39];
    virtualParticipants = v5->_virtualParticipants;
    v5->_virtualParticipants = v40;

    v42 = objc_opt_class();
    v43 = NSStringFromSelector(sel_virtualParticipantConfig);
    v44 = [coderCopy decodeObjectOfClass:v42 forKey:v43];
    virtualParticipantConfig = v5->_virtualParticipantConfig;
    v5->_virtualParticipantConfig = v44;

    v46 = objc_opt_class();
    v47 = NSStringFromSelector(sel_unreliableMessengerConfig);
    v48 = [coderCopy decodeObjectOfClass:v46 forKey:v47];
    unreliableMessengerConfig = v5->_unreliableMessengerConfig;
    v5->_unreliableMessengerConfig = v48;

    v50 = MEMORY[0x1E695DFD8];
    v51 = objc_opt_class();
    v52 = [v50 setWithObjects:{v51, objc_opt_class(), 0}];
    v53 = NSStringFromSelector(sel_activeRemoteParticipants);
    v54 = [coderCopy decodeObjectOfClasses:v52 forKey:v53];
    activeRemoteParticipants = v5->_activeRemoteParticipants;
    v5->_activeRemoteParticipants = v54;

    v56 = NSStringFromSelector(sel_capabilities);
    v5->_capabilities = [coderCopy decodeIntegerForKey:v56];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  uUID = [(TUConversationActivitySessionContainer *)self UUID];
  [v3 appendFormat:@" UUID=%@", uUID];

  groupUUID = [(TUConversationActivitySessionContainer *)self groupUUID];
  [v3 appendFormat:@" groupUUID=%@", groupUUID];

  [v3 appendFormat:@" state=%ld", -[TUConversationActivitySessionContainer state](self, "state")];
  activitySessions = [(TUConversationActivitySessionContainer *)self activitySessions];
  [v3 appendFormat:@" activitySessions=%@", activitySessions];

  remoteMembers = [(TUConversationActivitySessionContainer *)self remoteMembers];
  [v3 appendFormat:@" remoteMembers=%@", remoteMembers];

  localMember = [(TUConversationActivitySessionContainer *)self localMember];
  [v3 appendFormat:@" localMember=%@", localMember];

  initiator = [(TUConversationActivitySessionContainer *)self initiator];
  [v3 appendFormat:@" initiator=%@", initiator];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[TUConversationActivitySessionContainer localParticipantIdentifier](self, "localParticipantIdentifier")}];
  [v3 appendFormat:@" localParticipantIdentifier=%@", v10];

  virtualParticipants = [(TUConversationActivitySessionContainer *)self virtualParticipants];
  [v3 appendFormat:@" virtualParticipants=%@", virtualParticipants];

  virtualParticipantConfig = [(TUConversationActivitySessionContainer *)self virtualParticipantConfig];
  [v3 appendFormat:@" virtualParticipantConfig=%@", virtualParticipantConfig];

  unreliableMessengerConfig = [(TUConversationActivitySessionContainer *)self unreliableMessengerConfig];
  [v3 appendFormat:@" unreliableMessengerConfig=%@", unreliableMessengerConfig];

  activeRemoteParticipants = [(TUConversationActivitySessionContainer *)self activeRemoteParticipants];
  [v3 appendFormat:@" activeRemoteParticipants=%@", activeRemoteParticipants];

  capabilitiesDescription = [(TUConversationActivitySessionContainer *)self capabilitiesDescription];
  [v3 appendFormat:@" capabilities=%@", capabilitiesDescription];

  [v3 appendString:@">"];
  v16 = [v3 copy];

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TUConversationActivitySessionContainer);
  uUID = [(TUConversationActivitySessionContainer *)self UUID];
  v6 = [uUID copy];
  [(TUConversationActivitySessionContainer *)v4 setUUID:v6];

  groupUUID = [(TUConversationActivitySessionContainer *)self groupUUID];
  v8 = [groupUUID copy];
  [(TUConversationActivitySessionContainer *)v4 setGroupUUID:v8];

  [(TUConversationActivitySessionContainer *)v4 setState:[(TUConversationActivitySessionContainer *)self state]];
  activitySessions = [(TUConversationActivitySessionContainer *)self activitySessions];
  v10 = [activitySessions copy];
  [(TUConversationActivitySessionContainer *)v4 setActivitySessions:v10];

  remoteMembers = [(TUConversationActivitySessionContainer *)self remoteMembers];
  v12 = [remoteMembers copy];
  [(TUConversationActivitySessionContainer *)v4 setRemoteMembers:v12];

  localMember = [(TUConversationActivitySessionContainer *)self localMember];
  v14 = [localMember copy];
  [(TUConversationActivitySessionContainer *)v4 setLocalMember:v14];

  initiator = [(TUConversationActivitySessionContainer *)self initiator];
  v16 = [initiator copy];
  [(TUConversationActivitySessionContainer *)v4 setInitiator:v16];

  [(TUConversationActivitySessionContainer *)v4 setLocalParticipantIdentifier:[(TUConversationActivitySessionContainer *)self localParticipantIdentifier]];
  virtualParticipants = [(TUConversationActivitySessionContainer *)self virtualParticipants];
  v18 = [virtualParticipants copy];
  [(TUConversationActivitySessionContainer *)v4 setVirtualParticipants:v18];

  virtualParticipantConfig = [(TUConversationActivitySessionContainer *)self virtualParticipantConfig];
  v20 = [virtualParticipantConfig copy];
  [(TUConversationActivitySessionContainer *)v4 setVirtualParticipantConfig:v20];

  unreliableMessengerConfig = [(TUConversationActivitySessionContainer *)self unreliableMessengerConfig];
  v22 = [unreliableMessengerConfig copy];
  [(TUConversationActivitySessionContainer *)v4 setUnreliableMessengerConfig:v22];

  activeRemoteParticipants = [(TUConversationActivitySessionContainer *)self activeRemoteParticipants];
  v24 = [activeRemoteParticipants copy];
  [(TUConversationActivitySessionContainer *)v4 setActiveRemoteParticipants:v24];

  [(TUConversationActivitySessionContainer *)v4 setCapabilities:[(TUConversationActivitySessionContainer *)self capabilities]];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationActivitySessionContainer *)self isEqualToContainer:equalCopy];
  }

  return v5;
}

- (unint64_t)hash
{
  activeRemoteParticipants = [(TUConversationActivitySessionContainer *)self activeRemoteParticipants];
  v3 = [activeRemoteParticipants hash];
  activitySessions = [(TUConversationActivitySessionContainer *)self activitySessions];
  v4 = [activitySessions hash] ^ v3;
  groupUUID = [(TUConversationActivitySessionContainer *)self groupUUID];
  v5 = [groupUUID hash];
  initiator = [(TUConversationActivitySessionContainer *)self initiator];
  v7 = v4 ^ v5 ^ [initiator hash];
  localParticipantIdentifier = [(TUConversationActivitySessionContainer *)self localParticipantIdentifier];
  localMember = [(TUConversationActivitySessionContainer *)self localMember];
  v10 = localParticipantIdentifier ^ [localMember hash];
  remoteMembers = [(TUConversationActivitySessionContainer *)self remoteMembers];
  v12 = v7 ^ v10 ^ [remoteMembers hash];
  state = [(TUConversationActivitySessionContainer *)self state];
  uUID = [(TUConversationActivitySessionContainer *)self UUID];
  v15 = state ^ [uUID hash];
  virtualParticipants = [(TUConversationActivitySessionContainer *)self virtualParticipants];
  v17 = v15 ^ [virtualParticipants hash];
  virtualParticipantConfig = [(TUConversationActivitySessionContainer *)self virtualParticipantConfig];
  v19 = v12 ^ v17 ^ [virtualParticipantConfig hash];
  unreliableMessengerConfig = [(TUConversationActivitySessionContainer *)self unreliableMessengerConfig];
  v21 = [unreliableMessengerConfig hash];
  v22 = v21 ^ [(TUConversationActivitySessionContainer *)self capabilities];

  return v19 ^ v22;
}

- (BOOL)isEqualToContainer:(id)container
{
  containerCopy = container;
  activeRemoteParticipants = [(TUConversationActivitySessionContainer *)self activeRemoteParticipants];
  activeRemoteParticipants2 = [containerCopy activeRemoteParticipants];
  if (TUObjectsAreEqualOrNil(activeRemoteParticipants, activeRemoteParticipants2))
  {
    activitySessions = [(TUConversationActivitySessionContainer *)self activitySessions];
    activitySessions2 = [containerCopy activitySessions];
    if (TUObjectsAreEqualOrNil(activitySessions, activitySessions2))
    {
      groupUUID = [(TUConversationActivitySessionContainer *)self groupUUID];
      groupUUID2 = [containerCopy groupUUID];
      if ([groupUUID isEqual:groupUUID2])
      {
        initiator = [(TUConversationActivitySessionContainer *)self initiator];
        initiator2 = [containerCopy initiator];
        if (TUObjectsAreEqualOrNil(initiator, initiator2))
        {
          v35 = initiator;
          localParticipantIdentifier = [(TUConversationActivitySessionContainer *)self localParticipantIdentifier];
          if (localParticipantIdentifier == [containerCopy localParticipantIdentifier])
          {
            localMember = [(TUConversationActivitySessionContainer *)self localMember];
            localMember2 = [containerCopy localMember];
            v34 = localMember;
            if (TUObjectsAreEqualOrNil(localMember, localMember2))
            {
              remoteMembers = [(TUConversationActivitySessionContainer *)self remoteMembers];
              remoteMembers2 = [containerCopy remoteMembers];
              v32 = remoteMembers;
              if (TUObjectsAreEqualOrNil(remoteMembers, remoteMembers2) && (v16 = -[TUConversationActivitySessionContainer state](self, "state"), v16 == [containerCopy state]))
              {
                uUID = [(TUConversationActivitySessionContainer *)self UUID];
                uUID2 = [containerCopy UUID];
                v30 = uUID;
                v18 = [uUID isEqual:?];
                initiator = v35;
                if (v18)
                {
                  virtualParticipants = [(TUConversationActivitySessionContainer *)self virtualParticipants];
                  virtualParticipants2 = [containerCopy virtualParticipants];
                  if (TUObjectsAreEqualOrNil(virtualParticipants, virtualParticipants2))
                  {
                    virtualParticipantConfig = [(TUConversationActivitySessionContainer *)self virtualParticipantConfig];
                    virtualParticipantConfig2 = [containerCopy virtualParticipantConfig];
                    if (TUObjectsAreEqualOrNil(virtualParticipantConfig, virtualParticipantConfig2))
                    {
                      unreliableMessengerConfig = [(TUConversationActivitySessionContainer *)self unreliableMessengerConfig];
                      unreliableMessengerConfig2 = [containerCopy unreliableMessengerConfig];
                      if (TUObjectsAreEqualOrNil(unreliableMessengerConfig, unreliableMessengerConfig2))
                      {
                        capabilities = [(TUConversationActivitySessionContainer *)self capabilities];
                        v20 = capabilities == [containerCopy capabilities];
                        initiator = v35;
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
                initiator = v35;
              }
            }

            else
            {
              v21 = 0;
              initiator = v35;
            }
          }

          else
          {
            v21 = 0;
            initiator = v35;
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
  selfCopy = self;
  TUConversationActivitySessionContainerCapabilities.description.getter([(TUConversationActivitySessionContainer *)selfCopy capabilities]);

  v3 = sub_19586ED30();

  return v3;
}

@end