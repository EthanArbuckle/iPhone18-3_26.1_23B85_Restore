@interface _SFPBSafariTableOfContentsItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBSafariTableOfContentsItem)initWithDictionary:(id)a3;
- (_SFPBSafariTableOfContentsItem)initWithFacade:(id)a3;
- (_SFPBSafariTableOfContentsItem)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setElementPath:(id)a3;
- (void)setText:(id)a3;
- (void)setTrailingText:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBSafariTableOfContentsItem

- (_SFPBSafariTableOfContentsItem)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBSafariTableOfContentsItem *)self init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [v4 text];
      [(_SFPBSafariTableOfContentsItem *)v5 setText:v7];
    }

    v8 = [v4 elementPath];

    if (v8)
    {
      v9 = [v4 elementPath];
      [(_SFPBSafariTableOfContentsItem *)v5 setElementPath:v9];
    }

    v10 = [v4 trailingText];

    if (v10)
    {
      v11 = [v4 trailingText];
      [(_SFPBSafariTableOfContentsItem *)v5 setTrailingText:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBSafariTableOfContentsItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _SFPBSafariTableOfContentsItem;
  v5 = [(_SFPBSafariTableOfContentsItem *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBSafariTableOfContentsItem *)v5 setText:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"elementPath"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBSafariTableOfContentsItem *)v5 setElementPath:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"trailingText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBSafariTableOfContentsItem *)v5 setTrailingText:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBSafariTableOfContentsItem)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBSafariTableOfContentsItem *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBSafariTableOfContentsItem *)self dictionaryRepresentation];
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
  if (self->_elementPath)
  {
    v4 = [(_SFPBSafariTableOfContentsItem *)self elementPath];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"elementPath"];
  }

  if (self->_text)
  {
    v6 = [(_SFPBSafariTableOfContentsItem *)self text];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"text"];
  }

  if (self->_trailingText)
  {
    v8 = [(_SFPBSafariTableOfContentsItem *)self trailingText];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"trailingText"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_text hash];
  v4 = [(NSString *)self->_elementPath hash]^ v3;
  return v4 ^ [(NSString *)self->_trailingText hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_SFPBSafariTableOfContentsItem *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_SFPBSafariTableOfContentsItem *)self text];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBSafariTableOfContentsItem *)self text];
    v10 = [v4 text];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSafariTableOfContentsItem *)self elementPath];
  v6 = [v4 elementPath];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_SFPBSafariTableOfContentsItem *)self elementPath];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBSafariTableOfContentsItem *)self elementPath];
    v15 = [v4 elementPath];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSafariTableOfContentsItem *)self trailingText];
  v6 = [v4 trailingText];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_SFPBSafariTableOfContentsItem *)self trailingText];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_SFPBSafariTableOfContentsItem *)self trailingText];
    v20 = [v4 trailingText];
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
  v7 = a3;
  v4 = [(_SFPBSafariTableOfContentsItem *)self text];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBSafariTableOfContentsItem *)self elementPath];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBSafariTableOfContentsItem *)self trailingText];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setTrailingText:(id)a3
{
  v4 = [a3 copy];
  trailingText = self->_trailingText;
  self->_trailingText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setElementPath:(id)a3
{
  v4 = [a3 copy];
  elementPath = self->_elementPath;
  self->_elementPath = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setText:(id)a3
{
  v4 = [a3 copy];
  text = self->_text;
  self->_text = v4;

  MEMORY[0x1EEE66BB8]();
}

@end