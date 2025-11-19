@interface _SFPBAbstractCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBAbstractCommand)initWithDictionary:(id)a3;
- (_SFPBAbstractCommand)initWithFacade:(id)a3;
- (_SFPBAbstractCommand)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBAbstractCommand

- (_SFPBAbstractCommand)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBAbstractCommand *)self init];
  if (v5)
  {
    if ([v4 hasType])
    {
      -[_SFPBAbstractCommand setType:](v5, "setType:", [v4 type]);
    }

    v6 = [v4 value];

    if (v6)
    {
      v7 = [_SFPBCommandValue alloc];
      v8 = [v4 value];
      v9 = [(_SFPBCommandValue *)v7 initWithFacade:v8];
      [(_SFPBAbstractCommand *)v5 setValue:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBAbstractCommand)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _SFPBAbstractCommand;
  v5 = [(_SFPBAbstractCommand *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAbstractCommand setType:](v5, "setType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[_SFPBCommandValue alloc] initWithDictionary:v7];
      [(_SFPBAbstractCommand *)v5 setValue:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBAbstractCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBAbstractCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBAbstractCommand *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_type)
  {
    v4 = [(_SFPBAbstractCommand *)self type];
    if (v4)
    {
      if (v4 == 1)
      {
        v5 = @"1";
      }

      else
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
      }
    }

    else
    {
      v5 = @"0";
    }

    [v3 setObject:v5 forKeyedSubscript:@"type"];
  }

  if (self->_value)
  {
    v6 = [(_SFPBAbstractCommand *)self value];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"value"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"value"];
    }
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    type = self->_type;
    if (type == [v4 type])
    {
      v6 = [(_SFPBAbstractCommand *)self value];
      v7 = [v4 value];
      v8 = v7;
      if ((v6 != 0) != (v7 == 0))
      {
        v9 = [(_SFPBAbstractCommand *)self value];
        if (!v9)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = v9;
        v11 = [(_SFPBAbstractCommand *)self value];
        v12 = [v4 value];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  if ([(_SFPBAbstractCommand *)self type])
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(_SFPBAbstractCommand *)self value];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end