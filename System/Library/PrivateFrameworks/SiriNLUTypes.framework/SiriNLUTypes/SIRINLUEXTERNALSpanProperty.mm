@interface SIRINLUEXTERNALSpanProperty
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALSpanProperty

- (void)mergeFrom:(id)a3
{
  v10 = a3;
  if (v10[1])
  {
    [(SIRINLUEXTERNALSpanProperty *)self setKey:?];
  }

  valueString = self->_valueString;
  v5 = v10[4];
  if (valueString)
  {
    if (v5)
    {
      [(SIRICOMMONStringValue *)valueString mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(SIRINLUEXTERNALSpanProperty *)self setValueString:?];
  }

  valueInt = self->_valueInt;
  v7 = v10[3];
  if (valueInt)
  {
    if (v7)
    {
      [(SIRICOMMONInt32Value *)valueInt mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(SIRINLUEXTERNALSpanProperty *)self setValueInt:?];
  }

  valueFloat = self->_valueFloat;
  v9 = v10[2];
  if (valueFloat)
  {
    if (v9)
    {
      [(SIRICOMMONFloatValue *)valueFloat mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(SIRINLUEXTERNALSpanProperty *)self setValueFloat:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(SIRICOMMONStringValue *)self->_valueString hash]^ v3;
  v5 = [(SIRICOMMONInt32Value *)self->_valueInt hash];
  return v4 ^ v5 ^ [(SIRICOMMONFloatValue *)self->_valueFloat hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | v4[1])) || -[NSString isEqual:](key, "isEqual:")) && ((valueString = self->_valueString, !(valueString | v4[4])) || -[SIRICOMMONStringValue isEqual:](valueString, "isEqual:")) && ((valueInt = self->_valueInt, !(valueInt | v4[3])) || -[SIRICOMMONInt32Value isEqual:](valueInt, "isEqual:")))
  {
    valueFloat = self->_valueFloat;
    if (valueFloat | v4[2])
    {
      v9 = [(SIRICOMMONFloatValue *)valueFloat isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(SIRICOMMONStringValue *)self->_valueString copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(SIRICOMMONInt32Value *)self->_valueInt copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(SIRICOMMONFloatValue *)self->_valueFloat copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

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

  if (self->_valueString)
  {
    [v5 setValueString:?];
    v4 = v5;
  }

  if (self->_valueInt)
  {
    [v5 setValueInt:?];
    v4 = v5;
  }

  if (self->_valueFloat)
  {
    [v5 setValueFloat:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_valueString)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_valueInt)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_valueFloat)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  valueString = self->_valueString;
  if (valueString)
  {
    v7 = [(SIRICOMMONStringValue *)valueString dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"value_string"];
  }

  valueInt = self->_valueInt;
  if (valueInt)
  {
    v9 = [(SIRICOMMONInt32Value *)valueInt dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"value_int"];
  }

  valueFloat = self->_valueFloat;
  if (valueFloat)
  {
    v11 = [(SIRICOMMONFloatValue *)valueFloat dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"value_float"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALSpanProperty;
  v4 = [(SIRINLUEXTERNALSpanProperty *)&v8 description];
  v5 = [(SIRINLUEXTERNALSpanProperty *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end