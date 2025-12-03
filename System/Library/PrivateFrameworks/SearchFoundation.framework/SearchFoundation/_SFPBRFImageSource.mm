@interface _SFPBRFImageSource
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFAppIconImage)app_icon;
- (_SFPBRFAvatarImage)avatar;
- (_SFPBRFBadgedImage)badged_image;
- (_SFPBRFDefaultBrowserAppIconImage)default_browser_app_icon;
- (_SFPBRFImageSource)initWithDictionary:(id)dictionary;
- (_SFPBRFImageSource)initWithFacade:(id)facade;
- (_SFPBRFImageSource)initWithJSON:(id)n;
- (_SFPBRFMonogramImage)monogram;
- (_SFPBRFSymbolImage)symbol;
- (_SFPBRFUrlImage)url;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setApp_icon:(id)app_icon;
- (void)setAvatar:(id)avatar;
- (void)setBadged_image:(id)badged_image;
- (void)setDefault_browser_app_icon:(id)default_browser_app_icon;
- (void)setMonogram:(id)monogram;
- (void)setSymbol:(id)symbol;
- (void)setUrl:(id)url;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFImageSource

- (_SFPBRFImageSource)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFImageSource *)self init];
  if (v5)
  {
    if ([facadeCopy hasUrl])
    {
      v6 = [facadeCopy url];

      if (v6)
      {
        v7 = [_SFPBRFUrlImage alloc];
        v8 = [facadeCopy url];
        v9 = [(_SFPBRFUrlImage *)v7 initWithFacade:v8];
        [(_SFPBRFImageSource *)v5 setUrl:v9];
      }
    }

    if ([facadeCopy hasSymbol])
    {
      symbol = [facadeCopy symbol];

      if (symbol)
      {
        v11 = [_SFPBRFSymbolImage alloc];
        symbol2 = [facadeCopy symbol];
        v13 = [(_SFPBRFSymbolImage *)v11 initWithFacade:symbol2];
        [(_SFPBRFImageSource *)v5 setSymbol:v13];
      }
    }

    if ([facadeCopy hasApp_icon])
    {
      app_icon = [facadeCopy app_icon];

      if (app_icon)
      {
        v15 = [_SFPBRFAppIconImage alloc];
        app_icon2 = [facadeCopy app_icon];
        v17 = [(_SFPBRFAppIconImage *)v15 initWithFacade:app_icon2];
        [(_SFPBRFImageSource *)v5 setApp_icon:v17];
      }
    }

    if ([facadeCopy hasAvatar])
    {
      avatar = [facadeCopy avatar];

      if (avatar)
      {
        v19 = [_SFPBRFAvatarImage alloc];
        avatar2 = [facadeCopy avatar];
        v21 = [(_SFPBRFAvatarImage *)v19 initWithFacade:avatar2];
        [(_SFPBRFImageSource *)v5 setAvatar:v21];
      }
    }

    if ([facadeCopy hasMonogram])
    {
      monogram = [facadeCopy monogram];

      if (monogram)
      {
        v23 = [_SFPBRFMonogramImage alloc];
        monogram2 = [facadeCopy monogram];
        v25 = [(_SFPBRFMonogramImage *)v23 initWithFacade:monogram2];
        [(_SFPBRFImageSource *)v5 setMonogram:v25];
      }
    }

    if ([facadeCopy hasBadged_image])
    {
      badged_image = [facadeCopy badged_image];

      if (badged_image)
      {
        v27 = [_SFPBRFBadgedImage alloc];
        badged_image2 = [facadeCopy badged_image];
        v29 = [(_SFPBRFBadgedImage *)v27 initWithFacade:badged_image2];
        [(_SFPBRFImageSource *)v5 setBadged_image:v29];
      }
    }

    if ([facadeCopy hasDefault_browser_app_icon])
    {
      default_browser_app_icon = [facadeCopy default_browser_app_icon];

      if (default_browser_app_icon)
      {
        v31 = [_SFPBRFDefaultBrowserAppIconImage alloc];
        default_browser_app_icon2 = [facadeCopy default_browser_app_icon];
        v33 = [(_SFPBRFDefaultBrowserAppIconImage *)v31 initWithFacade:default_browser_app_icon2];
        [(_SFPBRFImageSource *)v5 setDefault_browser_app_icon:v33];
      }
    }

    if ([facadeCopy hasDo_not_show_loading_placeholder])
    {
      -[_SFPBRFImageSource setDo_not_show_loading_placeholder:](v5, "setDo_not_show_loading_placeholder:", [facadeCopy do_not_show_loading_placeholder]);
    }

    v34 = v5;
  }

  return v5;
}

