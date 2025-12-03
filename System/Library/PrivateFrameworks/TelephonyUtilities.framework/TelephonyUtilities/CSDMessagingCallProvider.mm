@interface CSDMessagingCallProvider
- (BOOL)isEqual:(id)equal;
- (CSDMessagingCallProvider)initWithProvider:(id)provider;
- (NSArray)emergencyTUHandles;
- (NSArray)emergencyTULabeledHandles;
- (NSOrderedSet)prioritizedTUSenderIdentities;
- (NSSet)supportedHandleTypes;
- (TUCallProvider)provider;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)protoSupportedHandleTypeAtIndex:(unint64_t)index;
- (void)addEmergencyHandles:(id)handles;
- (void)addEmergencyLabeledHandles:(id)handles;
- (void)addHandoffIdentifier:(id)identifier;
- (void)addPrioritizedSenderIdentities:(id)identities;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setEmergencyTUHandles:(id)handles;
- (void)setEmergencyTULabeledHandles:(id)handles;
- (void)setHasMaximumCallsPerCallGroup:(BOOL)group;
- (void)setHasSupportsAudioAndVideo:(BOOL)video;
- (void)setHasSupportsAudioOnly:(BOOL)only;
- (void)setHasSupportsEmergency:(BOOL)emergency;
- (void)setHasSupportsRecents:(BOOL)recents;
- (void)setHasSupportsVoicemail:(BOOL)voicemail;
- (void)setPrioritizedTUSenderIdentities:(id)identities;
- (void)setSupportedHandleTypes:(id)types;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingCallProvider

