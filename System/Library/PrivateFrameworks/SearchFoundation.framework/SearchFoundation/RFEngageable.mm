@interface RFEngageable
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFEngageable)initWithCoder:(id)coder;
- (RFEngageable)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setCommand_reference:(id)command_reference;
- (void)setPreview_list:(id)preview_list;
@end

@implementation RFEngageable

- (unint64_t)hash
{
  command_reference = [(RFEngageable *)self command_reference];
  v4 = [command_reference hash];
  preview_list = [(RFEngageable *)self preview_list];
  v6 = [preview_list hash];

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
    if ([(RFEngageable *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      command_reference = [(RFEngageable *)self command_reference];
      command_reference2 = [(RFEngageable *)v6 command_reference];
      if ((command_reference != 0) == (command_reference2 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      command_reference3 = [(RFEngageable *)self command_reference];
      if (command_reference3)
      {
        command_reference4 = [(RFEngageable *)self command_reference];
        command_reference5 = [(RFEngageable *)v6 command_reference];
        if (![command_reference4 isEqual:command_reference5])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = command_reference5;
      }

      preview_list = [(RFEngageable *)self preview_list];
      preview_list2 = [(RFEngageable *)v6 preview_list];
      v14 = preview_list2;
      if ((preview_list != 0) == (preview_list2 == 0))
      {

        v11 = 0;
      }

      else
      {
        preview_list3 = [(RFEngageable *)self preview_list];
        if (preview_list3)
        {
          v16 = preview_list3;
          preview_list4 = [(RFEngageable *)self preview_list];
          [(RFEngageable *)v6 preview_list];
          v17 = v20 = command_reference4;
          v11 = [preview_list4 isEqual:v17];

          command_reference4 = v20;
        }

        else
        {

          v11 = 1;
        }
      }

      command_reference5 = v21;
      if (!command_reference3)
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
  if ([(RFEngageable *)self hasCommand_reference])
  {
    command_reference = [(RFEngageable *)self command_reference];
    v6 = [command_reference copy];
    [v4 setCommand_reference:v6];
  }

  if ([(RFEngageable *)self hasPreview_list])
  {
    preview_list = [(RFEngageable *)self preview_list];
    v8 = [preview_list copy];
    [v4 setPreview_list:v8];
  }

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFEngageable alloc] initWithFacade:self];
  jsonData = [(_SFPBRFEngageable *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFEngageable alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFEngageable *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFEngageable alloc] initWithFacade:self];
  data = [(_SFPBRFEngageable *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFEngageable)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFEngageable alloc] initWithData:v5];
  v7 = [(RFEngageable *)self initWithProtobuf:v6];

  return v7;
}

- (void)setPreview_list:(id)preview_list
{
  *&self->_has |= 2u;
  objc_storeStrong(&self->_preview_list, preview_list);
  preview_listCopy = preview_list;
  *&self->_has &= ~1u;
  command_reference = self->_command_reference;
  self->_command_reference = 0;
}

- (void)setCommand_reference:(id)command_reference
{
  *&self->_has |= 1u;
  objc_storeStrong(&self->_command_reference, command_reference);
  command_referenceCopy = command_reference;
  *&self->_has &= ~2u;
  preview_list = self->_preview_list;
  self->_preview_list = 0;
}

- (RFEngageable)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v16.receiver = self;
  v16.super_class = RFEngageable;
  v5 = [(RFEngageable *)&v16 init];
  if (v5)
  {
    command_reference = [protobufCopy command_reference];

    if (command_reference)
    {
      v7 = [SFCommandReference alloc];
      command_reference2 = [protobufCopy command_reference];
      v9 = [(SFCommandReference *)v7 initWithProtobuf:command_reference2];
      [(RFEngageable *)v5 setCommand_reference:v9];
    }

    preview_list = [protobufCopy preview_list];

    if (preview_list)
    {
      v11 = [RFPreviewList alloc];
      preview_list2 = [protobufCopy preview_list];
      v13 = [(RFPreviewList *)v11 initWithProtobuf:preview_list2];
      [(RFEngageable *)v5 setPreview_list:v13];
    }

    v14 = v5;
  }

  return v5;
}

@end