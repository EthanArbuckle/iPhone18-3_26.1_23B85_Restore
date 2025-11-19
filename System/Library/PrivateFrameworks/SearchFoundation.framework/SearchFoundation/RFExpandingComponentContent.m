@interface RFExpandingComponentContent
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFExpandingComponentContent)initWithCoder:(id)a3;
- (RFExpandingComponentContent)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setLong_item_standard_card_section:(id)a3;
- (void)setReference_footnote_card_section:(id)a3;
@end

@implementation RFExpandingComponentContent

- (RFExpandingComponentContent)initWithProtobuf:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = RFExpandingComponentContent;
  v5 = [(RFExpandingComponentContent *)&v16 init];
  if (v5)
  {
    v6 = [v4 long_item_standard_card_section];

    if (v6)
    {
      v7 = [RFLongItemStandardCardSection alloc];
      v8 = [v4 long_item_standard_card_section];
      v9 = [(RFLongItemStandardCardSection *)v7 initWithProtobuf:v8];
      [(RFExpandingComponentContent *)v5 setLong_item_standard_card_section:v9];
    }

    v10 = [v4 reference_footnote_card_section];

    if (v10)
    {
      v11 = [RFReferenceFootnoteCardSection alloc];
      v12 = [v4 reference_footnote_card_section];
      v13 = [(RFReferenceFootnoteCardSection *)v11 initWithProtobuf:v12];
      [(RFExpandingComponentContent *)v5 setReference_footnote_card_section:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(RFExpandingComponentContent *)self long_item_standard_card_section];
  v4 = [v3 hash];
  v5 = [(RFExpandingComponentContent *)self reference_footnote_card_section];
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
    if ([(RFExpandingComponentContent *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(RFExpandingComponentContent *)self long_item_standard_card_section];
      v8 = [(RFExpandingComponentContent *)v6 long_item_standard_card_section];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v9 = [(RFExpandingComponentContent *)self long_item_standard_card_section];
      if (v9)
      {
        v3 = [(RFExpandingComponentContent *)self long_item_standard_card_section];
        v10 = [(RFExpandingComponentContent *)v6 long_item_standard_card_section];
        if (![v3 isEqual:v10])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = v10;
      }

      v12 = [(RFExpandingComponentContent *)self reference_footnote_card_section];
      v13 = [(RFExpandingComponentContent *)v6 reference_footnote_card_section];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
      }

      else
      {
        v15 = [(RFExpandingComponentContent *)self reference_footnote_card_section];
        if (v15)
        {
          v16 = v15;
          v19 = [(RFExpandingComponentContent *)self reference_footnote_card_section];
          [(RFExpandingComponentContent *)v6 reference_footnote_card_section];
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
  if ([(RFExpandingComponentContent *)self hasLong_item_standard_card_section])
  {
    v5 = [(RFExpandingComponentContent *)self long_item_standard_card_section];
    v6 = [v5 copy];
    [v4 setLong_item_standard_card_section:v6];
  }

  if ([(RFExpandingComponentContent *)self hasReference_footnote_card_section])
  {
    v7 = [(RFExpandingComponentContent *)self reference_footnote_card_section];
    v8 = [v7 copy];
    [v4 setReference_footnote_card_section:v8];
  }

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFExpandingComponentContent alloc] initWithFacade:self];
  v3 = [(_SFPBRFExpandingComponentContent *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFExpandingComponentContent alloc] initWithFacade:self];
  v3 = [(_SFPBRFExpandingComponentContent *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFExpandingComponentContent alloc] initWithFacade:self];
  v5 = [(_SFPBRFExpandingComponentContent *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFExpandingComponentContent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFExpandingComponentContent alloc] initWithData:v5];
  v7 = [(RFExpandingComponentContent *)self initWithProtobuf:v6];

  return v7;
}

- (void)setReference_footnote_card_section:(id)a3
{
  *&self->_has |= 2u;
  objc_storeStrong(&self->_reference_footnote_card_section, a3);
  v6 = a3;
  *&self->_has &= ~1u;
  long_item_standard_card_section = self->_long_item_standard_card_section;
  self->_long_item_standard_card_section = 0;
}

- (void)setLong_item_standard_card_section:(id)a3
{
  *&self->_has |= 1u;
  objc_storeStrong(&self->_long_item_standard_card_section, a3);
  v6 = a3;
  *&self->_has &= ~2u;
  reference_footnote_card_section = self->_reference_footnote_card_section;
  self->_reference_footnote_card_section = 0;
}

@end