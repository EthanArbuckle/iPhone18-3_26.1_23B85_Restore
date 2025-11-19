@interface SIRINLUEXTERNALAsrAlternative
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALAsrAlternative

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[1])
  {
    [(SIRINLUEXTERNALAsrAlternative *)self setAlternative:?];
    v4 = v7;
  }

  probability = self->_probability;
  v6 = v4[2];
  if (probability)
  {
    if (v6)
    {
      [(SIRICOMMONFloatValue *)probability mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUEXTERNALAsrAlternative *)self setProbability:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((alternative = self->_alternative, !(alternative | v4[1])) || -[NSString isEqual:](alternative, "isEqual:")))
  {
    probability = self->_probability;
    if (probability | v4[2])
    {
      v7 = [(SIRICOMMONFloatValue *)probability isEqual:?];
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
  v6 = [(NSString *)self->_alternative copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(SIRICOMMONFloatValue *)self->_probability copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_alternative)
  {
    [v4 setAlternative:?];
    v4 = v5;
  }

  if (self->_probability)
  {
    [v5 setProbability:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_alternative)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_probability)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  alternative = self->_alternative;
  if (alternative)
  {
    [v3 setObject:alternative forKey:@"alternative"];
  }

  probability = self->_probability;
  if (probability)
  {
    v7 = [(SIRICOMMONFloatValue *)probability dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"probability"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALAsrAlternative;
  v4 = [(SIRINLUEXTERNALAsrAlternative *)&v8 description];
  v5 = [(SIRINLUEXTERNALAsrAlternative *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end