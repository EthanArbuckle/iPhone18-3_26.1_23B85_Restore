@interface SIRINLUINTERNALMDSUaaPParseOverride
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALMDSUaaPParseOverride

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  parseOverride = self->_parseOverride;
  v6 = fromCopy[1];
  if (parseOverride)
  {
    if (v6)
    {
      [(SIRINLUINTERNALParseOverride *)parseOverride mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALMDSUaaPParseOverride *)self setParseOverride:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    parseOverride = self->_parseOverride;
    if (parseOverride | equalCopy[1])
    {
      v6 = [(SIRINLUINTERNALParseOverride *)parseOverride isEqual:?];
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
  v6 = [(SIRINLUINTERNALParseOverride *)self->_parseOverride copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  parseOverride = self->_parseOverride;
  if (parseOverride)
  {
    [to setParseOverride:parseOverride];
  }
}

- (void)writeTo:(id)to
{
  if (self->_parseOverride)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  parseOverride = self->_parseOverride;
  if (parseOverride)
  {
    dictionaryRepresentation = [(SIRINLUINTERNALParseOverride *)parseOverride dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"parse_override"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALMDSUaaPParseOverride;
  v4 = [(SIRINLUINTERNALMDSUaaPParseOverride *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALMDSUaaPParseOverride *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end