- (TUCallProvider)provider
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v35 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Initializing TUCallProvider from %@", &v35, 0xCu);
  }

  v4 = [TUCallProvider alloc];
  identifier = [(CSDMessagingCallProvider *)self identifier];
  v6 = [v4 initWithIdentifier:identifier];

  localizedName = [(CSDMessagingCallProvider *)self localizedName];
  [v6 setLocalizedName:localizedName];

  bundleURLString = [(CSDMessagingCallProvider *)self bundleURLString];
  if (bundleURLString)
  {
    bundleURLString2 = [(CSDMessagingCallProvider *)self bundleURLString];
    v10 = [NSURL URLWithString:bundleURLString2];
    [v6 setBundleURL:v10];
  }

  else
  {
    [v6 setBundleURL:0];
  }

  bundleURL = [v6 bundleURL];
  isFileURL = [bundleURL isFileURL];

  if (!isFileURL)
  {
    goto LABEL_10;
  }

  bundleURL2 = [v6 bundleURL];
  v14 = [NSBundle bundleWithURL:bundleURL2];

  bundleIdentifier = [v14 bundleIdentifier];
  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    bundleURL3 = [v6 bundleURL];
    v35 = 138412546;
    selfCopy = bundleURL3;
    v37 = 2112;
    v38 = v14;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Bundle for bundleURL: %@ is %@", &v35, 0x16u);
  }

  if (!bundleIdentifier)
  {
LABEL_10:
    bundleIdentifier = [(CSDMessagingCallProvider *)self bundleIdentifier];

    if (bundleIdentifier)
    {
      bundleIdentifier2 = [(CSDMessagingCallProvider *)self bundleIdentifier];
      v19 = [LSBundleRecord bundleRecordWithBundleIdentifier:bundleIdentifier2 allowPlaceholder:0 error:0];

      bundleIdentifier = [(CSDMessagingCallProvider *)self bundleIdentifier];
      if (v19)
      {
        v20 = [v19 URL];
        [v6 setBundleURL:v20];
      }

      v21 = sub_100004778();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier3 = [(CSDMessagingCallProvider *)self bundleIdentifier];
        v35 = 138412546;
        selfCopy = bundleIdentifier3;
        v37 = 2112;
        v38 = v19;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Bundle for provider bundle ID: %@ bundle: %@", &v35, 0x16u);
      }
    }
  }

  [v6 setBundleIdentifier:bundleIdentifier];
  handoffIdentifiers = [(CSDMessagingCallProvider *)self handoffIdentifiers];
  [v6 setHandoffIdentifiers:handoffIdentifiers];

  ringtoneSoundURLString = [(CSDMessagingCallProvider *)self ringtoneSoundURLString];
  if (ringtoneSoundURLString)
  {
    ringtoneSoundURLString2 = [(CSDMessagingCallProvider *)self ringtoneSoundURLString];
    v26 = [NSURL URLWithString:ringtoneSoundURLString2];
    [v6 setRingtoneSoundURL:v26];
  }

  else
  {
    [v6 setRingtoneSoundURL:0];
  }

  originalRingtoneSoundURLString = [(CSDMessagingCallProvider *)self originalRingtoneSoundURLString];
  if (originalRingtoneSoundURLString)
  {
    originalRingtoneSoundURLString2 = [(CSDMessagingCallProvider *)self originalRingtoneSoundURLString];
    v29 = [NSURL URLWithString:originalRingtoneSoundURLString2];
    [v6 setOriginalRingtoneSoundURL:v29];
  }

  else
  {
    [v6 setOriginalRingtoneSoundURL:0];
  }

  [v6 setMaximumCallGroups:{-[CSDMessagingCallProvider maximumCallGroups](self, "maximumCallGroups")}];
  [v6 setMaximumCallsPerCallGroup:{-[CSDMessagingCallProvider maximumCallsPerCallGroup](self, "maximumCallsPerCallGroup")}];
  [v6 setSupportsAudioOnly:{-[CSDMessagingCallProvider supportsAudioOnly](self, "supportsAudioOnly")}];
  [v6 setSupportsAudioAndVideo:{-[CSDMessagingCallProvider supportsAudioAndVideo](self, "supportsAudioAndVideo")}];
  [v6 setSupportsEmergency:{-[CSDMessagingCallProvider supportsEmergency](self, "supportsEmergency")}];
  [v6 setSupportsVoicemail:{-[CSDMessagingCallProvider supportsVoicemail](self, "supportsVoicemail")}];
  [v6 setSupportsRecents:{-[CSDMessagingCallProvider supportsRecents](self, "supportsRecents")}];
  supportedHandleTypes = [(CSDMessagingCallProvider *)self supportedHandleTypes];
  [v6 setSupportedHandleTypes:supportedHandleTypes];

  emergencyTUHandles = [(CSDMessagingCallProvider *)self emergencyTUHandles];
  [v6 setEmergencyHandles:emergencyTUHandles];

  emergencyTULabeledHandles = [(CSDMessagingCallProvider *)self emergencyTULabeledHandles];
  [v6 setEmergencyLabeledHandles:emergencyTULabeledHandles];

  prioritizedTUSenderIdentities = [(CSDMessagingCallProvider *)self prioritizedTUSenderIdentities];
  [v6 setPrioritizedSenderIdentities:prioritizedTUSenderIdentities];

  return v6;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingCallProvider;
  v3 = [(CSDMessagingCallProvider *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingCallProvider *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  localizedName = self->_localizedName;
  if (localizedName)
  {
    [v4 setObject:localizedName forKey:@"localizedName"];
  }

  bundleURLString = self->_bundleURLString;
  if (bundleURLString)
  {
    [v4 setObject:bundleURLString forKey:@"bundleURLString"];
  }

  has = self->_has;
  if (has)
  {
    v38 = [NSNumber numberWithUnsignedInt:self->_maximumCallGroups];
    [v4 setObject:v38 forKey:@"maximumCallGroups"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_56;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  v39 = [NSNumber numberWithUnsignedInt:self->_maximumCallsPerCallGroup];
  [v4 setObject:v39 forKey:@"maximumCallsPerCallGroup"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_57;
  }

LABEL_56:
  v40 = [NSNumber numberWithBool:self->_supportsAudioOnly];
  [v4 setObject:v40 forKey:@"supportsAudioOnly"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_58;
  }

LABEL_57:
  v41 = [NSNumber numberWithBool:self->_supportsAudioAndVideo];
  [v4 setObject:v41 forKey:@"supportsAudioAndVideo"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_58:
  v42 = [NSNumber numberWithBool:self->_supportsEmergency];
  [v4 setObject:v42 forKey:@"supportsEmergency"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_13:
    v9 = [NSNumber numberWithBool:self->_supportsVoicemail];
    [v4 setObject:v9 forKey:@"supportsVoicemail"];
  }

LABEL_14:
  ringtoneSoundURLString = self->_ringtoneSoundURLString;
  if (ringtoneSoundURLString)
  {
    [v4 setObject:ringtoneSoundURLString forKey:@"ringtoneSoundURLString"];
  }

  originalRingtoneSoundURLString = self->_originalRingtoneSoundURLString;
  if (originalRingtoneSoundURLString)
  {
    [v4 setObject:originalRingtoneSoundURLString forKey:@"originalRingtoneSoundURLString"];
  }

  handoffIdentifiers = self->_handoffIdentifiers;
  if (handoffIdentifiers)
  {
    [v4 setObject:handoffIdentifiers forKey:@"handoffIdentifier"];
  }

  v13 = PBRepeatedUInt32NSArray();
  [v4 setObject:v13 forKey:@"protoSupportedHandleType"];

  if ([(NSMutableArray *)self->_emergencyLabeledHandles count])
  {
    v14 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_emergencyLabeledHandles, "count")}];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v15 = self->_emergencyLabeledHandles;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v52;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v52 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation = [*(*(&v51 + 1) + 8 * i) dictionaryRepresentation];
          [v14 addObject:dictionaryRepresentation];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v51 objects:v57 count:16];
      }

      while (v17);
    }

    [v4 setObject:v14 forKey:@"emergencyLabeledHandles"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v21 = [NSNumber numberWithBool:self->_supportsRecents];
    [v4 setObject:v21 forKey:@"supportsRecents"];
  }

  if ([(NSMutableArray *)self->_prioritizedSenderIdentities count])
  {
    v22 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_prioritizedSenderIdentities, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v23 = self->_prioritizedSenderIdentities;
    v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v48;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v48 != v26)
          {
            objc_enumerationMutation(v23);
          }

          dictionaryRepresentation2 = [*(*(&v47 + 1) + 8 * j) dictionaryRepresentation];
          [v22 addObject:dictionaryRepresentation2];
        }

        v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v47 objects:v56 count:16];
      }

      while (v25);
    }

    [v4 setObject:v22 forKey:@"prioritizedSenderIdentities"];
  }

  if ([(NSMutableArray *)self->_emergencyHandles count])
  {
    v29 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_emergencyHandles, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v30 = self->_emergencyHandles;
    v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v43 objects:v55 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v44;
      do
      {
        for (k = 0; k != v32; k = k + 1)
        {
          if (*v44 != v33)
          {
            objc_enumerationMutation(v30);
          }

          dictionaryRepresentation3 = [*(*(&v43 + 1) + 8 * k) dictionaryRepresentation];
          [v29 addObject:dictionaryRepresentation3];
        }

        v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v43 objects:v55 count:16];
      }

      while (v32);
    }

    [v4 setObject:v29 forKey:@"emergencyHandles"];
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [v4 setObject:bundleIdentifier forKey:@"bundleIdentifier"];
  }

  return v4;
}

