@interface COMAPPLEPROACTIVEGMSGMSError
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsErrorType:(id)type;
- (int)errorType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasErrorType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation COMAPPLEPROACTIVEGMSGMSError

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 20);
  if ((v5 & 2) != 0)
  {
    self->_errorType = *(fromCopy + 4);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 20);
  }

  if (v5)
  {
    self->_errorCode = *(fromCopy + 1);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 20) & 2) == 0 || self->_errorType != *(equalCopy + 4))
    {
      goto LABEL_11;
    }
  }

  else if ((*(equalCopy + 20) & 2) != 0)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(equalCopy + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_errorCode != *(equalCopy + 1))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[4] = self->_errorType;
    *(toCopy + 20) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = self->_errorCode;
    *(toCopy + 20) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if ((has & 2) != 0)
  {
    errorType = self->_errorType;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteUint64Field();
    toCopy = v8;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

    [dictionary setObject:v6 forKey:@"errorType"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_errorCode];
    [dictionary setObject:v7 forKey:@"errorCode"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = COMAPPLEPROACTIVEGMSGMSError;
  v4 = [(COMAPPLEPROACTIVEGMSGMSError *)&v8 description];
  dictionaryRepresentation = [(COMAPPLEPROACTIVEGMSGMSError *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsErrorType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"GMS_ERROR_TYPE_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"GMS_ERROR_TYPE_GENERIC_ERROR"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"GMS_ERROR_TYPE_MODEL_MANAGER_SESSION_ERROR"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"GMS_ERROR_TYPE_GENERATIVE_FUNCTION_ERROR"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasErrorType:(BOOL)type
{
  if (type)
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