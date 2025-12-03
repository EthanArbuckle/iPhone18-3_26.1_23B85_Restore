@interface _SFPBPlayWatchListItemButtonItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBPlayWatchListItemButtonItem)initWithDictionary:(id)dictionary;
- (_SFPBPlayWatchListItemButtonItem)initWithFacade:(id)facade;
- (_SFPBPlayWatchListItemButtonItem)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setTitle:(id)title;
- (void)writeTo:(id)to;
@end

@implementation _SFPBPlayWatchListItemButtonItem

- (_SFPBPlayWatchListItemButtonItem)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBPlayWatchListItemButtonItem *)self init];
  if (v5)
  {
    watchListItem = [facadeCopy watchListItem];

    if (watchListItem)
    {
      v7 = [_SFPBWatchListItem alloc];
      watchListItem2 = [facadeCopy watchListItem];
      v9 = [(_SFPBWatchListItem *)v7 initWithFacade:watchListItem2];
      [(_SFPBPlayWatchListItemButtonItem *)v5 setWatchListItem:v9];
    }

    title = [facadeCopy title];

    if (title)
    {
      title2 = [facadeCopy title];
      [(_SFPBPlayWatchListItemButtonItem *)v5 setTitle:title2];
    }

    image = [facadeCopy image];

    if (image)
    {
      v13 = [_SFPBImage alloc];
      image2 = [facadeCopy image];
      v15 = [(_SFPBImage *)v13 initWithFacade:image2];
      [(_SFPBPlayWatchListItemButtonItem *)v5 setImage:v15];
    }

    if ([facadeCopy hasUniqueId])
    {
      -[_SFPBPlayWatchListItemButtonItem setUniqueId:](v5, "setUniqueId:", [facadeCopy uniqueId]);
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBPlayWatchListItemButtonItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = _SFPBPlayWatchListItemButtonItem;
  v5 = [(_SFPBPlayWatchListItemButtonItem *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"watchListItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBWatchListItem alloc] initWithDictionary:v6];
      [(_SFPBPlayWatchListItemButtonItem *)v5 setWatchListItem:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBPlayWatchListItemButtonItem *)v5 setTitle:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"image"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBImage alloc] initWithDictionary:v10];
      [(_SFPBPlayWatchListItemButtonItem *)v5 setImage:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"uniqueId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPlayWatchListItemButtonItem setUniqueId:](v5, "setUniqueId:", [v12 unsignedLongLongValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (_SFPBPlayWatchListItemButtonItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBPlayWatchListItemButtonItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBPlayWatchListItemButtonItem *)self dictionaryRepresentation];
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
  if (self->_image)
  {
    image = [(_SFPBPlayWatchListItemButtonItem *)self image];
    dictionaryRepresentation = [image dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"image"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"image"];
    }
  }

  if (self->_title)
  {
    title = [(_SFPBPlayWatchListItemButtonItem *)self title];
    v8 = [title copy];
    [dictionary setObject:v8 forKeyedSubscript:@"title"];
  }

  if (self->_uniqueId)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBPlayWatchListItemButtonItem uniqueId](self, "uniqueId")}];
    [dictionary setObject:v9 forKeyedSubscript:@"uniqueId"];
  }

  if (self->_watchListItem)
  {
    watchListItem = [(_SFPBPlayWatchListItemButtonItem *)self watchListItem];
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

- (unint64_t)hash
{
  v3 = [(_SFPBWatchListItem *)self->_watchListItem hash];
  v4 = [(NSString *)self->_title hash];
  return v4 ^ v3 ^ [(_SFPBImage *)self->_image hash]^ (2654435761u * self->_uniqueId);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  watchListItem = [(_SFPBPlayWatchListItemButtonItem *)self watchListItem];
  watchListItem2 = [equalCopy watchListItem];
  if ((watchListItem != 0) == (watchListItem2 == 0))
  {
    goto LABEL_16;
  }

  watchListItem3 = [(_SFPBPlayWatchListItemButtonItem *)self watchListItem];
  if (watchListItem3)
  {
    v8 = watchListItem3;
    watchListItem4 = [(_SFPBPlayWatchListItemButtonItem *)self watchListItem];
    watchListItem5 = [equalCopy watchListItem];
    v11 = [watchListItem4 isEqual:watchListItem5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  watchListItem = [(_SFPBPlayWatchListItemButtonItem *)self title];
  watchListItem2 = [equalCopy title];
  if ((watchListItem != 0) == (watchListItem2 == 0))
  {
    goto LABEL_16;
  }

  title = [(_SFPBPlayWatchListItemButtonItem *)self title];
  if (title)
  {
    v13 = title;
    title2 = [(_SFPBPlayWatchListItemButtonItem *)self title];
    title3 = [equalCopy title];
    v16 = [title2 isEqual:title3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  watchListItem = [(_SFPBPlayWatchListItemButtonItem *)self image];
  watchListItem2 = [equalCopy image];
  if ((watchListItem != 0) != (watchListItem2 == 0))
  {
    image = [(_SFPBPlayWatchListItemButtonItem *)self image];
    if (!image)
    {

LABEL_20:
      uniqueId = self->_uniqueId;
      v22 = uniqueId == [equalCopy uniqueId];
      goto LABEL_18;
    }

    v18 = image;
    image2 = [(_SFPBPlayWatchListItemButtonItem *)self image];
    image3 = [equalCopy image];
    v21 = [image2 isEqual:image3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  watchListItem = [(_SFPBPlayWatchListItemButtonItem *)self watchListItem];
  if (watchListItem)
  {
    PBDataWriterWriteSubmessage();
  }

  title = [(_SFPBPlayWatchListItemButtonItem *)self title];
  if (title)
  {
    PBDataWriterWriteStringField();
  }

  image = [(_SFPBPlayWatchListItemButtonItem *)self image];
  if (image)
  {
    PBDataWriterWriteSubmessage();
  }

  uniqueId = [(_SFPBPlayWatchListItemButtonItem *)self uniqueId];
  v8 = toCopy;
  if (uniqueId)
  {
    PBDataWriterWriteUint64Field();
    v8 = toCopy;
  }
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

@end