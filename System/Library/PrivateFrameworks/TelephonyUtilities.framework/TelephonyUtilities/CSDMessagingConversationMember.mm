@interface CSDMessagingConversationMember
+ (CSDMessagingConversationMember)memberWithTUConversationMember:(id)a3;
- (BOOL)isEqual:(id)a3;
- (TUConversationMember)tuConversationMember;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsValidationSource:(id)a3;
- (int)validationSource;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasValidationSource:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingConversationMember

+ (CSDMessagingConversationMember)memberWithTUConversationMember:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CSDMessagingConversationMember);
  v5 = [v3 handle];
  v6 = [CSDMessagingHandle handleWithTUHandle:v5];
  [(CSDMessagingConversationMember *)v4 setHandle:v6];

  v7 = [v3 nickname];
  [(CSDMessagingConversationMember *)v4 setNickname:v7];

  v8 = [v3 lightweightPrimary];

  if (v8)
  {
    v9 = [v3 lightweightPrimary];
    v10 = [CSDMessagingHandle handleWithTUHandle:v9];
    [(CSDMessagingConversationMember *)v4 setLightweightPrimary:v10];

    -[CSDMessagingConversationMember setLightweightPrimaryParticipantID:](v4, "setLightweightPrimaryParticipantID:", [v3 lightweightPrimaryParticipantIdentifier]);
  }

  v11 = [v3 associationVoucher];
  if (v11)
  {
    v12 = v11;
    v13 = [v3 validationSource];

    if (v13 == 2)
    {
      [(CSDMessagingConversationMember *)v4 setValidationSource:2];
      v14 = [v3 associationVoucher];
      v15 = [CSDMessagingVoucher voucherWithTUVoucher:v14];
      [(CSDMessagingConversationMember *)v4 setAssociationVoucher:v15];
    }
  }

  v16 = [v3 stableDeviceIdentifier];
  [(CSDMessagingConversationMember *)v4 setStableDeviceIdentifier:v16];

  v17 = [v3 proposedParticipantCluster];

  if (v17)
  {
    v18 = [v3 proposedParticipantCluster];
    v19 = [CSDMessagingConversationParticipantCluster participantClusterWithTUConversationParticipantCluster:v18];
    [(CSDMessagingConversationMember *)v4 setProposedCluster:v19];
  }

  return v4;
}

