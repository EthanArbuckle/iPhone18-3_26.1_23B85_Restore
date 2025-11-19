@interface SIRINLUEXTERNALSystemOffered
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALSystemOffered

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  offeredAct = self->_offeredAct;
  v6 = v4[1];
  if (offeredAct)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALUserDialogAct *)offeredAct mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUEXTERNALSystemOffered *)self setOfferedAct:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    offeredAct = self->_offeredAct;
    if (offeredAct | v4[1])
    {
      v6 = [(SIRINLUEXTERNALUserDialogAct *)offeredAct isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALUserDialogAct *)self->_offeredAct copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)a3
{
  offeredAct = self->_offeredAct;
  if (offeredAct)
  {
    [a3 setOfferedAct:offeredAct];
  }
}

- (void)writeTo:(id)a3
{
  if (self->_offeredAct)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  offeredAct = self->_offeredAct;
  if (offeredAct)
  {
    v5 = [(SIRINLUEXTERNALUserDialogAct *)offeredAct dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"offered_act"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALSystemOffered;
  v4 = [(SIRINLUEXTERNALSystemOffered *)&v8 description];
  v5 = [(SIRINLUEXTERNALSystemOffered *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end