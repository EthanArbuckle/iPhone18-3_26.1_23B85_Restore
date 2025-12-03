@interface CSDMessagingConversationMember
+ (CSDMessagingConversationMember)memberWithTUConversationMember:(id)member;
- (BOOL)isEqual:(id)equal;
- (TUConversationMember)tuConversationMember;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsValidationSource:(id)source;
- (int)validationSource;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasValidationSource:(BOOL)source;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingConversationMember

+ (CSDMessagingConversationMember)memberWithTUConversationMember:(id)member
{
  memberCopy = member;
  v4 = objc_alloc_init(CSDMessagingConversationMember);
  handle = [memberCopy handle];
  v6 = [CSDMessagingHandle handleWithTUHandle:handle];
  [(CSDMessagingConversationMember *)v4 setHandle:v6];

  nickname = [memberCopy nickname];
  [(CSDMessagingConversationMember *)v4 setNickname:nickname];

  lightweightPrimary = [memberCopy lightweightPrimary];

  if (lightweightPrimary)
  {
    lightweightPrimary2 = [memberCopy lightweightPrimary];
    v10 = [CSDMessagingHandle handleWithTUHandle:lightweightPrimary2];
    [(CSDMessagingConversationMember *)v4 setLightweightPrimary:v10];

    -[CSDMessagingConversationMember setLightweightPrimaryParticipantID:](v4, "setLightweightPrimaryParticipantID:", [memberCopy lightweightPrimaryParticipantIdentifier]);
  }

  associationVoucher = [memberCopy associationVoucher];
  if (associationVoucher)
  {
    v12 = associationVoucher;
    validationSource = [memberCopy validationSource];

    if (validationSource == 2)
    {
      [(CSDMessagingConversationMember *)v4 setValidationSource:2];
      associationVoucher2 = [memberCopy associationVoucher];
      v15 = [CSDMessagingVoucher voucherWithTUVoucher:associationVoucher2];
      [(CSDMessagingConversationMember *)v4 setAssociationVoucher:v15];
    }
  }

  stableDeviceIdentifier = [memberCopy stableDeviceIdentifier];
  [(CSDMessagingConversationMember *)v4 setStableDeviceIdentifier:stableDeviceIdentifier];

  proposedParticipantCluster = [memberCopy proposedParticipantCluster];

  if (proposedParticipantCluster)
  {
    proposedParticipantCluster2 = [memberCopy proposedParticipantCluster];
    v19 = [CSDMessagingConversationParticipantCluster participantClusterWithTUConversationParticipantCluster:proposedParticipantCluster2];
    [(CSDMessagingConversationMember *)v4 setProposedCluster:v19];
  }

  return v4;
}

- (TUConversationMember)tuConversationMember
{
  handle = [(CSDMessagingConversationMember *)self handle];

  if (handle && (-[CSDMessagingConversationMember handle](self, "handle"), v4 = objc_claimAutoreleasedReturnValue(), [v4 tuHandle], v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    v6 = [TUConversationMember alloc];
    nickname = [(CSDMessagingConversationMember *)self nickname];
    v8 = [v6 initWithHandle:v5 nickname:nickname];

    lightweightPrimary = [(CSDMessagingConversationMember *)self lightweightPrimary];
    tuHandle = [lightweightPrimary tuHandle];
    [v8 setLightweightPrimary:tuHandle];

    [v8 setLightweightPrimaryParticipantIdentifier:{-[CSDMessagingConversationMember lightweightPrimaryParticipantID](self, "lightweightPrimaryParticipantID")}];
    lightweightPrimary2 = [v8 lightweightPrimary];
    if (lightweightPrimary2)
    {
      v12 = lightweightPrimary2;
      lightweightPrimaryParticipantIdentifier = [v8 lightweightPrimaryParticipantIdentifier];

      if (lightweightPrimaryParticipantIdentifier)
      {
        [v8 setIsLightweightMember:1];
      }
    }

    associationVoucher = [(CSDMessagingConversationMember *)self associationVoucher];
    tuVoucher = [associationVoucher tuVoucher];

    if (tuVoucher && [(CSDMessagingConversationMember *)self validationSource]== 2)
    {
      [v8 setValidationSource:2];
      [v8 setAssociationVoucher:tuVoucher];
      v16 = [CSDMessagingMemberAssociationClaim alloc];
      unsafeData = [tuVoucher unsafeData];
      v18 = [(CSDMessagingMemberAssociationClaim *)v16 initWithData:unsafeData];
      v19 = [(CSDMessagingMemberAssociationClaim *)v18 tuAssociationForHandle:v5];
      [v8 setAssociation:v19];
    }

    stableDeviceIdentifier = [(CSDMessagingConversationMember *)self stableDeviceIdentifier];
    [v8 setStableDeviceIdentifier:stableDeviceIdentifier];

    proposedCluster = [(CSDMessagingConversationMember *)self proposedCluster];
    tuConversationParticipantCluster = [proposedCluster tuConversationParticipantCluster];
    [v8 setProposedParticipantCluster:tuConversationParticipantCluster];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = CSDMessagingConversationMember;
  v3 = [(CSDMessagingConversationMember *)&v8 description];
  dictionaryRepresentation = [(CSDMessagingConversationMember *)self dictionaryRepresentation];
  v5 = TULoggableStringForObject();
  v6 = [NSString stringWithFormat:@"%@ %@", v3, v5];

  return v6;
}

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)validationSource
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_validationSource;
  }

  else
  {
    return 0;
  }
}

