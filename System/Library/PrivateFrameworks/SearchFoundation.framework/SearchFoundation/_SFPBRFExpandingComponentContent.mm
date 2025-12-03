@interface _SFPBRFExpandingComponentContent
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFExpandingComponentContent)initWithDictionary:(id)dictionary;
- (_SFPBRFExpandingComponentContent)initWithFacade:(id)facade;
- (_SFPBRFExpandingComponentContent)initWithJSON:(id)n;
- (_SFPBRFLongItemStandardCardSection)long_item_standard_card_section;
- (_SFPBRFReferenceFootnoteCardSection)reference_footnote_card_section;
- (id)dictionaryRepresentation;
- (void)setLong_item_standard_card_section:(id)long_item_standard_card_section;
- (void)setReference_footnote_card_section:(id)reference_footnote_card_section;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFExpandingComponentContent

- (_SFPBRFExpandingComponentContent)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFExpandingComponentContent *)self init];
  if (v5)
  {
    if ([facadeCopy hasLong_item_standard_card_section])
    {
      long_item_standard_card_section = [facadeCopy long_item_standard_card_section];

      if (long_item_standard_card_section)
      {
        v7 = [_SFPBRFLongItemStandardCardSection alloc];
        long_item_standard_card_section2 = [facadeCopy long_item_standard_card_section];
        v9 = [(_SFPBRFLongItemStandardCardSection *)v7 initWithFacade:long_item_standard_card_section2];
        [(_SFPBRFExpandingComponentContent *)v5 setLong_item_standard_card_section:v9];
      }
    }

    if ([facadeCopy hasReference_footnote_card_section])
    {
      reference_footnote_card_section = [facadeCopy reference_footnote_card_section];

      if (reference_footnote_card_section)
      {
        v11 = [_SFPBRFReferenceFootnoteCardSection alloc];
        reference_footnote_card_section2 = [facadeCopy reference_footnote_card_section];
        v13 = [(_SFPBRFReferenceFootnoteCardSection *)v11 initWithFacade:reference_footnote_card_section2];
        [(_SFPBRFExpandingComponentContent *)v5 setReference_footnote_card_section:v13];
      }
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBRFExpandingComponentContent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBRFExpandingComponentContent;
  v5 = [(_SFPBRFExpandingComponentContent *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"longItemStandardCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFLongItemStandardCardSection alloc] initWithDictionary:v6];
      [(_SFPBRFExpandingComponentContent *)v5 setLong_item_standard_card_section:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"referenceFootnoteCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFReferenceFootnoteCardSection alloc] initWithDictionary:v8];
      [(_SFPBRFExpandingComponentContent *)v5 setReference_footnote_card_section:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRFExpandingComponentContent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFExpandingComponentContent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFExpandingComponentContent *)self dictionaryRepresentation];
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
  if (self->_long_item_standard_card_section)
  {
    long_item_standard_card_section = [(_SFPBRFExpandingComponentContent *)self long_item_standard_card_section];
    dictionaryRepresentation = [long_item_standard_card_section dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"longItemStandardCardSection"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"longItemStandardCardSection"];
    }
  }

  if (self->_reference_footnote_card_section)
  {
    reference_footnote_card_section = [(_SFPBRFExpandingComponentContent *)self reference_footnote_card_section];
    dictionaryRepresentation2 = [reference_footnote_card_section dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"referenceFootnoteCardSection"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"referenceFootnoteCardSection"];
    }
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  long_item_standard_card_section = [(_SFPBRFExpandingComponentContent *)self long_item_standard_card_section];
  long_item_standard_card_section2 = [equalCopy long_item_standard_card_section];
  if ((long_item_standard_card_section != 0) == (long_item_standard_card_section2 == 0))
  {
    goto LABEL_11;
  }

  long_item_standard_card_section3 = [(_SFPBRFExpandingComponentContent *)self long_item_standard_card_section];
  if (long_item_standard_card_section3)
  {
    v8 = long_item_standard_card_section3;
    long_item_standard_card_section4 = [(_SFPBRFExpandingComponentContent *)self long_item_standard_card_section];
    long_item_standard_card_section5 = [equalCopy long_item_standard_card_section];
    v11 = [long_item_standard_card_section4 isEqual:long_item_standard_card_section5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  long_item_standard_card_section = [(_SFPBRFExpandingComponentContent *)self reference_footnote_card_section];
  long_item_standard_card_section2 = [equalCopy reference_footnote_card_section];
  if ((long_item_standard_card_section != 0) != (long_item_standard_card_section2 == 0))
  {
    reference_footnote_card_section = [(_SFPBRFExpandingComponentContent *)self reference_footnote_card_section];
    if (!reference_footnote_card_section)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = reference_footnote_card_section;
    reference_footnote_card_section2 = [(_SFPBRFExpandingComponentContent *)self reference_footnote_card_section];
    reference_footnote_card_section3 = [equalCopy reference_footnote_card_section];
    v16 = [reference_footnote_card_section2 isEqual:reference_footnote_card_section3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  long_item_standard_card_section = [(_SFPBRFExpandingComponentContent *)self long_item_standard_card_section];
  if (long_item_standard_card_section)
  {
    PBDataWriterWriteSubmessage();
  }

  reference_footnote_card_section = [(_SFPBRFExpandingComponentContent *)self reference_footnote_card_section];
  if (reference_footnote_card_section)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (_SFPBRFReferenceFootnoteCardSection)reference_footnote_card_section
{
  if (self->_whichValue == 2)
  {
    v3 = self->_reference_footnote_card_section;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setReference_footnote_card_section:(id)reference_footnote_card_section
{
  reference_footnote_card_sectionCopy = reference_footnote_card_section;
  long_item_standard_card_section = self->_long_item_standard_card_section;
  self->_long_item_standard_card_section = 0;

  self->_whichValue = 2 * (reference_footnote_card_sectionCopy != 0);
  reference_footnote_card_section = self->_reference_footnote_card_section;
  self->_reference_footnote_card_section = reference_footnote_card_sectionCopy;
}

- (_SFPBRFLongItemStandardCardSection)long_item_standard_card_section
{
  if (self->_whichValue == 1)
  {
    v3 = self->_long_item_standard_card_section;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLong_item_standard_card_section:(id)long_item_standard_card_section
{
  long_item_standard_card_sectionCopy = long_item_standard_card_section;
  reference_footnote_card_section = self->_reference_footnote_card_section;
  self->_reference_footnote_card_section = 0;

  self->_whichValue = long_item_standard_card_sectionCopy != 0;
  long_item_standard_card_section = self->_long_item_standard_card_section;
  self->_long_item_standard_card_section = long_item_standard_card_sectionCopy;
}

@end