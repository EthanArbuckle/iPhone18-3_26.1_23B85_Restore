@interface RFImageSource
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFImageSource)initWithCoder:(id)coder;
- (RFImageSource)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setApp_icon:(id)app_icon;
- (void)setAvatar:(id)avatar;
- (void)setBadged_image:(id)badged_image;
- (void)setDefault_browser_app_icon:(id)default_browser_app_icon;
- (void)setMonogram:(id)monogram;
- (void)setSymbol:(id)symbol;
- (void)setUrl:(id)url;
@end

@implementation RFImageSource

- (RFImageSource)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v36.receiver = self;
  v36.super_class = RFImageSource;
  v5 = [(RFImageSource *)&v36 init];
  if (v5)
  {
    v6 = [protobufCopy url];

    if (v6)
    {
      v7 = [RFUrlImage alloc];
      v8 = [protobufCopy url];
      v9 = [(RFUrlImage *)v7 initWithProtobuf:v8];
      [(RFImageSource *)v5 setUrl:v9];
    }

    symbol = [protobufCopy symbol];

    if (symbol)
    {
      v11 = [RFSymbolImage alloc];
      symbol2 = [protobufCopy symbol];
      v13 = [(RFSymbolImage *)v11 initWithProtobuf:symbol2];
      [(RFImageSource *)v5 setSymbol:v13];
    }

    app_icon = [protobufCopy app_icon];

    if (app_icon)
    {
      v15 = [RFAppIconImage alloc];
      app_icon2 = [protobufCopy app_icon];
      v17 = [(RFAppIconImage *)v15 initWithProtobuf:app_icon2];
      [(RFImageSource *)v5 setApp_icon:v17];
    }

    avatar = [protobufCopy avatar];

    if (avatar)
    {
      v19 = [RFAvatarImage alloc];
      avatar2 = [protobufCopy avatar];
      v21 = [(RFAvatarImage *)v19 initWithProtobuf:avatar2];
      [(RFImageSource *)v5 setAvatar:v21];
    }

    monogram = [protobufCopy monogram];

    if (monogram)
    {
      v23 = [RFMonogramImage alloc];
      monogram2 = [protobufCopy monogram];
      v25 = [(RFMonogramImage *)v23 initWithProtobuf:monogram2];
      [(RFImageSource *)v5 setMonogram:v25];
    }

    badged_image = [protobufCopy badged_image];

    if (badged_image)
    {
      v27 = [RFBadgedImage alloc];
      badged_image2 = [protobufCopy badged_image];
      v29 = [(RFBadgedImage *)v27 initWithProtobuf:badged_image2];
      [(RFImageSource *)v5 setBadged_image:v29];
    }

    default_browser_app_icon = [protobufCopy default_browser_app_icon];

    if (default_browser_app_icon)
    {
      v31 = [RFDefaultBrowserAppIconImage alloc];
      default_browser_app_icon2 = [protobufCopy default_browser_app_icon];
      v33 = [(RFDefaultBrowserAppIconImage *)v31 initWithProtobuf:default_browser_app_icon2];
      [(RFImageSource *)v5 setDefault_browser_app_icon:v33];
    }

    if ([protobufCopy do_not_show_loading_placeholder])
    {
      -[RFImageSource setDo_not_show_loading_placeholder:](v5, "setDo_not_show_loading_placeholder:", [protobufCopy do_not_show_loading_placeholder]);
    }

    v34 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(RFImageSource *)self url];
  v4 = [v3 hash];
  symbol = [(RFImageSource *)self symbol];
  v6 = [symbol hash] ^ v4;
  app_icon = [(RFImageSource *)self app_icon];
  v8 = [app_icon hash];
  avatar = [(RFImageSource *)self avatar];
  v10 = v6 ^ v8 ^ [avatar hash];
  monogram = [(RFImageSource *)self monogram];
  v12 = [monogram hash];
  badged_image = [(RFImageSource *)self badged_image];
  v14 = v12 ^ [badged_image hash];
  default_browser_app_icon = [(RFImageSource *)self default_browser_app_icon];
  v16 = v10 ^ v14 ^ [default_browser_app_icon hash];
  do_not_show_loading_placeholder = [(RFImageSource *)self do_not_show_loading_placeholder];

  return v16 ^ do_not_show_loading_placeholder;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if ([(RFImageSource *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      v6 = [(RFImageSource *)self url];
      v7 = [(RFImageSource *)v5 url];
      if ((v6 != 0) == (v7 == 0))
      {
        LOBYTE(v11) = 0;
LABEL_26:

        goto LABEL_27;
      }

      v8 = [(RFImageSource *)self url];
      if (v8)
      {
        v9 = [(RFImageSource *)self url];
        v10 = [(RFImageSource *)v5 url];
        if (![v9 isEqual:v10])
        {
          LOBYTE(v11) = 0;
LABEL_24:

          goto LABEL_25;
        }

        v66 = v10;
        v67 = v9;
      }

      symbol = [(RFImageSource *)self symbol];
      symbol2 = [(RFImageSource *)v5 symbol];
      if ((symbol != 0) == (symbol2 == 0))
      {
        goto LABEL_22;
      }

      symbol3 = [(RFImageSource *)self symbol];
      if (symbol3)
      {
        symbol4 = [(RFImageSource *)self symbol];
        symbol5 = [(RFImageSource *)v5 symbol];
        v64 = symbol4;
        if (![symbol4 isEqual:symbol5])
        {
          goto LABEL_20;
        }
      }

      v65 = symbol3;
      app_icon = [(RFImageSource *)self app_icon];
      app_icon2 = [(RFImageSource *)v5 app_icon];
      if ((app_icon != 0) == (app_icon2 == 0))
      {

        if (!symbol3)
        {
LABEL_21:

LABEL_22:
          LOBYTE(v11) = 0;
          if (!v8)
          {
LABEL_25:

            goto LABEL_26;
          }

          goto LABEL_23;
        }

LABEL_20:

        goto LABEL_21;
      }

      v60 = app_icon;
      v61 = app_icon2;
      app_icon3 = [(RFImageSource *)self app_icon];
      if (app_icon3)
      {
        app_icon4 = [(RFImageSource *)self app_icon];
        [(RFImageSource *)v5 app_icon];
        v59 = v58 = app_icon4;
        if (![app_icon4 isEqual:v59])
        {
LABEL_49:

LABEL_50:
          if (!symbol3)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }
      }

      avatar = [(RFImageSource *)self avatar];
      avatar2 = [(RFImageSource *)v5 avatar];
      if ((avatar != 0) == (avatar2 == 0))
      {

        goto LABEL_48;
      }

      v56 = avatar;
      v57 = avatar2;
      avatar3 = [(RFImageSource *)self avatar];
      if (avatar3)
      {
        avatar = [(RFImageSource *)self avatar];
        avatar4 = [(RFImageSource *)v5 avatar];
        if (![avatar isEqual:?])
        {
          goto LABEL_46;
        }
      }

      v53 = avatar;
      v55 = avatar3;
      monogram = [(RFImageSource *)self monogram];
      monogram2 = [(RFImageSource *)v5 monogram];
      if ((monogram != 0) == (monogram2 == 0))
      {

        goto LABEL_45;
      }

      v50 = monogram;
      v51 = monogram2;
      monogram3 = [(RFImageSource *)self monogram];
      if (monogram3)
      {
        monogram4 = [(RFImageSource *)self monogram];
        [(RFImageSource *)v5 monogram];
        v49 = v48 = monogram4;
        if (![monogram4 isEqual:v49])
        {
          goto LABEL_43;
        }
      }

      badged_image = [(RFImageSource *)self badged_image];
      badged_image2 = [(RFImageSource *)v5 badged_image];
      if ((badged_image != 0) == (badged_image2 == 0))
      {

        if (!monogram3)
        {
LABEL_44:

LABEL_45:
          avatar = v53;
          if (!avatar3)
          {
LABEL_47:

LABEL_48:
            symbol3 = v65;
            if (!app_icon3)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          }

LABEL_46:

          goto LABEL_47;
        }

LABEL_43:

        goto LABEL_44;
      }

      v46 = badged_image;
      v47 = badged_image2;
      badged_image3 = [(RFImageSource *)self badged_image];
      if (badged_image3)
      {
        badged_image4 = [(RFImageSource *)self badged_image];
        [(RFImageSource *)v5 badged_image];
        v45 = v43 = badged_image4;
        if (![badged_image4 isEqual:?])
        {
          LOBYTE(v11) = 0;
          v36 = v45;
LABEL_65:

LABEL_66:
          if (monogram3)
          {
          }

          if (v55)
          {
          }

          if (app_icon3)
          {
          }

          if (v65)
          {
          }

          if (!v8)
          {
            goto LABEL_25;
          }

LABEL_23:
          v10 = v66;
          v9 = v67;
          goto LABEL_24;
        }

        v44 = badged_image3;
      }

      else
      {
        v44 = 0;
      }

      default_browser_app_icon = [(RFImageSource *)self default_browser_app_icon];
      default_browser_app_icon2 = [(RFImageSource *)v5 default_browser_app_icon];
      if ((default_browser_app_icon != 0) == (default_browser_app_icon2 == 0))
      {

        LOBYTE(v11) = 0;
        goto LABEL_64;
      }

      v42 = default_browser_app_icon2;
      v32 = default_browser_app_icon;
      default_browser_app_icon3 = [(RFImageSource *)self default_browser_app_icon];
      v34 = default_browser_app_icon3;
      if (default_browser_app_icon3)
      {
        v39 = default_browser_app_icon3;
        default_browser_app_icon4 = [(RFImageSource *)self default_browser_app_icon];
        default_browser_app_icon5 = [(RFImageSource *)v5 default_browser_app_icon];
        v41 = default_browser_app_icon4;
        if (![default_browser_app_icon4 isEqual:?])
        {
          LOBYTE(v11) = 0;
          v38 = v49;
          v34 = v39;
          goto LABEL_62;
        }

        v34 = v39;
      }

      do_not_show_loading_placeholder = [(RFImageSource *)self do_not_show_loading_placeholder];
      v11 = do_not_show_loading_placeholder ^ [(RFImageSource *)v5 do_not_show_loading_placeholder]^ 1;
      if (!v34)
      {
LABEL_63:

LABEL_64:
        badged_image3 = v44;
        v36 = v45;
        if (!v44)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      }

      v38 = v49;
LABEL_62:
      v49 = v38;

      goto LABEL_63;
    }

    LOBYTE(v11) = 0;
  }

LABEL_27:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if ([(RFImageSource *)self hasUrl])
  {
    v5 = [(RFImageSource *)self url];
    v6 = [v5 copy];
    [v4 setUrl:v6];
  }

  if ([(RFImageSource *)self hasSymbol])
  {
    symbol = [(RFImageSource *)self symbol];
    v8 = [symbol copy];
    [v4 setSymbol:v8];
  }

  if ([(RFImageSource *)self hasApp_icon])
  {
    app_icon = [(RFImageSource *)self app_icon];
    v10 = [app_icon copy];
    [v4 setApp_icon:v10];
  }

  if ([(RFImageSource *)self hasAvatar])
  {
    avatar = [(RFImageSource *)self avatar];
    v12 = [avatar copy];
    [v4 setAvatar:v12];
  }

  if ([(RFImageSource *)self hasMonogram])
  {
    monogram = [(RFImageSource *)self monogram];
    v14 = [monogram copy];
    [v4 setMonogram:v14];
  }

  if ([(RFImageSource *)self hasBadged_image])
  {
    badged_image = [(RFImageSource *)self badged_image];
    v16 = [badged_image copy];
    [v4 setBadged_image:v16];
  }

  if ([(RFImageSource *)self hasDefault_browser_app_icon])
  {
    default_browser_app_icon = [(RFImageSource *)self default_browser_app_icon];
    v18 = [default_browser_app_icon copy];
    [v4 setDefault_browser_app_icon:v18];
  }

  [v4 setDo_not_show_loading_placeholder:{-[RFImageSource do_not_show_loading_placeholder](self, "do_not_show_loading_placeholder")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFImageSource alloc] initWithFacade:self];
  jsonData = [(_SFPBRFImageSource *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFImageSource alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFImageSource *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFImageSource alloc] initWithFacade:self];
  data = [(_SFPBRFImageSource *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFImageSource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFImageSource alloc] initWithData:v5];
  v7 = [(RFImageSource *)self initWithProtobuf:v6];

  return v7;
}