- (void)setHasValidationSource:(BOOL)source
{
  if (source)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsValidationSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([sourceCopy isEqualToString:@"Endorsement"])
  {
    v4 = 1;
  }

  else if ([sourceCopy isEqualToString:@"Vouched"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 4) != 0)
  {
    v4 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v4 forKey:@"version"];
  }

  handle = self->_handle;
  if (handle)
  {
    dictionaryRepresentation = [(CSDMessagingHandle *)handle dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"handle"];
  }

  nickname = self->_nickname;
  if (nickname)
  {
    [v3 setObject:nickname forKey:@"nickname"];
  }

  lightweightPrimary = self->_lightweightPrimary;
  if (lightweightPrimary)
  {
    dictionaryRepresentation2 = [(CSDMessagingHandle *)lightweightPrimary dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"lightweightPrimary"];
  }

  has = self->_has;
  if (has)
  {
    v11 = [NSNumber numberWithUnsignedLongLong:self->_lightweightPrimaryParticipantID];
    [v3 setObject:v11 forKey:@"lightweightPrimaryParticipantID"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    validationSource = self->_validationSource;
    if (validationSource >= 3)
    {
      v13 = [NSString stringWithFormat:@"(unknown: %i)", self->_validationSource];
    }

    else
    {
      v13 = *(&off_10061CA00 + validationSource);
    }

    [v3 setObject:v13 forKey:@"validationSource"];
  }

  associationVoucher = self->_associationVoucher;
  if (associationVoucher)
  {
    dictionaryRepresentation3 = [(CSDMessagingVoucher *)associationVoucher dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"associationVoucher"];
  }

  stableDeviceIdentifier = self->_stableDeviceIdentifier;
  if (stableDeviceIdentifier)
  {
    [v3 setObject:stableDeviceIdentifier forKey:@"stableDeviceIdentifier"];
  }

  proposedCluster = self->_proposedCluster;
  if (proposedCluster)
  {
    dictionaryRepresentation4 = [(CSDMessagingConversationParticipantCluster *)proposedCluster dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation4 forKey:@"proposedCluster"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if ((*&self->_has & 4) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
  }

  if (self->_handle)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_nickname)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_lightweightPrimary)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  has = self->_has;
  if (has)
  {
    lightweightPrimaryParticipantID = self->_lightweightPrimaryParticipantID;
    PBDataWriterWriteUint64Field();
    toCopy = v9;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    validationSource = self->_validationSource;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
  }

  if (self->_associationVoucher)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_stableDeviceIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_proposedCluster)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    toCopy[17] = self->_version;
    *(toCopy + 72) |= 4u;
  }

  v6 = toCopy;
  if (self->_handle)
  {
    [toCopy setHandle:?];
    toCopy = v6;
  }

  if (self->_nickname)
  {
    [v6 setNickname:?];
    toCopy = v6;
  }

  if (self->_lightweightPrimary)
  {
    [v6 setLightweightPrimary:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_lightweightPrimaryParticipantID;
    *(toCopy + 72) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[16] = self->_validationSource;
    *(toCopy + 72) |= 2u;
  }

  if (self->_associationVoucher)
  {
    [v6 setAssociationVoucher:?];
    toCopy = v6;
  }

  if (self->_stableDeviceIdentifier)
  {
    [v6 setStableDeviceIdentifier:?];
    toCopy = v6;
  }

  if (self->_proposedCluster)
  {
    [v6 setProposedCluster:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    v5[17] = self->_version;
    *(v5 + 72) |= 4u;
  }

  v7 = [(CSDMessagingHandle *)self->_handle copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSString *)self->_nickname copyWithZone:zone];
  v10 = v6[5];
  v6[5] = v9;

  v11 = [(CSDMessagingHandle *)self->_lightweightPrimary copyWithZone:zone];
  v12 = v6[4];
  v6[4] = v11;

  has = self->_has;
  if (has)
  {
    v6[1] = self->_lightweightPrimaryParticipantID;
    *(v6 + 72) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_validationSource;
    *(v6 + 72) |= 2u;
  }

  v14 = [(CSDMessagingVoucher *)self->_associationVoucher copyWithZone:zone];
  v15 = v6[2];
  v6[2] = v14;

  v16 = [(NSString *)self->_stableDeviceIdentifier copyWithZone:zone];
  v17 = v6[7];
  v6[7] = v16;

  v18 = [(CSDMessagingConversationParticipantCluster *)self->_proposedCluster copyWithZone:zone];
  v19 = v6[6];
  v6[6] = v18;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  v5 = *(equalCopy + 72);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 72) & 4) == 0 || self->_version != *(equalCopy + 17))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 72) & 4) != 0)
  {
LABEL_29:
    v13 = 0;
    goto LABEL_30;
  }

  handle = self->_handle;
  if (handle | *(equalCopy + 3) && ![(CSDMessagingHandle *)handle isEqual:?])
  {
    goto LABEL_29;
  }

  nickname = self->_nickname;
  if (nickname | *(equalCopy + 5))
  {
    if (![(NSString *)nickname isEqual:?])
    {
      goto LABEL_29;
    }
  }

  lightweightPrimary = self->_lightweightPrimary;
  if (lightweightPrimary | *(equalCopy + 4))
  {
    if (![(CSDMessagingHandle *)lightweightPrimary isEqual:?])
    {
      goto LABEL_29;
    }
  }

  v9 = *(equalCopy + 72);
  if (*&self->_has)
  {
    if ((*(equalCopy + 72) & 1) == 0 || self->_lightweightPrimaryParticipantID != *(equalCopy + 1))
    {
      goto LABEL_29;
    }
  }

  else if (*(equalCopy + 72))
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 72) & 2) == 0 || self->_validationSource != *(equalCopy + 16))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 72) & 2) != 0)
  {
    goto LABEL_29;
  }

  associationVoucher = self->_associationVoucher;
  if (associationVoucher | *(equalCopy + 2) && ![(CSDMessagingVoucher *)associationVoucher isEqual:?])
  {
    goto LABEL_29;
  }

  stableDeviceIdentifier = self->_stableDeviceIdentifier;
  if (stableDeviceIdentifier | *(equalCopy + 7))
  {
    if (![(NSString *)stableDeviceIdentifier isEqual:?])
    {
      goto LABEL_29;
    }
  }

  proposedCluster = self->_proposedCluster;
  if (proposedCluster | *(equalCopy + 6))
  {
    v13 = [(CSDMessagingConversationParticipantCluster *)proposedCluster isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_30:

  return v13;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(CSDMessagingHandle *)self->_handle hash];
  v5 = [(NSString *)self->_nickname hash];
  v6 = [(CSDMessagingHandle *)self->_lightweightPrimary hash];
  if (*&self->_has)
  {
    v7 = 2654435761u * self->_lightweightPrimaryParticipantID;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v7 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v8 = 2654435761 * self->_validationSource;
LABEL_9:
  v9 = v4 ^ v3 ^ v5 ^ v6;
  v10 = v7 ^ v8 ^ [(CSDMessagingVoucher *)self->_associationVoucher hash];
  v11 = v9 ^ v10 ^ [(NSString *)self->_stableDeviceIdentifier hash];
  return v11 ^ [(CSDMessagingConversationParticipantCluster *)self->_proposedCluster hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[18] & 4) != 0)
  {
    self->_version = fromCopy[17];
    *&self->_has |= 4u;
  }

  handle = self->_handle;
  v7 = *(v5 + 3);
  v15 = v5;
  if (handle)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(CSDMessagingHandle *)handle mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(CSDMessagingConversationMember *)self setHandle:?];
  }

  v5 = v15;
