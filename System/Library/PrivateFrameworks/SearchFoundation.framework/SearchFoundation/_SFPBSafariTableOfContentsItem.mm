@interface _SFPBSafariTableOfContentsItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBSafariTableOfContentsItem)initWithDictionary:(id)dictionary;
- (_SFPBSafariTableOfContentsItem)initWithFacade:(id)facade;
- (_SFPBSafariTableOfContentsItem)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setElementPath:(id)path;
- (void)setText:(id)text;
- (void)setTrailingText:(id)text;
- (void)writeTo:(id)to;
@end

@implementation _SFPBSafariTableOfContentsItem

- (_SFPBSafariTableOfContentsItem)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBSafariTableOfContentsItem *)self init];
  if (v5)
  {
    text = [facadeCopy text];

    if (text)
    {
      text2 = [facadeCopy text];
      [(_SFPBSafariTableOfContentsItem *)v5 setText:text2];
    }

    elementPath = [facadeCopy elementPath];

    if (elementPath)
    {
      elementPath2 = [facadeCopy elementPath];
      [(_SFPBSafariTableOfContentsItem *)v5 setElementPath:elementPath2];
    }

    trailingText = [facadeCopy trailingText];

    if (trailingText)
    {
      trailingText2 = [facadeCopy trailingText];
      [(_SFPBSafariTableOfContentsItem *)v5 setTrailingText:trailingText2];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBSafariTableOfContentsItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = _SFPBSafariTableOfContentsItem;
  v5 = [(_SFPBSafariTableOfContentsItem *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBSafariTableOfContentsItem *)v5 setText:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"elementPath"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBSafariTableOfContentsItem *)v5 setElementPath:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"trailingText"];
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

- (_SFPBSafariTableOfContentsItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBSafariTableOfContentsItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBSafariTableOfContentsItem *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_elementPath)
  {
    elementPath = [(_SFPBSafariTableOfContentsItem *)self elementPath];
    v5 = [elementPath copy];
    [dictionary setObject:v5 forKeyedSubscript:@"elementPath"];
  }

  if (self->_text)
  {
    text = [(_SFPBSafariTableOfContentsItem *)self text];
    v7 = [text copy];
    [dictionary setObject:v7 forKeyedSubscript:@"text"];
  }

  if (self->_trailingText)
  {
    trailingText = [(_SFPBSafariTableOfContentsItem *)self trailingText];
    v9 = [trailingText copy];
    [dictionary setObject:v9 forKeyedSubscript:@"trailingText"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_text hash];
  v4 = [(NSString *)self->_elementPath hash]^ v3;
  return v4 ^ [(NSString *)self->_trailingText hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  text = [(_SFPBSafariTableOfContentsItem *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_16;
  }

  text3 = [(_SFPBSafariTableOfContentsItem *)self text];
  if (text3)
  {
    v8 = text3;
    text4 = [(_SFPBSafariTableOfContentsItem *)self text];
    text5 = [equalCopy text];
    v11 = [text4 isEqual:text5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  text = [(_SFPBSafariTableOfContentsItem *)self elementPath];
  text2 = [equalCopy elementPath];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_16;
  }

  elementPath = [(_SFPBSafariTableOfContentsItem *)self elementPath];
  if (elementPath)
  {
    v13 = elementPath;
    elementPath2 = [(_SFPBSafariTableOfContentsItem *)self elementPath];
    elementPath3 = [equalCopy elementPath];
    v16 = [elementPath2 isEqual:elementPath3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  text = [(_SFPBSafariTableOfContentsItem *)self trailingText];
  text2 = [equalCopy trailingText];
  if ((text != 0) != (text2 == 0))
  {
    trailingText = [(_SFPBSafariTableOfContentsItem *)self trailingText];
    if (!trailingText)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = trailingText;
    trailingText2 = [(_SFPBSafariTableOfContentsItem *)self trailingText];
    trailingText3 = [equalCopy trailingText];
    v21 = [trailingText2 isEqual:trailingText3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  text = [(_SFPBSafariTableOfContentsItem *)self text];
  if (text)
  {
    PBDataWriterWriteStringField();
  }

  elementPath = [(_SFPBSafariTableOfContentsItem *)self elementPath];
  if (elementPath)
  {
    PBDataWriterWriteStringField();
  }

  trailingText = [(_SFPBSafariTableOfContentsItem *)self trailingText];
  if (trailingText)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setTrailingText:(id)text
{
  v4 = [text copy];
  trailingText = self->_trailingText;
  self->_trailingText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setElementPath:(id)path
{
  v4 = [path copy];
  elementPath = self->_elementPath;
  self->_elementPath = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setText:(id)text
{
  v4 = [text copy];
  text = self->_text;
  self->_text = v4;

  MEMORY[0x1EEE66BB8]();
}

@end