@interface _SFPBCopyItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBContactCopyItem)contactCopyItem;
- (_SFPBCopyItem)initWithDictionary:(id)a3;
- (_SFPBCopyItem)initWithFacade:(id)a3;
- (_SFPBCopyItem)initWithJSON:(id)a3;
- (_SFPBCoreSpotlightCopyItem)spotlightCopyItem;
- (_SFPBImageCopyItem)imageCopyItem;
- (_SFPBTextCopyItem)textCopyItem;
- (_SFPBURLCopyItem)urlCopyItem;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setContactCopyItem:(id)a3;
- (void)setImageCopyItem:(id)a3;
- (void)setSpotlightCopyItem:(id)a3;
- (void)setTextCopyItem:(id)a3;
- (void)setUrlCopyItem:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBCopyItem

- (_SFPBCopyItem)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBCopyItem *)self init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [[_SFPBTextCopyItem alloc] initWithFacade:v4];
      [(_SFPBCopyItem *)v5 setTextCopyItem:v6];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBCoreSpotlightCopyItem alloc] initWithFacade:v4];
      [(_SFPBCopyItem *)v5 setSpotlightCopyItem:v7];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[_SFPBImageCopyItem alloc] initWithFacade:v4];
      [(_SFPBCopyItem *)v5 setImageCopyItem:v8];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBContactCopyItem alloc] initWithFacade:v4];
      [(_SFPBCopyItem *)v5 setContactCopyItem:v9];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[_SFPBURLCopyItem alloc] initWithFacade:v4];
      [(_SFPBCopyItem *)v5 setUrlCopyItem:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (_SFPBCopyItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = _SFPBCopyItem;
  v5 = [(_SFPBCopyItem *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"textCopyItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBTextCopyItem alloc] initWithDictionary:v6];
      [(_SFPBCopyItem *)v5 setTextCopyItem:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"spotlightCopyItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBCoreSpotlightCopyItem alloc] initWithDictionary:v8];
      [(_SFPBCopyItem *)v5 setSpotlightCopyItem:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"imageCopyItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBImageCopyItem alloc] initWithDictionary:v10];
      [(_SFPBCopyItem *)v5 setImageCopyItem:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"contactCopyItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBContactCopyItem alloc] initWithDictionary:v12];
      [(_SFPBCopyItem *)v5 setContactCopyItem:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"urlCopyItem"];
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

- (_SFPBCopyItem)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBCopyItem *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBCopyItem *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_contactCopyItem)
  {
    v4 = [(_SFPBCopyItem *)self contactCopyItem];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"contactCopyItem"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"contactCopyItem"];
    }
  }

  if (self->_imageCopyItem)
  {
    v7 = [(_SFPBCopyItem *)self imageCopyItem];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"imageCopyItem"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"imageCopyItem"];
    }
  }

  if (self->_spotlightCopyItem)
  {
    v10 = [(_SFPBCopyItem *)self spotlightCopyItem];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"spotlightCopyItem"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"spotlightCopyItem"];
    }
  }

  if (self->_textCopyItem)
  {
    v13 = [(_SFPBCopyItem *)self textCopyItem];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"textCopyItem"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"textCopyItem"];
    }
  }

  if (self->_urlCopyItem)
  {
    v16 = [(_SFPBCopyItem *)self urlCopyItem];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"urlCopyItem"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"urlCopyItem"];
    }
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBTextCopyItem *)self->_textCopyItem hash];
  v4 = [(_SFPBCoreSpotlightCopyItem *)self->_spotlightCopyItem hash]^ v3;
  v5 = [(_SFPBImageCopyItem *)self->_imageCopyItem hash];
  v6 = v4 ^ v5 ^ [(_SFPBContactCopyItem *)self->_contactCopyItem hash];
  return v6 ^ [(_SFPBURLCopyItem *)self->_urlCopyItem hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(_SFPBCopyItem *)self textCopyItem];
  v6 = [v4 textCopyItem];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(_SFPBCopyItem *)self textCopyItem];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBCopyItem *)self textCopyItem];
    v10 = [v4 textCopyItem];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCopyItem *)self spotlightCopyItem];
  v6 = [v4 spotlightCopyItem];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(_SFPBCopyItem *)self spotlightCopyItem];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBCopyItem *)self spotlightCopyItem];
    v15 = [v4 spotlightCopyItem];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCopyItem *)self imageCopyItem];
  v6 = [v4 imageCopyItem];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(_SFPBCopyItem *)self imageCopyItem];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBCopyItem *)self imageCopyItem];
    v20 = [v4 imageCopyItem];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCopyItem *)self contactCopyItem];
  v6 = [v4 contactCopyItem];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(_SFPBCopyItem *)self contactCopyItem];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBCopyItem *)self contactCopyItem];
    v25 = [v4 contactCopyItem];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCopyItem *)self urlCopyItem];
  v6 = [v4 urlCopyItem];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(_SFPBCopyItem *)self urlCopyItem];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(_SFPBCopyItem *)self urlCopyItem];
    v30 = [v4 urlCopyItem];
    v31 = [v29 isEqual:v30];

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

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(_SFPBCopyItem *)self textCopyItem];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBCopyItem *)self spotlightCopyItem];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBCopyItem *)self imageCopyItem];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBCopyItem *)self contactCopyItem];
  if (v7)
  {
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_SFPBCopyItem *)self urlCopyItem];
  if (v8)
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

