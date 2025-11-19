@interface _SFPBRFTextEncapsulation
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFTextEncapsulation)initWithDictionary:(id)a3;
- (_SFPBRFTextEncapsulation)initWithFacade:(id)a3;
- (_SFPBRFTextEncapsulation)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFTextEncapsulation

- (_SFPBRFTextEncapsulation)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBRFTextEncapsulation *)self init];
  if (v5)
  {
    if ([v4 hasStyle])
    {
      -[_SFPBRFTextEncapsulation setStyle:](v5, "setStyle:", [v4 style]);
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBRFTextEncapsulation)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _SFPBRFTextEncapsulation;
  v5 = [(_SFPBRFTextEncapsulation *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"style"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFTextEncapsulation setStyle:](v5, "setStyle:", [v6 intValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (_SFPBRFTextEncapsulation)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFTextEncapsulation *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFTextEncapsulation *)self dictionaryRepresentation];
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
  if (self->_style)
  {
    v4 = [(_SFPBRFTextEncapsulation *)self style];
    if (v4 >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E7ACE548[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"style"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    style = self->_style;
    v6 = style == [v4 style];
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
  if ([(_SFPBRFTextEncapsulation *)self style])
  {
    PBDataWriterWriteInt32Field();
  }
}

@end