@interface VMVoicemailMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasFlags:(BOOL)flags;
- (void)setHasIdentifier:(BOOL)identifier;
- (void)setHasProtocolVersion:(BOOL)version;
- (void)setHasRemoteUID:(BOOL)d;
- (void)writeTo:(id)to;
@end

@implementation VMVoicemailMessage

- (void)setHasRemoteUID:(BOOL)d
{
  if (d)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIdentifier:(BOOL)identifier
{
  if (identifier)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasFlags:(BOOL)flags
{
  if (flags)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasProtocolVersion:(BOOL)version
{
  if (version)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = VMVoicemailMessage;
  v4 = [(VMVoicemailMessage *)&v8 description];
  dictionaryRepresentation = [(VMVoicemailMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_remoteUID];
    [dictionary setObject:v21 forKey:@"remoteUID"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_identifier];
  [dictionary setObject:v22 forKey:@"identifier"];

  if (*&self->_has)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_date];
    [dictionary setObject:v5 forKey:@"date"];
  }

LABEL_5:
  senderDestinationID = self->_senderDestinationID;
  if (senderDestinationID)
  {
    [dictionary setObject:senderDestinationID forKey:@"senderDestinationID"];
  }

  callbackDestinationID = self->_callbackDestinationID;
  if (callbackDestinationID)
  {
    [dictionary setObject:callbackDestinationID forKey:@"callbackDestinationID"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_duration];
    [dictionary setObject:v8 forKey:@"duration"];
  }

  dataURL = self->_dataURL;
  if (dataURL)
  {
    [dictionary setObject:dataURL forKey:@"dataURL"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_flags];
    [dictionary setObject:v10 forKey:@"flags"];
  }

  transcriptionURL = self->_transcriptionURL;
  if (transcriptionURL)
  {
    [dictionary setObject:transcriptionURL forKey:@"transcriptionURL"];
  }

  transcript = self->_transcript;
  if (transcript)
  {
    dictionaryRepresentation = [(VMTranscriptMessage *)transcript dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"transcript"];
  }

  audio = self->_audio;
  if (audio)
  {
    dictionaryRepresentation2 = [(VMAudioMessage *)audio dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"audio"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_protocolVersion];
    [dictionary setObject:v16 forKey:@"protocolVersion"];
  }

  receiverDestinationID = self->_receiverDestinationID;
  if (receiverDestinationID)
  {
    [dictionary setObject:receiverDestinationID forKey:@"receiverDestinationID"];
  }

  receiverLabelID = self->_receiverLabelID;
  if (receiverLabelID)
  {
    [dictionary setObject:receiverLabelID forKey:@"receiverLabelID"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v12 = toCopy;
  if ((has & 0x20) != 0)
  {
    remoteUID = self->_remoteUID;
    PBDataWriterWriteUint32Field();
    toCopy = v12;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  identifier = self->_identifier;
  PBDataWriterWriteUint32Field();
  toCopy = v12;
  if (*&self->_has)
  {
LABEL_4:
    date = self->_date;
    PBDataWriterWriteDoubleField();
    toCopy = v12;
  }

LABEL_5:
  if (self->_senderDestinationID)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_callbackDestinationID)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if ((*&self->_has & 2) != 0)
  {
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
    toCopy = v12;
  }

  if (self->_dataURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if ((*&self->_has & 4) != 0)
  {
    flags = self->_flags;
    PBDataWriterWriteUint32Field();
    toCopy = v12;
  }

  if (self->_transcriptionURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_transcript)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v12;
  }

  if (self->_audio)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v12;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    protocolVersion = self->_protocolVersion;
    PBDataWriterWriteUint32Field();
    toCopy = v12;
  }

  if (self->_receiverDestinationID)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_receiverLabelID)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    toCopy[20] = self->_remoteUID;
    *(toCopy + 120) |= 0x20u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  toCopy[13] = self->_identifier;
  *(toCopy + 120) |= 8u;
  if (*&self->_has)
  {
LABEL_4:
    *(toCopy + 1) = *&self->_date;
    *(toCopy + 120) |= 1u;
  }

LABEL_5:
  v6 = toCopy;
  if (self->_senderDestinationID)
  {
    [toCopy setSenderDestinationID:?];
    toCopy = v6;
  }

  if (self->_callbackDestinationID)
  {
    [v6 setCallbackDestinationID:?];
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 2) = *&self->_duration;
    *(toCopy + 120) |= 2u;
  }

  if (self->_dataURL)
  {
    [v6 setDataURL:?];
    toCopy = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    toCopy[12] = self->_flags;
    *(toCopy + 120) |= 4u;
  }

  if (self->_transcriptionURL)
  {
    [v6 setTranscriptionURL:?];
    toCopy = v6;
  }

  if (self->_transcript)
  {
    [v6 setTranscript:?];
    toCopy = v6;
  }

  if (self->_audio)
  {
    [v6 setAudio:?];
    toCopy = v6;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    toCopy[14] = self->_protocolVersion;
    *(toCopy + 120) |= 0x10u;
  }

  if (self->_receiverDestinationID)
  {
    [v6 setReceiverDestinationID:?];
    toCopy = v6;
  }

  if (self->_receiverLabelID)
  {
    [v6 setReceiverLabelID:?];
    toCopy = v6;
  }

  if (self->_uuid)
  {
    [v6 setUuid:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v5 + 80) = self->_remoteUID;
    *(v5 + 120) |= 0x20u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 52) = self->_identifier;
  *(v5 + 120) |= 8u;
  if (*&self->_has)
  {
LABEL_4:
    *(v5 + 8) = self->_date;
    *(v5 + 120) |= 1u;
  }

LABEL_5:
  v8 = [(NSString *)self->_senderDestinationID copyWithZone:zone];
  v9 = *(v6 + 88);
  *(v6 + 88) = v8;

  v10 = [(NSString *)self->_callbackDestinationID copyWithZone:zone];
  v11 = *(v6 + 32);
  *(v6 + 32) = v10;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_duration;
    *(v6 + 120) |= 2u;
  }

  v12 = [(NSString *)self->_dataURL copyWithZone:zone];
  v13 = *(v6 + 40);
  *(v6 + 40) = v12;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 48) = self->_flags;
    *(v6 + 120) |= 4u;
  }

  v14 = [(NSString *)self->_transcriptionURL copyWithZone:zone];
  v15 = *(v6 + 104);
  *(v6 + 104) = v14;

  v16 = [(VMTranscriptMessage *)self->_transcript copyWithZone:zone];
  v17 = *(v6 + 96);
  *(v6 + 96) = v16;

  v18 = [(VMAudioMessage *)self->_audio copyWithZone:zone];
  v19 = *(v6 + 24);
  *(v6 + 24) = v18;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v6 + 56) = self->_protocolVersion;
    *(v6 + 120) |= 0x10u;
  }

  v20 = [(NSString *)self->_receiverDestinationID copyWithZone:zone];
  v21 = *(v6 + 72);
  *(v6 + 72) = v20;

  v22 = [(NSString *)self->_receiverLabelID copyWithZone:zone];
  v23 = *(v6 + 64);
  *(v6 + 64) = v22;

  v24 = [(NSString *)self->_uuid copyWithZone:zone];
  v25 = *(v6 + 112);
  *(v6 + 112) = v24;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_51;
  }

  v5 = *(equalCopy + 120);
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 120) & 0x20) == 0 || self->_remoteUID != *(equalCopy + 20))
    {
      goto LABEL_51;
    }
  }

  else if ((*(equalCopy + 120) & 0x20) != 0)
  {
    goto LABEL_51;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 120) & 8) == 0 || self->_identifier != *(equalCopy + 13))
    {
      goto LABEL_51;
    }
  }

  else if ((*(equalCopy + 120) & 8) != 0)
  {
    goto LABEL_51;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 120) & 1) == 0 || self->_date != *(equalCopy + 1))
    {
      goto LABEL_51;
    }
  }

  else if (*(equalCopy + 120))
  {
    goto LABEL_51;
  }

  senderDestinationID = self->_senderDestinationID;
  if (senderDestinationID | *(equalCopy + 11) && ![(NSString *)senderDestinationID isEqual:?])
  {
    goto LABEL_51;
  }

  callbackDestinationID = self->_callbackDestinationID;
  if (callbackDestinationID | *(equalCopy + 4))
  {
    if (![(NSString *)callbackDestinationID isEqual:?])
    {
      goto LABEL_51;
    }
  }

  has = self->_has;
  v9 = *(equalCopy + 120);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 120) & 2) == 0 || self->_duration != *(equalCopy + 2))
    {
      goto LABEL_51;
    }
  }

  else if ((*(equalCopy + 120) & 2) != 0)
  {
    goto LABEL_51;
  }

  dataURL = self->_dataURL;
  if (dataURL | *(equalCopy + 5))
  {
    if (![(NSString *)dataURL isEqual:?])
    {
LABEL_51:
      v19 = 0;
      goto LABEL_52;
    }

    has = self->_has;
  }

  v11 = *(equalCopy + 120);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 120) & 4) == 0 || self->_flags != *(equalCopy + 12))
    {
      goto LABEL_51;
    }
  }

  else if ((*(equalCopy + 120) & 4) != 0)
  {
    goto LABEL_51;
  }

  transcriptionURL = self->_transcriptionURL;
  if (transcriptionURL | *(equalCopy + 13) && ![(NSString *)transcriptionURL isEqual:?])
  {
    goto LABEL_51;
  }

  transcript = self->_transcript;
  if (transcript | *(equalCopy + 12))
  {
    if (![(VMTranscriptMessage *)transcript isEqual:?])
    {
      goto LABEL_51;
    }
  }

  audio = self->_audio;
  if (audio | *(equalCopy + 3))
  {
    if (![(VMAudioMessage *)audio isEqual:?])
    {
      goto LABEL_51;
    }
  }

  v15 = *(equalCopy + 120);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 120) & 0x10) == 0 || self->_protocolVersion != *(equalCopy + 14))
    {
      goto LABEL_51;
    }
  }

  else if ((*(equalCopy + 120) & 0x10) != 0)
  {
    goto LABEL_51;
  }

  receiverDestinationID = self->_receiverDestinationID;
  if (receiverDestinationID | *(equalCopy + 9) && ![(NSString *)receiverDestinationID isEqual:?])
  {
    goto LABEL_51;
  }

  receiverLabelID = self->_receiverLabelID;
  if (receiverLabelID | *(equalCopy + 8))
  {
    if (![(NSString *)receiverLabelID isEqual:?])
    {
      goto LABEL_51;
    }
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 14))
  {
    v19 = [(NSString *)uuid isEqual:?];
  }

  else
  {
    v19 = 1;
  }

