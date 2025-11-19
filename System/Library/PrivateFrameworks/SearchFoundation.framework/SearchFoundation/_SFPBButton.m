@interface _SFPBButton
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBButton)initWithDictionary:(id)a3;
- (_SFPBButton)initWithFacade:(id)a3;
- (_SFPBButton)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBButton

- (_SFPBButton)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBButton *)self init];
  if (v5)
  {
    v6 = [v4 image];

    if (v6)
    {
      v7 = [_SFPBImage alloc];
      v8 = [v4 image];
      v9 = [(_SFPBImage *)v7 initWithFacade:v8];
      [(_SFPBButton *)v5 setImage:v9];
    }

    v10 = [v4 selectedImage];

    if (v10)
    {
      v11 = [_SFPBImage alloc];
      v12 = [v4 selectedImage];
      v13 = [(_SFPBImage *)v11 initWithFacade:v12];
      [(_SFPBButton *)v5 setSelectedImage:v13];
    }

    if ([v4 hasIsSelected])
    {
      -[_SFPBButton setIsSelected:](v5, "setIsSelected:", [v4 isSelected]);
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBButton)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _SFPBButton;
  v5 = [(_SFPBButton *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"image"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBImage alloc] initWithDictionary:v6];
      [(_SFPBButton *)v5 setImage:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"selectedImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBImage alloc] initWithDictionary:v8];
      [(_SFPBButton *)v5 setSelectedImage:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"isSelected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBButton setIsSelected:](v5, "setIsSelected:", [v10 BOOLValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (_SFPBButton)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBButton *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBButton *)self dictionaryRepresentation];
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
  if (self->_image)
  {
    v4 = [(_SFPBButton *)self image];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"image"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"image"];
    }
  }

  if (self->_isSelected)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBButton isSelected](self, "isSelected")}];
    [v3 setObject:v7 forKeyedSubscript:@"isSelected"];
  }

  if (self->_selectedImage)
  {
    v8 = [(_SFPBButton *)self selectedImage];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"selectedImage"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"selectedImage"];
    }
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBImage *)self->_image hash];
  v4 = [(_SFPBImage *)self->_selectedImage hash];
  v5 = 2654435761;
  if (!self->_isSelected)
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_SFPBButton *)self image];
  v6 = [v4 image];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBButton *)self image];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBButton *)self image];
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

  v5 = [(_SFPBButton *)self selectedImage];
  v6 = [v4 selectedImage];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_SFPBButton *)self selectedImage];
    if (!v12)
    {

LABEL_15:
      isSelected = self->_isSelected;
      v17 = isSelected == [v4 isSelected];
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_SFPBButton *)self selectedImage];
    v15 = [v4 selectedImage];
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
  v4 = [(_SFPBButton *)self image];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBButton *)self selectedImage];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBButton *)self isSelected])
  {
    PBDataWriterWriteBOOLField();
  }
}

@end