- (void)setUrlCopyItem:(id)a3
{
  v4 = a3;
  textCopyItem = self->_textCopyItem;
  self->_textCopyItem = 0;

  spotlightCopyItem = self->_spotlightCopyItem;
  self->_spotlightCopyItem = 0;

  imageCopyItem = self->_imageCopyItem;
  self->_imageCopyItem = 0;

  contactCopyItem = self->_contactCopyItem;
  self->_contactCopyItem = 0;

  v9 = 5;
  if (!v4)
  {
    v9 = 0;
  }

  self->_whichValue = v9;
  urlCopyItem = self->_urlCopyItem;
  self->_urlCopyItem = v4;
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

- (void)setContactCopyItem:(id)a3
{
  v4 = a3;
  textCopyItem = self->_textCopyItem;
  self->_textCopyItem = 0;

  spotlightCopyItem = self->_spotlightCopyItem;
  self->_spotlightCopyItem = 0;

  imageCopyItem = self->_imageCopyItem;
  self->_imageCopyItem = 0;

  urlCopyItem = self->_urlCopyItem;
  self->_urlCopyItem = 0;

  self->_whichValue = 4 * (v4 != 0);
  contactCopyItem = self->_contactCopyItem;
  self->_contactCopyItem = v4;
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

- (void)setImageCopyItem:(id)a3
{
  v4 = a3;
  textCopyItem = self->_textCopyItem;
  self->_textCopyItem = 0;

  spotlightCopyItem = self->_spotlightCopyItem;
  self->_spotlightCopyItem = 0;

  contactCopyItem = self->_contactCopyItem;
  self->_contactCopyItem = 0;

  urlCopyItem = self->_urlCopyItem;
  self->_urlCopyItem = 0;

  v9 = 3;
  if (!v4)
  {
    v9 = 0;
  }

  self->_whichValue = v9;
  imageCopyItem = self->_imageCopyItem;
  self->_imageCopyItem = v4;
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

- (void)setSpotlightCopyItem:(id)a3
{
  v4 = a3;
  textCopyItem = self->_textCopyItem;
  self->_textCopyItem = 0;

  imageCopyItem = self->_imageCopyItem;
  self->_imageCopyItem = 0;

  contactCopyItem = self->_contactCopyItem;
  self->_contactCopyItem = 0;

  urlCopyItem = self->_urlCopyItem;
  self->_urlCopyItem = 0;

  self->_whichValue = 2 * (v4 != 0);
  spotlightCopyItem = self->_spotlightCopyItem;
  self->_spotlightCopyItem = v4;
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

- (void)setTextCopyItem:(id)a3
{
  v4 = a3;
  spotlightCopyItem = self->_spotlightCopyItem;
  self->_spotlightCopyItem = 0;

  imageCopyItem = self->_imageCopyItem;
  self->_imageCopyItem = 0;

  contactCopyItem = self->_contactCopyItem;
  self->_contactCopyItem = 0;

  urlCopyItem = self->_urlCopyItem;
  self->_urlCopyItem = 0;

  self->_whichValue = v4 != 0;
  textCopyItem = self->_textCopyItem;
  self->_textCopyItem = v4;
}

@end