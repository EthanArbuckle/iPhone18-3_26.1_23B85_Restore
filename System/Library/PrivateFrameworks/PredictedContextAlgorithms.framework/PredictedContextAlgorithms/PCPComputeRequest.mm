@interface PCPComputeRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCompletionStatus:(id)status;
- (int)completionStatus;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasReceivedInterruptRequest:(BOOL)request;
- (void)writeTo:(id)to;
@end

@implementation PCPComputeRequest

- (int)completionStatus
{
  if (*&self->_has)
  {
    return self->_completionStatus;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsCompletionStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"Completed"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"Interrupted"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasReceivedInterruptRequest:(BOOL)request
{
  if (request)
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPComputeRequest;
  v4 = [(PCPComputeRequest *)&v8 description];
  dictionaryRepresentation = [(PCPComputeRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  input = self->_input;
  if (input)
  {
    dictionaryRepresentation = [(PCPInputSignals *)input dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"input"];
  }

  has = self->_has;
  if (has)
  {
    completionStatus = self->_completionStatus;
    if (completionStatus >= 3)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_completionStatus];
    }

    else
    {
      v8 = off_1E83B85B0[completionStatus];
    }

    [dictionary setObject:v8 forKey:@"completionStatus"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_receivedInterruptRequest];
    [dictionary setObject:v9 forKey:@"receivedInterruptRequest"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_input)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    completionStatus = self->_completionStatus;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    receivedInterruptRequest = self->_receivedInterruptRequest;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_input)
  {
    v6 = toCopy;
    [toCopy setInput:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 2) = self->_completionStatus;
    *(toCopy + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 24) = self->_receivedInterruptRequest;
    *(toCopy + 28) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PCPInputSignals *)self->_input copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_completionStatus;
    *(v5 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_receivedInterruptRequest;
    *(v5 + 28) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  input = self->_input;
  if (input | *(equalCopy + 2))
  {
    if (![(PCPInputSignals *)input isEqual:?])
    {
      goto LABEL_11;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_completionStatus != *(equalCopy + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_11;
  }

  v6 = (*(equalCopy + 28) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0)
    {
LABEL_11:
      v6 = 0;
      goto LABEL_12;
    }

    if (self->_receivedInterruptRequest)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_11;
    }

    v6 = 1;
  }

LABEL_12:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(PCPInputSignals *)self->_input hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_completionStatus;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_receivedInterruptRequest;
  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  input = self->_input;
  v6 = *(fromCopy + 2);
  if (input)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    [(PCPInputSignals *)input mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    [(PCPComputeRequest *)self setInput:?];
  }

  fromCopy = v8;
LABEL_7:
  v7 = *(fromCopy + 28);
  if (v7)
  {
    self->_completionStatus = *(fromCopy + 2);
    *&self->_has |= 1u;
    v7 = *(fromCopy + 28);
  }

  if ((v7 & 2) != 0)
  {
    self->_receivedInterruptRequest = *(fromCopy + 24);
    *&self->_has |= 2u;
  }

  MEMORY[0x1EEE66BB8]();
}

@end