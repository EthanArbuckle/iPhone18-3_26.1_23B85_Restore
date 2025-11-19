@interface _SFPBAppLink
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBAppLink)initWithDictionary:(id)a3;
- (_SFPBAppLink)initWithFacade:(id)a3;
- (_SFPBAppLink)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setTitle:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBAppLink

- (_SFPBAppLink)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBAppLink *)self init];
  if (v5)
  {
    v6 = [v4 title];

    if (v6)
    {
      v7 = [v4 title];
      [(_SFPBAppLink *)v5 setTitle:v7];
    }

    v8 = [v4 appPunchout];

    if (v8)
    {
      v9 = [_SFPBPunchout alloc];
      v10 = [v4 appPunchout];
      v11 = [(_SFPBPunchout *)v9 initWithFacade:v10];
      [(_SFPBAppLink *)v5 setAppPunchout:v11];
    }

    v12 = [v4 image];

    if (v12)
    {
      v13 = [_SFPBImage alloc];
      v14 = [v4 image];
      v15 = [(_SFPBImage *)v13 initWithFacade:v14];
      [(_SFPBAppLink *)v5 setImage:v15];
    }

    if ([v4 hasImageAlign])
    {
      -[_SFPBAppLink setImageAlign:](v5, "setImageAlign:", [v4 imageAlign]);
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBAppLink)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _SFPBAppLink;
  v5 = [(_SFPBAppLink *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBAppLink *)v5 setTitle:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"appPunchout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBPunchout alloc] initWithDictionary:v8];
      [(_SFPBAppLink *)v5 setAppPunchout:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"image"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBImage alloc] initWithDictionary:v10];
      [(_SFPBAppLink *)v5 setImage:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"imageAlign"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAppLink setImageAlign:](v5, "setImageAlign:", [v12 intValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (_SFPBAppLink)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBAppLink *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBAppLink *)self dictionaryRepresentation];
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
  if (self->_appPunchout)
  {
    v4 = [(_SFPBAppLink *)self appPunchout];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"appPunchout"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"appPunchout"];
    }
  }

  if (self->_image)
  {
    v7 = [(_SFPBAppLink *)self image];
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

  if (self->_imageAlign)
  {
    v10 = [(_SFPBAppLink *)self imageAlign];
    if (v10 >= 5)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10];
    }

    else
    {
      v11 = off_1E7ACE448[v10];
    }

    [v3 setObject:v11 forKeyedSubscript:@"imageAlign"];
  }

  if (self->_title)
  {
    v12 = [(_SFPBAppLink *)self title];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"title"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(_SFPBPunchout *)self->_appPunchout hash];
  return v4 ^ v3 ^ [(_SFPBImage *)self->_image hash]^ (2654435761 * self->_imageAlign);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_SFPBAppLink *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_SFPBAppLink *)self title];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBAppLink *)self title];
    v10 = [v4 title];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBAppLink *)self appPunchout];
  v6 = [v4 appPunchout];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_SFPBAppLink *)self appPunchout];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBAppLink *)self appPunchout];
    v15 = [v4 appPunchout];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBAppLink *)self image];
  v6 = [v4 image];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_SFPBAppLink *)self image];
    if (!v17)
    {

LABEL_20:
      imageAlign = self->_imageAlign;
      v22 = imageAlign == [v4 imageAlign];
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_SFPBAppLink *)self image];
    v20 = [v4 image];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(_SFPBAppLink *)self title];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBAppLink *)self appPunchout];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBAppLink *)self image];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBAppLink *)self imageAlign];
  v8 = v9;
  if (v7)
  {
    PBDataWriterWriteInt32Field();
    v8 = v9;
  }
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

@end