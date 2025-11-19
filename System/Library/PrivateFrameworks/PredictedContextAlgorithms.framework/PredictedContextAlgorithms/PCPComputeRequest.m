@interface PCPComputeRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCompletionStatus:(id)a3;
- (int)completionStatus;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasReceivedInterruptRequest:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsCompletionStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Completed"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Interrupted"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasReceivedInterruptRequest:(BOOL)a3
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPComputeRequest;
  v4 = [(PCPComputeRequest *)&v8 description];
  v5 = [(PCPComputeRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  input = self->_input;
  if (input)
  {
    v5 = [(PCPInputSignals *)input dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"input"];
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

    [v3 setObject:v8 forKey:@"completionStatus"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_receivedInterruptRequest];
    [v3 setObject:v9 forKey:@"receivedInterruptRequest"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_input)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    completionStatus = self->_completionStatus;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    receivedInterruptRequest = self->_receivedInterruptRequest;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_input)
  {
    v6 = v4;
    [v4 setInput:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 2) = self->_completionStatus;
    *(v4 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 24) = self->_receivedInterruptRequest;
    *(v4 + 28) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PCPInputSignals *)self->_input copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  input = self->_input;
  if (input | *(v4 + 2))
  {
    if (![(PCPInputSignals *)input isEqual:?])
    {
      goto LABEL_11;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_completionStatus != *(v4 + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_11;
  }

  v6 = (*(v4 + 28) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0)
    {
LABEL_11:
      v6 = 0;
      goto LABEL_12;
    }

    if (self->_receivedInterruptRequest)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if (*(v4 + 24))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  input = self->_input;
  v6 = *(v4 + 2);
  if (input)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    [(PCPInputSignals *)input mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    [(PCPComputeRequest *)self setInput:?];
  }

  v4 = v8;
LABEL_7:
  v7 = *(v4 + 28);
  if (v7)
  {
    self->_completionStatus = *(v4 + 2);
    *&self->_has |= 1u;
    v7 = *(v4 + 28);
  }

  if ((v7 & 2) != 0)
  {
    self->_receivedInterruptRequest = *(v4 + 24);
    *&self->_has |= 2u;
  }

  MEMORY[0x1EEE66BB8]();
}

@end