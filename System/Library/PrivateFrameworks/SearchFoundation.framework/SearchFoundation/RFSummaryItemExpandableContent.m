@interface RFSummaryItemExpandableContent
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSummaryItemExpandableContent)initWithCoder:(id)a3;
- (RFSummaryItemExpandableContent)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFSummaryItemExpandableContent

- (unint64_t)hash
{
  v3 = [(RFSummaryItemExpandableContent *)self simple_item_rich_card_section];
  v4 = [v3 hash];
  v5 = [(RFSummaryItemExpandableContent *)self command_reference];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if ([(RFSummaryItemExpandableContent *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(RFSummaryItemExpandableContent *)self simple_item_rich_card_section];
      v8 = [(RFSummaryItemExpandableContent *)v6 simple_item_rich_card_section];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v9 = [(RFSummaryItemExpandableContent *)self simple_item_rich_card_section];
      if (v9)
      {
        v3 = [(RFSummaryItemExpandableContent *)self simple_item_rich_card_section];
        v10 = [(RFSummaryItemExpandableContent *)v6 simple_item_rich_card_section];
        if (![v3 isEqual:v10])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = v10;
      }

      v12 = [(RFSummaryItemExpandableContent *)self command_reference];
      v13 = [(RFSummaryItemExpandableContent *)v6 command_reference];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
      }

      else
      {
        v15 = [(RFSummaryItemExpandableContent *)self command_reference];
        if (v15)
        {
          v16 = v15;
          v19 = [(RFSummaryItemExpandableContent *)self command_reference];
          [(RFSummaryItemExpandableContent *)v6 command_reference];
          v17 = v20 = v3;
          v11 = [v19 isEqual:v17];

          v3 = v20;
        }

        else
        {

          v11 = 1;
        }
      }

      v10 = v21;
      if (!v9)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if ([(RFSummaryItemExpandableContent *)self hasSimple_item_rich_card_section])
  {
    v5 = [(RFSummaryItemExpandableContent *)self simple_item_rich_card_section];
    v6 = [v5 copy];
    [v4 setSimple_item_rich_card_section:v6];
  }

  v7 = [(RFSummaryItemExpandableContent *)self command_reference];
  v8 = [v7 copy];
  [v4 setCommand_reference:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFSummaryItemExpandableContent alloc] initWithFacade:self];
  v3 = [(_SFPBRFSummaryItemExpandableContent *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFSummaryItemExpandableContent alloc] initWithFacade:self];
  v3 = [(_SFPBRFSummaryItemExpandableContent *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFSummaryItemExpandableContent alloc] initWithFacade:self];
  v5 = [(_SFPBRFSummaryItemExpandableContent *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFSummaryItemExpandableContent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFSummaryItemExpandableContent alloc] initWithData:v5];
  v7 = [(RFSummaryItemExpandableContent *)self initWithProtobuf:v6];

  return v7;
}

- (RFSummaryItemExpandableContent)initWithProtobuf:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = RFSummaryItemExpandableContent;
  v5 = [(RFSummaryItemExpandableContent *)&v16 init];
  if (v5)
  {
    v6 = [v4 simple_item_rich_card_section];

    if (v6)
    {
      v7 = [RFSimpleItemRichCardSection alloc];
      v8 = [v4 simple_item_rich_card_section];
      v9 = [(RFSimpleItemRichCardSection *)v7 initWithProtobuf:v8];
      [(RFSummaryItemExpandableContent *)v5 setSimple_item_rich_card_section:v9];
    }

    v10 = [v4 command_reference];

    if (v10)
    {
      v11 = [SFCommandReference alloc];
      v12 = [v4 command_reference];
      v13 = [(SFCommandReference *)v11 initWithProtobuf:v12];
      [(RFSummaryItemExpandableContent *)v5 setCommand_reference:v13];
    }

    v14 = v5;
  }

  return v5;
}

@end