@interface SIRINLUEXTERNALRRAnnotation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALRRAnnotation

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  key = self->_key;
  v6 = v4[1];
  v9 = v4;
  if (key)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRICOMMONStringValue *)key mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUEXTERNALRRAnnotation *)self setKey:?];
  }

  v4 = v9;
LABEL_7:
  value = self->_value;
  v8 = v4[2];
  if (value)
  {
    if (v8)
    {
      [(SIRICOMMONStringValue *)value mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUEXTERNALRRAnnotation *)self setValue:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | v4[1])) || -[SIRICOMMONStringValue isEqual:](key, "isEqual:")))
  {
    value = self->_value;
    if (value | v4[2])
    {
      v7 = [(SIRICOMMONStringValue *)value isEqual:?];
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
  v6 = [(SIRICOMMONStringValue *)self->_key copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(SIRICOMMONStringValue *)self->_value copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_key)
  {
    [v4 setKey:?];
    v4 = v5;
  }

  if (self->_value)
  {
    [v5 setValue:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_key)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  key = self->_key;
  if (key)
  {
    v5 = [(SIRICOMMONStringValue *)key dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"key"];
  }

  value = self->_value;
  if (value)
  {
    v7 = [(SIRICOMMONStringValue *)value dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"value"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALRRAnnotation;
  v4 = [(SIRINLUEXTERNALRRAnnotation *)&v8 description];
  v5 = [(SIRINLUEXTERNALRRAnnotation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end