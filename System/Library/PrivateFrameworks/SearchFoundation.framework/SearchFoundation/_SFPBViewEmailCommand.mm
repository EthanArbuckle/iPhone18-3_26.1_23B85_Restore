@interface _SFPBViewEmailCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBViewEmailCommand)initWithDictionary:(id)a3;
- (_SFPBViewEmailCommand)initWithFacade:(id)a3;
- (_SFPBViewEmailCommand)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBViewEmailCommand

- (_SFPBViewEmailCommand)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBViewEmailCommand *)self init];
  if (v5)
  {
    if ([v4 hasPlaceHolderProperty])
    {
      -[_SFPBViewEmailCommand setPlaceHolderProperty:](v5, "setPlaceHolderProperty:", [v4 placeHolderProperty]);
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBViewEmailCommand)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _SFPBViewEmailCommand;
  v5 = [(_SFPBViewEmailCommand *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"placeHolderProperty"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBViewEmailCommand setPlaceHolderProperty:](v5, "setPlaceHolderProperty:", [v6 BOOLValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (_SFPBViewEmailCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBViewEmailCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBViewEmailCommand *)self dictionaryRepresentation];
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
  if (self->_placeHolderProperty)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBViewEmailCommand placeHolderProperty](self, "placeHolderProperty")}];
    [v3 setObject:v4 forKeyedSubscript:@"placeHolderProperty"];
  }

  return v3;
}

- (unint64_t)hash
{
  if (self->_placeHolderProperty)
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
    placeHolderProperty = self->_placeHolderProperty;
    v6 = placeHolderProperty == [v4 placeHolderProperty];
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
  if ([(_SFPBViewEmailCommand *)self placeHolderProperty])
  {
    PBDataWriterWriteBOOLField();
  }
}

@end