- (_SFPBRFImageSource)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = _SFPBRFImageSource;
  v5 = [(_SFPBRFImageSource *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFUrlImage alloc] initWithDictionary:v6];
      [(_SFPBRFImageSource *)v5 setUrl:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"symbol"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFSymbolImage alloc] initWithDictionary:v8];
      [(_SFPBRFImageSource *)v5 setSymbol:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"appIcon"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFAppIconImage alloc] initWithDictionary:v10];
      [(_SFPBRFImageSource *)v5 setApp_icon:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"avatar"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBRFAvatarImage alloc] initWithDictionary:v12];
      [(_SFPBRFImageSource *)v5 setAvatar:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"monogram"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBRFMonogramImage alloc] initWithDictionary:v14];
      [(_SFPBRFImageSource *)v5 setMonogram:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"badgedImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[_SFPBRFBadgedImage alloc] initWithDictionary:v16];
      [(_SFPBRFImageSource *)v5 setBadged_image:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"defaultBrowserAppIcon"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[_SFPBRFDefaultBrowserAppIconImage alloc] initWithDictionary:v18];
      [(_SFPBRFImageSource *)v5 setDefault_browser_app_icon:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"doNotShowLoadingPlaceholder"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFImageSource setDo_not_show_loading_placeholder:](v5, "setDo_not_show_loading_placeholder:", [v20 BOOLValue]);
    }

    v21 = v5;
  }

  return v5;
}