- (NSSet)supportedHandleTypes
{
  v3 = [NSMutableSet setWithCapacity:[(CSDMessagingCallProvider *)self protoSupportedHandleTypesCount]];
  if ([(CSDMessagingCallProvider *)self protoSupportedHandleTypesCount])
  {
    v4 = 0;
    do
    {
      v5 = [NSNumber numberWithInteger:[(CSDMessagingCallProvider *)self protoSupportedHandleTypeAtIndex:v4]];
      [v3 addObject:v5];

      ++v4;
    }

    while (v4 < [(CSDMessagingCallProvider *)self protoSupportedHandleTypesCount]);
  }

  v6 = [v3 copy];

  return v6;
}

- (NSArray)emergencyTUHandles
{
  emergencyHandles = [(CSDMessagingCallProvider *)self emergencyHandles];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [emergencyHandles count]);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  emergencyHandles2 = [(CSDMessagingCallProvider *)self emergencyHandles];
  v6 = [emergencyHandles2 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v18;
    *&v7 = 138412290;
    v16 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(emergencyHandles2);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        tuHandle = [v11 tuHandle];
        if (tuHandle)
        {
          [v4 addObject:tuHandle];
        }

        else
        {
          v13 = sub_100004778();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v16;
            v22 = v11;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot create emergencyTUHandle from CSDMessagingHandle %@", buf, 0xCu);
          }
        }
      }

      v8 = [emergencyHandles2 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  v14 = [v4 copy];

  return v14;
}

- (NSArray)emergencyTULabeledHandles
{
  emergencyLabeledHandles = [(CSDMessagingCallProvider *)self emergencyLabeledHandles];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [emergencyLabeledHandles count]);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  emergencyLabeledHandles2 = [(CSDMessagingCallProvider *)self emergencyLabeledHandles];
  v6 = [emergencyLabeledHandles2 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v18;
    *&v7 = 138412290;
    v16 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(emergencyLabeledHandles2);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        tuLabeledHandle = [v11 tuLabeledHandle];
        if (tuLabeledHandle)
        {
          [v4 addObject:tuLabeledHandle];
        }

        else
        {
          v13 = sub_100004778();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v16;
            v22 = v11;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot create emergencyTULabeledHandle from CSDMessagingLabeledHandle %@", buf, 0xCu);
          }
        }
      }

      v8 = [emergencyLabeledHandles2 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  v14 = [v4 copy];

  return v14;
}

- (NSOrderedSet)prioritizedTUSenderIdentities
{
  prioritizedSenderIdentities = [(CSDMessagingCallProvider *)self prioritizedSenderIdentities];
  v4 = +[NSMutableOrderedSet orderedSetWithCapacity:](NSMutableOrderedSet, "orderedSetWithCapacity:", [prioritizedSenderIdentities count]);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  prioritizedSenderIdentities2 = [(CSDMessagingCallProvider *)self prioritizedSenderIdentities];
  v6 = [prioritizedSenderIdentities2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(prioritizedSenderIdentities2);
        }

        tuSenderIdentity = [*(*(&v13 + 1) + 8 * i) tuSenderIdentity];
        if (tuSenderIdentity)
        {
          [v4 addObject:tuSenderIdentity];
        }
      }

      v7 = [prioritizedSenderIdentities2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = CSDMessagingCallProvider;
  [(CSDMessagingCallProvider *)&v3 dealloc];
}