- (void)setDefault_browser_app_icon:(id)default_browser_app_icon
{
  *&self->_has |= 0x40u;
  objc_storeStrong(&self->_default_browser_app_icon, default_browser_app_icon);
  default_browser_app_iconCopy = default_browser_app_icon;
  *&self->_has &= ~1u;
  url = self->_url;
  self->_url = 0;

  *&self->_has &= ~2u;
  symbol = self->_symbol;
  self->_symbol = 0;

  *&self->_has &= ~4u;
  app_icon = self->_app_icon;
  self->_app_icon = 0;

  *&self->_has &= ~8u;
  avatar = self->_avatar;
  self->_avatar = 0;

  *&self->_has &= ~0x10u;
  monogram = self->_monogram;
  self->_monogram = 0;

  *&self->_has &= ~0x20u;
  badged_image = self->_badged_image;
  self->_badged_image = 0;
}

- (void)setBadged_image:(id)badged_image
{
  *&self->_has |= 0x20u;
  objc_storeStrong(&self->_badged_image, badged_image);
  badged_imageCopy = badged_image;
  *&self->_has &= ~1u;
  url = self->_url;
  self->_url = 0;

  *&self->_has &= ~2u;
  symbol = self->_symbol;
  self->_symbol = 0;

  *&self->_has &= ~4u;
  app_icon = self->_app_icon;
  self->_app_icon = 0;

  *&self->_has &= ~8u;
  avatar = self->_avatar;
  self->_avatar = 0;

  *&self->_has &= ~0x10u;
  monogram = self->_monogram;
  self->_monogram = 0;

  *&self->_has &= ~0x40u;
  default_browser_app_icon = self->_default_browser_app_icon;
  self->_default_browser_app_icon = 0;
}

