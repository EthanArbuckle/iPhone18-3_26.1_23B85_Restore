@interface CSDMessagingLinkSyncCheckInGeneratorDescriptorInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingLinkSyncCheckInGeneratorDescriptorInfo

- (void)setHasVersion:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingLinkSyncCheckInGeneratorDescriptorInfo;
  v3 = [(CSDMessagingLinkSyncCheckInGeneratorDescriptorInfo *)&v7 description];
  v4 = [(CSDMessagingLinkSyncCheckInGeneratorDescriptorInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v5 forKey:@"version"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [NSNumber numberWithUnsignedLongLong:self->_generateDescriptorVersionSum];
    [v3 setObject:v6 forKey:@"generateDescriptorVersionSum"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if ((has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    generateDescriptorVersionSum = self->_generateDescriptorVersionSum;
    PBDataWriterWriteUint64Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[4] = self->_version;
    *(v4 + 20) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = self->_generateDescriptorVersionSum;
    *(v4 + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 4) = self->_version;
    *(result + 20) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(result + 1) = self->_generateDescriptorVersionSum;
    *(result + 20) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) == 0 || self->_version != *(v4 + 4))
    {
      goto LABEL_11;
    }
  }

  else if ((*(v4 + 20) & 2) != 0)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_generateDescriptorVersionSum != *(v4 + 1))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_version;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761u * self->_generateDescriptorVersionSum;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 20);
  if ((v5 & 2) != 0)
  {
    self->_version = *(v4 + 4);
    *&self->_has |= 2u;
    v5 = *(v4 + 20);
  }

  if (v5)
  {
    self->_generateDescriptorVersionSum = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

@end