- (void)setHasMaximumCallsPerCallGroup:(BOOL)group
{
  if (group)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSupportsAudioOnly:(BOOL)only
{
  if (only)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSupportsAudioAndVideo:(BOOL)video
{
  if (video)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSupportsEmergency:(BOOL)emergency
{
  if (emergency)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasSupportsVoicemail:(BOOL)voicemail
{
  if (voicemail)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)addHandoffIdentifier:(id)identifier
{
  identifierCopy = identifier;
  handoffIdentifiers = self->_handoffIdentifiers;
  v8 = identifierCopy;
  if (!handoffIdentifiers)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_handoffIdentifiers;
    self->_handoffIdentifiers = v6;

    identifierCopy = v8;
    handoffIdentifiers = self->_handoffIdentifiers;
  }

  [(NSMutableArray *)handoffIdentifiers addObject:identifierCopy];
}

- (unsigned)protoSupportedHandleTypeAtIndex:(unint64_t)index
{
  p_protoSupportedHandleTypes = &self->_protoSupportedHandleTypes;
  count = self->_protoSupportedHandleTypes.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_protoSupportedHandleTypes->list[index];
}

- (void)addEmergencyLabeledHandles:(id)handles
{
  handlesCopy = handles;
  emergencyLabeledHandles = self->_emergencyLabeledHandles;
  v8 = handlesCopy;
  if (!emergencyLabeledHandles)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_emergencyLabeledHandles;
    self->_emergencyLabeledHandles = v6;

    handlesCopy = v8;
    emergencyLabeledHandles = self->_emergencyLabeledHandles;
  }

  [(NSMutableArray *)emergencyLabeledHandles addObject:handlesCopy];
}

- (void)setHasSupportsRecents:(BOOL)recents
{
  if (recents)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)addPrioritizedSenderIdentities:(id)identities
{
  identitiesCopy = identities;
  prioritizedSenderIdentities = self->_prioritizedSenderIdentities;
  v8 = identitiesCopy;
  if (!prioritizedSenderIdentities)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_prioritizedSenderIdentities;
    self->_prioritizedSenderIdentities = v6;

    identitiesCopy = v8;
    prioritizedSenderIdentities = self->_prioritizedSenderIdentities;
  }

  [(NSMutableArray *)prioritizedSenderIdentities addObject:identitiesCopy];
}

- (void)addEmergencyHandles:(id)handles
{
  handlesCopy = handles;
  emergencyHandles = self->_emergencyHandles;
  v8 = handlesCopy;
  if (!emergencyHandles)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_emergencyHandles;
    self->_emergencyHandles = v6;

    handlesCopy = v8;
    emergencyHandles = self->_emergencyHandles;
  }

  [(NSMutableArray *)emergencyHandles addObject:handlesCopy];
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_localizedName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bundleURLString)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    maximumCallGroups = self->_maximumCallGroups;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_56;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  maximumCallsPerCallGroup = self->_maximumCallsPerCallGroup;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_57;
  }

LABEL_56:
  supportsAudioOnly = self->_supportsAudioOnly;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_58;
  }

LABEL_57:
  supportsAudioAndVideo = self->_supportsAudioAndVideo;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_58:
  supportsEmergency = self->_supportsEmergency;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_13:
    supportsVoicemail = self->_supportsVoicemail;
    PBDataWriterWriteBOOLField();
  }

LABEL_14:
  if (self->_ringtoneSoundURLString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_originalRingtoneSoundURLString)
  {
    PBDataWriterWriteStringField();
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v7 = self->_handoffIdentifiers;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v52;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v52 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v51 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v51 objects:v58 count:16];
    }

    while (v9);
  }

  if (self->_protoSupportedHandleTypes.count)
  {
    v13 = 0;
    do
    {
      v14 = self->_protoSupportedHandleTypes.list[v13];
      PBDataWriterWriteUint32Field();
      ++v13;
    }

    while (v13 < self->_protoSupportedHandleTypes.count);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v15 = self->_emergencyLabeledHandles;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v48;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v48 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v47 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v17);
  }

  if ((*&self->_has & 0x20) != 0)
  {
    supportsRecents = self->_supportsRecents;
    PBDataWriterWriteBOOLField();
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v22 = self->_prioritizedSenderIdentities;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v43 objects:v56 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v44;
    do
    {
      for (k = 0; k != v24; k = k + 1)
      {
        if (*v44 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v43 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v43 objects:v56 count:16];
    }

    while (v24);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v28 = self->_emergencyHandles;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v39 objects:v55 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v40;
    do
    {
      for (m = 0; m != v30; m = m + 1)
      {
        if (*v40 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v39 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v39 objects:v55 count:16];
    }

    while (v30);
  }

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v25 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v25;
  }

  if (self->_localizedName)
  {
    [v25 setLocalizedName:?];
    toCopy = v25;
  }

  if (self->_bundleURLString)
  {
    [v25 setBundleURLString:?];
    toCopy = v25;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 22) = self->_maximumCallGroups;
    toCopy[128] |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_47;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  *(toCopy + 23) = self->_maximumCallsPerCallGroup;
  toCopy[128] |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  toCopy[121] = self->_supportsAudioOnly;
  toCopy[128] |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  toCopy[120] = self->_supportsAudioAndVideo;
  toCopy[128] |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_49:
  toCopy[122] = self->_supportsEmergency;
  toCopy[128] |= 0x10u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_13:
    toCopy[124] = self->_supportsVoicemail;
    toCopy[128] |= 0x40u;
  }

