@interface _SFPBRFSimpleItemVisualElementCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFSimpleItemVisualElementCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFSimpleItemVisualElementCardSection)initWithFacade:(id)facade;
- (_SFPBRFSimpleItemVisualElementCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFSimpleItemVisualElementCardSection

- (_SFPBRFSimpleItemVisualElementCardSection)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFSimpleItemVisualElementCardSection *)self init];
  if (v5)
  {
    image = [facadeCopy image];

    if (image)
    {
      v7 = [_SFPBRFVisualProperty alloc];
      image2 = [facadeCopy image];
      v9 = [(_SFPBRFVisualProperty *)v7 initWithFacade:image2];
      [(_SFPBRFSimpleItemVisualElementCardSection *)v5 setImage:v9];
    }

    text = [facadeCopy text];

    if (text)
    {
      v11 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:text2];
      [(_SFPBRFSimpleItemVisualElementCardSection *)v5 setText_1:v13];
    }

    text3 = [facadeCopy text];

    if (text3)
    {
      v15 = [_SFPBRFTextProperty alloc];
      text4 = [facadeCopy text];
      v17 = [(_SFPBRFTextProperty *)v15 initWithFacade:text4];
      [(_SFPBRFSimpleItemVisualElementCardSection *)v5 setText_2:v17];
    }

    footnote = [facadeCopy footnote];

    if (footnote)
    {
      v19 = [_SFPBRFTextProperty alloc];
      footnote2 = [facadeCopy footnote];
      v21 = [(_SFPBRFTextProperty *)v19 initWithFacade:footnote2];
      [(_SFPBRFSimpleItemVisualElementCardSection *)v5 setFootnote:v21];
    }

    if ([facadeCopy hasHorizontal_alignment])
    {
      -[_SFPBRFSimpleItemVisualElementCardSection setHorizontal_alignment:](v5, "setHorizontal_alignment:", [facadeCopy horizontal_alignment]);
    }

    if ([facadeCopy hasAttribution_style])
    {
      -[_SFPBRFSimpleItemVisualElementCardSection setAttribution_style:](v5, "setAttribution_style:", [facadeCopy attribution_style]);
    }

    v22 = v5;
  }

  return v5;
}

