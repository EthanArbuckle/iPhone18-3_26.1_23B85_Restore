@interface COMAPPLEPROACTIVEGMSGMSError
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsErrorType:(id)a3;
- (int)errorType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasErrorType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation COMAPPLEPROACTIVEGMSGMSError

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 20);
  if ((v5 & 2) != 0)
  {
    self->_errorType = *(v4 + 4);
    *&self->_has |= 2u;
    v5 = *(v4 + 20);
  }

  if (v5)
  {
    self->_errorCode = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_errorType;
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
  v3 = 2654435761u * self->_errorCode;
  return v3 ^ v2;
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
    if ((*(v4 + 20) & 2) == 0 || self->_errorType != *(v4 + 4))
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
    if ((*(v4 + 20) & 1) == 0 || self->_errorCode != *(v4 + 1))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 4) = self->_errorType;
    *(result + 20) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(result + 1) = self->_errorCode;
    *(result + 20) |= 1u;
  }

  return result;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[4] = self->_errorType;
    *(v4 + 20) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = self->_errorCode;
    *(v4 + 20) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if ((has & 2) != 0)
  {
    errorType = self->_errorType;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteUint64Field();
    v4 = v8;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    errorType = self->_errorType;
    if (errorType >= 4)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_errorType];
    }

    else
    {
      v6 = off_1E86C2DF8[errorType];
    }

    [v3 setObject:v6 forKey:@"errorType"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_errorCode];
    [v3 setObject:v7 forKey:@"errorCode"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = COMAPPLEPROACTIVEGMSGMSError;
  v4 = [(COMAPPLEPROACTIVEGMSGMSError *)&v8 description];
  v5 = [(COMAPPLEPROACTIVEGMSGMSError *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsErrorType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"GMS_ERROR_TYPE_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"GMS_ERROR_TYPE_GENERIC_ERROR"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"GMS_ERROR_TYPE_MODEL_MANAGER_SESSION_ERROR"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"GMS_ERROR_TYPE_GENERATIVE_FUNCTION_ERROR"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasErrorType:(BOOL)a3
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

- (int)errorType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_errorType;
  }

  else
  {
    return 0;
  }
}

@end