LABEL_14:
  if (self->_ringtoneSoundURLString)
  {
    [v25 setRingtoneSoundURLString:?];
  }

  if (self->_originalRingtoneSoundURLString)
  {
    [v25 setOriginalRingtoneSoundURLString:?];
  }

  if ([(CSDMessagingCallProvider *)self handoffIdentifiersCount])
  {
    [v25 clearHandoffIdentifiers];
    handoffIdentifiersCount = [(CSDMessagingCallProvider *)self handoffIdentifiersCount];
    if (handoffIdentifiersCount)
    {
      v7 = handoffIdentifiersCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(CSDMessagingCallProvider *)self handoffIdentifierAtIndex:i];
        [v25 addHandoffIdentifier:v9];
      }
    }
  }

  if ([(CSDMessagingCallProvider *)self protoSupportedHandleTypesCount])
  {
    [v25 clearProtoSupportedHandleTypes];
    protoSupportedHandleTypesCount = [(CSDMessagingCallProvider *)self protoSupportedHandleTypesCount];
    if (protoSupportedHandleTypesCount)
    {
      v11 = protoSupportedHandleTypesCount;
      for (j = 0; j != v11; ++j)
      {
        [v25 addProtoSupportedHandleType:{-[CSDMessagingCallProvider protoSupportedHandleTypeAtIndex:](self, "protoSupportedHandleTypeAtIndex:", j)}];
      }
    }
  }

  if ([(CSDMessagingCallProvider *)self emergencyLabeledHandlesCount])
  {
    [v25 clearEmergencyLabeledHandles];
    emergencyLabeledHandlesCount = [(CSDMessagingCallProvider *)self emergencyLabeledHandlesCount];
    if (emergencyLabeledHandlesCount)
    {
      v14 = emergencyLabeledHandlesCount;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(CSDMessagingCallProvider *)self emergencyLabeledHandlesAtIndex:k];
        [v25 addEmergencyLabeledHandles:v16];
      }
    }
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v25[123] = self->_supportsRecents;
    v25[128] |= 0x20u;
  }

  if ([(CSDMessagingCallProvider *)self prioritizedSenderIdentitiesCount])
  {
    [v25 clearPrioritizedSenderIdentities];
    prioritizedSenderIdentitiesCount = [(CSDMessagingCallProvider *)self prioritizedSenderIdentitiesCount];
    if (prioritizedSenderIdentitiesCount)
    {
      v18 = prioritizedSenderIdentitiesCount;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(CSDMessagingCallProvider *)self prioritizedSenderIdentitiesAtIndex:m];
        [v25 addPrioritizedSenderIdentities:v20];
      }
    }
  }

  if ([(CSDMessagingCallProvider *)self emergencyHandlesCount])
  {
    [v25 clearEmergencyHandles];
    emergencyHandlesCount = [(CSDMessagingCallProvider *)self emergencyHandlesCount];
    if (emergencyHandlesCount)
    {
      v22 = emergencyHandlesCount;
      for (n = 0; n != v22; ++n)
      {
        v24 = [(CSDMessagingCallProvider *)self emergencyHandlesAtIndex:n];
        [v25 addEmergencyHandles:v24];
      }
    }
  }

  if (self->_bundleIdentifier)
  {
    [v25 setBundleIdentifier:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[9];
  v5[9] = v6;

  v8 = [(NSString *)self->_localizedName copyWithZone:zone];
  v9 = v5[10];
  v5[10] = v8;

  v10 = [(NSString *)self->_bundleURLString copyWithZone:zone];
  v11 = v5[5];
  v5[5] = v10;

  has = self->_has;
  if (has)
  {
    *(v5 + 22) = self->_maximumCallGroups;
    *(v5 + 128) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 23) = self->_maximumCallsPerCallGroup;
  *(v5 + 128) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v5 + 121) = self->_supportsAudioOnly;
  *(v5 + 128) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v5 + 120) = self->_supportsAudioAndVideo;
  *(v5 + 128) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_43:
  *(v5 + 122) = self->_supportsEmergency;
  *(v5 + 128) |= 0x10u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_7:
    *(v5 + 124) = self->_supportsVoicemail;
    *(v5 + 128) |= 0x40u;
  }