- (_SFPBRFSimpleItemVisualElementCardSection)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = _SFPBRFSimpleItemVisualElementCardSection;
  v5 = [(_SFPBRFSimpleItemVisualElementCardSection *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"image"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v6];
      [(_SFPBRFSimpleItemVisualElementCardSection *)v5 setImage:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFSimpleItemVisualElementCardSection *)v5 setText_1:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFTextProperty alloc] initWithDictionary:v10];
      [(_SFPBRFSimpleItemVisualElementCardSection *)v5 setText_2:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"footnote"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBRFTextProperty alloc] initWithDictionary:v12];
      [(_SFPBRFSimpleItemVisualElementCardSection *)v5 setFootnote:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"horizontalAlignment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFSimpleItemVisualElementCardSection setHorizontal_alignment:](v5, "setHorizontal_alignment:", [v14 intValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"attributionStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFSimpleItemVisualElementCardSection setAttribution_style:](v5, "setAttribution_style:", [v15 intValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBRFSimpleItemVisualElementCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFSimpleItemVisualElementCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFSimpleItemVisualElementCardSection *)self dictionaryRepresentation];
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
  if (self->_attribution_style)
  {
    attribution_style = [(_SFPBRFSimpleItemVisualElementCardSection *)self attribution_style];
    if (attribution_style)
    {
      if (attribution_style == 1)
      {
        v5 = @"1";
      }

      else
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", attribution_style];
      }
    }

    else
    {
      v5 = @"0";
    }

    [dictionary setObject:v5 forKeyedSubscript:@"attributionStyle"];
  }

  if (self->_footnote)
  {
    footnote = [(_SFPBRFSimpleItemVisualElementCardSection *)self footnote];
    dictionaryRepresentation = [footnote dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"footnote"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"footnote"];
    }
  }

  if (self->_horizontal_alignment)
  {
    horizontal_alignment = [(_SFPBRFSimpleItemVisualElementCardSection *)self horizontal_alignment];
    if (horizontal_alignment >= 4)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", horizontal_alignment];
    }

    else
    {
      v10 = off_1E7ACE560[horizontal_alignment];
    }

    [dictionary setObject:v10 forKeyedSubscript:@"horizontalAlignment"];
  }

  if (self->_image)
  {
    image = [(_SFPBRFSimpleItemVisualElementCardSection *)self image];
    dictionaryRepresentation2 = [image dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"image"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"image"];
    }
  }

  if (self->_text_1)
  {
    text = [(_SFPBRFSimpleItemVisualElementCardSection *)self text];
    dictionaryRepresentation3 = [text dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"text1"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"text1"];
    }
  }

  if (self->_text_2)
  {
    text2 = [(_SFPBRFSimpleItemVisualElementCardSection *)self text];
    dictionaryRepresentation4 = [text2 dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"text2"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"text2"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFVisualProperty *)self->_image hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v5 = [(_SFPBRFTextProperty *)self->_text_2 hash];
  return v4 ^ v3 ^ v5 ^ [(_SFPBRFTextProperty *)self->_footnote hash]^ (2654435761 * self->_horizontal_alignment) ^ (2654435761 * self->_attribution_style);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  image = [(_SFPBRFSimpleItemVisualElementCardSection *)self image];
  image2 = [equalCopy image];
  if ((image != 0) == (image2 == 0))
  {
    goto LABEL_21;
  }

  image3 = [(_SFPBRFSimpleItemVisualElementCardSection *)self image];
  if (image3)
  {
    v8 = image3;
    image4 = [(_SFPBRFSimpleItemVisualElementCardSection *)self image];
    image5 = [equalCopy image];
    v11 = [image4 isEqual:image5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  image = [(_SFPBRFSimpleItemVisualElementCardSection *)self text];
  image2 = [equalCopy text];
  if ((image != 0) == (image2 == 0))
  {
    goto LABEL_21;
  }

  text = [(_SFPBRFSimpleItemVisualElementCardSection *)self text];
  if (text)
  {
    v13 = text;
    text2 = [(_SFPBRFSimpleItemVisualElementCardSection *)self text];
    text3 = [equalCopy text];
    v16 = [text2 isEqual:text3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  image = [(_SFPBRFSimpleItemVisualElementCardSection *)self text];
  image2 = [equalCopy text];
  if ((image != 0) == (image2 == 0))
  {
    goto LABEL_21;
  }

  text4 = [(_SFPBRFSimpleItemVisualElementCardSection *)self text];
  if (text4)
  {
    v18 = text4;
    text5 = [(_SFPBRFSimpleItemVisualElementCardSection *)self text];
    text6 = [equalCopy text];
    v21 = [text5 isEqual:text6];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  image = [(_SFPBRFSimpleItemVisualElementCardSection *)self footnote];
  image2 = [equalCopy footnote];
  if ((image != 0) == (image2 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  footnote = [(_SFPBRFSimpleItemVisualElementCardSection *)self footnote];
  if (footnote)
  {
    v23 = footnote;
    footnote2 = [(_SFPBRFSimpleItemVisualElementCardSection *)self footnote];
    footnote3 = [equalCopy footnote];
    v26 = [footnote2 isEqual:footnote3];

    if (!v26)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  horizontal_alignment = self->_horizontal_alignment;
  if (horizontal_alignment == [equalCopy horizontal_alignment])
  {
    attribution_style = self->_attribution_style;
    v27 = attribution_style == [equalCopy attribution_style];
    goto LABEL_23;
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  image = [(_SFPBRFSimpleItemVisualElementCardSection *)self image];
  if (image)
  {
    PBDataWriterWriteSubmessage();
  }

  text = [(_SFPBRFSimpleItemVisualElementCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  text2 = [(_SFPBRFSimpleItemVisualElementCardSection *)self text];
  if (text2)
  {
    PBDataWriterWriteSubmessage();
  }

  footnote = [(_SFPBRFSimpleItemVisualElementCardSection *)self footnote];
  if (footnote)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFSimpleItemVisualElementCardSection *)self horizontal_alignment])
  {
    PBDataWriterWriteInt32Field();
  }

  attribution_style = [(_SFPBRFSimpleItemVisualElementCardSection *)self attribution_style];
  v9 = toCopy;
  if (attribution_style)
  {
    PBDataWriterWriteInt32Field();
    v9 = toCopy;
  }
}

@end