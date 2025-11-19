@interface SIRINLUINTERNALMDSUaaPParseOverride
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALMDSUaaPParseOverride

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  parseOverride = self->_parseOverride;
  v6 = v4[1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    parseOverride = self->_parseOverride;
    if (parseOverride | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUINTERNALParseOverride *)self->_parseOverride copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)a3
{
  parseOverride = self->_parseOverride;
  if (parseOverride)
  {
    [a3 setParseOverride:parseOverride];
  }
}

- (void)writeTo:(id)a3
{
  if (self->_parseOverride)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  parseOverride = self->_parseOverride;
  if (parseOverride)
  {
    v5 = [(SIRINLUINTERNALParseOverride *)parseOverride dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"parse_override"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALMDSUaaPParseOverride;
  v4 = [(SIRINLUINTERNALMDSUaaPParseOverride *)&v8 description];
  v5 = [(SIRINLUINTERNALMDSUaaPParseOverride *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end