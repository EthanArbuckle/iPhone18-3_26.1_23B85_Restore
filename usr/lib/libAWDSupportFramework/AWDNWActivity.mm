@interface AWDNWActivity
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasActivityLabel:(BOOL)label;
- (void)setHasInvestigationID:(BOOL)d;
- (void)setHasIsRetry:(BOOL)retry;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDNWActivity

- (void)dealloc
{
  [(AWDNWActivity *)self setActivityUUID:0];
  [(AWDNWActivity *)self setParentActivityUUID:0];
  [(AWDNWActivity *)self setL2Report:0];
  [(AWDNWActivity *)self setDeviceReport:0];
  [(AWDNWActivity *)self setBundleID:0];
  v3.receiver = self;
  v3.super_class = AWDNWActivity;
  [(AWDNWActivity *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasActivityLabel:(BOOL)label
{
  if (label)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIsRetry:(BOOL)retry
{
  if (retry)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasInvestigationID:(BOOL)d
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDNWActivity;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDNWActivity description](&v3, sel_description), -[AWDNWActivity dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_activityDomain), @"activityDomain"}];
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_activityLabel), @"activityLabel"}];
  }

LABEL_5:
  activityUUID = self->_activityUUID;
  if (activityUUID)
  {
    [dictionary setObject:activityUUID forKey:@"activityUUID"];
  }

  parentActivityUUID = self->_parentActivityUUID;
  if (parentActivityUUID)
  {
    [dictionary setObject:parentActivityUUID forKey:@"parentActivityUUID"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isRetry), @"isRetry"}];
  }

  l2Report = self->_l2Report;
  if (l2Report)
  {
    [dictionary setObject:-[AWDNWL2Report dictionaryRepresentation](l2Report forKey:{"dictionaryRepresentation"), @"l2Report"}];
  }

  deviceReport = self->_deviceReport;
  if (deviceReport)
  {
    [dictionary setObject:-[AWDNWDeviceReport dictionaryRepresentation](deviceReport forKey:{"dictionaryRepresentation"), @"deviceReport"}];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [dictionary setObject:bundleID forKey:@"bundleID"];
  }

  if ((*&self->_has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_investigationID), @"investigationID"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  activityDomain = self->_activityDomain;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    activityLabel = self->_activityLabel;
    PBDataWriterWriteUint64Field();
  }

LABEL_5:
  if (self->_activityUUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_parentActivityUUID)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    isRetry = self->_isRetry;
    PBDataWriterWriteBOOLField();
  }

  if (self->_l2Report)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_deviceReport)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    investigationID = self->_investigationID;

    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(to + 4) = self->_timestamp;
    *(to + 84) |= 8u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(to + 1) = self->_activityDomain;
  *(to + 84) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(to + 2) = self->_activityLabel;
    *(to + 84) |= 2u;
  }

LABEL_5:
  if (self->_activityUUID)
  {
    [to setActivityUUID:?];
  }

  if (self->_parentActivityUUID)
  {
    [to setParentActivityUUID:?];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(to + 80) = self->_isRetry;
    *(to + 84) |= 0x10u;
  }

  if (self->_l2Report)
  {
    [to setL2Report:?];
  }

  if (self->_deviceReport)
  {
    [to setDeviceReport:?];
  }

  if (self->_bundleID)
  {
    [to setBundleID:?];
  }

  if ((*&self->_has & 4) != 0)
  {
    *(to + 3) = self->_investigationID;
    *(to + 84) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 32) = self->_timestamp;
    *(v5 + 84) |= 8u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_activityDomain;
  *(v5 + 84) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v5 + 16) = self->_activityLabel;
    *(v5 + 84) |= 2u;
  }