LABEL_52:

  return v19;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x20) == 0)
  {
    v27 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v26 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v27 = 2654435761 * self->_remoteUID;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v26 = 2654435761 * self->_identifier;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  date = self->_date;
  if (date < 0.0)
  {
    date = -date;
  }

  *v2.i64 = floor(date + 0.5);
  v6 = (date - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = 2654435761u * *vbslq_s8(vnegq_f64(v7), v3, v2).i64;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      v8 += v6;
    }
  }

  else
  {
    v8 -= fabs(v6);
  }

LABEL_11:
  v25 = [(NSString *)self->_senderDestinationID hash];
  v9 = [(NSString *)self->_callbackDestinationID hash];
  if ((*&self->_has & 2) != 0)
  {
    duration = self->_duration;
    if (duration < 0.0)
    {
      duration = -duration;
    }

    *v10.i64 = floor(duration + 0.5);
    v14 = (duration - *v10.i64) * 1.84467441e19;
    *v11.i64 = *v10.i64 - trunc(*v10.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v11, v10).i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = [(NSString *)self->_dataURL hash];
  if ((*&self->_has & 4) != 0)
  {
    v17 = 2654435761 * self->_flags;
  }

  else
  {
    v17 = 0;
  }

  v18 = [(NSString *)self->_transcriptionURL hash];
  v19 = [(VMTranscriptMessage *)self->_transcript hash];
  v20 = [(VMAudioMessage *)self->_audio hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v21 = 2654435761 * self->_protocolVersion;
  }

  else
  {
    v21 = 0;
  }

  v22 = v26 ^ v27 ^ v8 ^ v25 ^ v9 ^ v12 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ [(NSString *)self->_receiverDestinationID hash];
  v23 = [(NSString *)self->_receiverLabelID hash];
  return v22 ^ v23 ^ [(NSString *)self->_uuid hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 120);
  if ((v6 & 0x20) != 0)
  {
    self->_remoteUID = *(fromCopy + 20);
    *&self->_has |= 0x20u;
    v6 = *(fromCopy + 120);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 120) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_identifier = *(fromCopy + 13);
  *&self->_has |= 8u;
  if (*(fromCopy + 120))
  {
LABEL_4:
    self->_date = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
  v11 = fromCopy;
  if (*(fromCopy + 11))
  {
    [(VMVoicemailMessage *)self setSenderDestinationID:?];
    v5 = v11;
  }

  if (*(v5 + 4))
  {
    [(VMVoicemailMessage *)self setCallbackDestinationID:?];
    v5 = v11;
  }

  if ((*(v5 + 120) & 2) != 0)
  {
    self->_duration = *(v5 + 2);
    *&self->_has |= 2u;
  }

  if (*(v5 + 5))
  {
    [(VMVoicemailMessage *)self setDataURL:?];
    v5 = v11;
  }

  if ((*(v5 + 120) & 4) != 0)
  {
    self->_flags = *(v5 + 12);
    *&self->_has |= 4u;
  }

  if (*(v5 + 13))
  {
    [(VMVoicemailMessage *)self setTranscriptionURL:?];
    v5 = v11;
  }

  transcript = self->_transcript;
  v8 = *(v5 + 12);
  if (transcript)
  {
    if (!v8)
    {
      goto LABEL_26;
    }

    [(VMTranscriptMessage *)transcript mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_26;
    }

    [(VMVoicemailMessage *)self setTranscript:?];
  }

  v5 = v11;
LABEL_26:
  audio = self->_audio;
  v10 = *(v5 + 3);
  if (audio)
  {
    if (!v10)
    {
      goto LABEL_32;
    }

    [(VMAudioMessage *)audio mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_32;
    }

    [(VMVoicemailMessage *)self setAudio:?];
  }

  v5 = v11;
LABEL_32:
  if ((*(v5 + 120) & 0x10) != 0)
  {
    self->_protocolVersion = *(v5 + 14);
    *&self->_has |= 0x10u;
  }

  if (*(v5 + 9))
  {
    [(VMVoicemailMessage *)self setReceiverDestinationID:?];
    v5 = v11;
  }

  if (*(v5 + 8))
  {
    [(VMVoicemailMessage *)self setReceiverLabelID:?];
    v5 = v11;
  }

  if (*(v5 + 14))
  {
    [(VMVoicemailMessage *)self setUuid:?];
  }

  MEMORY[0x2821F96F8]();
}

@end