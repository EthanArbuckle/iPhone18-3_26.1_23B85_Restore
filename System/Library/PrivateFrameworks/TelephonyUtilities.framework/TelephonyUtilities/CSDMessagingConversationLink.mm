@interface CSDMessagingConversationLink
+ (id)linkWithTUConversationLink:(id)link includeGroupUUID:(BOOL)d;
- (BOOL)isEqual:(id)equal;
- (NSUUID)groupUUID;
- (TUConversationLink)tuConversationLink;
- (TUConversationLinkDescriptor)tuConversationLinkDescriptor;
- (TUHandle)originatorTUHandle;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsLinkLifetimeScope:(id)scope;
- (int)linkLifetimeScope;
- (unint64_t)hash;
- (void)addInvitedHandles:(id)handles;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsActivated:(BOOL)activated;
- (void)setHasLinkLifetimeScope:(BOOL)scope;
- (void)setHasPseudonymExpirationDateEpochTime:(BOOL)time;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingConversationLink

- (TUConversationLink)tuConversationLink
{
  if ([(CSDMessagingConversationLink *)self hasCreationDateEpochTime])
  {
    [(CSDMessagingConversationLink *)self creationDateEpochTime];
    v3 = [NSDate dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v3 = 0;
  }

  if ([(CSDMessagingConversationLink *)self hasPseudonymExpirationDateEpochTime])
  {
    [(CSDMessagingConversationLink *)self pseudonymExpirationDateEpochTime];
    v4 = [NSDate dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v4 = 0;
  }

  v5 = +[NSMutableSet set];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  invitedHandles = [(CSDMessagingConversationLink *)self invitedHandles];
  v7 = [invitedHandles countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(invitedHandles);
        }

        tuHandle = [*(*(&v21 + 1) + 8 * i) tuHandle];
        [v5 addObject:tuHandle];
      }

      v8 = [invitedHandles countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v12 = [TUConversationLink alloc];
  pseudonym = [(CSDMessagingConversationLink *)self pseudonym];
  publicKey = [(CSDMessagingConversationLink *)self publicKey];
  groupUUID = [(CSDMessagingConversationLink *)self groupUUID];
  originatorTUHandle = [(CSDMessagingConversationLink *)self originatorTUHandle];
  linkName = [(CSDMessagingConversationLink *)self linkName];
  LOBYTE(v20) = 0;
  v18 = [v12 initWithPseudonym:pseudonym publicKey:publicKey groupUUID:groupUUID originatorHandle:originatorTUHandle creationDate:v3 deletionDate:0 expirationDate:v4 invitedMemberHandles:v5 locallyCreated:v20 linkName:linkName linkLifetimeScope:-[CSDMessagingConversationLink linkLifetimeScope](self deleteReason:{"linkLifetimeScope"), 0}];

  return v18;
}

- (TUConversationLinkDescriptor)tuConversationLinkDescriptor
{
  if (![(CSDMessagingConversationLink *)self hasGeneratorDescriptor])
  {
    goto LABEL_9;
  }

  generatorDescriptor = [(CSDMessagingConversationLink *)self generatorDescriptor];
  if (([generatorDescriptor hasGeneratorID] & 1) == 0)
  {
    goto LABEL_8;
  }

  generatorDescriptor2 = [(CSDMessagingConversationLink *)self generatorDescriptor];
  if (([generatorDescriptor2 hasGeneratorVersion] & 1) == 0)
  {

LABEL_8:
    goto LABEL_9;
  }

  originatorTUHandle = [(CSDMessagingConversationLink *)self originatorTUHandle];

  if (!originatorTUHandle)
  {
LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

  v6 = [TUConversationLinkOriginator alloc];
  generatorDescriptor3 = [(CSDMessagingConversationLink *)self generatorDescriptor];
  generatorID = [generatorDescriptor3 generatorID];
  generatorDescriptor4 = [(CSDMessagingConversationLink *)self generatorDescriptor];
  generatorVersion = [generatorDescriptor4 generatorVersion];
  originatorTUHandle2 = [(CSDMessagingConversationLink *)self originatorTUHandle];
  v12 = [v6 initWithIdentifier:generatorID revision:generatorVersion handle:originatorTUHandle2];

  v13 = [TUMutableConversationLinkDescriptor alloc];
  groupUUID = [(CSDMessagingConversationLink *)self groupUUID];
  pseudonym = [(CSDMessagingConversationLink *)self pseudonym];
  publicKey = [(CSDMessagingConversationLink *)self publicKey];
  v17 = [v13 initWithGroupUUID:groupUUID originator:v12 pseudonym:pseudonym publicKey:publicKey];

  if ([(CSDMessagingConversationLink *)self hasIsActivated])
  {
    isActivated = [(CSDMessagingConversationLink *)self isActivated];
  }

  else
  {
    isActivated = 1;
  }

  [v17 setActivated:isActivated];
  [v17 setLinkLifetimeScope:{-[CSDMessagingConversationLink linkLifetimeScope](self, "linkLifetimeScope")}];
  if ([(CSDMessagingConversationLink *)self hasCreationDateEpochTime])
  {
    [(CSDMessagingConversationLink *)self creationDateEpochTime];
    v21 = [NSDate dateWithTimeIntervalSince1970:?];
    [v17 setCreationDate:v21];
  }

  if ([(CSDMessagingConversationLink *)self hasPseudonymExpirationDateEpochTime])
  {
    [(CSDMessagingConversationLink *)self pseudonymExpirationDateEpochTime];
    v22 = [NSDate dateWithTimeIntervalSince1970:?];
    [v17 setExpirationDate:v22];
  }

  v23 = +[NSMutableSet set];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  invitedHandles = [(CSDMessagingConversationLink *)self invitedHandles];
  v25 = [invitedHandles countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v33;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(invitedHandles);
        }

        tuHandle = [*(*(&v32 + 1) + 8 * i) tuHandle];
        [v23 addObject:tuHandle];
      }

      v26 = [invitedHandles countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v26);
  }

  [v17 setInvitedHandles:v23];
  if ([(CSDMessagingConversationLink *)self hasPrivateKey])
  {
    privateKey = [(CSDMessagingConversationLink *)self privateKey];
    [v17 setPrivateKey:privateKey];
  }

  if ([(CSDMessagingConversationLink *)self hasLinkName])
  {
    linkName = [(CSDMessagingConversationLink *)self linkName];
    [v17 setName:linkName];
  }

  v19 = [v17 copy];

LABEL_10:

  return v19;
}

- (NSUUID)groupUUID
{
  if ([(CSDMessagingConversationLink *)self hasGroupUUIDString])
  {
    v3 = [NSUUID alloc];
    groupUUIDString = [(CSDMessagingConversationLink *)self groupUUIDString];
    v5 = [v3 initWithUUIDString:groupUUIDString];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (TUHandle)originatorTUHandle
{
  if ([(CSDMessagingConversationLink *)self hasOriginatorHandle])
  {
    originatorHandle = [(CSDMessagingConversationLink *)self originatorHandle];
    tuHandle = [originatorHandle tuHandle];
  }

  else
  {
    tuHandle = 0;
  }

  return tuHandle;
}

+ (id)linkWithTUConversationLink:(id)link includeGroupUUID:(BOOL)d
{
  dCopy = d;
  linkCopy = link;
  v6 = objc_alloc_init(CSDMessagingConversationLink);
  pseudonym = [linkCopy pseudonym];
  [(CSDMessagingConversationLink *)v6 setPseudonym:pseudonym];

  publicKey = [linkCopy publicKey];
  [(CSDMessagingConversationLink *)v6 setPublicKey:publicKey];

  linkName = [linkCopy linkName];
  [(CSDMessagingConversationLink *)v6 setLinkName:linkName];

  -[CSDMessagingConversationLink setLinkLifetimeScope:](v6, "setLinkLifetimeScope:", [linkCopy linkLifetimeScope]);
  if (dCopy)
  {
    groupUUID = [linkCopy groupUUID];

    if (groupUUID)
    {
      groupUUID2 = [linkCopy groupUUID];
      uUIDString = [groupUUID2 UUIDString];
      [(CSDMessagingConversationLink *)v6 setGroupUUIDString:uUIDString];

      originatorHandle = [linkCopy originatorHandle];
      v14 = [CSDMessagingHandle handleWithTUHandle:originatorHandle];
      [(CSDMessagingConversationLink *)v6 setOriginatorHandle:v14];

      invitedMemberHandles = [linkCopy invitedMemberHandles];
      v16 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [invitedMemberHandles count]);

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      invitedMemberHandles2 = [linkCopy invitedMemberHandles];
      v18 = [invitedMemberHandles2 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v25;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v25 != v20)
            {
              objc_enumerationMutation(invitedMemberHandles2);
            }

            v22 = [CSDMessagingHandle handleWithTUHandle:*(*(&v24 + 1) + 8 * i)];
            [v16 addObject:v22];
          }

          v19 = [invitedMemberHandles2 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v19);
      }

      [(CSDMessagingConversationLink *)v6 setInvitedHandles:v16];
    }
  }

  return v6;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = CSDMessagingConversationLink;
  v3 = [(CSDMessagingConversationLink *)&v8 description];
  dictionaryRepresentation = [(CSDMessagingConversationLink *)self dictionaryRepresentation];
  v5 = TULoggableStringForObject();
  v6 = [NSString stringWithFormat:@"%@ %@", v3, v5];

  return v6;
}

