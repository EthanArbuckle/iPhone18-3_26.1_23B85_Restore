@interface RFPreview
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFPreview)initWithCoder:(id)coder;
- (RFPreview)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFPreview

- (RFPreview)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v14.receiver = self;
  v14.super_class = RFPreview;
  v5 = [(RFPreview *)&v14 init];
  if (v5)
  {
    text = [protobufCopy text];

    if (text)
    {
      text2 = [protobufCopy text];
      [(RFPreview *)v5 setText:text2];
    }

    command_reference = [protobufCopy command_reference];

    if (command_reference)
    {
      v9 = [SFCommandReference alloc];
      command_reference2 = [protobufCopy command_reference];
      v11 = [(SFCommandReference *)v9 initWithProtobuf:command_reference2];
      [(RFPreview *)v5 setCommand_reference:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  text = [(RFPreview *)self text];
  v4 = [text hash];
  command_reference = [(RFPreview *)self command_reference];
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
    if ([(RFPreview *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      text = [(RFPreview *)self text];
      text2 = [(RFPreview *)v6 text];
      if ((text != 0) == (text2 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      text3 = [(RFPreview *)self text];
      if (text3)
      {
        text4 = [(RFPreview *)self text];
        text5 = [(RFPreview *)v6 text];
        if (![text4 isEqual:text5])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = text5;
      }

      command_reference = [(RFPreview *)self command_reference];
      command_reference2 = [(RFPreview *)v6 command_reference];
      v14 = command_reference2;
      if ((command_reference != 0) == (command_reference2 == 0))
      {

        v11 = 0;
      }

      else
      {
        command_reference3 = [(RFPreview *)self command_reference];
        if (command_reference3)
        {
          v16 = command_reference3;
          command_reference4 = [(RFPreview *)self command_reference];
          [(RFPreview *)v6 command_reference];
          v17 = v20 = text4;
          v11 = [command_reference4 isEqual:v17];

          text4 = v20;
        }

        else
        {

          v11 = 1;
        }
      }

      text5 = v21;
      if (!text3)
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
  text = [(RFPreview *)self text];
  v6 = [text copy];
  [v4 setText:v6];

  command_reference = [(RFPreview *)self command_reference];
  v8 = [command_reference copy];
  [v4 setCommand_reference:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFPreview alloc] initWithFacade:self];
  jsonData = [(_SFPBRFPreview *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFPreview alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFPreview *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFPreview alloc] initWithFacade:self];
  data = [(_SFPBRFPreview *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFPreview)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFPreview alloc] initWithData:v5];
  v7 = [(RFPreview *)self initWithProtobuf:v6];

  return v7;
}

@end