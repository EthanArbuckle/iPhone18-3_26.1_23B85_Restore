@interface RFTableColumnDefinition
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFTableColumnDefinition)initWithCoder:(id)coder;
- (RFTableColumnDefinition)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setContent:(id)content;
- (void)setSpacer:(id)spacer;
@end

@implementation RFTableColumnDefinition

- (unint64_t)hash
{
  spacer = [(RFTableColumnDefinition *)self spacer];
  v4 = [spacer hash];
  content = [(RFTableColumnDefinition *)self content];
  v6 = [content hash];

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
    if ([(RFTableColumnDefinition *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      spacer = [(RFTableColumnDefinition *)self spacer];
      spacer2 = [(RFTableColumnDefinition *)v6 spacer];
      if ((spacer != 0) == (spacer2 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      spacer3 = [(RFTableColumnDefinition *)self spacer];
      if (spacer3)
      {
        spacer4 = [(RFTableColumnDefinition *)self spacer];
        spacer5 = [(RFTableColumnDefinition *)v6 spacer];
        if (![spacer4 isEqual:spacer5])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = spacer5;
      }

      content = [(RFTableColumnDefinition *)self content];
      content2 = [(RFTableColumnDefinition *)v6 content];
      v14 = content2;
      if ((content != 0) == (content2 == 0))
      {

        v11 = 0;
      }

      else
      {
        content3 = [(RFTableColumnDefinition *)self content];
        if (content3)
        {
          v16 = content3;
          content4 = [(RFTableColumnDefinition *)self content];
          [(RFTableColumnDefinition *)v6 content];
          v17 = v20 = spacer4;
          v11 = [content4 isEqual:v17];

          spacer4 = v20;
        }

        else
        {

          v11 = 1;
        }
      }

      spacer5 = v21;
      if (!spacer3)
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
  if ([(RFTableColumnDefinition *)self hasSpacer])
  {
    spacer = [(RFTableColumnDefinition *)self spacer];
    v6 = [spacer copy];
    [v4 setSpacer:v6];
  }

  if ([(RFTableColumnDefinition *)self hasContent])
  {
    content = [(RFTableColumnDefinition *)self content];
    v8 = [content copy];
    [v4 setContent:v8];
  }

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFTableColumnDefinition alloc] initWithFacade:self];
  jsonData = [(_SFPBRFTableColumnDefinition *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFTableColumnDefinition alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFTableColumnDefinition *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFTableColumnDefinition alloc] initWithFacade:self];
  data = [(_SFPBRFTableColumnDefinition *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFTableColumnDefinition)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFTableColumnDefinition alloc] initWithData:v5];
  v7 = [(RFTableColumnDefinition *)self initWithProtobuf:v6];

  return v7;
}

- (void)setContent:(id)content
{
  *&self->_has |= 2u;
  objc_storeStrong(&self->_content, content);
  contentCopy = content;
  *&self->_has &= ~1u;
  spacer = self->_spacer;
  self->_spacer = 0;
}

- (void)setSpacer:(id)spacer
{
  *&self->_has |= 1u;
  objc_storeStrong(&self->_spacer, spacer);
  spacerCopy = spacer;
  *&self->_has &= ~2u;
  content = self->_content;
  self->_content = 0;
}

- (RFTableColumnDefinition)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v16.receiver = self;
  v16.super_class = RFTableColumnDefinition;
  v5 = [(RFTableColumnDefinition *)&v16 init];
  if (v5)
  {
    spacer = [protobufCopy spacer];

    if (spacer)
    {
      v7 = [RFTableSpacerColumnDefinition alloc];
      spacer2 = [protobufCopy spacer];
      v9 = [(RFTableSpacerColumnDefinition *)v7 initWithProtobuf:spacer2];
      [(RFTableColumnDefinition *)v5 setSpacer:v9];
    }

    content = [protobufCopy content];

    if (content)
    {
      v11 = [RFTableContentColumnDefinition alloc];
      content2 = [protobufCopy content];
      v13 = [(RFTableContentColumnDefinition *)v11 initWithProtobuf:content2];
      [(RFTableColumnDefinition *)v5 setContent:v13];
    }

    v14 = v5;
  }

  return v5;
}

@end