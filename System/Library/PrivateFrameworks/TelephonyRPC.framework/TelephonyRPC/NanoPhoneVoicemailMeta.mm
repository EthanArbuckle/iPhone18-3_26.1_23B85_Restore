@interface NanoPhoneVoicemailMeta
+ (id)voicemailWithMessage:(id)message;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NanoPhoneVoicemailMeta)initWithVoicemailMessage:(id)message;
- (id)amrDataPath;
- (id)asXpcObject;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)voicemailDescription;
- (unint64_t)hash;
- (void)clearVoicemailBody;
- (void)copyTo:(id)to;
- (void)loadVoicemailBodyIfNeeded;
- (void)mergeFrom:(id)from;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasFlags:(BOOL)flags;
- (void)setHasIdentifier:(BOOL)identifier;
- (void)setHasRemoteUID:(BOOL)d;
- (void)writeTo:(id)to;
@end

@implementation NanoPhoneVoicemailMeta

- (void)setHasIdentifier:(BOOL)identifier
{
  if (identifier)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasRemoteUID:(BOOL)d
{
  if (d)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasFlags:(BOOL)flags
{
  if (flags)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NanoPhoneVoicemailMeta;
  v4 = [(NanoPhoneVoicemailMeta *)&v8 description];
  dictionaryRepresentation = [(NanoPhoneVoicemailMeta(Wrapper) *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_voicemailNumber];
  [dictionary setObject:v4 forKey:@"voicemailNumber"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    v23 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_identifier];
    [dictionary setObject:v23 forKey:@"identifier"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v24 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_remoteUID];
  [dictionary setObject:v24 forKey:@"remoteUID"];

  if (*&self->_has)
  {
LABEL_4:
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_date];
    [dictionary setObject:v6 forKey:@"date"];
  }

LABEL_5:
  sender = self->_sender;
  if (sender)
  {
    [dictionary setObject:sender forKey:@"sender"];
  }

  callbackNumber = self->_callbackNumber;
  if (callbackNumber)
  {
    [dictionary setObject:callbackNumber forKey:@"callbackNumber"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_duration];
    [dictionary setObject:v9 forKey:@"duration"];
  }

  dataPath = self->_dataPath;
  if (dataPath)
  {
    [dictionary setObject:dataPath forKey:@"dataPath"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:self->_flags];
    [dictionary setObject:v11 forKey:@"flags"];
  }

  voicemailBody = self->_voicemailBody;
  if (voicemailBody)
  {
    dictionaryRepresentation = [(NanoPhoneVoicemailBody *)voicemailBody dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"voicemailBody"];
  }

  voicemailTranscript = self->_voicemailTranscript;
  if (voicemailTranscript)
  {
    dictionaryRepresentation2 = [(NanoPhoneVoicemailTranscript *)voicemailTranscript dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"voicemailTranscript"];
  }

  receiverDestinationID = self->_receiverDestinationID;
  if (receiverDestinationID)
  {
    [dictionary setObject:receiverDestinationID forKey:@"receiverDestinationID"];
  }

  nphReceiverISOCountryCode = self->_nphReceiverISOCountryCode;
  if (nphReceiverISOCountryCode)
  {
    [dictionary setObject:nphReceiverISOCountryCode forKey:@"nph_receiverISOCountryCode"];
  }

  providerID = self->_providerID;
  if (providerID)
  {
    [dictionary setObject:providerID forKey:@"providerID"];
  }

  conversationIDString = self->_conversationIDString;
  if (conversationIDString)
  {
    [dictionary setObject:conversationIDString forKey:@"conversationIDString"];
  }

  callUUIDString = self->_callUUIDString;
  if (callUUIDString)
  {
    [dictionary setObject:callUUIDString forKey:@"callUUIDString"];
  }

  simID = self->_simID;
  if (simID)
  {
    [dictionary setObject:simID forKey:@"simID"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  voicemailNumber = self->_voicemailNumber;
  v13 = toCopy;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    identifier = self->_identifier;
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    remoteUID = self->_remoteUID;
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  v9 = v13;
  if (has)
  {
    date = self->_date;
    PBDataWriterWriteDoubleField();
    v9 = v13;
  }

  if (self->_sender)
  {
    PBDataWriterWriteStringField();
    v9 = v13;
  }

  if (self->_callbackNumber)
  {
    PBDataWriterWriteStringField();
    v9 = v13;
  }

  if ((*&self->_has & 8) != 0)
  {
    duration = self->_duration;
    PBDataWriterWriteInt32Field();
    v9 = v13;
  }

  if (self->_dataPath)
  {
    PBDataWriterWriteStringField();
    v9 = v13;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    flags = self->_flags;
    PBDataWriterWriteInt32Field();
    v9 = v13;
  }

  if (self->_voicemailBody)
  {
    PBDataWriterWriteSubmessage();
    v9 = v13;
  }

  if (self->_voicemailTranscript)
  {
    PBDataWriterWriteSubmessage();
    v9 = v13;
  }

  if (self->_receiverDestinationID)
  {
    PBDataWriterWriteStringField();
    v9 = v13;
  }

  if (self->_nphReceiverISOCountryCode)
  {
    PBDataWriterWriteStringField();
    v9 = v13;
  }

  if (self->_providerID)
  {
    PBDataWriterWriteStringField();
    v9 = v13;
  }

  if (self->_conversationIDString)
  {
    PBDataWriterWriteStringField();
    v9 = v13;
  }

  if (self->_callUUIDString)
  {
    PBDataWriterWriteStringField();
    v9 = v13;
  }

  if (self->_simID)
  {
    PBDataWriterWriteStringField();
    v9 = v13;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[4] = self->_voicemailNumber;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[2] = self->_identifier;
    *(toCopy + 136) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  toCopy[3] = self->_remoteUID;
  *(toCopy + 136) |= 4u;
  if (*&self->_has)
  {
LABEL_4:
    toCopy[1] = *&self->_date;
    *(toCopy + 136) |= 1u;
  }

LABEL_5:
  v6 = toCopy;
  if (self->_sender)
  {
    [toCopy setSender:?];
    toCopy = v6;
  }

  if (self->_callbackNumber)
  {
    [v6 setCallbackNumber:?];
    toCopy = v6;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(toCopy + 18) = self->_duration;
    *(toCopy + 136) |= 8u;
  }

  if (self->_dataPath)
  {
    [v6 setDataPath:?];
    toCopy = v6;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(toCopy + 19) = self->_flags;
    *(toCopy + 136) |= 0x10u;
  }

  if (self->_voicemailBody)
  {
    [v6 setVoicemailBody:?];
    toCopy = v6;
  }

  if (self->_voicemailTranscript)
  {
    [v6 setVoicemailTranscript:?];
    toCopy = v6;
  }

  if (self->_receiverDestinationID)
  {
    [v6 setReceiverDestinationID:?];
    toCopy = v6;
  }

  if (self->_nphReceiverISOCountryCode)
  {
    [v6 setNphReceiverISOCountryCode:?];
    toCopy = v6;
  }

  if (self->_providerID)
  {
    [v6 setProviderID:?];
    toCopy = v6;
  }

  if (self->_conversationIDString)
  {
    [v6 setConversationIDString:?];
    toCopy = v6;
  }

  if (self->_callUUIDString)
  {
    [v6 setCallUUIDString:?];
    toCopy = v6;
  }

  if (self->_simID)
  {
    [v6 setSimID:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  *(v5 + 32) = self->_voicemailNumber;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_identifier;
    *(v5 + 136) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_remoteUID;
  *(v5 + 136) |= 4u;
  if (*&self->_has)
  {
LABEL_4:
    *(v5 + 8) = self->_date;
    *(v5 + 136) |= 1u;
  }

LABEL_5:
  v8 = [(NSString *)self->_sender copyWithZone:zone];
  v9 = *(v6 + 104);
  *(v6 + 104) = v8;

  v10 = [(NSString *)self->_callbackNumber copyWithZone:zone];
  v11 = *(v6 + 48);
  *(v6 + 48) = v10;

  if ((*&self->_has & 8) != 0)
  {
    *(v6 + 72) = self->_duration;
    *(v6 + 136) |= 8u;
  }

  v12 = [(NSString *)self->_dataPath copyWithZone:zone];
  v13 = *(v6 + 64);
  *(v6 + 64) = v12;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v6 + 76) = self->_flags;
    *(v6 + 136) |= 0x10u;
  }

  v14 = [(NanoPhoneVoicemailBody *)self->_voicemailBody copyWithZone:zone];
  v15 = *(v6 + 120);
  *(v6 + 120) = v14;

  v16 = [(NanoPhoneVoicemailTranscript *)self->_voicemailTranscript copyWithZone:zone];
  v17 = *(v6 + 128);
  *(v6 + 128) = v16;

  v18 = [(NSString *)self->_receiverDestinationID copyWithZone:zone];
  v19 = *(v6 + 96);
  *(v6 + 96) = v18;

  v20 = [(NSString *)self->_nphReceiverISOCountryCode copyWithZone:zone];
  v21 = *(v6 + 80);
  *(v6 + 80) = v20;

  v22 = [(NSString *)self->_providerID copyWithZone:zone];
  v23 = *(v6 + 88);
  *(v6 + 88) = v22;

  v24 = [(NSString *)self->_conversationIDString copyWithZone:zone];
  v25 = *(v6 + 56);
  *(v6 + 56) = v24;

  v26 = [(NSString *)self->_callUUIDString copyWithZone:zone];
  v27 = *(v6 + 40);
  *(v6 + 40) = v26;

  v28 = [(NSString *)self->_simID copyWithZone:zone];
  v29 = *(v6 + 112);
  *(v6 + 112) = v28;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || self->_voicemailNumber != *(equalCopy + 4))
  {
    goto LABEL_51;
  }

  v5 = *(equalCopy + 136);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 136) & 2) == 0 || self->_identifier != *(equalCopy + 2))
    {
      goto LABEL_51;
    }
  }

  else if ((*(equalCopy + 136) & 2) != 0)
  {
    goto LABEL_51;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 136) & 4) == 0 || self->_remoteUID != *(equalCopy + 3))
    {
      goto LABEL_51;
    }
  }

  else if ((*(equalCopy + 136) & 4) != 0)
  {
    goto LABEL_51;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 136) & 1) == 0 || self->_date != *(equalCopy + 1))
    {
      goto LABEL_51;
    }
  }

  else if (*(equalCopy + 136))
  {
    goto LABEL_51;
  }

  sender = self->_sender;
  if (sender | *(equalCopy + 13) && ![(NSString *)sender isEqual:?])
  {
    goto LABEL_51;
  }

  callbackNumber = self->_callbackNumber;
  if (callbackNumber | *(equalCopy + 6))
  {
    if (![(NSString *)callbackNumber isEqual:?])
    {
      goto LABEL_51;
    }
  }

  has = self->_has;
  v9 = *(equalCopy + 136);
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 136) & 8) == 0 || self->_duration != *(equalCopy + 18))
    {
      goto LABEL_51;
    }
  }

  else if ((*(equalCopy + 136) & 8) != 0)
  {
    goto LABEL_51;
  }

  dataPath = self->_dataPath;
  if (dataPath | *(equalCopy + 8))
  {
    if (![(NSString *)dataPath isEqual:?])
    {
LABEL_51:
      v20 = 0;
      goto LABEL_52;
    }

    has = self->_has;
  }

  v11 = *(equalCopy + 136);
  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 136) & 0x10) == 0 || self->_flags != *(equalCopy + 19))
    {
      goto LABEL_51;
    }
  }

  else if ((*(equalCopy + 136) & 0x10) != 0)
  {
    goto LABEL_51;
  }

  voicemailBody = self->_voicemailBody;
  if (voicemailBody | *(equalCopy + 15) && ![(NanoPhoneVoicemailBody *)voicemailBody isEqual:?])
  {
    goto LABEL_51;
  }

  voicemailTranscript = self->_voicemailTranscript;
  if (voicemailTranscript | *(equalCopy + 16))
  {
    if (![(NanoPhoneVoicemailTranscript *)voicemailTranscript isEqual:?])
    {
      goto LABEL_51;
    }
  }

  receiverDestinationID = self->_receiverDestinationID;
  if (receiverDestinationID | *(equalCopy + 12))
  {
    if (![(NSString *)receiverDestinationID isEqual:?])
    {
      goto LABEL_51;
    }
  }

  nphReceiverISOCountryCode = self->_nphReceiverISOCountryCode;
  if (nphReceiverISOCountryCode | *(equalCopy + 10))
  {
    if (![(NSString *)nphReceiverISOCountryCode isEqual:?])
    {
      goto LABEL_51;
    }
  }

  providerID = self->_providerID;
  if (providerID | *(equalCopy + 11))
  {
    if (![(NSString *)providerID isEqual:?])
    {
      goto LABEL_51;
    }
  }

  conversationIDString = self->_conversationIDString;
  if (conversationIDString | *(equalCopy + 7))
  {
    if (![(NSString *)conversationIDString isEqual:?])
    {
      goto LABEL_51;
    }
  }

  callUUIDString = self->_callUUIDString;
  if (callUUIDString | *(equalCopy + 5))
  {
    if (![(NSString *)callUUIDString isEqual:?])
    {
      goto LABEL_51;
    }
  }

  simID = self->_simID;
  if (simID | *(equalCopy + 14))
  {
    v20 = [(NSString *)simID isEqual:?];
  }

  else
  {
    v20 = 1;
  }