- (void)setMonogram:(id)monogram
{
  *&self->_has |= 0x10u;
  objc_storeStrong(&self->_monogram, monogram);
  monogramCopy = monogram;
  *&self->_has &= ~1u;
  url = self->_url;
  self->_url = 0;

  *&self->_has &= ~2u;
  symbol = self->_symbol;
  self->_symbol = 0;

  *&self->_has &= ~4u;
  app_icon = self->_app_icon;
  self->_app_icon = 0;

  *&self->_has &= ~8u;
  avatar = self->_avatar;
  self->_avatar = 0;

  *&self->_has &= ~0x20u;
  badged_image = self->_badged_image;
  self->_badged_image = 0;

  *&self->_has &= ~0x40u;
  default_browser_app_icon = self->_default_browser_app_icon;
  self->_default_browser_app_icon = 0;
}

- (void)setAvatar:(id)avatar
{
  *&self->_has |= 8u;
  objc_storeStrong(&self->_avatar, avatar);
  avatarCopy = avatar;
  *&self->_has &= ~1u;
  url = self->_url;
  self->_url = 0;

  *&self->_has &= ~2u;
  symbol = self->_symbol;
  self->_symbol = 0;

  *&self->_has &= ~4u;
  app_icon = self->_app_icon;
  self->_app_icon = 0;

  *&self->_has &= ~0x10u;
  monogram = self->_monogram;
  self->_monogram = 0;

  *&self->_has &= ~0x20u;
  badged_image = self->_badged_image;
  self->_badged_image = 0;

  *&self->_has &= ~0x40u;
  default_browser_app_icon = self->_default_browser_app_icon;
  self->_default_browser_app_icon = 0;
}