LABEL_9:
  if (*(v5 + 5))
  {
    [(CSDMessagingConversationMember *)self setNickname:?];
    v5 = v15;
  }

  lightweightPrimary = self->_lightweightPrimary;
  v9 = *(v5 + 4);
  if (lightweightPrimary)
  {
    if (!v9)
    {
      goto LABEL_17;
    }

    [(CSDMessagingHandle *)lightweightPrimary mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_17;
    }

    [(CSDMessagingConversationMember *)self setLightweightPrimary:?];
  }

  v5 = v15;
LABEL_17:
  v10 = *(v5 + 72);
  if (v10)
  {
    self->_lightweightPrimaryParticipantID = *(v5 + 1);
    *&self->_has |= 1u;
    v10 = *(v5 + 72);
  }

  if ((v10 & 2) != 0)
  {
    self->_validationSource = *(v5 + 16);
    *&self->_has |= 2u;
  }

  associationVoucher = self->_associationVoucher;
  v12 = *(v5 + 2);
  if (associationVoucher)
  {
    if (!v12)
    {
      goto LABEL_27;
    }

    [(CSDMessagingVoucher *)associationVoucher mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_27;
    }

    [(CSDMessagingConversationMember *)self setAssociationVoucher:?];
  }

  v5 = v15;
LABEL_27:
  if (*(v5 + 7))
  {
    [(CSDMessagingConversationMember *)self setStableDeviceIdentifier:?];
    v5 = v15;
  }

  proposedCluster = self->_proposedCluster;
  v14 = *(v5 + 6);
  if (proposedCluster)
  {
    if (!v14)
    {
      goto LABEL_35;
    }

    [(CSDMessagingConversationParticipantCluster *)proposedCluster mergeFrom:?];
  }

  else
  {
    if (!v14)
    {
      goto LABEL_35;
    }

    [(CSDMessagingConversationMember *)self setProposedCluster:?];
  }

  v5 = v15;
LABEL_35:
}

@end