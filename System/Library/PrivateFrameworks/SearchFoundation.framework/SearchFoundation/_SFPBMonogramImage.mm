@interface _SFPBMonogramImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBMonogramImage)initWithDictionary:(id)a3;
- (_SFPBMonogramImage)initWithFacade:(id)a3;
- (_SFPBMonogramImage)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)setMonogramLetters:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBMonogramImage

- (_SFPBMonogramImage)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBMonogramImage *)self init];
  if (v5)
  {
    v6 = [v4 monogramLetters];

    if (v6)
    {
      v7 = [v4 monogramLetters];
      [(_SFPBMonogramImage *)v5 setMonogramLetters:v7];
    }

    if ([v4 hasMonogramStyle])
    {
      -[_SFPBMonogramImage setMonogramStyle:](v5, "setMonogramStyle:", [v4 monogramStyle]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBMonogramImage)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _SFPBMonogramImage;
  v5 = [(_SFPBMonogramImage *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"monogramLetters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBMonogramImage *)v5 setMonogramLetters:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"monogramStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMonogramImage setMonogramStyle:](v5, "setMonogramStyle:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBMonogramImage)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBMonogramImage *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBMonogramImage *)self dictionaryRepresentation];
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
  if (self->_monogramLetters)
  {
    v4 = [(_SFPBMonogramImage *)self monogramLetters];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"monogramLetters"];
  }

  if (self->_monogramStyle)
  {
    v6 = [(_SFPBMonogramImage *)self monogramStyle];
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = @"1";
      }

      else
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
      }
    }

    else
    {
      v7 = @"0";
    }

    [v3 setObject:v7 forKeyedSubscript:@"monogramStyle"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_SFPBMonogramImage *)self monogramLetters];
    v6 = [v4 monogramLetters];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_SFPBMonogramImage *)self monogramLetters];
      if (!v8)
      {

LABEL_10:
        monogramStyle = self->_monogramStyle;
        v13 = monogramStyle == [v4 monogramStyle];
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_SFPBMonogramImage *)self monogramLetters];
      v11 = [v4 monogramLetters];
      v12 = [v10 isEqual:v11];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = [(_SFPBMonogramImage *)self monogramLetters];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMonogramImage *)self monogramStyle])
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setMonogramLetters:(id)a3
{
  v4 = [a3 copy];
  monogramLetters = self->_monogramLetters;
  self->_monogramLetters = v4;

  MEMORY[0x1EEE66BB8]();
}

@end