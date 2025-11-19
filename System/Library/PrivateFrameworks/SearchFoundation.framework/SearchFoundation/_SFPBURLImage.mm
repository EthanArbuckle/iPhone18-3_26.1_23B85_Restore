@interface _SFPBURLImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBURLImage)initWithDictionary:(id)a3;
- (_SFPBURLImage)initWithFacade:(id)a3;
- (_SFPBURLImage)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBURLImage

- (_SFPBURLImage)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBURLImage *)self init];
  if (v5)
  {
    v6 = [v4 urlValue];

    if (v6)
    {
      v7 = [_SFPBURL alloc];
      v8 = [v4 urlValue];
      v9 = [(_SFPBURL *)v7 initWithNSURL:v8];
      [(_SFPBURLImage *)v5 setUrlValue:v9];
    }

    v10 = [v4 darkUrlValue];

    if (v10)
    {
      v11 = [_SFPBURL alloc];
      v12 = [v4 darkUrlValue];
      v13 = [(_SFPBURL *)v11 initWithNSURL:v12];
      [(_SFPBURLImage *)v5 setDarkUrlValue:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBURLImage)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SFPBURLImage;
  v5 = [(_SFPBURLImage *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"urlValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBURL alloc] initWithDictionary:v6];
      [(_SFPBURLImage *)v5 setUrlValue:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"darkUrlValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBURL alloc] initWithDictionary:v8];
      [(_SFPBURLImage *)v5 setDarkUrlValue:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBURLImage)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBURLImage *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBURLImage *)self dictionaryRepresentation];
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
  if (self->_darkUrlValue)
  {
    v4 = [(_SFPBURLImage *)self darkUrlValue];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"darkUrlValue"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"darkUrlValue"];
    }
  }

  if (self->_urlValue)
  {
    v7 = [(_SFPBURLImage *)self urlValue];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"urlValue"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"urlValue"];
    }
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_SFPBURLImage *)self urlValue];
  v6 = [v4 urlValue];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBURLImage *)self urlValue];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBURLImage *)self urlValue];
    v10 = [v4 urlValue];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_SFPBURLImage *)self darkUrlValue];
  v6 = [v4 darkUrlValue];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_SFPBURLImage *)self darkUrlValue];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_SFPBURLImage *)self darkUrlValue];
    v15 = [v4 darkUrlValue];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(_SFPBURLImage *)self urlValue];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBURLImage *)self darkUrlValue];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end