@interface _SFPBColorBarCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBColorBarCardSection)initWithDictionary:(id)dictionary;
- (_SFPBColorBarCardSection)initWithFacade:(id)facade;
- (_SFPBColorBarCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBColorBarCardSection

- (_SFPBColorBarCardSection)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBColorBarCardSection *)self init];
  if (v5)
  {
    barColor = [facadeCopy barColor];

    if (barColor)
    {
      v7 = [_SFPBColor alloc];
      barColor2 = [facadeCopy barColor];
      v9 = [(_SFPBColor *)v7 initWithFacade:barColor2];
      [(_SFPBColorBarCardSection *)v5 setBarColor:v9];
    }

    topText = [facadeCopy topText];

    if (topText)
    {
      v11 = [_SFPBRichText alloc];
      topText2 = [facadeCopy topText];
      v13 = [(_SFPBRichText *)v11 initWithFacade:topText2];
      [(_SFPBColorBarCardSection *)v5 setTopText:v13];
    }

    title = [facadeCopy title];

    if (title)
    {
      v15 = [_SFPBRichText alloc];
      title2 = [facadeCopy title];
      v17 = [(_SFPBRichText *)v15 initWithFacade:title2];
      [(_SFPBColorBarCardSection *)v5 setTitle:v17];
    }

    subtitle = [facadeCopy subtitle];

    if (subtitle)
    {
      v19 = [_SFPBRichText alloc];
      subtitle2 = [facadeCopy subtitle];
      v21 = [(_SFPBRichText *)v19 initWithFacade:subtitle2];
      [(_SFPBColorBarCardSection *)v5 setSubtitle:v21];
    }

    v22 = v5;
  }

  return v5;
}

- (_SFPBColorBarCardSection)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = _SFPBColorBarCardSection;
  v5 = [(_SFPBColorBarCardSection *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"barColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBColor alloc] initWithDictionary:v6];
      [(_SFPBColorBarCardSection *)v5 setBarColor:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"topText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRichText alloc] initWithDictionary:v8];
      [(_SFPBColorBarCardSection *)v5 setTopText:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRichText alloc] initWithDictionary:v10];
      [(_SFPBColorBarCardSection *)v5 setTitle:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBRichText alloc] initWithDictionary:v12];
      [(_SFPBColorBarCardSection *)v5 setSubtitle:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBColorBarCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBColorBarCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBColorBarCardSection *)self dictionaryRepresentation];
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
  if (self->_barColor)
  {
    barColor = [(_SFPBColorBarCardSection *)self barColor];
    dictionaryRepresentation = [barColor dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"barColor"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"barColor"];
    }
  }

  if (self->_subtitle)
  {
    subtitle = [(_SFPBColorBarCardSection *)self subtitle];
    dictionaryRepresentation2 = [subtitle dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"subtitle"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"subtitle"];
    }
  }

  if (self->_title)
  {
    title = [(_SFPBColorBarCardSection *)self title];
    dictionaryRepresentation3 = [title dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"title"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"title"];
    }
  }

  if (self->_topText)
  {
    topText = [(_SFPBColorBarCardSection *)self topText];
    dictionaryRepresentation4 = [topText dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"topText"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"topText"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBColor *)self->_barColor hash];
  v4 = [(_SFPBRichText *)self->_topText hash]^ v3;
  v5 = [(_SFPBRichText *)self->_title hash];
  return v4 ^ v5 ^ [(_SFPBRichText *)self->_subtitle hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  barColor = [(_SFPBColorBarCardSection *)self barColor];
  barColor2 = [equalCopy barColor];
  if ((barColor != 0) == (barColor2 == 0))
  {
    goto LABEL_21;
  }

  barColor3 = [(_SFPBColorBarCardSection *)self barColor];
  if (barColor3)
  {
    v8 = barColor3;
    barColor4 = [(_SFPBColorBarCardSection *)self barColor];
    barColor5 = [equalCopy barColor];
    v11 = [barColor4 isEqual:barColor5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  barColor = [(_SFPBColorBarCardSection *)self topText];
  barColor2 = [equalCopy topText];
  if ((barColor != 0) == (barColor2 == 0))
  {
    goto LABEL_21;
  }

  topText = [(_SFPBColorBarCardSection *)self topText];
  if (topText)
  {
    v13 = topText;
    topText2 = [(_SFPBColorBarCardSection *)self topText];
    topText3 = [equalCopy topText];
    v16 = [topText2 isEqual:topText3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  barColor = [(_SFPBColorBarCardSection *)self title];
  barColor2 = [equalCopy title];
  if ((barColor != 0) == (barColor2 == 0))
  {
    goto LABEL_21;
  }

  title = [(_SFPBColorBarCardSection *)self title];
  if (title)
  {
    v18 = title;
    title2 = [(_SFPBColorBarCardSection *)self title];
    title3 = [equalCopy title];
    v21 = [title2 isEqual:title3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  barColor = [(_SFPBColorBarCardSection *)self subtitle];
  barColor2 = [equalCopy subtitle];
  if ((barColor != 0) != (barColor2 == 0))
  {
    subtitle = [(_SFPBColorBarCardSection *)self subtitle];
    if (!subtitle)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = subtitle;
    subtitle2 = [(_SFPBColorBarCardSection *)self subtitle];
    subtitle3 = [equalCopy subtitle];
    v26 = [subtitle2 isEqual:subtitle3];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  barColor = [(_SFPBColorBarCardSection *)self barColor];
  if (barColor)
  {
    PBDataWriterWriteSubmessage();
  }

  topText = [(_SFPBColorBarCardSection *)self topText];
  if (topText)
  {
    PBDataWriterWriteSubmessage();
  }

  title = [(_SFPBColorBarCardSection *)self title];
  if (title)
  {
    PBDataWriterWriteSubmessage();
  }

  subtitle = [(_SFPBColorBarCardSection *)self subtitle];
  if (subtitle)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end