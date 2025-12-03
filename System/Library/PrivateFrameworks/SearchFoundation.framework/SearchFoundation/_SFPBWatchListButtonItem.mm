@interface _SFPBWatchListButtonItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBWatchListButtonItem)initWithDictionary:(id)dictionary;
- (_SFPBWatchListButtonItem)initWithFacade:(id)facade;
- (_SFPBWatchListButtonItem)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBWatchListButtonItem

- (_SFPBWatchListButtonItem)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBWatchListButtonItem *)self init];
  if (v5)
  {
    watchListItem = [facadeCopy watchListItem];

    if (watchListItem)
    {
      v7 = [_SFPBWatchListItem alloc];
      watchListItem2 = [facadeCopy watchListItem];
      v9 = [(_SFPBWatchListItem *)v7 initWithFacade:watchListItem2];
      [(_SFPBWatchListButtonItem *)v5 setWatchListItem:v9];
    }

    toggleButtonConfiguration = [facadeCopy toggleButtonConfiguration];

    if (toggleButtonConfiguration)
    {
      v11 = [_SFPBToggleButtonConfiguration alloc];
      toggleButtonConfiguration2 = [facadeCopy toggleButtonConfiguration];
      v13 = [(_SFPBToggleButtonConfiguration *)v11 initWithFacade:toggleButtonConfiguration2];
      [(_SFPBWatchListButtonItem *)v5 setToggleButtonConfiguration:v13];
    }

    if ([facadeCopy hasUniqueId])
    {
      -[_SFPBWatchListButtonItem setUniqueId:](v5, "setUniqueId:", [facadeCopy uniqueId]);
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBWatchListButtonItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = _SFPBWatchListButtonItem;
  v5 = [(_SFPBWatchListButtonItem *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"watchListItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBWatchListItem alloc] initWithDictionary:v6];
      [(_SFPBWatchListButtonItem *)v5 setWatchListItem:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"toggleButtonConfiguration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBToggleButtonConfiguration alloc] initWithDictionary:v8];
      [(_SFPBWatchListButtonItem *)v5 setToggleButtonConfiguration:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"uniqueId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBWatchListButtonItem setUniqueId:](v5, "setUniqueId:", [v10 unsignedLongLongValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (_SFPBWatchListButtonItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBWatchListButtonItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBWatchListButtonItem *)self dictionaryRepresentation];
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
  if (self->_toggleButtonConfiguration)
  {
    toggleButtonConfiguration = [(_SFPBWatchListButtonItem *)self toggleButtonConfiguration];
    dictionaryRepresentation = [toggleButtonConfiguration dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"toggleButtonConfiguration"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"toggleButtonConfiguration"];
    }
  }

  if (self->_uniqueId)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBWatchListButtonItem uniqueId](self, "uniqueId")}];
    [dictionary setObject:v7 forKeyedSubscript:@"uniqueId"];
  }

  if (self->_watchListItem)
  {
    watchListItem = [(_SFPBWatchListButtonItem *)self watchListItem];
    dictionaryRepresentation2 = [watchListItem dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"watchListItem"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"watchListItem"];
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

  watchListItem = [(_SFPBWatchListButtonItem *)self watchListItem];
  watchListItem2 = [equalCopy watchListItem];
  if ((watchListItem != 0) == (watchListItem2 == 0))
  {
    goto LABEL_11;
  }

  watchListItem3 = [(_SFPBWatchListButtonItem *)self watchListItem];
  if (watchListItem3)
  {
    v8 = watchListItem3;
    watchListItem4 = [(_SFPBWatchListButtonItem *)self watchListItem];
    watchListItem5 = [equalCopy watchListItem];
    v11 = [watchListItem4 isEqual:watchListItem5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  watchListItem = [(_SFPBWatchListButtonItem *)self toggleButtonConfiguration];
  watchListItem2 = [equalCopy toggleButtonConfiguration];
  if ((watchListItem != 0) != (watchListItem2 == 0))
  {
    toggleButtonConfiguration = [(_SFPBWatchListButtonItem *)self toggleButtonConfiguration];
    if (!toggleButtonConfiguration)
    {

LABEL_15:
      uniqueId = self->_uniqueId;
      v17 = uniqueId == [equalCopy uniqueId];
      goto LABEL_13;
    }

    v13 = toggleButtonConfiguration;
    toggleButtonConfiguration2 = [(_SFPBWatchListButtonItem *)self toggleButtonConfiguration];
    toggleButtonConfiguration3 = [equalCopy toggleButtonConfiguration];
    v16 = [toggleButtonConfiguration2 isEqual:toggleButtonConfiguration3];

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
  watchListItem = [(_SFPBWatchListButtonItem *)self watchListItem];
  if (watchListItem)
  {
    PBDataWriterWriteSubmessage();
  }

  toggleButtonConfiguration = [(_SFPBWatchListButtonItem *)self toggleButtonConfiguration];
  if (toggleButtonConfiguration)
  {
    PBDataWriterWriteSubmessage();
  }

  uniqueId = [(_SFPBWatchListButtonItem *)self uniqueId];
  v7 = toCopy;
  if (uniqueId)
  {
    PBDataWriterWriteUint64Field();
    v7 = toCopy;
  }
}

@end