LABEL_8:
  v13 = [(NSString *)self->_ringtoneSoundURLString copyWithZone:zone];
  v14 = v5[14];
  v5[14] = v13;

  v15 = [(NSString *)self->_originalRingtoneSoundURLString copyWithZone:zone];
  v16 = v5[12];
  v5[12] = v15;

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v17 = self->_handoffIdentifiers;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v57;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v57 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v56 + 1) + 8 * i) copyWithZone:zone];
        [v5 addHandoffIdentifier:v22];
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v56 objects:v63 count:16];
    }

    while (v19);
  }

  PBRepeatedUInt32Copy();
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v23 = self->_emergencyLabeledHandles;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v53;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v53 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v52 + 1) + 8 * j) copyWithZone:zone];
        [v5 addEmergencyLabeledHandles:v28];
      }

      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v52 objects:v62 count:16];
    }

    while (v25);
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(v5 + 123) = self->_supportsRecents;
    *(v5 + 128) |= 0x20u;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v29 = self->_prioritizedSenderIdentities;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v48 objects:v61 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v49;
    do
    {
      for (k = 0; k != v31; k = k + 1)
      {
        if (*v49 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = [*(*(&v48 + 1) + 8 * k) copyWithZone:zone];
        [v5 addPrioritizedSenderIdentities:v34];
      }

      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v48 objects:v61 count:16];
    }

    while (v31);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v35 = self->_emergencyHandles;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v44 objects:v60 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v45;
    do
    {
      for (m = 0; m != v37; m = m + 1)
      {
        if (*v45 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = [*(*(&v44 + 1) + 8 * m) copyWithZone:{zone, v44}];
        [v5 addEmergencyHandles:v40];
      }

      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v44 objects:v60 count:16];
    }

    while (v37);
  }

  v41 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  v42 = v5[4];
  v5[4] = v41;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_66;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 9))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_66;
    }
  }

  localizedName = self->_localizedName;
  if (localizedName | *(equalCopy + 10))
  {
    if (![(NSString *)localizedName isEqual:?])
    {
      goto LABEL_66;
    }
  }

  bundleURLString = self->_bundleURLString;
  if (bundleURLString | *(equalCopy + 5))
  {
    if (![(NSString *)bundleURLString isEqual:?])
    {
      goto LABEL_66;
    }
  }

  v8 = *(equalCopy + 128);
  if (*&self->_has)
  {
    if ((*(equalCopy + 128) & 1) == 0 || self->_maximumCallGroups != *(equalCopy + 22))
    {
      goto LABEL_66;
    }
  }

  else if (*(equalCopy + 128))
  {
    goto LABEL_66;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 128) & 2) == 0 || self->_maximumCallsPerCallGroup != *(equalCopy + 23))
    {
      goto LABEL_66;
    }
  }

  else if ((*(equalCopy + 128) & 2) != 0)
  {
    goto LABEL_66;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 128) & 8) == 0)
    {
      goto LABEL_66;
    }

    v18 = *(equalCopy + 121);
    if (self->_supportsAudioOnly)
    {
      if ((*(equalCopy + 121) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else if (*(equalCopy + 121))
    {
      goto LABEL_66;
    }
  }

  else if ((*(equalCopy + 128) & 8) != 0)
  {
    goto LABEL_66;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 128) & 4) == 0)
    {
      goto LABEL_66;
    }

    v19 = *(equalCopy + 120);
    if (self->_supportsAudioAndVideo)
    {
      if ((*(equalCopy + 120) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else if (*(equalCopy + 120))
    {
      goto LABEL_66;
    }
  }

  else if ((*(equalCopy + 128) & 4) != 0)
  {
    goto LABEL_66;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 128) & 0x10) == 0)
    {
      goto LABEL_66;
    }

    v20 = *(equalCopy + 122);
    if (self->_supportsEmergency)
    {
      if ((*(equalCopy + 122) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else if (*(equalCopy + 122))
    {
      goto LABEL_66;
    }
  }

  else if ((*(equalCopy + 128) & 0x10) != 0)
  {
    goto LABEL_66;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equalCopy + 128) & 0x40) == 0)
    {
      goto LABEL_66;
    }

    v21 = *(equalCopy + 124);
    if (self->_supportsVoicemail)
    {
      if ((*(equalCopy + 124) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else if (*(equalCopy + 124))
    {
      goto LABEL_66;
    }
  }

  else if ((*(equalCopy + 128) & 0x40) != 0)
  {
    goto LABEL_66;
  }

  ringtoneSoundURLString = self->_ringtoneSoundURLString;
  if (ringtoneSoundURLString | *(equalCopy + 14) && ![(NSString *)ringtoneSoundURLString isEqual:?])
  {
    goto LABEL_66;
  }

  originalRingtoneSoundURLString = self->_originalRingtoneSoundURLString;
  if (originalRingtoneSoundURLString | *(equalCopy + 12))
  {
    if (![(NSString *)originalRingtoneSoundURLString isEqual:?])
    {
      goto LABEL_66;
    }
  }

  handoffIdentifiers = self->_handoffIdentifiers;
  if (handoffIdentifiers | *(equalCopy + 8))
  {
    if (![(NSMutableArray *)handoffIdentifiers isEqual:?])
    {
      goto LABEL_66;
    }
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_66;
  }

  emergencyLabeledHandles = self->_emergencyLabeledHandles;
  if (emergencyLabeledHandles | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)emergencyLabeledHandles isEqual:?])
    {
      goto LABEL_66;
    }
  }

  v13 = *(equalCopy + 128);
  if ((*&self->_has & 0x20) == 0)
  {
    if ((*(equalCopy + 128) & 0x20) == 0)
    {
      goto LABEL_37;
    }

LABEL_66:
    v17 = 0;
    goto LABEL_67;
  }

  if ((*(equalCopy + 128) & 0x20) == 0)
  {
    goto LABEL_66;
  }

  v23 = *(equalCopy + 123);
  if (self->_supportsRecents)
  {
    if ((*(equalCopy + 123) & 1) == 0)
    {
      goto LABEL_66;
    }
  }

  else if (*(equalCopy + 123))
  {
    goto LABEL_66;
  }

LABEL_37:
  prioritizedSenderIdentities = self->_prioritizedSenderIdentities;
  if (prioritizedSenderIdentities | *(equalCopy + 13) && ![(NSMutableArray *)prioritizedSenderIdentities isEqual:?])
  {
    goto LABEL_66;
  }

  emergencyHandles = self->_emergencyHandles;
  if (emergencyHandles | *(equalCopy + 6))
  {
    if (![(NSMutableArray *)emergencyHandles isEqual:?])
    {
      goto LABEL_66;
    }
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(equalCopy + 4))
  {
    v17 = [(NSString *)bundleIdentifier isEqual:?];
  }

  else
  {
    v17 = 1;
  }