- (_SFPBRFImageSource)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFImageSource *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFImageSource *)self dictionaryRepresentation];
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
  if (self->_app_icon)
  {
    app_icon = [(_SFPBRFImageSource *)self app_icon];
    dictionaryRepresentation = [app_icon dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"appIcon"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"appIcon"];
    }
  }

  if (self->_avatar)
  {
    avatar = [(_SFPBRFImageSource *)self avatar];
    dictionaryRepresentation2 = [avatar dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"avatar"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"avatar"];
    }
  }

  if (self->_badged_image)
  {
    badged_image = [(_SFPBRFImageSource *)self badged_image];
    dictionaryRepresentation3 = [badged_image dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"badgedImage"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"badgedImage"];
    }
  }

  if (self->_default_browser_app_icon)
  {
    default_browser_app_icon = [(_SFPBRFImageSource *)self default_browser_app_icon];
    dictionaryRepresentation4 = [default_browser_app_icon dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"defaultBrowserAppIcon"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"defaultBrowserAppIcon"];
    }
  }

  if (self->_do_not_show_loading_placeholder)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFImageSource do_not_show_loading_placeholder](self, "do_not_show_loading_placeholder")}];
    [dictionary setObject:v16 forKeyedSubscript:@"doNotShowLoadingPlaceholder"];
  }

  if (self->_monogram)
  {
    monogram = [(_SFPBRFImageSource *)self monogram];
    dictionaryRepresentation5 = [monogram dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"monogram"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"monogram"];
    }
  }

  if (self->_symbol)
  {
    symbol = [(_SFPBRFImageSource *)self symbol];
    dictionaryRepresentation6 = [symbol dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"symbol"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"symbol"];
    }
  }

  if (self->_url)
  {
    v23 = [(_SFPBRFImageSource *)self url];
    dictionaryRepresentation7 = [v23 dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"url"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"url"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFUrlImage *)self->_url hash];
  v4 = [(_SFPBRFSymbolImage *)self->_symbol hash];
  v5 = [(_SFPBRFAppIconImage *)self->_app_icon hash];
  v6 = [(_SFPBRFAvatarImage *)self->_avatar hash];
  v7 = [(_SFPBRFMonogramImage *)self->_monogram hash];
  v8 = [(_SFPBRFBadgedImage *)self->_badged_image hash];
  v9 = [(_SFPBRFDefaultBrowserAppIconImage *)self->_default_browser_app_icon hash];
  v10 = 2654435761;
  if (!self->_do_not_show_loading_placeholder)
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  symbol = [(_SFPBRFImageSource *)self url];
  symbol2 = [equalCopy url];
  if ((symbol != 0) == (symbol2 == 0))
  {
    goto LABEL_36;
  }

  v7 = [(_SFPBRFImageSource *)self url];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFImageSource *)self url];
    v10 = [equalCopy url];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  symbol = [(_SFPBRFImageSource *)self symbol];
  symbol2 = [equalCopy symbol];
  if ((symbol != 0) == (symbol2 == 0))
  {
    goto LABEL_36;
  }

  symbol3 = [(_SFPBRFImageSource *)self symbol];
  if (symbol3)
  {
    v13 = symbol3;
    symbol4 = [(_SFPBRFImageSource *)self symbol];
    symbol5 = [equalCopy symbol];
    v16 = [symbol4 isEqual:symbol5];

    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  symbol = [(_SFPBRFImageSource *)self app_icon];
  symbol2 = [equalCopy app_icon];
  if ((symbol != 0) == (symbol2 == 0))
  {
    goto LABEL_36;
  }

  app_icon = [(_SFPBRFImageSource *)self app_icon];
  if (app_icon)
  {
    v18 = app_icon;
    app_icon2 = [(_SFPBRFImageSource *)self app_icon];
    app_icon3 = [equalCopy app_icon];
    v21 = [app_icon2 isEqual:app_icon3];

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  symbol = [(_SFPBRFImageSource *)self avatar];
  symbol2 = [equalCopy avatar];
  if ((symbol != 0) == (symbol2 == 0))
  {
    goto LABEL_36;
  }

  avatar = [(_SFPBRFImageSource *)self avatar];
  if (avatar)
  {
    v23 = avatar;
    avatar2 = [(_SFPBRFImageSource *)self avatar];
    avatar3 = [equalCopy avatar];
    v26 = [avatar2 isEqual:avatar3];

    if (!v26)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  symbol = [(_SFPBRFImageSource *)self monogram];
  symbol2 = [equalCopy monogram];
  if ((symbol != 0) == (symbol2 == 0))
  {
    goto LABEL_36;
  }

  monogram = [(_SFPBRFImageSource *)self monogram];
  if (monogram)
  {
    v28 = monogram;
    monogram2 = [(_SFPBRFImageSource *)self monogram];
    monogram3 = [equalCopy monogram];
    v31 = [monogram2 isEqual:monogram3];

    if (!v31)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  symbol = [(_SFPBRFImageSource *)self badged_image];
  symbol2 = [equalCopy badged_image];
  if ((symbol != 0) == (symbol2 == 0))
  {
    goto LABEL_36;
  }

  badged_image = [(_SFPBRFImageSource *)self badged_image];
  if (badged_image)
  {
    v33 = badged_image;
    badged_image2 = [(_SFPBRFImageSource *)self badged_image];
    badged_image3 = [equalCopy badged_image];
    v36 = [badged_image2 isEqual:badged_image3];

    if (!v36)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  symbol = [(_SFPBRFImageSource *)self default_browser_app_icon];
  symbol2 = [equalCopy default_browser_app_icon];
  if ((symbol != 0) != (symbol2 == 0))
  {
    default_browser_app_icon = [(_SFPBRFImageSource *)self default_browser_app_icon];
    if (!default_browser_app_icon)
    {

LABEL_40:
      do_not_show_loading_placeholder = self->_do_not_show_loading_placeholder;
      v42 = do_not_show_loading_placeholder == [equalCopy do_not_show_loading_placeholder];
      goto LABEL_38;
    }

    v38 = default_browser_app_icon;
    default_browser_app_icon2 = [(_SFPBRFImageSource *)self default_browser_app_icon];
    default_browser_app_icon3 = [equalCopy default_browser_app_icon];
    v41 = [default_browser_app_icon2 isEqual:default_browser_app_icon3];

    if (v41)
    {
      goto LABEL_40;
    }
  }

  else
  {
LABEL_36:
  }

LABEL_37:
  v42 = 0;
LABEL_38:

  return v42;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v4 = [(_SFPBRFImageSource *)self url];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  symbol = [(_SFPBRFImageSource *)self symbol];
  if (symbol)
  {
    PBDataWriterWriteSubmessage();
  }

  app_icon = [(_SFPBRFImageSource *)self app_icon];
  if (app_icon)
  {
    PBDataWriterWriteSubmessage();
  }

  avatar = [(_SFPBRFImageSource *)self avatar];
  if (avatar)
  {
    PBDataWriterWriteSubmessage();
  }

  monogram = [(_SFPBRFImageSource *)self monogram];
  if (monogram)
  {
    PBDataWriterWriteSubmessage();
  }

  badged_image = [(_SFPBRFImageSource *)self badged_image];
  if (badged_image)
  {
    PBDataWriterWriteSubmessage();
  }

  default_browser_app_icon = [(_SFPBRFImageSource *)self default_browser_app_icon];
  if (default_browser_app_icon)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFImageSource *)self do_not_show_loading_placeholder])
  {
    PBDataWriterWriteBOOLField();
  }
}

- (_SFPBRFDefaultBrowserAppIconImage)default_browser_app_icon
{
  if (self->_whichValue == 7)
  {
    v3 = self->_default_browser_app_icon;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDefault_browser_app_icon:(id)default_browser_app_icon
{
  default_browser_app_iconCopy = default_browser_app_icon;
  url = self->_url;
  self->_url = 0;

  symbol = self->_symbol;
  self->_symbol = 0;

  app_icon = self->_app_icon;
  self->_app_icon = 0;

  avatar = self->_avatar;
  self->_avatar = 0;

  monogram = self->_monogram;
  self->_monogram = 0;

  badged_image = self->_badged_image;
  self->_badged_image = 0;

  v11 = 7;
  if (!default_browser_app_iconCopy)
  {
    v11 = 0;
  }

  self->_whichValue = v11;
  default_browser_app_icon = self->_default_browser_app_icon;
  self->_default_browser_app_icon = default_browser_app_iconCopy;
}

- (_SFPBRFBadgedImage)badged_image
{
  if (self->_whichValue == 6)
  {
    v3 = self->_badged_image;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setBadged_image:(id)badged_image
{
  badged_imageCopy = badged_image;
  url = self->_url;
  self->_url = 0;

  symbol = self->_symbol;
  self->_symbol = 0;

  app_icon = self->_app_icon;
  self->_app_icon = 0;

  avatar = self->_avatar;
  self->_avatar = 0;

  monogram = self->_monogram;
  self->_monogram = 0;

  default_browser_app_icon = self->_default_browser_app_icon;
  self->_default_browser_app_icon = 0;

  v11 = 6;
  if (!badged_imageCopy)
  {
    v11 = 0;
  }

  self->_whichValue = v11;
  badged_image = self->_badged_image;
  self->_badged_image = badged_imageCopy;
}

- (_SFPBRFMonogramImage)monogram
{
  if (self->_whichValue == 5)
  {
    v3 = self->_monogram;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMonogram:(id)monogram
{
  monogramCopy = monogram;
  url = self->_url;
  self->_url = 0;

  symbol = self->_symbol;
  self->_symbol = 0;

  app_icon = self->_app_icon;
  self->_app_icon = 0;

  avatar = self->_avatar;
  self->_avatar = 0;

  badged_image = self->_badged_image;
  self->_badged_image = 0;

  default_browser_app_icon = self->_default_browser_app_icon;
  self->_default_browser_app_icon = 0;

  v11 = 5;
  if (!monogramCopy)
  {
    v11 = 0;
  }

  self->_whichValue = v11;
  monogram = self->_monogram;
  self->_monogram = monogramCopy;
}

- (_SFPBRFAvatarImage)avatar
{
  if (self->_whichValue == 4)
  {
    v3 = self->_avatar;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAvatar:(id)avatar
{
  avatarCopy = avatar;
  url = self->_url;
  self->_url = 0;

  symbol = self->_symbol;
  self->_symbol = 0;

  app_icon = self->_app_icon;
  self->_app_icon = 0;

  monogram = self->_monogram;
  self->_monogram = 0;

  badged_image = self->_badged_image;
  self->_badged_image = 0;

  default_browser_app_icon = self->_default_browser_app_icon;
  self->_default_browser_app_icon = 0;

  self->_whichValue = 4 * (avatarCopy != 0);
  avatar = self->_avatar;
  self->_avatar = avatarCopy;
}

- (_SFPBRFAppIconImage)app_icon
{
  if (self->_whichValue == 3)
  {
    v3 = self->_app_icon;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setApp_icon:(id)app_icon
{
  app_iconCopy = app_icon;
  url = self->_url;
  self->_url = 0;

  symbol = self->_symbol;
  self->_symbol = 0;

  avatar = self->_avatar;
  self->_avatar = 0;

  monogram = self->_monogram;
  self->_monogram = 0;

  badged_image = self->_badged_image;
  self->_badged_image = 0;

  default_browser_app_icon = self->_default_browser_app_icon;
  self->_default_browser_app_icon = 0;

  v11 = 3;
  if (!app_iconCopy)
  {
    v11 = 0;
  }

  self->_whichValue = v11;
  app_icon = self->_app_icon;
  self->_app_icon = app_iconCopy;
}

- (_SFPBRFSymbolImage)symbol
{
  if (self->_whichValue == 2)
  {
    v3 = self->_symbol;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSymbol:(id)symbol
{
  symbolCopy = symbol;
  url = self->_url;
  self->_url = 0;

  app_icon = self->_app_icon;
  self->_app_icon = 0;

  avatar = self->_avatar;
  self->_avatar = 0;

  monogram = self->_monogram;
  self->_monogram = 0;

  badged_image = self->_badged_image;
  self->_badged_image = 0;

  default_browser_app_icon = self->_default_browser_app_icon;
  self->_default_browser_app_icon = 0;

  self->_whichValue = 2 * (symbolCopy != 0);
  symbol = self->_symbol;
  self->_symbol = symbolCopy;
}

- (_SFPBRFUrlImage)url
{
  if (self->_whichValue == 1)
  {
    v3 = self->_url;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUrl:(id)url
{
  urlCopy = url;
  symbol = self->_symbol;
  self->_symbol = 0;

  app_icon = self->_app_icon;
  self->_app_icon = 0;

  avatar = self->_avatar;
  self->_avatar = 0;

  monogram = self->_monogram;
  self->_monogram = 0;

  badged_image = self->_badged_image;
  self->_badged_image = 0;

  default_browser_app_icon = self->_default_browser_app_icon;
  self->_default_browser_app_icon = 0;

  self->_whichValue = urlCopy != 0;
  url = self->_url;
  self->_url = urlCopy;
}

@end