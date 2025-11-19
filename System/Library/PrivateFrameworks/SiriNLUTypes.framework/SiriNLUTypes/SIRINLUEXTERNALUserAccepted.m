@interface SIRINLUEXTERNALUserAccepted
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALUserAccepted

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  offerId = self->_offerId;
  v6 = v4[1];
  v9 = v4;
  if (offerId)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUEXTERNALUUID *)offerId mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUEXTERNALUserAccepted *)self setOfferId:?];
  }

  v4 = v9;
LABEL_7:
  reference = self->_reference;
  v8 = v4[2];
  if (reference)
  {
    if (v8)
    {
      [(SIRINLUEXTERNALUsoGraph *)reference mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUEXTERNALUserAccepted *)self setReference:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((offerId = self->_offerId, !(offerId | v4[1])) || -[SIRINLUEXTERNALUUID isEqual:](offerId, "isEqual:")))
  {
    reference = self->_reference;
    if (reference | v4[2])
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
  v6 = [(SIRINLUEXTERNALUUID *)self->_offerId copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(SIRINLUEXTERNALUsoGraph *)self->_reference copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_offerId)
  {
    [v4 setOfferId:?];
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
  if (self->_offerId)
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
  offerId = self->_offerId;
  if (offerId)
  {
    v5 = [(SIRINLUEXTERNALUUID *)offerId dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"offer_id"];
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
  v8.super_class = SIRINLUEXTERNALUserAccepted;
  v4 = [(SIRINLUEXTERNALUserAccepted *)&v8 description];
  v5 = [(SIRINLUEXTERNALUserAccepted *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end