LABEL_52:

  return v20;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_identifier;
  }

  else
  {
    v5 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_remoteUID;
  }

  else
  {
    v6 = 0;
  }

  if (*&self->_has)
  {
    date = self->_date;
    if (date < 0.0)
    {
      date = -date;
    }

    *v2.i64 = floor(date + 0.5);
    v9 = (date - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v3, v2).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  voicemailNumber = self->_voicemailNumber;
  v12 = [(NSString *)self->_sender hash];
  v13 = [(NSString *)self->_callbackNumber hash];
  if ((*&self->_has & 8) != 0)
  {
    v14 = 2654435761 * self->_duration;
  }

  else
  {
    v14 = 0;
  }

  v15 = [(NSString *)self->_dataPath hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v16 = 2654435761 * self->_flags;
  }

  else
  {
    v16 = 0;
  }

  v17 = v5 ^ v6 ^ v7 ^ v12 ^ v13 ^ v14 ^ v15 ^ (2654435761 * voicemailNumber);
  v18 = v16 ^ [(NanoPhoneVoicemailBody *)self->_voicemailBody hash];
  v19 = v18 ^ [(NanoPhoneVoicemailTranscript *)self->_voicemailTranscript hash];
  v20 = v19 ^ [(NSString *)self->_receiverDestinationID hash];
  v21 = v20 ^ [(NSString *)self->_nphReceiverISOCountryCode hash];
  v22 = v17 ^ v21 ^ [(NSString *)self->_providerID hash];
  v23 = [(NSString *)self->_conversationIDString hash];
  v24 = v23 ^ [(NSString *)self->_callUUIDString hash];
  return v22 ^ v24 ^ [(NSString *)self->_simID hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  self->_voicemailNumber = *(fromCopy + 4);
  v6 = *(fromCopy + 136);
  if ((v6 & 2) != 0)
  {
    self->_identifier = *(fromCopy + 2);
    *&self->_has |= 2u;
    v6 = *(fromCopy + 136);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 136) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_remoteUID = *(fromCopy + 3);
  *&self->_has |= 4u;
  if (*(fromCopy + 136))
  {
LABEL_4:
    self->_date = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
  v11 = fromCopy;
  if (*(fromCopy + 13))
  {
    [(NanoPhoneVoicemailMeta *)self setSender:?];
    v5 = v11;
  }

  if (*(v5 + 6))
  {
    [(NanoPhoneVoicemailMeta *)self setCallbackNumber:?];
    v5 = v11;
  }

  if ((*(v5 + 136) & 8) != 0)
  {
    self->_duration = *(v5 + 18);
    *&self->_has |= 8u;
  }

  if (*(v5 + 8))
  {
    [(NanoPhoneVoicemailMeta *)self setDataPath:?];
    v5 = v11;
  }

  if ((*(v5 + 136) & 0x10) != 0)
  {
    self->_flags = *(v5 + 19);
    *&self->_has |= 0x10u;
  }

  voicemailBody = self->_voicemailBody;
  v8 = *(v5 + 15);
  if (voicemailBody)
  {
    if (!v8)
    {
      goto LABEL_24;
    }

    [(NanoPhoneVoicemailBody *)voicemailBody mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_24;
    }

    [(NanoPhoneVoicemailMeta *)self setVoicemailBody:?];
  }

  v5 = v11;
LABEL_24:
  voicemailTranscript = self->_voicemailTranscript;
  v10 = *(v5 + 16);
  if (voicemailTranscript)
  {
    if (!v10)
    {
      goto LABEL_30;
    }

    [(NanoPhoneVoicemailTranscript *)voicemailTranscript mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_30;
    }

    [(NanoPhoneVoicemailMeta *)self setVoicemailTranscript:?];
  }

  v5 = v11;
LABEL_30:
  if (*(v5 + 12))
  {
    [(NanoPhoneVoicemailMeta *)self setReceiverDestinationID:?];
    v5 = v11;
  }

  if (*(v5 + 10))
  {
    [(NanoPhoneVoicemailMeta *)self setNphReceiverISOCountryCode:?];
    v5 = v11;
  }

  if (*(v5 + 11))
  {
    [(NanoPhoneVoicemailMeta *)self setProviderID:?];
    v5 = v11;
  }

  if (*(v5 + 7))
  {
    [(NanoPhoneVoicemailMeta *)self setConversationIDString:?];
    v5 = v11;
  }

  if (*(v5 + 5))
  {
    [(NanoPhoneVoicemailMeta *)self setCallUUIDString:?];
    v5 = v11;
  }

  if (*(v5 + 14))
  {
    [(NanoPhoneVoicemailMeta *)self setSimID:?];
  }

  MEMORY[0x2821F96F8]();
}

- (NanoPhoneVoicemailMeta)initWithVoicemailMessage:(id)message
{
  messageCopy = message;
  v18.receiver = self;
  v18.super_class = NanoPhoneVoicemailMeta;
  v5 = [(NanoPhoneVoicemailMeta *)&v18 init];
  if (v5)
  {
    callbackDestinationID = [messageCopy callbackDestinationID];
    [(NanoPhoneVoicemailMeta *)v5 setCallbackNumber:callbackDestinationID];

    senderDestinationID = [messageCopy senderDestinationID];
    [(NanoPhoneVoicemailMeta *)v5 setSender:senderDestinationID];

    receiverDestinationID = [messageCopy receiverDestinationID];
    [(NanoPhoneVoicemailMeta *)v5 setReceiverDestinationID:receiverDestinationID];

    -[NanoPhoneVoicemailMeta setRemoteUID:](v5, "setRemoteUID:", [messageCopy remoteUID]);
    [messageCopy date];
    [(NanoPhoneVoicemailMeta *)v5 setDate:?];
    [messageCopy duration];
    [(NanoPhoneVoicemailMeta *)v5 setDuration:v9];
    -[NanoPhoneVoicemailMeta setFlags:](v5, "setFlags:", [messageCopy flags]);
    -[NanoPhoneVoicemailMeta setIdentifier:](v5, "setIdentifier:", [messageCopy identifier]);
    -[NanoPhoneVoicemailMeta setVoicemailNumber:](v5, "setVoicemailNumber:", [messageCopy remoteUID]);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"/var/mobile/Library/Voicemail/%lld.amr", -[NanoPhoneVoicemailMeta voicemailNumber](v5, "voicemailNumber")];
    [(NanoPhoneVoicemailMeta *)v5 setDataPath:v10];

    v11 = [NanoPhoneVoicemailBody alloc];
    audio = [messageCopy audio];
    v13 = [(NanoPhoneVoicemailBody *)v11 initWithAudioMessage:audio voicemailNumber:[(NanoPhoneVoicemailMeta *)v5 voicemailNumber]];
    [(NanoPhoneVoicemailMeta *)v5 setVoicemailBody:v13];

    v14 = [NanoPhoneVoicemailTranscript alloc];
    transcript = [messageCopy transcript];
    v16 = [(NanoPhoneVoicemailTranscript *)v14 initWithTranscriptMessage:transcript voicemailNumber:[(NanoPhoneVoicemailMeta *)v5 voicemailNumber]];
    [(NanoPhoneVoicemailMeta *)v5 setVoicemailTranscript:v16];
  }

  return v5;
}

+ (id)voicemailWithMessage:(id)message
{
  length = 0;
  data = xpc_dictionary_get_data(message, "NanoTelephonyVoicemail", &length);
  if (data)
  {
    v4 = length == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v6 = objc_alloc_init(NanoPhoneVoicemailMeta);
  }

  else
  {
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:data length:?];
    v6 = [[NanoPhoneVoicemailMeta alloc] initWithData:v5];
  }

  return v6;
}

