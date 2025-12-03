@interface RFSummaryItemExpandableContent
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSummaryItemExpandableContent)initWithCoder:(id)coder;
- (RFSummaryItemExpandableContent)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFSummaryItemExpandableContent

- (unint64_t)hash
{
  simple_item_rich_card_section = [(RFSummaryItemExpandableContent *)self simple_item_rich_card_section];
  v4 = [simple_item_rich_card_section hash];
  command_reference = [(RFSummaryItemExpandableContent *)self command_reference];
  v6 = [command_reference hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(RFSummaryItemExpandableContent *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      simple_item_rich_card_section = [(RFSummaryItemExpandableContent *)self simple_item_rich_card_section];
      simple_item_rich_card_section2 = [(RFSummaryItemExpandableContent *)v6 simple_item_rich_card_section];
      if ((simple_item_rich_card_section != 0) == (simple_item_rich_card_section2 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      simple_item_rich_card_section3 = [(RFSummaryItemExpandableContent *)self simple_item_rich_card_section];
      if (simple_item_rich_card_section3)
      {
        simple_item_rich_card_section4 = [(RFSummaryItemExpandableContent *)self simple_item_rich_card_section];
        simple_item_rich_card_section5 = [(RFSummaryItemExpandableContent *)v6 simple_item_rich_card_section];
        if (![simple_item_rich_card_section4 isEqual:simple_item_rich_card_section5])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = simple_item_rich_card_section5;
      }

      command_reference = [(RFSummaryItemExpandableContent *)self command_reference];
      command_reference2 = [(RFSummaryItemExpandableContent *)v6 command_reference];
      v14 = command_reference2;
      if ((command_reference != 0) == (command_reference2 == 0))
      {

        v11 = 0;
      }

      else
      {
        command_reference3 = [(RFSummaryItemExpandableContent *)self command_reference];
        if (command_reference3)
        {
          v16 = command_reference3;
          command_reference4 = [(RFSummaryItemExpandableContent *)self command_reference];
          [(RFSummaryItemExpandableContent *)v6 command_reference];
          v17 = v20 = simple_item_rich_card_section4;
          v11 = [command_reference4 isEqual:v17];

          simple_item_rich_card_section4 = v20;
        }

        else
        {

          v11 = 1;
        }
      }

      simple_item_rich_card_section5 = v21;
      if (!simple_item_rich_card_section3)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v11 = 0;
  }

LABEL_20:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if ([(RFSummaryItemExpandableContent *)self hasSimple_item_rich_card_section])
  {
    simple_item_rich_card_section = [(RFSummaryItemExpandableContent *)self simple_item_rich_card_section];
    v6 = [simple_item_rich_card_section copy];
    [v4 setSimple_item_rich_card_section:v6];
  }

  command_reference = [(RFSummaryItemExpandableContent *)self command_reference];
  v8 = [command_reference copy];
  [v4 setCommand_reference:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFSummaryItemExpandableContent alloc] initWithFacade:self];
  jsonData = [(_SFPBRFSummaryItemExpandableContent *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFSummaryItemExpandableContent alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFSummaryItemExpandableContent *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFSummaryItemExpandableContent alloc] initWithFacade:self];
  data = [(_SFPBRFSummaryItemExpandableContent *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFSummaryItemExpandableContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFSummaryItemExpandableContent alloc] initWithData:v5];
  v7 = [(RFSummaryItemExpandableContent *)self initWithProtobuf:v6];

  return v7;
}

- (RFSummaryItemExpandableContent)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v16.receiver = self;
  v16.super_class = RFSummaryItemExpandableContent;
  v5 = [(RFSummaryItemExpandableContent *)&v16 init];
  if (v5)
  {
    simple_item_rich_card_section = [protobufCopy simple_item_rich_card_section];

    if (simple_item_rich_card_section)
    {
      v7 = [RFSimpleItemRichCardSection alloc];
      simple_item_rich_card_section2 = [protobufCopy simple_item_rich_card_section];
      v9 = [(RFSimpleItemRichCardSection *)v7 initWithProtobuf:simple_item_rich_card_section2];
      [(RFSummaryItemExpandableContent *)v5 setSimple_item_rich_card_section:v9];
    }

    command_reference = [protobufCopy command_reference];

    if (command_reference)
    {
      v11 = [SFCommandReference alloc];
      command_reference2 = [protobufCopy command_reference];
      v13 = [(SFCommandReference *)v11 initWithProtobuf:command_reference2];
      [(RFSummaryItemExpandableContent *)v5 setCommand_reference:v13];
    }

    v14 = v5;
  }

  return v5;
}

@end