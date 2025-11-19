@interface ICIAMSerialCheckRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ICIAMSerialCheckRequest

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[3])
  {
    self->_dSID = v4[1];
    *&self->_has |= 1u;
  }

  if (v4[2])
  {
    v5 = v4;
    [(ICIAMSerialCheckRequest *)self setDeviceID:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_dSID;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_deviceID hash]^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_dSID != *(v4 + 1))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  deviceID = self->_deviceID;
  if (deviceID | *(v4 + 2))
  {
    v6 = [(NSString *)deviceID isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_10:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_dSID;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSString *)self->_deviceID copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_dSID;
    *(v4 + 24) |= 1u;
  }

  if (self->_deviceID)
  {
    v5 = v4;
    [v4 setDeviceID:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    v4 = v5;
  }

  if (self->_deviceID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_dSID];
    [v3 setObject:v4 forKey:@"DSID"];
  }

  deviceID = self->_deviceID;
  if (deviceID)
  {
    [v3 setObject:deviceID forKey:@"deviceID"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICIAMSerialCheckRequest;
  v4 = [(ICIAMSerialCheckRequest *)&v8 description];
  v5 = [(ICIAMSerialCheckRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end