- (id)asXpcObject
{
  v3 = xpc_dictionary_create(0, 0, 0);
  data = [(NanoPhoneVoicemailMeta *)self data];
  xpc_dictionary_set_data(v3, "NanoTelephonyVoicemail", [data bytes], objc_msgSend(data, "length"));

  return v3;
}

- (void)loadVoicemailBodyIfNeeded
{
  if ([(NanoPhoneVoicemailMeta *)self hasVoicemailBody])
  {
    v3 = MEMORY[0x277CBEA90];
    amrDataPath = [(NanoPhoneVoicemailMeta *)self amrDataPath];
    v6 = [v3 dataWithContentsOfFile:amrDataPath];

    if (v6)
    {
      voicemailBody = [(NanoPhoneVoicemailMeta *)self voicemailBody];
      [voicemailBody setVoicemailRecording:v6];
    }

    else
    {
      [(NanoPhoneVoicemailMeta *)self setFlags:[(NanoPhoneVoicemailMeta *)self flags]& 0xFFFFFFFDLL];
    }
  }
}

- (void)clearVoicemailBody
{
  voicemailBody = [(NanoPhoneVoicemailMeta *)self voicemailBody];
  [voicemailBody setVoicemailRecording:0];
}

- (id)voicemailDescription
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NanoPhoneVoicemailMeta;
  v4 = [(NanoPhoneVoicemailMeta *)&v8 description];
  dictionaryRepresentation = [(NanoPhoneVoicemailMeta(Wrapper) *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)amrDataPath
{
  selfCopy = self;
  sub_26D276DB8();
  v4 = v3;

  if (v4)
  {
    v5 = sub_26D2873F8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end