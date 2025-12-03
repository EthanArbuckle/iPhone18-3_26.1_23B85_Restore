@interface _SFPBShareItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCoreSpotlightShareItem)spotlightShareItem;
- (_SFPBShareItem)initWithDictionary:(id)dictionary;
- (_SFPBShareItem)initWithFacade:(id)facade;
- (_SFPBShareItem)initWithJSON:(id)n;
- (_SFPBURLShareItem)urlShareItem;
- (id)dictionaryRepresentation;
- (void)setSpotlightShareItem:(id)item;
- (void)setUrlShareItem:(id)item;
- (void)writeTo:(id)to;
@end

@implementation _SFPBShareItem

- (_SFPBShareItem)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBShareItem *)self init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [[_SFPBURLShareItem alloc] initWithFacade:facadeCopy];
      [(_SFPBShareItem *)v5 setUrlShareItem:v6];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBCoreSpotlightShareItem alloc] initWithFacade:facadeCopy];
      [(_SFPBShareItem *)v5 setSpotlightShareItem:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBShareItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBShareItem;
  v5 = [(_SFPBShareItem *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"urlShareItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBURLShareItem alloc] initWithDictionary:v6];
      [(_SFPBShareItem *)v5 setUrlShareItem:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"spotlightShareItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBCoreSpotlightShareItem alloc] initWithDictionary:v8];
      [(_SFPBShareItem *)v5 setSpotlightShareItem:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBShareItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBShareItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBShareItem *)self dictionaryRepresentation];
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
  if (self->_spotlightShareItem)
  {
    spotlightShareItem = [(_SFPBShareItem *)self spotlightShareItem];
    dictionaryRepresentation = [spotlightShareItem dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"spotlightShareItem"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"spotlightShareItem"];
    }
  }

  if (self->_urlShareItem)
  {
    urlShareItem = [(_SFPBShareItem *)self urlShareItem];
    dictionaryRepresentation2 = [urlShareItem dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"urlShareItem"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"urlShareItem"];
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

  urlShareItem = [(_SFPBShareItem *)self urlShareItem];
  urlShareItem2 = [equalCopy urlShareItem];
  if ((urlShareItem != 0) == (urlShareItem2 == 0))
  {
    goto LABEL_11;
  }

  urlShareItem3 = [(_SFPBShareItem *)self urlShareItem];
  if (urlShareItem3)
  {
    v8 = urlShareItem3;
    urlShareItem4 = [(_SFPBShareItem *)self urlShareItem];
    urlShareItem5 = [equalCopy urlShareItem];
    v11 = [urlShareItem4 isEqual:urlShareItem5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  urlShareItem = [(_SFPBShareItem *)self spotlightShareItem];
  urlShareItem2 = [equalCopy spotlightShareItem];
  if ((urlShareItem != 0) != (urlShareItem2 == 0))
  {
    spotlightShareItem = [(_SFPBShareItem *)self spotlightShareItem];
    if (!spotlightShareItem)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = spotlightShareItem;
    spotlightShareItem2 = [(_SFPBShareItem *)self spotlightShareItem];
    spotlightShareItem3 = [equalCopy spotlightShareItem];
    v16 = [spotlightShareItem2 isEqual:spotlightShareItem3];

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
  urlShareItem = [(_SFPBShareItem *)self urlShareItem];
  if (urlShareItem)
  {
    PBDataWriterWriteSubmessage();
  }

  spotlightShareItem = [(_SFPBShareItem *)self spotlightShareItem];
  if (spotlightShareItem)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (_SFPBCoreSpotlightShareItem)spotlightShareItem
{
  if (self->_whichValue == 2)
  {
    v3 = self->_spotlightShareItem;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSpotlightShareItem:(id)item
{
  itemCopy = item;
  urlShareItem = self->_urlShareItem;
  self->_urlShareItem = 0;

  self->_whichValue = 2 * (itemCopy != 0);
  spotlightShareItem = self->_spotlightShareItem;
  self->_spotlightShareItem = itemCopy;
}

- (_SFPBURLShareItem)urlShareItem
{
  if (self->_whichValue == 1)
  {
    v3 = self->_urlShareItem;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUrlShareItem:(id)item
{
  itemCopy = item;
  spotlightShareItem = self->_spotlightShareItem;
  self->_spotlightShareItem = 0;

  self->_whichValue = itemCopy != 0;
  urlShareItem = self->_urlShareItem;
  self->_urlShareItem = itemCopy;
}

@end