- (void)addInvitedHandles:(id)handles
{
  handlesCopy = handles;
  invitedHandles = self->_invitedHandles;
  v8 = handlesCopy;
  if (!invitedHandles)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_invitedHandles;
    self->_invitedHandles = v6;

    handlesCopy = v8;
    invitedHandles = self->_invitedHandles;
  }

  [(NSMutableArray *)invitedHandles addObject:handlesCopy];
}

- (void)setHasPseudonymExpirationDateEpochTime:(BOOL)time
{
  if (time)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIsActivated:(BOOL)activated
{
  if (activated)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)linkLifetimeScope
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_linkLifetimeScope;
  }

  else
  {
    return 0;
  }
}

- (void)setHasLinkLifetimeScope:(BOOL)scope
{
  if (scope)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsLinkLifetimeScope:(id)scope
{
  scopeCopy = scope;
  if ([scopeCopy isEqualToString:@"Indefinite"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [scopeCopy isEqualToString:@"CallDuration"];
  }

  return v4;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  pseudonym = self->_pseudonym;
  if (pseudonym)
  {
    [v3 setObject:pseudonym forKey:@"pseudonym"];
  }

  publicKey = self->_publicKey;
  if (publicKey)
  {
    [v4 setObject:publicKey forKey:@"publicKey"];
  }

  privateKey = self->_privateKey;
  if (privateKey)
  {
    [v4 setObject:privateKey forKey:@"privateKey"];
  }

  if ([(NSMutableArray *)self->_invitedHandles count])
  {
    v8 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_invitedHandles, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = self->_invitedHandles;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v11);
    }

    [v4 setObject:v8 forKey:@"invitedHandles"];
  }

  if (*&self->_has)
  {
    v15 = [NSNumber numberWithDouble:self->_creationDateEpochTime];
    [v4 setObject:v15 forKey:@"creationDateEpochTime"];
  }

  groupUUIDString = self->_groupUUIDString;
  if (groupUUIDString)
  {
    [v4 setObject:groupUUIDString forKey:@"groupUUIDString"];
  }

  originatorHandle = self->_originatorHandle;
  if (originatorHandle)
  {
    dictionaryRepresentation2 = [(CSDMessagingHandle *)originatorHandle dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"originatorHandle"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v20 = [NSNumber numberWithDouble:self->_pseudonymExpirationDateEpochTime];
    [v4 setObject:v20 forKey:@"pseudonymExpirationDateEpochTime"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v21 = [NSNumber numberWithBool:self->_isActivated];
    [v4 setObject:v21 forKey:@"isActivated"];
  }

  generatorDescriptor = self->_generatorDescriptor;
  if (generatorDescriptor)
  {
    dictionaryRepresentation3 = [(CSDMessagingConversationLinkGeneratorDescriptor *)generatorDescriptor dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"generatorDescriptor"];
  }

  linkName = self->_linkName;
  if (linkName)
  {
    [v4 setObject:linkName forKey:@"linkName"];
  }

  if ((*&self->_has & 4) != 0)
  {
    linkLifetimeScope = self->_linkLifetimeScope;
    if (linkLifetimeScope)
    {
      if (linkLifetimeScope == 1)
      {
        v26 = @"CallDuration";
      }

      else
      {
        v26 = [NSString stringWithFormat:@"(unknown: %i)", self->_linkLifetimeScope];
      }
    }

    else
    {
      v26 = @"Indefinite";
    }

    [v4 setObject:v26 forKey:@"linkLifetimeScope"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_pseudonym)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_publicKey)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_privateKey)
  {
    PBDataWriterWriteDataField();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_invitedHandles;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    creationDateEpochTime = self->_creationDateEpochTime;
    PBDataWriterWriteDoubleField();
  }

  if (self->_groupUUIDString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_originatorHandle)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    pseudonymExpirationDateEpochTime = self->_pseudonymExpirationDateEpochTime;
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    isActivated = self->_isActivated;
    PBDataWriterWriteBOOLField();
  }

  if (self->_generatorDescriptor)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_linkName)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    linkLifetimeScope = self->_linkLifetimeScope;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_pseudonym)
  {
    [toCopy setPseudonym:?];
  }

  if (self->_publicKey)
  {
    [toCopy setPublicKey:?];
  }

  if (self->_privateKey)
  {
    [toCopy setPrivateKey:?];
  }

  if ([(CSDMessagingConversationLink *)self invitedHandlesCount])
  {
    [toCopy clearInvitedHandles];
    invitedHandlesCount = [(CSDMessagingConversationLink *)self invitedHandlesCount];
    if (invitedHandlesCount)
    {
      v5 = invitedHandlesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(CSDMessagingConversationLink *)self invitedHandlesAtIndex:i];
        [toCopy addInvitedHandles:v7];
      }
    }
  }

  v8 = toCopy;
  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_creationDateEpochTime;
    *(toCopy + 100) |= 1u;
  }

  if (self->_groupUUIDString)
  {
    [toCopy setGroupUUIDString:?];
    v8 = toCopy;
  }

  if (self->_originatorHandle)
  {
    [toCopy setOriginatorHandle:?];
    v8 = toCopy;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8[2] = *&self->_pseudonymExpirationDateEpochTime;
    *(v8 + 100) |= 2u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v8 + 96) = self->_isActivated;
    *(v8 + 100) |= 8u;
  }

  if (self->_generatorDescriptor)
  {
    [toCopy setGeneratorDescriptor:?];
    v8 = toCopy;
  }

  if (self->_linkName)
  {
    [toCopy setLinkName:?];
    v8 = toCopy;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v8 + 12) = self->_linkLifetimeScope;
    *(v8 + 100) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_pseudonym copyWithZone:zone];
  v7 = v5[10];
  v5[10] = v6;

  v8 = [(NSData *)self->_publicKey copyWithZone:zone];
  v9 = v5[11];
  v5[11] = v8;

  v10 = [(NSData *)self->_privateKey copyWithZone:zone];
  v11 = v5[9];
  v5[9] = v10;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = self->_invitedHandles;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v28 + 1) + 8 * i) copyWithZone:{zone, v28}];
        [v5 addInvitedHandles:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v14);
  }

  if (*&self->_has)
  {
    v5[1] = *&self->_creationDateEpochTime;
    *(v5 + 100) |= 1u;
  }

  v18 = [(NSString *)self->_groupUUIDString copyWithZone:zone, v28];
  v19 = v5[4];
  v5[4] = v18;

  v20 = [(CSDMessagingHandle *)self->_originatorHandle copyWithZone:zone];
  v21 = v5[8];
  v5[8] = v20;

  has = self->_has;
  if ((has & 2) != 0)
  {
    v5[2] = *&self->_pseudonymExpirationDateEpochTime;
    *(v5 + 100) |= 2u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v5 + 96) = self->_isActivated;
    *(v5 + 100) |= 8u;
  }

  v23 = [(CSDMessagingConversationLinkGeneratorDescriptor *)self->_generatorDescriptor copyWithZone:zone];
  v24 = v5[3];
  v5[3] = v23;

  v25 = [(NSString *)self->_linkName copyWithZone:zone];
  v26 = v5[7];
  v5[7] = v25;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 12) = self->_linkLifetimeScope;
    *(v5 + 100) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  pseudonym = self->_pseudonym;
  if (pseudonym | *(equalCopy + 10))
  {
    if (![(NSString *)pseudonym isEqual:?])
    {
      goto LABEL_35;
    }
  }

  publicKey = self->_publicKey;
  if (publicKey | *(equalCopy + 11))
  {
    if (![(NSData *)publicKey isEqual:?])
    {
      goto LABEL_35;
    }
  }

  privateKey = self->_privateKey;
  if (privateKey | *(equalCopy + 9))
  {
    if (![(NSData *)privateKey isEqual:?])
    {
      goto LABEL_35;
    }
  }

  invitedHandles = self->_invitedHandles;
  if (invitedHandles | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)invitedHandles isEqual:?])
    {
      goto LABEL_35;
    }
  }

  v9 = *(equalCopy + 100);
  if (*&self->_has)
  {
    if ((*(equalCopy + 100) & 1) == 0 || self->_creationDateEpochTime != *(equalCopy + 1))
    {
      goto LABEL_35;
    }
  }

  else if (*(equalCopy + 100))
  {
    goto LABEL_35;
  }

  groupUUIDString = self->_groupUUIDString;
  if (groupUUIDString | *(equalCopy + 4) && ![(NSString *)groupUUIDString isEqual:?])
  {
    goto LABEL_35;
  }

  originatorHandle = self->_originatorHandle;
  if (originatorHandle | *(equalCopy + 8))
  {
    if (![(CSDMessagingHandle *)originatorHandle isEqual:?])
    {
      goto LABEL_35;
    }
  }

  v12 = *(equalCopy + 100);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 100) & 2) == 0 || self->_pseudonymExpirationDateEpochTime != *(equalCopy + 2))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equalCopy + 100) & 2) != 0)
  {
    goto LABEL_35;
  }

  if ((*&self->_has & 8) == 0)
  {
    if ((*(equalCopy + 100) & 8) == 0)
    {
      goto LABEL_26;
    }

LABEL_35:
    v15 = 0;
    goto LABEL_36;
  }

  if ((*(equalCopy + 100) & 8) == 0)
  {
    goto LABEL_35;
  }

  v17 = *(equalCopy + 96);
  if (self->_isActivated)
  {
    if ((*(equalCopy + 96) & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (*(equalCopy + 96))
  {
    goto LABEL_35;
  }

LABEL_26:
  generatorDescriptor = self->_generatorDescriptor;
  if (generatorDescriptor | *(equalCopy + 3) && ![(CSDMessagingConversationLinkGeneratorDescriptor *)generatorDescriptor isEqual:?])
  {
    goto LABEL_35;
  }

  linkName = self->_linkName;
  if (linkName | *(equalCopy + 7))
  {
    if (![(NSString *)linkName isEqual:?])
    {
      goto LABEL_35;
    }
  }

  v15 = (*(equalCopy + 100) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 100) & 4) == 0 || self->_linkLifetimeScope != *(equalCopy + 12))
    {
      goto LABEL_35;
    }

    v15 = 1;
  }

