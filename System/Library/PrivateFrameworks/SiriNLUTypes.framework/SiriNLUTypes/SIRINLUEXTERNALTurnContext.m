@interface SIRINLUEXTERNALTurnContext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALTurnContext

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  nlContext = self->_nlContext;
  v6 = v4[2];
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  legacyNlContext = self->_legacyNlContext;
  v8 = v4[1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((nlContext = self->_nlContext, !(nlContext | v4[2])) || -[SIRINLUEXTERNALNLContext isEqual:](nlContext, "isEqual:")))
  {
    legacyNlContext = self->_legacyNlContext;
    if (legacyNlContext | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALNLContext *)self->_nlContext copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(SIRINLUEXTERNALLegacyNLContext *)self->_legacyNlContext copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_nlContext)
  {
    [v4 setNlContext:?];
    v4 = v5;
  }

  if (self->_legacyNlContext)
  {
    [v5 setLegacyNlContext:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_nlContext)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_legacyNlContext)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  nlContext = self->_nlContext;
  if (nlContext)
  {
    v5 = [(SIRINLUEXTERNALNLContext *)nlContext dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"nl_context"];
  }

  legacyNlContext = self->_legacyNlContext;
  if (legacyNlContext)
  {
    v7 = [(SIRINLUEXTERNALLegacyNLContext *)legacyNlContext dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"legacy_nl_context"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALTurnContext;
  v4 = [(SIRINLUEXTERNALTurnContext *)&v8 description];
  v5 = [(SIRINLUEXTERNALTurnContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end