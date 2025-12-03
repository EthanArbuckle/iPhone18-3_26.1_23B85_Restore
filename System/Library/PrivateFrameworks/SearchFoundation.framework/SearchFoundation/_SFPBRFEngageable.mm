@interface _SFPBRFEngageable
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCommandReference)command_reference;
- (_SFPBRFEngageable)initWithDictionary:(id)dictionary;
- (_SFPBRFEngageable)initWithFacade:(id)facade;
- (_SFPBRFEngageable)initWithJSON:(id)n;
- (_SFPBRFPreviewList)preview_list;
- (id)dictionaryRepresentation;
- (void)setCommand_reference:(id)command_reference;
- (void)setPreview_list:(id)preview_list;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFEngageable

- (_SFPBRFEngageable)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFEngageable *)self init];
  if (v5)
  {
    if ([facadeCopy hasCommand_reference])
    {
      command_reference = [facadeCopy command_reference];

      if (command_reference)
      {
        v7 = [_SFPBCommandReference alloc];
        command_reference2 = [facadeCopy command_reference];
        v9 = [(_SFPBCommandReference *)v7 initWithFacade:command_reference2];
        [(_SFPBRFEngageable *)v5 setCommand_reference:v9];
      }
    }

    if ([facadeCopy hasPreview_list])
    {
      preview_list = [facadeCopy preview_list];

      if (preview_list)
      {
        v11 = [_SFPBRFPreviewList alloc];
        preview_list2 = [facadeCopy preview_list];
        v13 = [(_SFPBRFPreviewList *)v11 initWithFacade:preview_list2];
        [(_SFPBRFEngageable *)v5 setPreview_list:v13];
      }
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBRFEngageable)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBRFEngageable;
  v5 = [(_SFPBRFEngageable *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"commandReference"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBCommandReference alloc] initWithDictionary:v6];
      [(_SFPBRFEngageable *)v5 setCommand_reference:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"previewList"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFPreviewList alloc] initWithDictionary:v8];
      [(_SFPBRFEngageable *)v5 setPreview_list:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRFEngageable)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFEngageable *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFEngageable *)self dictionaryRepresentation];
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
    command_reference = [(_SFPBRFEngageable *)self command_reference];
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

  if (self->_preview_list)
  {
    preview_list = [(_SFPBRFEngageable *)self preview_list];
    dictionaryRepresentation2 = [preview_list dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"previewList"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"previewList"];
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

  command_reference = [(_SFPBRFEngageable *)self command_reference];
  command_reference2 = [equalCopy command_reference];
  if ((command_reference != 0) == (command_reference2 == 0))
  {
    goto LABEL_11;
  }

  command_reference3 = [(_SFPBRFEngageable *)self command_reference];
  if (command_reference3)
  {
    v8 = command_reference3;
    command_reference4 = [(_SFPBRFEngageable *)self command_reference];
    command_reference5 = [equalCopy command_reference];
    v11 = [command_reference4 isEqual:command_reference5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  command_reference = [(_SFPBRFEngageable *)self preview_list];
  command_reference2 = [equalCopy preview_list];
  if ((command_reference != 0) != (command_reference2 == 0))
  {
    preview_list = [(_SFPBRFEngageable *)self preview_list];
    if (!preview_list)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = preview_list;
    preview_list2 = [(_SFPBRFEngageable *)self preview_list];
    preview_list3 = [equalCopy preview_list];
    v16 = [preview_list2 isEqual:preview_list3];

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
  command_reference = [(_SFPBRFEngageable *)self command_reference];
  if (command_reference)
  {
    PBDataWriterWriteSubmessage();
  }

  preview_list = [(_SFPBRFEngageable *)self preview_list];
  if (preview_list)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (_SFPBRFPreviewList)preview_list
{
  if (self->_whichEngageable_Oneof == 2)
  {
    v3 = self->_preview_list;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPreview_list:(id)preview_list
{
  preview_listCopy = preview_list;
  command_reference = self->_command_reference;
  self->_command_reference = 0;

  self->_whichEngageable_Oneof = 2 * (preview_listCopy != 0);
  preview_list = self->_preview_list;
  self->_preview_list = preview_listCopy;
}

- (_SFPBCommandReference)command_reference
{
  if (self->_whichEngageable_Oneof == 1)
  {
    v3 = self->_command_reference;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCommand_reference:(id)command_reference
{
  command_referenceCopy = command_reference;
  preview_list = self->_preview_list;
  self->_preview_list = 0;

  self->_whichEngageable_Oneof = command_referenceCopy != 0;
  command_reference = self->_command_reference;
  self->_command_reference = command_referenceCopy;
}

@end