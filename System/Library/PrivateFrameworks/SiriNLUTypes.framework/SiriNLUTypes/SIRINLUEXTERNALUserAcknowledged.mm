@interface SIRINLUEXTERNALUserAcknowledged
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALUserAcknowledged

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  systemDialogActId = self->_systemDialogActId;
  v6 = fromCopy[2];
  v9 = fromCopy;
  if (systemDialogActId)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUEXTERNALUUID *)systemDialogActId mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUEXTERNALUserAcknowledged *)self setSystemDialogActId:?];
  }

  fromCopy = v9;
LABEL_7:
  reference = self->_reference;
  v8 = fromCopy[1];
  if (reference)
  {
    if (v8)
    {
      [(SIRINLUEXTERNALUsoGraph *)reference mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUEXTERNALUserAcknowledged *)self setReference:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((systemDialogActId = self->_systemDialogActId, !(systemDialogActId | equalCopy[2])) || -[SIRINLUEXTERNALUUID isEqual:](systemDialogActId, "isEqual:")))
  {
    reference = self->_reference;
    if (reference | equalCopy[1])
    {
      v7 = [(SIRINLUEXTERNALUsoGraph *)reference isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_systemDialogActId copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(SIRINLUEXTERNALUsoGraph *)self->_reference copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_systemDialogActId)
  {
    [toCopy setSystemDialogActId:?];
    toCopy = v5;
  }

  if (self->_reference)
  {
    [v5 setReference:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_systemDialogActId)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_reference)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  systemDialogActId = self->_systemDialogActId;
  if (systemDialogActId)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALUUID *)systemDialogActId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"system_dialog_act_id"];
  }

  reference = self->_reference;
  if (reference)
  {
    dictionaryRepresentation2 = [(SIRINLUEXTERNALUsoGraph *)reference dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"reference"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALUserAcknowledged;
  v4 = [(SIRINLUEXTERNALUserAcknowledged *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALUserAcknowledged *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end