@interface BMPBStoreEventAtomValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation BMPBStoreEventAtomValue

- (id)description
{
  v7.receiver = self;
  v7.super_class = BMPBStoreEventAtomValue;
  v3 = [(BMPBStoreEventAtomValue *)&v7 description];
  v4 = [(BMPBStoreEventAtomValue *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [NSNumber numberWithUnsignedInt:self->_dataVersion];
    [v3 setObject:v5 forKey:@"dataVersion"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [NSNumber numberWithDouble:self->_dataTimestamp];
    [v3 setObject:v6 forKey:@"dataTimestamp"];
  }

  eventData = self->_eventData;
  if (eventData)
  {
    [v3 setObject:eventData forKey:@"eventData"];
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
    dataVersion = self->_dataVersion;
    PBDataWriterWriteUint32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    dataTimestamp = self->_dataTimestamp;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }

  if (self->_eventData)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 4) = self->_dataVersion;
    *(v5 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v5[1] = *&self->_dataTimestamp;
    *(v5 + 32) |= 1u;
  }

  v8 = [(NSData *)self->_eventData copyWithZone:a3];
  v9 = v6[3];
  v6[3] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(v4 + 32);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_dataVersion != *(v4 + 4))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_dataTimestamp != *(v4 + 1))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_14;
  }

  eventData = self->_eventData;
  if (eventData | *(v4 + 3))
  {
    v7 = [(NSData *)eventData isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_15:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_dataVersion;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = 0;
    return v12 ^ v8 ^ [(NSData *)self->_eventData hash:v3];
  }

  v8 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  dataTimestamp = self->_dataTimestamp;
  if (dataTimestamp < 0.0)
  {
    dataTimestamp = -dataTimestamp;
  }

  *v6.i64 = floor(dataTimestamp + 0.5);
  v10 = (dataTimestamp - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

  return v12 ^ v8 ^ [(NSData *)self->_eventData hash:v3];
}

@end