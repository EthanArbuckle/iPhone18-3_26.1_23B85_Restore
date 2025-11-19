@interface _SFPBRFOptionalBool
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFOptionalBool)initWithDictionary:(id)a3;
- (_SFPBRFOptionalBool)initWithFacade:(id)a3;
- (_SFPBRFOptionalBool)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFOptionalBool

- (_SFPBRFOptionalBool)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBRFOptionalBool *)self init];
  if (v5)
  {
    if ([v4 hasValue])
    {
      -[_SFPBRFOptionalBool setValue:](v5, "setValue:", [v4 value]);
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBRFOptionalBool)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _SFPBRFOptionalBool;
  v5 = [(_SFPBRFOptionalBool *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFOptionalBool setValue:](v5, "setValue:", [v6 BOOLValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (_SFPBRFOptionalBool)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFOptionalBool *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFOptionalBool *)self dictionaryRepresentation];
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
  if (self->_value)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFOptionalBool value](self, "value")}];
    [v3 setObject:v4 forKeyedSubscript:@"value"];
  }

  return v3;
}

- (unint64_t)hash
{
  if (self->_value)
  {
    return 2654435761;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    value = self->_value;
    v6 = value == [v4 value];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if ([(_SFPBRFOptionalBool *)self value])
  {
    PBDataWriterWriteBOOLField();
  }
}

@end