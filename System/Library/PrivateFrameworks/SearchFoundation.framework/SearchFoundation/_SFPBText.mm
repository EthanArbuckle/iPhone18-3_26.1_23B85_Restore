@interface _SFPBText
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBText)initWithDictionary:(id)a3;
- (_SFPBText)initWithFacade:(id)a3;
- (_SFPBText)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)setText:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBText

- (_SFPBText)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBText *)self init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [v4 text];
      [(_SFPBText *)v5 setText:v7];
    }

    if ([v4 hasMaxLines])
    {
      -[_SFPBText setMaxLines:](v5, "setMaxLines:", [v4 maxLines]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBText)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _SFPBText;
  v5 = [(_SFPBText *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBText *)v5 setText:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"maxLines"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBText setMaxLines:](v5, "setMaxLines:", [v8 unsignedIntValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBText)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBText *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBText *)self dictionaryRepresentation];
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
  if (self->_maxLines)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBText maxLines](self, "maxLines")}];
    [v3 setObject:v4 forKeyedSubscript:@"maxLines"];
  }

  if (self->_text)
  {
    v5 = [(_SFPBText *)self text];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"text"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_SFPBText *)self text];
    v6 = [v4 text];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_SFPBText *)self text];
      if (!v8)
      {

LABEL_10:
        maxLines = self->_maxLines;
        v13 = maxLines == [v4 maxLines];
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_SFPBText *)self text];
      v11 = [v4 text];
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
  v4 = [(_SFPBText *)self text];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBText *)self maxLines])
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)setText:(id)a3
{
  v4 = [a3 copy];
  text = self->_text;
  self->_text = v4;

  MEMORY[0x1EEE66BB8]();
}

@end