@interface SIRINLUEXTERNALUserAcknowledged
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALUserAcknowledged

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  systemDialogActId = self->_systemDialogActId;
  v6 = v4[2];
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  reference = self->_reference;
  v8 = v4[1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((systemDialogActId = self->_systemDialogActId, !(systemDialogActId | v4[2])) || -[SIRINLUEXTERNALUUID isEqual:](systemDialogActId, "isEqual:")))
  {
    reference = self->_reference;
    if (reference | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_systemDialogActId copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(SIRINLUEXTERNALUsoGraph *)self->_reference copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_systemDialogActId)
  {
    [v4 setSystemDialogActId:?];
    v4 = v5;
  }

  if (self->_reference)
  {
    [v5 setReference:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_systemDialogActId)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_reference)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  systemDialogActId = self->_systemDialogActId;
  if (systemDialogActId)
  {
    v5 = [(SIRINLUEXTERNALUUID *)systemDialogActId dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"system_dialog_act_id"];
  }

  reference = self->_reference;
  if (reference)
  {
    v7 = [(SIRINLUEXTERNALUsoGraph *)reference dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"reference"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALUserAcknowledged;
  v4 = [(SIRINLUEXTERNALUserAcknowledged *)&v8 description];
  v5 = [(SIRINLUEXTERNALUserAcknowledged *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end