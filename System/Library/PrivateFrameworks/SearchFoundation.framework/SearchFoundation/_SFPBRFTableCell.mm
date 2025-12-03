@interface _SFPBRFTableCell
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFTableCell)initWithDictionary:(id)dictionary;
- (_SFPBRFTableCell)initWithFacade:(id)facade;
- (_SFPBRFTableCell)initWithJSON:(id)n;
- (_SFPBRFTextProperty)text;
- (_SFPBRFVisualProperty)visual;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setText:(id)text;
- (void)setVisual:(id)visual;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFTableCell

- (_SFPBRFTableCell)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFTableCell *)self init];
  if (v5)
  {
    if ([facadeCopy hasText])
    {
      text = [facadeCopy text];

      if (text)
      {
        v7 = [_SFPBRFTextProperty alloc];
        text2 = [facadeCopy text];
        v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:text2];
        [(_SFPBRFTableCell *)v5 setText:v9];
      }
    }

    if ([facadeCopy hasVisual])
    {
      visual = [facadeCopy visual];

      if (visual)
      {
        v11 = [_SFPBRFVisualProperty alloc];
        visual2 = [facadeCopy visual];
        v13 = [(_SFPBRFVisualProperty *)v11 initWithFacade:visual2];
        [(_SFPBRFTableCell *)v5 setVisual:v13];
      }
    }

    column_span = [facadeCopy column_span];

    if (column_span)
    {
      column_span2 = [facadeCopy column_span];
      -[_SFPBRFTableCell setColumn_span:](v5, "setColumn_span:", [column_span2 intValue]);
    }

    if ([facadeCopy hasHorizontal_alignment])
    {
      -[_SFPBRFTableCell setHorizontal_alignment:](v5, "setHorizontal_alignment:", [facadeCopy horizontal_alignment]);
    }

    if ([facadeCopy hasApplySmallCaps])
    {
      -[_SFPBRFTableCell setApplySmallCaps:](v5, "setApplySmallCaps:", [facadeCopy applySmallCaps]);
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBRFTableCell)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = _SFPBRFTableCell;
  v5 = [(_SFPBRFTableCell *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFTableCell *)v5 setText:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"visual"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v8];
      [(_SFPBRFTableCell *)v5 setVisual:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"columnSpan"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFTableCell setColumn_span:](v5, "setColumn_span:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"horizontalAlignment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFTableCell setHorizontal_alignment:](v5, "setHorizontal_alignment:", [v11 intValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"applySmallCaps"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFTableCell setApplySmallCaps:](v5, "setApplySmallCaps:", [v12 BOOLValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (_SFPBRFTableCell)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFTableCell *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFTableCell *)self dictionaryRepresentation];
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
  if (self->_applySmallCaps)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFTableCell applySmallCaps](self, "applySmallCaps")}];
    [dictionary setObject:v4 forKeyedSubscript:@"applySmallCaps"];
  }

  if (self->_column_span)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBRFTableCell column_span](self, "column_span")}];
    [dictionary setObject:v5 forKeyedSubscript:@"columnSpan"];
  }

  if (self->_horizontal_alignment)
  {
    horizontal_alignment = [(_SFPBRFTableCell *)self horizontal_alignment];
    if (horizontal_alignment >= 4)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", horizontal_alignment];
    }

    else
    {
      v7 = off_1E7ACE560[horizontal_alignment];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"horizontalAlignment"];
  }

  if (self->_text)
  {
    text = [(_SFPBRFTableCell *)self text];
    dictionaryRepresentation = [text dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"text"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"text"];
    }
  }

  if (self->_visual)
  {
    visual = [(_SFPBRFTableCell *)self visual];
    dictionaryRepresentation2 = [visual dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"visual"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"visual"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text hash];
  v4 = [(_SFPBRFVisualProperty *)self->_visual hash];
  v5 = 2654435761;
  if (!self->_applySmallCaps)
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ (2654435761 * self->_column_span) ^ (2654435761 * self->_horizontal_alignment) ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  text = [(_SFPBRFTableCell *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_11;
  }

  text3 = [(_SFPBRFTableCell *)self text];
  if (text3)
  {
    v8 = text3;
    text4 = [(_SFPBRFTableCell *)self text];
    text5 = [equalCopy text];
    v11 = [text4 isEqual:text5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  text = [(_SFPBRFTableCell *)self visual];
  text2 = [equalCopy visual];
  if ((text != 0) == (text2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  visual = [(_SFPBRFTableCell *)self visual];
  if (visual)
  {
    v13 = visual;
    visual2 = [(_SFPBRFTableCell *)self visual];
    visual3 = [equalCopy visual];
    v16 = [visual2 isEqual:visual3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  column_span = self->_column_span;
  if (column_span == [equalCopy column_span])
  {
    horizontal_alignment = self->_horizontal_alignment;
    if (horizontal_alignment == [equalCopy horizontal_alignment])
    {
      applySmallCaps = self->_applySmallCaps;
      v17 = applySmallCaps == [equalCopy applySmallCaps];
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  text = [(_SFPBRFTableCell *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  visual = [(_SFPBRFTableCell *)self visual];
  if (visual)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFTableCell *)self column_span])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBRFTableCell *)self horizontal_alignment])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBRFTableCell *)self applySmallCaps])
  {
    PBDataWriterWriteBOOLField();
  }
}

- (_SFPBRFVisualProperty)visual
{
  if (self->_whichContent == 2)
  {
    v3 = self->_visual;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setVisual:(id)visual
{
  visualCopy = visual;
  text = self->_text;
  self->_text = 0;

  self->_whichContent = 2 * (visualCopy != 0);
  visual = self->_visual;
  self->_visual = visualCopy;
}

- (_SFPBRFTextProperty)text
{
  if (self->_whichContent == 1)
  {
    v3 = self->_text;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setText:(id)text
{
  textCopy = text;
  visual = self->_visual;
  self->_visual = 0;

  self->_whichContent = textCopy != 0;
  text = self->_text;
  self->_text = textCopy;
}

@end