- (void)setApp_icon:(id)app_icon
{
  *&self->_has |= 4u;
  objc_storeStrong(&self->_app_icon, app_icon);
  app_iconCopy = app_icon;
  *&self->_has &= ~1u;
  url = self->_url;
  self->_url = 0;

  *&self->_has &= ~2u;
  symbol = self->_symbol;
  self->_symbol = 0;

  *&self->_has &= ~8u;
  avatar = self->_avatar;
  self->_avatar = 0;

  *&self->_has &= ~0x10u;
  monogram = self->_monogram;
  self->_monogram = 0;

  *&self->_has &= ~0x20u;
  badged_image = self->_badged_image;
  self->_badged_image = 0;

  *&self->_has &= ~0x40u;
  default_browser_app_icon = self->_default_browser_app_icon;
  self->_default_browser_app_icon = 0;
}

- (void)setSymbol:(id)symbol
{
  *&self->_has |= 2u;
  objc_storeStrong(&self->_symbol, symbol);
  symbolCopy = symbol;
  *&self->_has &= ~1u;
  url = self->_url;
  self->_url = 0;

  *&self->_has &= ~4u;
  app_icon = self->_app_icon;
  self->_app_icon = 0;

  *&self->_has &= ~8u;
  avatar = self->_avatar;
  self->_avatar = 0;

  *&self->_has &= ~0x10u;
  monogram = self->_monogram;
  self->_monogram = 0;

  *&self->_has &= ~0x20u;
  badged_image = self->_badged_image;
  self->_badged_image = 0;

  *&self->_has &= ~0x40u;
  default_browser_app_icon = self->_default_browser_app_icon;
  self->_default_browser_app_icon = 0;
}

- (void)setUrl:(id)url
{
  *&self->_has |= 1u;
  objc_storeStrong(&self->_url, url);
  urlCopy = url;
  *&self->_has &= ~2u;
  symbol = self->_symbol;
  self->_symbol = 0;

  *&self->_has &= ~4u;
  app_icon = self->_app_icon;
  self->_app_icon = 0;

  *&self->_has &= ~8u;
  avatar = self->_avatar;
  self->_avatar = 0;

  *&self->_has &= ~0x10u;
  monogram = self->_monogram;
  self->_monogram = 0;

  *&self->_has &= ~0x20u;
  badged_image = self->_badged_image;
  self->_badged_image = 0;

  *&self->_has &= ~0x40u;
  default_browser_app_icon = self->_default_browser_app_icon;
  self->_default_browser_app_icon = 0;
}

@end