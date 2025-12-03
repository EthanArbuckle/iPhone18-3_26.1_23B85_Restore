@interface SIRINLUEXTERNALSystemOffered
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALSystemOffered

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  offeredAct = self->_offeredAct;
  v6 = fromCopy[1];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    offeredAct = self->_offeredAct;
    if (offeredAct | equalCopy[1])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALUserDialogAct *)self->_offeredAct copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  offeredAct = self->_offeredAct;
  if (offeredAct)
  {
    [to setOfferedAct:offeredAct];
  }
}

- (void)writeTo:(id)to
{
  if (self->_offeredAct)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  offeredAct = self->_offeredAct;
  if (offeredAct)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALUserDialogAct *)offeredAct dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"offered_act"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALSystemOffered;
  v4 = [(SIRINLUEXTERNALSystemOffered *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALSystemOffered *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end