LABEL_36:

  return v15;
}

- (unint64_t)hash
{
  v25 = [(NSString *)self->_pseudonym hash];
  v24 = [(NSData *)self->_publicKey hash];
  v23 = [(NSData *)self->_privateKey hash];
  v3 = [(NSMutableArray *)self->_invitedHandles hash];
  if (*&self->_has)
  {
    creationDateEpochTime = self->_creationDateEpochTime;
    if (creationDateEpochTime < 0.0)
    {
      creationDateEpochTime = -creationDateEpochTime;
    }

    *v4.i64 = floor(creationDateEpochTime + 0.5);
    v8 = (creationDateEpochTime - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = [(NSString *)self->_groupUUIDString hash];
  v11 = [(CSDMessagingHandle *)self->_originatorHandle hash];
  if ((*&self->_has & 2) != 0)
  {
    pseudonymExpirationDateEpochTime = self->_pseudonymExpirationDateEpochTime;
    if (pseudonymExpirationDateEpochTime < 0.0)
    {
      pseudonymExpirationDateEpochTime = -pseudonymExpirationDateEpochTime;
    }

    *v12.i64 = floor(pseudonymExpirationDateEpochTime + 0.5);
    v16 = (pseudonymExpirationDateEpochTime - *v12.i64) * 1.84467441e19;
    *v13.i64 = *v12.i64 - trunc(*v12.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v14 = 2654435761u * *vbslq_s8(vnegq_f64(v17), v13, v12).i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabs(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    v18 = 2654435761 * self->_isActivated;
  }

  else
  {
    v18 = 0;
  }

  v19 = [(CSDMessagingConversationLinkGeneratorDescriptor *)self->_generatorDescriptor hash];
  v20 = [(NSString *)self->_linkName hash];
  if ((*&self->_has & 4) != 0)
  {
    v21 = 2654435761 * self->_linkLifetimeScope;
  }

  else
  {
    v21 = 0;
  }

  return v24 ^ v25 ^ v23 ^ v3 ^ v6 ^ v10 ^ v11 ^ v14 ^ v18 ^ v19 ^ v20 ^ v21;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 10))
  {
    [(CSDMessagingConversationLink *)self setPseudonym:?];
  }

  if (*(fromCopy + 11))
  {
    [(CSDMessagingConversationLink *)self setPublicKey:?];
  }

  if (*(fromCopy + 9))
  {
    [(CSDMessagingConversationLink *)self setPrivateKey:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = *(fromCopy + 5);
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(CSDMessagingConversationLink *)self addInvitedHandles:*(*(&v15 + 1) + 8 * i), v15];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 100))
  {
    self->_creationDateEpochTime = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 4))
  {
    [(CSDMessagingConversationLink *)self setGroupUUIDString:?];
  }

  originatorHandle = self->_originatorHandle;
  v11 = *(fromCopy + 8);
  if (originatorHandle)
  {
    if (v11)
    {
      [(CSDMessagingHandle *)originatorHandle mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(CSDMessagingConversationLink *)self setOriginatorHandle:?];
  }

  v12 = *(fromCopy + 100);
  if ((v12 & 2) != 0)
  {
    self->_pseudonymExpirationDateEpochTime = *(fromCopy + 2);
    *&self->_has |= 2u;
    v12 = *(fromCopy + 100);
  }

  if ((v12 & 8) != 0)
  {
    self->_isActivated = *(fromCopy + 96);
    *&self->_has |= 8u;
  }

  generatorDescriptor = self->_generatorDescriptor;
  v14 = *(fromCopy + 3);
  if (generatorDescriptor)
  {
    if (v14)
    {
      [(CSDMessagingConversationLinkGeneratorDescriptor *)generatorDescriptor mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(CSDMessagingConversationLink *)self setGeneratorDescriptor:?];
  }

  if (*(fromCopy + 7))
  {
    [(CSDMessagingConversationLink *)self setLinkName:?];
  }

  if ((*(fromCopy + 100) & 4) != 0)
  {
    self->_linkLifetimeScope = *(fromCopy + 12);
    *&self->_has |= 4u;
  }
}

@end