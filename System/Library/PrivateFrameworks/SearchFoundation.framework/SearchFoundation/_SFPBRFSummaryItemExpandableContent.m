@interface _SFPBRFSummaryItemExpandableContent
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFSimpleItemRichCardSection)simple_item_rich_card_section;
- (_SFPBRFSummaryItemExpandableContent)initWithDictionary:(id)a3;
- (_SFPBRFSummaryItemExpandableContent)initWithFacade:(id)a3;
- (_SFPBRFSummaryItemExpandableContent)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFSummaryItemExpandableContent

- (_SFPBRFSummaryItemExpandableContent)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBRFSummaryItemExpandableContent *)self init];
  if (v5)
  {
    if ([v4 hasSimple_item_rich_card_section])
    {
      v6 = [v4 simple_item_rich_card_section];

      if (v6)
      {
        v7 = [_SFPBRFSimpleItemRichCardSection alloc];
        v8 = [v4 simple_item_rich_card_section];
        v9 = [(_SFPBRFSimpleItemRichCardSection *)v7 initWithFacade:v8];
        [(_SFPBRFSummaryItemExpandableContent *)v5 setSimple_item_rich_card_section:v9];
      }
    }

    v10 = [v4 command_reference];

    if (v10)
    {
      v11 = [_SFPBCommandReference alloc];
      v12 = [v4 command_reference];
      v13 = [(_SFPBCommandReference *)v11 initWithFacade:v12];
      [(_SFPBRFSummaryItemExpandableContent *)v5 setCommand_reference:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBRFSummaryItemExpandableContent)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SFPBRFSummaryItemExpandableContent;
  v5 = [(_SFPBRFSummaryItemExpandableContent *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"simpleItemRichCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFSimpleItemRichCardSection alloc] initWithDictionary:v6];
      [(_SFPBRFSummaryItemExpandableContent *)v5 setSimple_item_rich_card_section:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"commandReference"];
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

- (_SFPBRFSummaryItemExpandableContent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFSummaryItemExpandableContent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFSummaryItemExpandableContent *)self dictionaryRepresentation];
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
  if (self->_command_reference)
  {
    v4 = [(_SFPBRFSummaryItemExpandableContent *)self command_reference];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"commandReference"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"commandReference"];
    }
  }

  if (self->_simple_item_rich_card_section)
  {
    v7 = [(_SFPBRFSummaryItemExpandableContent *)self simple_item_rich_card_section];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"simpleItemRichCardSection"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"simpleItemRichCardSection"];
    }
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_SFPBRFSummaryItemExpandableContent *)self simple_item_rich_card_section];
  v6 = [v4 simple_item_rich_card_section];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBRFSummaryItemExpandableContent *)self simple_item_rich_card_section];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFSummaryItemExpandableContent *)self simple_item_rich_card_section];
    v10 = [v4 simple_item_rich_card_section];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemExpandableContent *)self command_reference];
  v6 = [v4 command_reference];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_SFPBRFSummaryItemExpandableContent *)self command_reference];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_SFPBRFSummaryItemExpandableContent *)self command_reference];
    v15 = [v4 command_reference];
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
  v4 = [(_SFPBRFSummaryItemExpandableContent *)self simple_item_rich_card_section];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBRFSummaryItemExpandableContent *)self command_reference];
  if (v5)
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