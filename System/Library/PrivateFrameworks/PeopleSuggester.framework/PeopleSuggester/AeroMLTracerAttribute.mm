@interface AeroMLTracerAttribute
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AeroMLTracerAttribute

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = AeroMLTracerAttribute;
  v4 = [(AeroMLTracerAttribute *)&v8 description];
  v5 = [(AeroMLTracerAttribute *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  stringValue = self->_stringValue;
  if (stringValue)
  {
    [v4 setObject:stringValue forKey:@"stringValue"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_name)
  {
    [v4 setName:?];
    v4 = v5;
  }

  if (self->_stringValue)
  {
    [v5 setStringValue:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_stringValue copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((name = self->_name, !(name | v4[1])) || -[NSString isEqual:](name, "isEqual:")))
  {
    stringValue = self->_stringValue;
    if (stringValue | v4[2])
    {
      v7 = [(NSString *)stringValue isEqual:?];
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(AeroMLTracerAttribute *)self setName:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(AeroMLTracerAttribute *)self setStringValue:?];
    v4 = v5;
  }
}

@end