LABEL_67:

  return v17;
}

- (unint64_t)hash
{
  v22 = [(NSString *)self->_identifier hash];
  v21 = [(NSString *)self->_localizedName hash];
  v20 = [(NSString *)self->_bundleURLString hash];
  if (*&self->_has)
  {
    v19 = 2654435761 * self->_maximumCallGroups;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v18 = 2654435761 * self->_maximumCallsPerCallGroup;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v19 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v16 = 2654435761 * self->_supportsAudioOnly;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v16 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v3 = 2654435761 * self->_supportsAudioAndVideo;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v4 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  v3 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v4 = 2654435761 * self->_supportsEmergency;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_7:
    v5 = 2654435761 * self->_supportsVoicemail;
    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
LABEL_14:
  v6 = [(NSString *)self->_ringtoneSoundURLString hash];
  v7 = [(NSString *)self->_originalRingtoneSoundURLString hash];
  v8 = [(NSMutableArray *)self->_handoffIdentifiers hash];
  v9 = PBRepeatedUInt32Hash();
  v10 = [(NSMutableArray *)self->_emergencyLabeledHandles hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v11 = 2654435761 * self->_supportsRecents;
  }

  else
  {
    v11 = 0;
  }

  v12 = v21 ^ v22 ^ v20 ^ v19 ^ v18 ^ v17 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  v13 = [(NSMutableArray *)self->_prioritizedSenderIdentities hash];
  v14 = v13 ^ [(NSMutableArray *)self->_emergencyHandles hash];
  return v12 ^ v14 ^ [(NSString *)self->_bundleIdentifier hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 9))
  {
    [(CSDMessagingCallProvider *)self setIdentifier:?];
  }

  if (*(fromCopy + 10))
  {
    [(CSDMessagingCallProvider *)self setLocalizedName:?];
  }

  if (*(fromCopy + 5))
  {
    [(CSDMessagingCallProvider *)self setBundleURLString:?];
  }

  v5 = *(fromCopy + 128);
  if (v5)
  {
    self->_maximumCallGroups = *(fromCopy + 22);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 128);
    if ((v5 & 2) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_56;
    }
  }

  else if ((*(fromCopy + 128) & 2) == 0)
  {
    goto LABEL_9;
  }

  self->_maximumCallsPerCallGroup = *(fromCopy + 23);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 128);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_supportsAudioOnly = *(fromCopy + 121);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 128);
  if ((v5 & 4) == 0)
  {
LABEL_11:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_supportsAudioAndVideo = *(fromCopy + 120);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 128);
  if ((v5 & 0x10) == 0)
  {
LABEL_12:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_58:
  self->_supportsEmergency = *(fromCopy + 122);
  *&self->_has |= 0x10u;
  if ((*(fromCopy + 128) & 0x40) != 0)
  {
LABEL_13:
    self->_supportsVoicemail = *(fromCopy + 124);
    *&self->_has |= 0x40u;
  }

LABEL_14:
  if (*(fromCopy + 14))
  {
    [(CSDMessagingCallProvider *)self setRingtoneSoundURLString:?];
  }

  if (*(fromCopy + 12))
  {
    [(CSDMessagingCallProvider *)self setOriginalRingtoneSoundURLString:?];
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = *(fromCopy + 8);
  v7 = [v6 countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v42;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(CSDMessagingCallProvider *)self addHandoffIdentifier:*(*(&v41 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v8);
  }

  protoSupportedHandleTypesCount = [fromCopy protoSupportedHandleTypesCount];
  if (protoSupportedHandleTypesCount)
  {
    v12 = protoSupportedHandleTypesCount;
    for (j = 0; j != v12; ++j)
    {
      -[CSDMessagingCallProvider addProtoSupportedHandleType:](self, "addProtoSupportedHandleType:", [fromCopy protoSupportedHandleTypeAtIndex:j]);
    }
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v14 = *(fromCopy + 7);
  v15 = [v14 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v38;
    do
    {
      for (k = 0; k != v16; k = k + 1)
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(CSDMessagingCallProvider *)self addEmergencyLabeledHandles:*(*(&v37 + 1) + 8 * k)];
      }

      v16 = [v14 countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v16);
  }

  if ((*(fromCopy + 128) & 0x20) != 0)
  {
    self->_supportsRecents = *(fromCopy + 123);
    *&self->_has |= 0x20u;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v19 = *(fromCopy + 13);
  v20 = [v19 countByEnumeratingWithState:&v33 objects:v46 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v34;
    do
    {
      for (m = 0; m != v21; m = m + 1)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(CSDMessagingCallProvider *)self addPrioritizedSenderIdentities:*(*(&v33 + 1) + 8 * m)];
      }

      v21 = [v19 countByEnumeratingWithState:&v33 objects:v46 count:16];
    }

    while (v21);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v24 = *(fromCopy + 6);
  v25 = [v24 countByEnumeratingWithState:&v29 objects:v45 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v30;
    do
    {
      for (n = 0; n != v26; n = n + 1)
      {
        if (*v30 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [(CSDMessagingCallProvider *)self addEmergencyHandles:*(*(&v29 + 1) + 8 * n), v29];
      }

      v26 = [v24 countByEnumeratingWithState:&v29 objects:v45 count:16];
    }

    while (v26);
  }

  if (*(fromCopy + 4))
  {
    [(CSDMessagingCallProvider *)self setBundleIdentifier:?];
  }
}

- (CSDMessagingCallProvider)initWithProvider:(id)provider
{
  providerCopy = provider;
  v5 = [(CSDMessagingCallProvider *)self init];
  if (v5)
  {
    identifier = [providerCopy identifier];
    [(CSDMessagingCallProvider *)v5 setIdentifier:identifier];

    localizedName = [providerCopy localizedName];
    [(CSDMessagingCallProvider *)v5 setLocalizedName:localizedName];

    handoffIdentifiers = [providerCopy handoffIdentifiers];
    v9 = [handoffIdentifiers mutableCopy];
    [(CSDMessagingCallProvider *)v5 setHandoffIdentifiers:v9];

    bundleURL = [providerCopy bundleURL];
    absoluteString = [bundleURL absoluteString];
    [(CSDMessagingCallProvider *)v5 setBundleURLString:absoluteString];

    bundleIdentifier = [providerCopy bundleIdentifier];
    [(CSDMessagingCallProvider *)v5 setBundleIdentifier:bundleIdentifier];

    ringtoneSoundURL = [providerCopy ringtoneSoundURL];
    absoluteString2 = [ringtoneSoundURL absoluteString];
    [(CSDMessagingCallProvider *)v5 setRingtoneSoundURLString:absoluteString2];

    originalRingtoneSoundURL = [providerCopy originalRingtoneSoundURL];
    absoluteString3 = [originalRingtoneSoundURL absoluteString];
    [(CSDMessagingCallProvider *)v5 setOriginalRingtoneSoundURLString:absoluteString3];

    -[CSDMessagingCallProvider setMaximumCallGroups:](v5, "setMaximumCallGroups:", [providerCopy maximumCallGroups]);
    -[CSDMessagingCallProvider setMaximumCallsPerCallGroup:](v5, "setMaximumCallsPerCallGroup:", [providerCopy maximumCallsPerCallGroup]);
    -[CSDMessagingCallProvider setSupportsAudioOnly:](v5, "setSupportsAudioOnly:", [providerCopy supportsAudioOnly]);
    -[CSDMessagingCallProvider setSupportsAudioAndVideo:](v5, "setSupportsAudioAndVideo:", [providerCopy supportsAudioAndVideo]);
    -[CSDMessagingCallProvider setSupportsEmergency:](v5, "setSupportsEmergency:", [providerCopy supportsEmergency]);
    -[CSDMessagingCallProvider setSupportsVoicemail:](v5, "setSupportsVoicemail:", [providerCopy supportsVoicemail]);
    -[CSDMessagingCallProvider setSupportsRecents:](v5, "setSupportsRecents:", [providerCopy supportsRecents]);
    supportedHandleTypes = [providerCopy supportedHandleTypes];
    [(CSDMessagingCallProvider *)v5 setSupportedHandleTypes:supportedHandleTypes];

    emergencyHandles = [providerCopy emergencyHandles];
    [(CSDMessagingCallProvider *)v5 setEmergencyTUHandles:emergencyHandles];

    emergencyLabeledHandles = [providerCopy emergencyLabeledHandles];
    [(CSDMessagingCallProvider *)v5 setEmergencyTULabeledHandles:emergencyLabeledHandles];

    prioritizedSenderIdentities = [providerCopy prioritizedSenderIdentities];
    [(CSDMessagingCallProvider *)v5 setPrioritizedTUSenderIdentities:prioritizedSenderIdentities];
  }

  return v5;
}

- (void)setSupportedHandleTypes:(id)types
{
  typesCopy = types;
  [(CSDMessagingCallProvider *)self clearProtoSupportedHandleTypes];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = typesCopy;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        -[CSDMessagingCallProvider addProtoSupportedHandleType:](self, "addProtoSupportedHandleType:", [*(*(&v10 + 1) + 8 * v9) unsignedIntValue]);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setEmergencyTUHandles:(id)handles
{
  handlesCopy = handles;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [handlesCopy count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = handlesCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [CSDMessagingHandle handleWithTUHandle:*(*(&v12 + 1) + 8 * v10), v12];
        [v5 addObject:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(CSDMessagingCallProvider *)self setEmergencyHandles:v5];
}

- (void)setEmergencyTULabeledHandles:(id)handles
{
  handlesCopy = handles;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [handlesCopy count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = handlesCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [CSDMessagingLabeledHandle handleWithTULabeledHandle:*(*(&v12 + 1) + 8 * v10), v12];
        [v5 addObject:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(CSDMessagingCallProvider *)self setEmergencyLabeledHandles:v5];
}

- (void)setPrioritizedTUSenderIdentities:(id)identities
{
  identitiesCopy = identities;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [identitiesCopy count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = identitiesCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [CSDMessagingSenderIdentity alloc];
        v13 = [(CSDMessagingSenderIdentity *)v12 initWithTUSenderIdentity:v11, v14];
        [v5 addObject:v13];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(CSDMessagingCallProvider *)self setPrioritizedSenderIdentities:v5];
}

@end