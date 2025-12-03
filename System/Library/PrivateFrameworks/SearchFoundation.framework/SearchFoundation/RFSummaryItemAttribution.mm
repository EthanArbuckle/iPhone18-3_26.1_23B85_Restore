@interface RFSummaryItemAttribution
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSummaryItemAttribution)initWithCoder:(id)coder;
- (RFSummaryItemAttribution)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFSummaryItemAttribution

- (unint64_t)hash
{
  text = [(RFSummaryItemAttribution *)self text];
  v4 = [text hash];
  text_compact = [(RFSummaryItemAttribution *)self text_compact];
  v6 = [text_compact hash] ^ v4;
  text_minimal = [(RFSummaryItemAttribution *)self text_minimal];
  v8 = [text_minimal hash];

  return v6 ^ v8;
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
    if ([(RFSummaryItemAttribution *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      text = [(RFSummaryItemAttribution *)self text];
      text2 = [(RFSummaryItemAttribution *)v6 text];
      if ((text != 0) == (text2 == 0))
      {
        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }

      text3 = [(RFSummaryItemAttribution *)self text];
      if (text3)
      {
        text4 = [(RFSummaryItemAttribution *)self text];
        text5 = [(RFSummaryItemAttribution *)v6 text];
        if (![text4 isEqual:text5])
        {
          v11 = 0;
          goto LABEL_28;
        }

        v31 = text5;
      }

      text_compact = [(RFSummaryItemAttribution *)self text_compact];
      text_compact2 = [(RFSummaryItemAttribution *)v6 text_compact];
      v14 = text_compact2;
      if ((text_compact != 0) == (text_compact2 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      text_compact3 = [(RFSummaryItemAttribution *)self text_compact];
      if (text_compact3)
      {
        v25 = text_compact;
        text_compact4 = [(RFSummaryItemAttribution *)self text_compact];
        text_compact5 = [(RFSummaryItemAttribution *)v6 text_compact];
        v28 = text_compact4;
        if (![text_compact4 isEqual:?])
        {
          v11 = 0;
          text_compact = v25;
          goto LABEL_25;
        }

        v29 = text_compact3;
        v30 = text4;
        text_compact = v25;
      }

      else
      {
        v29 = 0;
        v30 = text4;
      }

      text_minimal = [(RFSummaryItemAttribution *)self text_minimal];
      text_minimal2 = [(RFSummaryItemAttribution *)v6 text_minimal];
      if ((text_minimal != 0) == (text_minimal2 == 0))
      {

        v11 = 0;
        text_compact3 = v29;
        text4 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v24 = text_minimal;
        v26 = text_minimal2;
        text_minimal3 = [(RFSummaryItemAttribution *)self text_minimal];
        text_compact3 = v29;
        if (text_minimal3)
        {
          v23 = text_minimal3;
          text_minimal4 = [(RFSummaryItemAttribution *)self text_minimal];
          text_minimal5 = [(RFSummaryItemAttribution *)v6 text_minimal];
          v11 = [text_minimal4 isEqual:?];
        }

        else
        {

          v11 = 1;
        }

        text4 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

LABEL_25:

LABEL_26:
LABEL_27:
      text5 = v31;
      if (!text3)
      {
LABEL_29:

        goto LABEL_30;
      }

LABEL_28:

      goto LABEL_29;
    }

    v11 = 0;
  }

LABEL_31:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  text = [(RFSummaryItemAttribution *)self text];
  v6 = [text copy];
  [v4 setText:v6];

  text_compact = [(RFSummaryItemAttribution *)self text_compact];
  v8 = [text_compact copy];
  [v4 setText_compact:v8];

  text_minimal = [(RFSummaryItemAttribution *)self text_minimal];
  v10 = [text_minimal copy];
  [v4 setText_minimal:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFSummaryItemAttribution alloc] initWithFacade:self];
  jsonData = [(_SFPBRFSummaryItemAttribution *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFSummaryItemAttribution alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFSummaryItemAttribution *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFSummaryItemAttribution alloc] initWithFacade:self];
  data = [(_SFPBRFSummaryItemAttribution *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFSummaryItemAttribution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFSummaryItemAttribution alloc] initWithData:v5];
  v7 = [(RFSummaryItemAttribution *)self initWithProtobuf:v6];

  return v7;
}

- (RFSummaryItemAttribution)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v20.receiver = self;
  v20.super_class = RFSummaryItemAttribution;
  v5 = [(RFSummaryItemAttribution *)&v20 init];
  if (v5)
  {
    text = [protobufCopy text];

    if (text)
    {
      v7 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:text2];
      [(RFSummaryItemAttribution *)v5 setText:v9];
    }

    text_compact = [protobufCopy text_compact];

    if (text_compact)
    {
      v11 = [RFTextProperty alloc];
      text_compact2 = [protobufCopy text_compact];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:text_compact2];
      [(RFSummaryItemAttribution *)v5 setText_compact:v13];
    }

    text_minimal = [protobufCopy text_minimal];

    if (text_minimal)
    {
      v15 = [RFTextProperty alloc];
      text_minimal2 = [protobufCopy text_minimal];
      v17 = [(RFTextProperty *)v15 initWithProtobuf:text_minimal2];
      [(RFSummaryItemAttribution *)v5 setText_minimal:v17];
    }

    v18 = v5;
  }

  return v5;
}

@end