LABEL_5:

  *(v6 + 40) = [(NSString *)self->_activityUUID copyWithZone:zone];
  *(v6 + 72) = [(NSString *)self->_parentActivityUUID copyWithZone:zone];
  if ((*&self->_has & 0x10) != 0)
  {
    *(v6 + 80) = self->_isRetry;
    *(v6 + 84) |= 0x10u;
  }

  *(v6 + 64) = [(AWDNWL2Report *)self->_l2Report copyWithZone:zone];
  *(v6 + 56) = [(AWDNWDeviceReport *)self->_deviceReport copyWithZone:zone];

  *(v6 + 48) = [(NSString *)self->_bundleID copyWithZone:zone];
  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 24) = self->_investigationID;
    *(v6 + 84) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 84);
    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 84) & 8) == 0 || self->_timestamp != *(equal + 4))
      {
        goto LABEL_34;
      }
    }

    else if ((*(equal + 84) & 8) != 0)
    {
      goto LABEL_34;
    }

    if (*&self->_has)
    {
      if ((*(equal + 84) & 1) == 0 || self->_activityDomain != *(equal + 1))
      {
        goto LABEL_34;
      }
    }

    else if (*(equal + 84))
    {
      goto LABEL_34;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 84) & 2) == 0 || self->_activityLabel != *(equal + 2))
      {
        goto LABEL_34;
      }
    }

    else if ((*(equal + 84) & 2) != 0)
    {
      goto LABEL_34;
    }

    activityUUID = self->_activityUUID;
    if (!(activityUUID | *(equal + 5)) || (v5 = [(NSString *)activityUUID isEqual:?]) != 0)
    {
      parentActivityUUID = self->_parentActivityUUID;
      if (!(parentActivityUUID | *(equal + 9)) || (v5 = [(NSString *)parentActivityUUID isEqual:?]) != 0)
      {
        v9 = *(equal + 84);
        if ((*&self->_has & 0x10) != 0)
        {
          if ((*(equal + 84) & 0x10) != 0)
          {
            v13 = *(equal + 80);
            if (self->_isRetry)
            {
              if ((*(equal + 80) & 1) == 0)
              {
                goto LABEL_34;
              }
            }

            else if (*(equal + 80))
            {
              goto LABEL_34;
            }

            goto LABEL_23;
          }
        }

        else if ((*(equal + 84) & 0x10) == 0)
        {
LABEL_23:
          l2Report = self->_l2Report;
          if (!(l2Report | *(equal + 8)) || (v5 = [(AWDNWL2Report *)l2Report isEqual:?]) != 0)
          {
            deviceReport = self->_deviceReport;
            if (!(deviceReport | *(equal + 7)) || (v5 = [(AWDNWDeviceReport *)deviceReport isEqual:?]) != 0)
            {
              bundleID = self->_bundleID;
              if (!(bundleID | *(equal + 6)) || (v5 = [(NSString *)bundleID isEqual:?]) != 0)
              {
                LOBYTE(v5) = (*(equal + 84) & 4) == 0;
                if ((*&self->_has & 4) != 0)
                {
                  if ((*(equal + 84) & 4) == 0 || self->_investigationID != *(equal + 3))
                  {
                    goto LABEL_34;
                  }

                  LOBYTE(v5) = 1;
                }
              }
            }
          }

          return v5;
        }

LABEL_34:
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) == 0)
  {
    v13 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v13 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761u * self->_activityDomain;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v4 = 2654435761u * self->_activityLabel;
    goto LABEL_8;
  }

LABEL_7:
  v4 = 0;
LABEL_8:
  v5 = [(NSString *)self->_activityUUID hash];
  v6 = [(NSString *)self->_parentActivityUUID hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v7 = 2654435761 * self->_isRetry;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(AWDNWL2Report *)self->_l2Report hash];
  v9 = [(AWDNWDeviceReport *)self->_deviceReport hash];
  v10 = [(NSString *)self->_bundleID hash];
  if ((*&self->_has & 4) != 0)
  {
    v11 = 2654435761u * self->_investigationID;
  }

  else
  {
    v11 = 0;
  }

  return v3 ^ v13 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)from
{
  v5 = *(from + 84);
  if ((v5 & 8) != 0)
  {
    self->_timestamp = *(from + 4);
    *&self->_has |= 8u;
    v5 = *(from + 84);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(from + 84) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_activityDomain = *(from + 1);
  *&self->_has |= 1u;
  if ((*(from + 84) & 2) != 0)
  {
LABEL_4:
    self->_activityLabel = *(from + 2);
    *&self->_has |= 2u;
  }

LABEL_5:
  if (*(from + 5))
  {
    [(AWDNWActivity *)self setActivityUUID:?];
  }

  if (*(from + 9))
  {
    [(AWDNWActivity *)self setParentActivityUUID:?];
  }

  if ((*(from + 84) & 0x10) != 0)
  {
    self->_isRetry = *(from + 80);
    *&self->_has |= 0x10u;
  }

  l2Report = self->_l2Report;
  v7 = *(from + 8);
  if (l2Report)
  {
    if (v7)
    {
      [(AWDNWL2Report *)l2Report mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(AWDNWActivity *)self setL2Report:?];
  }

  deviceReport = self->_deviceReport;
  v9 = *(from + 7);
  if (deviceReport)
  {
    if (v9)
    {
      [(AWDNWDeviceReport *)deviceReport mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(AWDNWActivity *)self setDeviceReport:?];
  }

  if (*(from + 6))
  {
    [(AWDNWActivity *)self setBundleID:?];
  }

  if ((*(from + 84) & 4) != 0)
  {
    self->_investigationID = *(from + 3);
    *&self->_has |= 4u;
  }
}

@end