- (TUConversationMember)tuConversationMember
{
  v3 = [(CSDMessagingConversationMember *)self handle];

  if (v3 && (-[CSDMessagingConversationMember handle](self, "handle"), v4 = objc_claimAutoreleasedReturnValue(), [v4 tuHandle], v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    v6 = [TUConversationMember alloc];
    v7 = [(CSDMessagingConversationMember *)self nickname];
    v8 = [v6 initWithHandle:v5 nickname:v7];

    v9 = [(CSDMessagingConversationMember *)self lightweightPrimary];
    v10 = [v9 tuHandle];
    [v8 setLightweightPrimary:v10];

    [v8 setLightweightPrimaryParticipantIdentifier:{-[CSDMessagingConversationMember lightweightPrimaryParticipantID](self, "lightweightPrimaryParticipantID")}];
    v11 = [v8 lightweightPrimary];
    if (v11)
    {
      v12 = v11;
      v13 = [v8 lightweightPrimaryParticipantIdentifier];

      if (v13)
      {
        [v8 setIsLightweightMember:1];
      }
    }

    v14 = [(CSDMessagingConversationMember *)self associationVoucher];
    v15 = [v14 tuVoucher];

    if (v15 && [(CSDMessagingConversationMember *)self validationSource]== 2)
    {
      [v8 setValidationSource:2];
      [v8 setAssociationVoucher:v15];
      v16 = [CSDMessagingMemberAssociationClaim alloc];
      v17 = [v15 unsafeData];
      v18 = [(CSDMessagingMemberAssociationClaim *)v16 initWithData:v17];
      v19 = [(CSDMessagingMemberAssociationClaim *)v18 tuAssociationForHandle:v5];
      [v8 setAssociation:v19];
    }

    v20 = [(CSDMessagingConversationMember *)self stableDeviceIdentifier];
    [v8 setStableDeviceIdentifier:v20];

    v21 = [(CSDMessagingConversationMember *)self proposedCluster];
    v22 = [v21 tuConversationParticipantCluster];
    [v8 setProposedParticipantCluster:v22];
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
  v4 = [(CSDMessagingConversationMember *)self dictionaryRepresentation];
  v5 = TULoggableStringForObject();
  v6 = [NSString stringWithFormat:@"%@ %@", v3, v5];

  return v6;
}

- (void)setHasVersion:(BOOL)a3
{
  if (a3)
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

- (void)setHasValidationSource:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsValidationSource:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Endorsement"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Vouched"])
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
    v6 = [(CSDMessagingHandle *)handle dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"handle"];
  }

  nickname = self->_nickname;
  if (nickname)
  {
    [v3 setObject:nickname forKey:@"nickname"];
  }

  lightweightPrimary = self->_lightweightPrimary;
  if (lightweightPrimary)
  {
    v9 = [(CSDMessagingHandle *)lightweightPrimary dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"lightweightPrimary"];
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
    v15 = [(CSDMessagingVoucher *)associationVoucher dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"associationVoucher"];
  }

  stableDeviceIdentifier = self->_stableDeviceIdentifier;
  if (stableDeviceIdentifier)
  {
    [v3 setObject:stableDeviceIdentifier forKey:@"stableDeviceIdentifier"];
  }

  proposedCluster = self->_proposedCluster;
  if (proposedCluster)
  {
    v18 = [(CSDMessagingConversationParticipantCluster *)proposedCluster dictionaryRepresentation];
    [v3 setObject:v18 forKey:@"proposedCluster"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if ((*&self->_has & 4) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    v4 = v9;
  }

  if (self->_handle)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_nickname)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_lightweightPrimary)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  has = self->_has;
  if (has)
  {
    lightweightPrimaryParticipantID = self->_lightweightPrimaryParticipantID;
    PBDataWriterWriteUint64Field();
    v4 = v9;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    validationSource = self->_validationSource;
    PBDataWriterWriteInt32Field();
    v4 = v9;
  }

  if (self->_associationVoucher)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_stableDeviceIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_proposedCluster)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 4) != 0)
  {
    v4[17] = self->_version;
    *(v4 + 72) |= 4u;
  }

  v6 = v4;
  if (self->_handle)
  {
    [v4 setHandle:?];
    v4 = v6;
  }

  if (self->_nickname)
  {
    [v6 setNickname:?];
    v4 = v6;
  }

  if (self->_lightweightPrimary)
  {
    [v6 setLightweightPrimary:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_lightweightPrimaryParticipantID;
    *(v4 + 72) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[16] = self->_validationSource;
    *(v4 + 72) |= 2u;
  }

  if (self->_associationVoucher)
  {
    [v6 setAssociationVoucher:?];
    v4 = v6;
  }

  if (self->_stableDeviceIdentifier)
  {
    [v6 setStableDeviceIdentifier:?];
    v4 = v6;
  }

  if (self->_proposedCluster)
  {
    [v6 setProposedCluster:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    v5[17] = self->_version;
    *(v5 + 72) |= 4u;
  }

  v7 = [(CSDMessagingHandle *)self->_handle copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSString *)self->_nickname copyWithZone:a3];
  v10 = v6[5];
  v6[5] = v9;

  v11 = [(CSDMessagingHandle *)self->_lightweightPrimary copyWithZone:a3];
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

  v14 = [(CSDMessagingVoucher *)self->_associationVoucher copyWithZone:a3];
  v15 = v6[2];
  v6[2] = v14;

  v16 = [(NSString *)self->_stableDeviceIdentifier copyWithZone:a3];
  v17 = v6[7];
  v6[7] = v16;

  v18 = [(CSDMessagingConversationParticipantCluster *)self->_proposedCluster copyWithZone:a3];
  v19 = v6[6];
  v6[6] = v18;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  v5 = *(v4 + 72);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 72) & 4) == 0 || self->_version != *(v4 + 17))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 72) & 4) != 0)
  {
LABEL_29:
    v13 = 0;
    goto LABEL_30;
  }

  handle = self->_handle;
  if (handle | *(v4 + 3) && ![(CSDMessagingHandle *)handle isEqual:?])
  {
    goto LABEL_29;
  }

  nickname = self->_nickname;
  if (nickname | *(v4 + 5))
  {
    if (![(NSString *)nickname isEqual:?])
    {
      goto LABEL_29;
    }
  }

  lightweightPrimary = self->_lightweightPrimary;
  if (lightweightPrimary | *(v4 + 4))
  {
    if (![(CSDMessagingHandle *)lightweightPrimary isEqual:?])
    {
      goto LABEL_29;
    }
  }

  v9 = *(v4 + 72);
  if (*&self->_has)
  {
    if ((*(v4 + 72) & 1) == 0 || self->_lightweightPrimaryParticipantID != *(v4 + 1))
    {
      goto LABEL_29;
    }
  }

  else if (*(v4 + 72))
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 72) & 2) == 0 || self->_validationSource != *(v4 + 16))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 72) & 2) != 0)
  {
    goto LABEL_29;
  }

  associationVoucher = self->_associationVoucher;
  if (associationVoucher | *(v4 + 2) && ![(CSDMessagingVoucher *)associationVoucher isEqual:?])
  {
    goto LABEL_29;
  }

  stableDeviceIdentifier = self->_stableDeviceIdentifier;
  if (stableDeviceIdentifier | *(v4 + 7))
  {
    if (![(NSString *)stableDeviceIdentifier isEqual:?])
    {
      goto LABEL_29;
    }
  }

  proposedCluster = self->_proposedCluster;
  if (proposedCluster | *(v4 + 6))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((v4[18] & 4) != 0)
  {
    self->_version = v4[17];
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