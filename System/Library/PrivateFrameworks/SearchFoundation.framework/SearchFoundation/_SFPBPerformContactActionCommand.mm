@interface _SFPBPerformContactActionCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBPerformContactActionCommand)initWithDictionary:(id)dictionary;
- (_SFPBPerformContactActionCommand)initWithFacade:(id)facade;
- (_SFPBPerformContactActionCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBPerformContactActionCommand

- (_SFPBPerformContactActionCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBPerformContactActionCommand *)self init];
  if (v5)
  {
    if ([facadeCopy hasContactActionType])
    {
      -[_SFPBPerformContactActionCommand setContactActionType:](v5, "setContactActionType:", [facadeCopy contactActionType]);
    }

    if ([facadeCopy hasDidDisplayHandleOptions])
    {
      -[_SFPBPerformContactActionCommand setDidDisplayHandleOptions:](v5, "setDidDisplayHandleOptions:", [facadeCopy didDisplayHandleOptions]);
    }

    if ([facadeCopy hasDidSelectFromOptionsMenu])
    {
      -[_SFPBPerformContactActionCommand setDidSelectFromOptionsMenu:](v5, "setDidSelectFromOptionsMenu:", [facadeCopy didSelectFromOptionsMenu]);
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBPerformContactActionCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _SFPBPerformContactActionCommand;
  v5 = [(_SFPBPerformContactActionCommand *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"contactActionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPerformContactActionCommand setContactActionType:](v5, "setContactActionType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"didDisplayHandleOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPerformContactActionCommand setDidDisplayHandleOptions:](v5, "setDidDisplayHandleOptions:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"didSelectFromOptionsMenu"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPerformContactActionCommand setDidSelectFromOptionsMenu:](v5, "setDidSelectFromOptionsMenu:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBPerformContactActionCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBPerformContactActionCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBPerformContactActionCommand *)self dictionaryRepresentation];
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
  if (self->_contactActionType)
  {
    contactActionType = [(_SFPBPerformContactActionCommand *)self contactActionType];
    if (contactActionType >= 0xA)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", contactActionType];
    }

    else
    {
      v5 = off_1E7ACE220[contactActionType];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"contactActionType"];
  }

  if (self->_didDisplayHandleOptions)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBPerformContactActionCommand didDisplayHandleOptions](self, "didDisplayHandleOptions")}];
    [dictionary setObject:v6 forKeyedSubscript:@"didDisplayHandleOptions"];
  }

  if (self->_didSelectFromOptionsMenu)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBPerformContactActionCommand didSelectFromOptionsMenu](self, "didSelectFromOptionsMenu")}];
    [dictionary setObject:v7 forKeyedSubscript:@"didSelectFromOptionsMenu"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v2 = 2654435761;
  if (self->_didDisplayHandleOptions)
  {
    v3 = 2654435761;
  }

  else
  {
    v3 = 0;
  }

  if (!self->_didSelectFromOptionsMenu)
  {
    v2 = 0;
  }

  return v3 ^ v2 ^ (2654435761 * self->_contactActionType);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (contactActionType = self->_contactActionType, contactActionType == objc_msgSend(equalCopy, "contactActionType")) && (didDisplayHandleOptions = self->_didDisplayHandleOptions, didDisplayHandleOptions == objc_msgSend(equalCopy, "didDisplayHandleOptions")))
  {
    didSelectFromOptionsMenu = self->_didSelectFromOptionsMenu;
    v8 = didSelectFromOptionsMenu == [equalCopy didSelectFromOptionsMenu];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBPerformContactActionCommand *)self contactActionType])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBPerformContactActionCommand *)self didDisplayHandleOptions])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBPerformContactActionCommand *)self didSelectFromOptionsMenu])
  {
    PBDataWriterWriteBOOLField();
  }
}

@end