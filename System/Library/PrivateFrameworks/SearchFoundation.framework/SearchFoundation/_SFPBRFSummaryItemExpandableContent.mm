@interface _SFPBRFSummaryItemExpandableContent
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFSimpleItemRichCardSection)simple_item_rich_card_section;
- (_SFPBRFSummaryItemExpandableContent)initWithDictionary:(id)dictionary;
- (_SFPBRFSummaryItemExpandableContent)initWithFacade:(id)facade;
- (_SFPBRFSummaryItemExpandableContent)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFSummaryItemExpandableContent

- (_SFPBRFSummaryItemExpandableContent)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFSummaryItemExpandableContent *)self init];
  if (v5)
  {
    if ([facadeCopy hasSimple_item_rich_card_section])
    {
      simple_item_rich_card_section = [facadeCopy simple_item_rich_card_section];

      if (simple_item_rich_card_section)
      {
        v7 = [_SFPBRFSimpleItemRichCardSection alloc];
        simple_item_rich_card_section2 = [facadeCopy simple_item_rich_card_section];
        v9 = [(_SFPBRFSimpleItemRichCardSection *)v7 initWithFacade:simple_item_rich_card_section2];
        [(_SFPBRFSummaryItemExpandableContent *)v5 setSimple_item_rich_card_section:v9];
      }
    }

    command_reference = [facadeCopy command_reference];

    if (command_reference)
    {
      v11 = [_SFPBCommandReference alloc];
      command_reference2 = [facadeCopy command_reference];
      v13 = [(_SFPBCommandReference *)v11 initWithFacade:command_reference2];
      [(_SFPBRFSummaryItemExpandableContent *)v5 setCommand_reference:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBRFSummaryItemExpandableContent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBRFSummaryItemExpandableContent;
  v5 = [(_SFPBRFSummaryItemExpandableContent *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"simpleItemRichCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFSimpleItemRichCardSection alloc] initWithDictionary:v6];
      [(_SFPBRFSummaryItemExpandableContent *)v5 setSimple_item_rich_card_section:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"commandReference"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBCommandReference alloc] initWithDictionary:v8];
      [(_SFPBRFSummaryItemExpandableContent *)v5 setCommand_reference:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRFSummaryItemExpandableContent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFSummaryItemExpandableContent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFSummaryItemExpandableContent *)self dictionaryRepresentation];
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
  if (self->_command_reference)
  {
    command_reference = [(_SFPBRFSummaryItemExpandableContent *)self command_reference];
    dictionaryRepresentation = [command_reference dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"commandReference"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"commandReference"];
    }
  }

  if (self->_simple_item_rich_card_section)
  {
    simple_item_rich_card_section = [(_SFPBRFSummaryItemExpandableContent *)self simple_item_rich_card_section];
    dictionaryRepresentation2 = [simple_item_rich_card_section dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"simpleItemRichCardSection"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"simpleItemRichCardSection"];
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

  simple_item_rich_card_section = [(_SFPBRFSummaryItemExpandableContent *)self simple_item_rich_card_section];
  simple_item_rich_card_section2 = [equalCopy simple_item_rich_card_section];
  if ((simple_item_rich_card_section != 0) == (simple_item_rich_card_section2 == 0))
  {
    goto LABEL_11;
  }

  simple_item_rich_card_section3 = [(_SFPBRFSummaryItemExpandableContent *)self simple_item_rich_card_section];
  if (simple_item_rich_card_section3)
  {
    v8 = simple_item_rich_card_section3;
    simple_item_rich_card_section4 = [(_SFPBRFSummaryItemExpandableContent *)self simple_item_rich_card_section];
    simple_item_rich_card_section5 = [equalCopy simple_item_rich_card_section];
    v11 = [simple_item_rich_card_section4 isEqual:simple_item_rich_card_section5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  simple_item_rich_card_section = [(_SFPBRFSummaryItemExpandableContent *)self command_reference];
  simple_item_rich_card_section2 = [equalCopy command_reference];
  if ((simple_item_rich_card_section != 0) != (simple_item_rich_card_section2 == 0))
  {
    command_reference = [(_SFPBRFSummaryItemExpandableContent *)self command_reference];
    if (!command_reference)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = command_reference;
    command_reference2 = [(_SFPBRFSummaryItemExpandableContent *)self command_reference];
    command_reference3 = [equalCopy command_reference];
    v16 = [command_reference2 isEqual:command_reference3];

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
  simple_item_rich_card_section = [(_SFPBRFSummaryItemExpandableContent *)self simple_item_rich_card_section];
  if (simple_item_rich_card_section)
  {
    PBDataWriterWriteSubmessage();
  }

  command_reference = [(_SFPBRFSummaryItemExpandableContent *)self command_reference];
  if (command_reference)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (_SFPBRFSimpleItemRichCardSection)simple_item_rich_card_section
{
  if (self->_whichValue == 1)
  {
    v3 = self->_simple_item_rich_card_section;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end