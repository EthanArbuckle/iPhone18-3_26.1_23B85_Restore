@interface _SFPBRFBadgedImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFBadgedImage)initWithDictionary:(id)a3;
- (_SFPBRFBadgedImage)initWithFacade:(id)a3;
- (_SFPBRFBadgedImage)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFBadgedImage

- (_SFPBRFBadgedImage)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBRFBadgedImage *)self init];
  if (v5)
  {
    v6 = [v4 image];

    if (v6)
    {
      v7 = [_SFPBRFImageSource alloc];
      v8 = [v4 image];
      v9 = [(_SFPBRFImageSource *)v7 initWithFacade:v8];
      [(_SFPBRFBadgedImage *)v5 setImage:v9];
    }

    v10 = [v4 badge];

    if (v10)
    {
      v11 = [_SFPBRFImageSource alloc];
      v12 = [v4 badge];
      v13 = [(_SFPBRFImageSource *)v11 initWithFacade:v12];
      [(_SFPBRFBadgedImage *)v5 setBadge:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBRFBadgedImage)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SFPBRFBadgedImage;
  v5 = [(_SFPBRFBadgedImage *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"image"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFImageSource alloc] initWithDictionary:v6];
      [(_SFPBRFBadgedImage *)v5 setImage:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"badge"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFImageSource alloc] initWithDictionary:v8];
      [(_SFPBRFBadgedImage *)v5 setBadge:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRFBadgedImage)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFBadgedImage *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFBadgedImage *)self dictionaryRepresentation];
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
  if (self->_badge)
  {
    v4 = [(_SFPBRFBadgedImage *)self badge];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"badge"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"badge"];
    }
  }

  if (self->_image)
  {
    v7 = [(_SFPBRFBadgedImage *)self image];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"image"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"image"];
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

  v5 = [(_SFPBRFBadgedImage *)self image];
  v6 = [v4 image];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBRFBadgedImage *)self image];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFBadgedImage *)self image];
    v10 = [v4 image];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFBadgedImage *)self badge];
  v6 = [v4 badge];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_SFPBRFBadgedImage *)self badge];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_SFPBRFBadgedImage *)self badge];
    v15 = [v4 badge];
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
  v4 = [(_SFPBRFBadgedImage *)self image];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBRFBadgedImage *)self badge];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end