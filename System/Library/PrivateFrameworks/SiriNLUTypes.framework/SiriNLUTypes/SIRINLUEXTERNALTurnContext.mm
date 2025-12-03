@interface SIRINLUEXTERNALTurnContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALTurnContext

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  nlContext = self->_nlContext;
  v6 = fromCopy[2];
  v9 = fromCopy;
  if (nlContext)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUEXTERNALNLContext *)nlContext mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUEXTERNALTurnContext *)self setNlContext:?];
  }

  fromCopy = v9;
LABEL_7:
  legacyNlContext = self->_legacyNlContext;
  v8 = fromCopy[1];
  if (legacyNlContext)
  {
    if (v8)
    {
      [(SIRINLUEXTERNALLegacyNLContext *)legacyNlContext mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUEXTERNALTurnContext *)self setLegacyNlContext:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((nlContext = self->_nlContext, !(nlContext | equalCopy[2])) || -[SIRINLUEXTERNALNLContext isEqual:](nlContext, "isEqual:")))
  {
    legacyNlContext = self->_legacyNlContext;
    if (legacyNlContext | equalCopy[1])
    {
      v7 = [(SIRINLUEXTERNALLegacyNLContext *)legacyNlContext isEqual:?];
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
  v6 = [(SIRINLUEXTERNALNLContext *)self->_nlContext copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(SIRINLUEXTERNALLegacyNLContext *)self->_legacyNlContext copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_nlContext)
  {
    [toCopy setNlContext:?];
    toCopy = v5;
  }

  if (self->_legacyNlContext)
  {
    [v5 setLegacyNlContext:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_nlContext)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_legacyNlContext)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  nlContext = self->_nlContext;
  if (nlContext)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALNLContext *)nlContext dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"nl_context"];
  }

  legacyNlContext = self->_legacyNlContext;
  if (legacyNlContext)
  {
    dictionaryRepresentation2 = [(SIRINLUEXTERNALLegacyNLContext *)legacyNlContext dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"legacy_nl_context"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALTurnContext;
  v4 = [(SIRINLUEXTERNALTurnContext *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALTurnContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end