@interface RFExpandingComponentContent
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFExpandingComponentContent)initWithCoder:(id)coder;
- (RFExpandingComponentContent)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setLong_item_standard_card_section:(id)long_item_standard_card_section;
- (void)setReference_footnote_card_section:(id)reference_footnote_card_section;
@end

@implementation RFExpandingComponentContent

- (RFExpandingComponentContent)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v16.receiver = self;
  v16.super_class = RFExpandingComponentContent;
  v5 = [(RFExpandingComponentContent *)&v16 init];
  if (v5)
  {
    long_item_standard_card_section = [protobufCopy long_item_standard_card_section];

    if (long_item_standard_card_section)
    {
      v7 = [RFLongItemStandardCardSection alloc];
      long_item_standard_card_section2 = [protobufCopy long_item_standard_card_section];
      v9 = [(RFLongItemStandardCardSection *)v7 initWithProtobuf:long_item_standard_card_section2];
      [(RFExpandingComponentContent *)v5 setLong_item_standard_card_section:v9];
    }

    reference_footnote_card_section = [protobufCopy reference_footnote_card_section];

    if (reference_footnote_card_section)
    {
      v11 = [RFReferenceFootnoteCardSection alloc];
      reference_footnote_card_section2 = [protobufCopy reference_footnote_card_section];
      v13 = [(RFReferenceFootnoteCardSection *)v11 initWithProtobuf:reference_footnote_card_section2];
      [(RFExpandingComponentContent *)v5 setReference_footnote_card_section:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  long_item_standard_card_section = [(RFExpandingComponentContent *)self long_item_standard_card_section];
  v4 = [long_item_standard_card_section hash];
  reference_footnote_card_section = [(RFExpandingComponentContent *)self reference_footnote_card_section];
  v6 = [reference_footnote_card_section hash];

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
    if ([(RFExpandingComponentContent *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      long_item_standard_card_section = [(RFExpandingComponentContent *)self long_item_standard_card_section];
      long_item_standard_card_section2 = [(RFExpandingComponentContent *)v6 long_item_standard_card_section];
      if ((long_item_standard_card_section != 0) == (long_item_standard_card_section2 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      long_item_standard_card_section3 = [(RFExpandingComponentContent *)self long_item_standard_card_section];
      if (long_item_standard_card_section3)
      {
        long_item_standard_card_section4 = [(RFExpandingComponentContent *)self long_item_standard_card_section];
        long_item_standard_card_section5 = [(RFExpandingComponentContent *)v6 long_item_standard_card_section];
        if (![long_item_standard_card_section4 isEqual:long_item_standard_card_section5])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = long_item_standard_card_section5;
      }

      reference_footnote_card_section = [(RFExpandingComponentContent *)self reference_footnote_card_section];
      reference_footnote_card_section2 = [(RFExpandingComponentContent *)v6 reference_footnote_card_section];
      v14 = reference_footnote_card_section2;
      if ((reference_footnote_card_section != 0) == (reference_footnote_card_section2 == 0))
      {

        v11 = 0;
      }

      else
      {
        reference_footnote_card_section3 = [(RFExpandingComponentContent *)self reference_footnote_card_section];
        if (reference_footnote_card_section3)
        {
          v16 = reference_footnote_card_section3;
          reference_footnote_card_section4 = [(RFExpandingComponentContent *)self reference_footnote_card_section];
          [(RFExpandingComponentContent *)v6 reference_footnote_card_section];
          v17 = v20 = long_item_standard_card_section4;
          v11 = [reference_footnote_card_section4 isEqual:v17];

          long_item_standard_card_section4 = v20;
        }

        else
        {

          v11 = 1;
        }
      }

      long_item_standard_card_section5 = v21;
      if (!long_item_standard_card_section3)
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
  if ([(RFExpandingComponentContent *)self hasLong_item_standard_card_section])
  {
    long_item_standard_card_section = [(RFExpandingComponentContent *)self long_item_standard_card_section];
    v6 = [long_item_standard_card_section copy];
    [v4 setLong_item_standard_card_section:v6];
  }

  if ([(RFExpandingComponentContent *)self hasReference_footnote_card_section])
  {
    reference_footnote_card_section = [(RFExpandingComponentContent *)self reference_footnote_card_section];
    v8 = [reference_footnote_card_section copy];
    [v4 setReference_footnote_card_section:v8];
  }

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFExpandingComponentContent alloc] initWithFacade:self];
  jsonData = [(_SFPBRFExpandingComponentContent *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFExpandingComponentContent alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFExpandingComponentContent *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFExpandingComponentContent alloc] initWithFacade:self];
  data = [(_SFPBRFExpandingComponentContent *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFExpandingComponentContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFExpandingComponentContent alloc] initWithData:v5];
  v7 = [(RFExpandingComponentContent *)self initWithProtobuf:v6];

  return v7;
}

- (void)setReference_footnote_card_section:(id)reference_footnote_card_section
{
  *&self->_has |= 2u;
  objc_storeStrong(&self->_reference_footnote_card_section, reference_footnote_card_section);
  reference_footnote_card_sectionCopy = reference_footnote_card_section;
  *&self->_has &= ~1u;
  long_item_standard_card_section = self->_long_item_standard_card_section;
  self->_long_item_standard_card_section = 0;
}

- (void)setLong_item_standard_card_section:(id)long_item_standard_card_section
{
  *&self->_has |= 1u;
  objc_storeStrong(&self->_long_item_standard_card_section, long_item_standard_card_section);
  long_item_standard_card_sectionCopy = long_item_standard_card_section;
  *&self->_has &= ~2u;
  reference_footnote_card_section = self->_reference_footnote_card_section;
  self->_reference_footnote_card_section = 0;
}

@end