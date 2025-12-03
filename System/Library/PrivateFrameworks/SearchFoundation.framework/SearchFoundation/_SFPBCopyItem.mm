@interface _SFPBCopyItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBContactCopyItem)contactCopyItem;
- (_SFPBCopyItem)initWithDictionary:(id)dictionary;
- (_SFPBCopyItem)initWithFacade:(id)facade;
- (_SFPBCopyItem)initWithJSON:(id)n;
- (_SFPBCoreSpotlightCopyItem)spotlightCopyItem;
- (_SFPBImageCopyItem)imageCopyItem;
- (_SFPBTextCopyItem)textCopyItem;
- (_SFPBURLCopyItem)urlCopyItem;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setContactCopyItem:(id)item;
- (void)setImageCopyItem:(id)item;
- (void)setSpotlightCopyItem:(id)item;
- (void)setTextCopyItem:(id)item;
- (void)setUrlCopyItem:(id)item;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCopyItem

- (_SFPBCopyItem)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBCopyItem *)self init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [[_SFPBTextCopyItem alloc] initWithFacade:facadeCopy];
      [(_SFPBCopyItem *)v5 setTextCopyItem:v6];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBCoreSpotlightCopyItem alloc] initWithFacade:facadeCopy];
      [(_SFPBCopyItem *)v5 setSpotlightCopyItem:v7];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[_SFPBImageCopyItem alloc] initWithFacade:facadeCopy];
      [(_SFPBCopyItem *)v5 setImageCopyItem:v8];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBContactCopyItem alloc] initWithFacade:facadeCopy];
      [(_SFPBCopyItem *)v5 setContactCopyItem:v9];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[_SFPBURLCopyItem alloc] initWithFacade:facadeCopy];
      [(_SFPBCopyItem *)v5 setUrlCopyItem:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (_SFPBCopyItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = _SFPBCopyItem;
  v5 = [(_SFPBCopyItem *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"textCopyItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBTextCopyItem alloc] initWithDictionary:v6];
      [(_SFPBCopyItem *)v5 setTextCopyItem:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"spotlightCopyItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBCoreSpotlightCopyItem alloc] initWithDictionary:v8];
      [(_SFPBCopyItem *)v5 setSpotlightCopyItem:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"imageCopyItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBImageCopyItem alloc] initWithDictionary:v10];
      [(_SFPBCopyItem *)v5 setImageCopyItem:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"contactCopyItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBContactCopyItem alloc] initWithDictionary:v12];
      [(_SFPBCopyItem *)v5 setContactCopyItem:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"urlCopyItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBURLCopyItem alloc] initWithDictionary:v14];
      [(_SFPBCopyItem *)v5 setUrlCopyItem:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBCopyItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCopyItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCopyItem *)self dictionaryRepresentation];
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
  if (self->_contactCopyItem)
  {
    contactCopyItem = [(_SFPBCopyItem *)self contactCopyItem];
    dictionaryRepresentation = [contactCopyItem dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"contactCopyItem"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"contactCopyItem"];
    }
  }

  if (self->_imageCopyItem)
  {
    imageCopyItem = [(_SFPBCopyItem *)self imageCopyItem];
    dictionaryRepresentation2 = [imageCopyItem dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"imageCopyItem"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"imageCopyItem"];
    }
  }

  if (self->_spotlightCopyItem)
  {
    spotlightCopyItem = [(_SFPBCopyItem *)self spotlightCopyItem];
    dictionaryRepresentation3 = [spotlightCopyItem dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"spotlightCopyItem"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"spotlightCopyItem"];
    }
  }

  if (self->_textCopyItem)
  {
    textCopyItem = [(_SFPBCopyItem *)self textCopyItem];
    dictionaryRepresentation4 = [textCopyItem dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"textCopyItem"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"textCopyItem"];
    }
  }

  if (self->_urlCopyItem)
  {
    urlCopyItem = [(_SFPBCopyItem *)self urlCopyItem];
    dictionaryRepresentation5 = [urlCopyItem dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"urlCopyItem"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"urlCopyItem"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBTextCopyItem *)self->_textCopyItem hash];
  v4 = [(_SFPBCoreSpotlightCopyItem *)self->_spotlightCopyItem hash]^ v3;
  v5 = [(_SFPBImageCopyItem *)self->_imageCopyItem hash];
  v6 = v4 ^ v5 ^ [(_SFPBContactCopyItem *)self->_contactCopyItem hash];
  return v6 ^ [(_SFPBURLCopyItem *)self->_urlCopyItem hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  textCopyItem = [(_SFPBCopyItem *)self textCopyItem];
  textCopyItem2 = [equalCopy textCopyItem];
  if ((textCopyItem != 0) == (textCopyItem2 == 0))
  {
    goto LABEL_26;
  }

  textCopyItem3 = [(_SFPBCopyItem *)self textCopyItem];
  if (textCopyItem3)
  {
    v8 = textCopyItem3;
    textCopyItem4 = [(_SFPBCopyItem *)self textCopyItem];
    textCopyItem5 = [equalCopy textCopyItem];
    v11 = [textCopyItem4 isEqual:textCopyItem5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  textCopyItem = [(_SFPBCopyItem *)self spotlightCopyItem];
  textCopyItem2 = [equalCopy spotlightCopyItem];
  if ((textCopyItem != 0) == (textCopyItem2 == 0))
  {
    goto LABEL_26;
  }

  spotlightCopyItem = [(_SFPBCopyItem *)self spotlightCopyItem];
  if (spotlightCopyItem)
  {
    v13 = spotlightCopyItem;
    spotlightCopyItem2 = [(_SFPBCopyItem *)self spotlightCopyItem];
    spotlightCopyItem3 = [equalCopy spotlightCopyItem];
    v16 = [spotlightCopyItem2 isEqual:spotlightCopyItem3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  textCopyItem = [(_SFPBCopyItem *)self imageCopyItem];
  textCopyItem2 = [equalCopy imageCopyItem];
  if ((textCopyItem != 0) == (textCopyItem2 == 0))
  {
    goto LABEL_26;
  }

  imageCopyItem = [(_SFPBCopyItem *)self imageCopyItem];
  if (imageCopyItem)
  {
    v18 = imageCopyItem;
    imageCopyItem2 = [(_SFPBCopyItem *)self imageCopyItem];
    imageCopyItem3 = [equalCopy imageCopyItem];
    v21 = [imageCopyItem2 isEqual:imageCopyItem3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  textCopyItem = [(_SFPBCopyItem *)self contactCopyItem];
  textCopyItem2 = [equalCopy contactCopyItem];
  if ((textCopyItem != 0) == (textCopyItem2 == 0))
  {
    goto LABEL_26;
  }

  contactCopyItem = [(_SFPBCopyItem *)self contactCopyItem];
  if (contactCopyItem)
  {
    v23 = contactCopyItem;
    contactCopyItem2 = [(_SFPBCopyItem *)self contactCopyItem];
    contactCopyItem3 = [equalCopy contactCopyItem];
    v26 = [contactCopyItem2 isEqual:contactCopyItem3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  textCopyItem = [(_SFPBCopyItem *)self urlCopyItem];
  textCopyItem2 = [equalCopy urlCopyItem];
  if ((textCopyItem != 0) != (textCopyItem2 == 0))
  {
    urlCopyItem = [(_SFPBCopyItem *)self urlCopyItem];
    if (!urlCopyItem)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = urlCopyItem;
    urlCopyItem2 = [(_SFPBCopyItem *)self urlCopyItem];
    urlCopyItem3 = [equalCopy urlCopyItem];
    v31 = [urlCopyItem2 isEqual:urlCopyItem3];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  textCopyItem = [(_SFPBCopyItem *)self textCopyItem];
  if (textCopyItem)
  {
    PBDataWriterWriteSubmessage();
  }

  spotlightCopyItem = [(_SFPBCopyItem *)self spotlightCopyItem];
  if (spotlightCopyItem)
  {
    PBDataWriterWriteSubmessage();
  }

  imageCopyItem = [(_SFPBCopyItem *)self imageCopyItem];
  if (imageCopyItem)
  {
    PBDataWriterWriteSubmessage();
  }

  contactCopyItem = [(_SFPBCopyItem *)self contactCopyItem];
  if (contactCopyItem)
  {
    PBDataWriterWriteSubmessage();
  }

  urlCopyItem = [(_SFPBCopyItem *)self urlCopyItem];
  if (urlCopyItem)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (_SFPBURLCopyItem)urlCopyItem
{
  if (self->_whichValue == 5)
  {
    v3 = self->_urlCopyItem;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUrlCopyItem:(id)item
{
  itemCopy = item;
  textCopyItem = self->_textCopyItem;
  self->_textCopyItem = 0;

  spotlightCopyItem = self->_spotlightCopyItem;
  self->_spotlightCopyItem = 0;

  imageCopyItem = self->_imageCopyItem;
  self->_imageCopyItem = 0;

  contactCopyItem = self->_contactCopyItem;
  self->_contactCopyItem = 0;

  v9 = 5;
  if (!itemCopy)
  {
    v9 = 0;
  }

  self->_whichValue = v9;
  urlCopyItem = self->_urlCopyItem;
  self->_urlCopyItem = itemCopy;
}

- (_SFPBContactCopyItem)contactCopyItem
{
  if (self->_whichValue == 4)
  {
    v3 = self->_contactCopyItem;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContactCopyItem:(id)item
{
  itemCopy = item;
  textCopyItem = self->_textCopyItem;
  self->_textCopyItem = 0;

  spotlightCopyItem = self->_spotlightCopyItem;
  self->_spotlightCopyItem = 0;

  imageCopyItem = self->_imageCopyItem;
  self->_imageCopyItem = 0;

  urlCopyItem = self->_urlCopyItem;
  self->_urlCopyItem = 0;

  self->_whichValue = 4 * (itemCopy != 0);
  contactCopyItem = self->_contactCopyItem;
  self->_contactCopyItem = itemCopy;
}

- (_SFPBImageCopyItem)imageCopyItem
{
  if (self->_whichValue == 3)
  {
    v3 = self->_imageCopyItem;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setImageCopyItem:(id)item
{
  itemCopy = item;
  textCopyItem = self->_textCopyItem;
  self->_textCopyItem = 0;

  spotlightCopyItem = self->_spotlightCopyItem;
  self->_spotlightCopyItem = 0;

  contactCopyItem = self->_contactCopyItem;
  self->_contactCopyItem = 0;

  urlCopyItem = self->_urlCopyItem;
  self->_urlCopyItem = 0;

  v9 = 3;
  if (!itemCopy)
  {
    v9 = 0;
  }

  self->_whichValue = v9;
  imageCopyItem = self->_imageCopyItem;
  self->_imageCopyItem = itemCopy;
}

- (_SFPBCoreSpotlightCopyItem)spotlightCopyItem
{
  if (self->_whichValue == 2)
  {
    v3 = self->_spotlightCopyItem;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSpotlightCopyItem:(id)item
{
  itemCopy = item;
  textCopyItem = self->_textCopyItem;
  self->_textCopyItem = 0;

  imageCopyItem = self->_imageCopyItem;
  self->_imageCopyItem = 0;

  contactCopyItem = self->_contactCopyItem;
  self->_contactCopyItem = 0;

  urlCopyItem = self->_urlCopyItem;
  self->_urlCopyItem = 0;

  self->_whichValue = 2 * (itemCopy != 0);
  spotlightCopyItem = self->_spotlightCopyItem;
  self->_spotlightCopyItem = itemCopy;
}

- (_SFPBTextCopyItem)textCopyItem
{
  if (self->_whichValue == 1)
  {
    v3 = self->_textCopyItem;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTextCopyItem:(id)item
{
  itemCopy = item;
  spotlightCopyItem = self->_spotlightCopyItem;
  self->_spotlightCopyItem = 0;

  imageCopyItem = self->_imageCopyItem;
  self->_imageCopyItem = 0;

  contactCopyItem = self->_contactCopyItem;
  self->_contactCopyItem = 0;

  urlCopyItem = self->_urlCopyItem;
  self->_urlCopyItem = 0;

  self->_whichValue = itemCopy != 0;
  textCopyItem = self->_textCopyItem;
  self->_textCopyItem = itemCopy;
}

@end