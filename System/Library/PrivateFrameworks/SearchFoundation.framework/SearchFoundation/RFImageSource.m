@interface RFImageSource
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFImageSource)initWithCoder:(id)a3;
- (RFImageSource)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setApp_icon:(id)a3;
- (void)setAvatar:(id)a3;
- (void)setBadged_image:(id)a3;
- (void)setDefault_browser_app_icon:(id)a3;
- (void)setMonogram:(id)a3;
- (void)setSymbol:(id)a3;
- (void)setUrl:(id)a3;
@end

@implementation RFImageSource

- (RFImageSource)initWithProtobuf:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = RFImageSource;
  v5 = [(RFImageSource *)&v36 init];
  if (v5)
  {
    v6 = [v4 url];

    if (v6)
    {
      v7 = [RFUrlImage alloc];
      v8 = [v4 url];
      v9 = [(RFUrlImage *)v7 initWithProtobuf:v8];
      [(RFImageSource *)v5 setUrl:v9];
    }

    v10 = [v4 symbol];

    if (v10)
    {
      v11 = [RFSymbolImage alloc];
      v12 = [v4 symbol];
      v13 = [(RFSymbolImage *)v11 initWithProtobuf:v12];
      [(RFImageSource *)v5 setSymbol:v13];
    }

    v14 = [v4 app_icon];

    if (v14)
    {
      v15 = [RFAppIconImage alloc];
      v16 = [v4 app_icon];
      v17 = [(RFAppIconImage *)v15 initWithProtobuf:v16];
      [(RFImageSource *)v5 setApp_icon:v17];
    }

    v18 = [v4 avatar];

    if (v18)
    {
      v19 = [RFAvatarImage alloc];
      v20 = [v4 avatar];
      v21 = [(RFAvatarImage *)v19 initWithProtobuf:v20];
      [(RFImageSource *)v5 setAvatar:v21];
    }

    v22 = [v4 monogram];

    if (v22)
    {
      v23 = [RFMonogramImage alloc];
      v24 = [v4 monogram];
      v25 = [(RFMonogramImage *)v23 initWithProtobuf:v24];
      [(RFImageSource *)v5 setMonogram:v25];
    }

    v26 = [v4 badged_image];

    if (v26)
    {
      v27 = [RFBadgedImage alloc];
      v28 = [v4 badged_image];
      v29 = [(RFBadgedImage *)v27 initWithProtobuf:v28];
      [(RFImageSource *)v5 setBadged_image:v29];
    }

    v30 = [v4 default_browser_app_icon];

    if (v30)
    {
      v31 = [RFDefaultBrowserAppIconImage alloc];
      v32 = [v4 default_browser_app_icon];
      v33 = [(RFDefaultBrowserAppIconImage *)v31 initWithProtobuf:v32];
      [(RFImageSource *)v5 setDefault_browser_app_icon:v33];
    }

    if ([v4 do_not_show_loading_placeholder])
    {
      -[RFImageSource setDo_not_show_loading_placeholder:](v5, "setDo_not_show_loading_placeholder:", [v4 do_not_show_loading_placeholder]);
    }

    v34 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(RFImageSource *)self url];
  v4 = [v3 hash];
  v5 = [(RFImageSource *)self symbol];
  v6 = [v5 hash] ^ v4;
  v7 = [(RFImageSource *)self app_icon];
  v8 = [v7 hash];
  v9 = [(RFImageSource *)self avatar];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(RFImageSource *)self monogram];
  v12 = [v11 hash];
  v13 = [(RFImageSource *)self badged_image];
  v14 = v12 ^ [v13 hash];
  v15 = [(RFImageSource *)self default_browser_app_icon];
  v16 = v10 ^ v14 ^ [v15 hash];
  v17 = [(RFImageSource *)self do_not_show_loading_placeholder];

  return v16 ^ v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if ([(RFImageSource *)v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = v4;
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

      v12 = [(RFImageSource *)self symbol];
      v13 = [(RFImageSource *)v5 symbol];
      if ((v12 != 0) == (v13 == 0))
      {
        goto LABEL_22;
      }

      v14 = [(RFImageSource *)self symbol];
      if (v14)
      {
        v15 = [(RFImageSource *)self symbol];
        v63 = [(RFImageSource *)v5 symbol];
        v64 = v15;
        if (![v15 isEqual:v63])
        {
          goto LABEL_20;
        }
      }

      v65 = v14;
      v16 = [(RFImageSource *)self app_icon];
      v17 = [(RFImageSource *)v5 app_icon];
      if ((v16 != 0) == (v17 == 0))
      {

        if (!v14)
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

      v60 = v16;
      v61 = v17;
      v62 = [(RFImageSource *)self app_icon];
      if (v62)
      {
        v18 = [(RFImageSource *)self app_icon];
        [(RFImageSource *)v5 app_icon];
        v59 = v58 = v18;
        if (![v18 isEqual:v59])
        {
LABEL_49:

LABEL_50:
          if (!v14)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }
      }

      v20 = [(RFImageSource *)self avatar];
      v21 = [(RFImageSource *)v5 avatar];
      if ((v20 != 0) == (v21 == 0))
      {

        goto LABEL_48;
      }

      v56 = v20;
      v57 = v21;
      v22 = [(RFImageSource *)self avatar];
      if (v22)
      {
        v20 = [(RFImageSource *)self avatar];
        v54 = [(RFImageSource *)v5 avatar];
        if (![v20 isEqual:?])
        {
          goto LABEL_46;
        }
      }

      v53 = v20;
      v55 = v22;
      v23 = [(RFImageSource *)self monogram];
      v24 = [(RFImageSource *)v5 monogram];
      if ((v23 != 0) == (v24 == 0))
      {

        goto LABEL_45;
      }

      v50 = v23;
      v51 = v24;
      v52 = [(RFImageSource *)self monogram];
      if (v52)
      {
        v25 = [(RFImageSource *)self monogram];
        [(RFImageSource *)v5 monogram];
        v49 = v48 = v25;
        if (![v25 isEqual:v49])
        {
          goto LABEL_43;
        }
      }

      v26 = [(RFImageSource *)self badged_image];
      v27 = [(RFImageSource *)v5 badged_image];
      if ((v26 != 0) == (v27 == 0))
      {

        if (!v52)
        {
LABEL_44:

LABEL_45:
          v20 = v53;
          if (!v22)
          {
LABEL_47:

LABEL_48:
            v14 = v65;
            if (!v62)
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

      v46 = v26;
      v47 = v27;
      v28 = [(RFImageSource *)self badged_image];
      if (v28)
      {
        v29 = [(RFImageSource *)self badged_image];
        [(RFImageSource *)v5 badged_image];
        v45 = v43 = v29;
        if (![v29 isEqual:?])
        {
          LOBYTE(v11) = 0;
          v36 = v45;
LABEL_65:

LABEL_66:
          if (v52)
          {
          }

          if (v55)
          {
          }

          if (v62)
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

        v44 = v28;
      }

      else
      {
        v44 = 0;
      }

      v30 = [(RFImageSource *)self default_browser_app_icon];
      v31 = [(RFImageSource *)v5 default_browser_app_icon];
      if ((v30 != 0) == (v31 == 0))
      {

        LOBYTE(v11) = 0;
        goto LABEL_64;
      }

      v42 = v31;
      v32 = v30;
      v33 = [(RFImageSource *)self default_browser_app_icon];
      v34 = v33;
      if (v33)
      {
        v39 = v33;
        v35 = [(RFImageSource *)self default_browser_app_icon];
        v40 = [(RFImageSource *)v5 default_browser_app_icon];
        v41 = v35;
        if (![v35 isEqual:?])
        {
          LOBYTE(v11) = 0;
          v38 = v49;
          v34 = v39;
          goto LABEL_62;
        }

        v34 = v39;
      }

      v37 = [(RFImageSource *)self do_not_show_loading_placeholder];
      v11 = v37 ^ [(RFImageSource *)v5 do_not_show_loading_placeholder]^ 1;
      if (!v34)
      {
LABEL_63:

LABEL_64:
        v28 = v44;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if ([(RFImageSource *)self hasUrl])
  {
    v5 = [(RFImageSource *)self url];
    v6 = [v5 copy];
    [v4 setUrl:v6];
  }

  if ([(RFImageSource *)self hasSymbol])
  {
    v7 = [(RFImageSource *)self symbol];
    v8 = [v7 copy];
    [v4 setSymbol:v8];
  }

  if ([(RFImageSource *)self hasApp_icon])
  {
    v9 = [(RFImageSource *)self app_icon];
    v10 = [v9 copy];
    [v4 setApp_icon:v10];
  }

  if ([(RFImageSource *)self hasAvatar])
  {
    v11 = [(RFImageSource *)self avatar];
    v12 = [v11 copy];
    [v4 setAvatar:v12];
  }

  if ([(RFImageSource *)self hasMonogram])
  {
    v13 = [(RFImageSource *)self monogram];
    v14 = [v13 copy];
    [v4 setMonogram:v14];
  }

  if ([(RFImageSource *)self hasBadged_image])
  {
    v15 = [(RFImageSource *)self badged_image];
    v16 = [v15 copy];
    [v4 setBadged_image:v16];
  }

  if ([(RFImageSource *)self hasDefault_browser_app_icon])
  {
    v17 = [(RFImageSource *)self default_browser_app_icon];
    v18 = [v17 copy];
    [v4 setDefault_browser_app_icon:v18];
  }

  [v4 setDo_not_show_loading_placeholder:{-[RFImageSource do_not_show_loading_placeholder](self, "do_not_show_loading_placeholder")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFImageSource alloc] initWithFacade:self];
  v3 = [(_SFPBRFImageSource *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFImageSource alloc] initWithFacade:self];
  v3 = [(_SFPBRFImageSource *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFImageSource alloc] initWithFacade:self];
  v5 = [(_SFPBRFImageSource *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFImageSource)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFImageSource alloc] initWithData:v5];
  v7 = [(RFImageSource *)self initWithProtobuf:v6];

  return v7;
}

- (void)setDefault_browser_app_icon:(id)a3
{
  *&self->_has |= 0x40u;
  objc_storeStrong(&self->_default_browser_app_icon, a3);
  v11 = a3;
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

- (void)setBadged_image:(id)a3
{
  *&self->_has |= 0x20u;
  objc_storeStrong(&self->_badged_image, a3);
  v11 = a3;
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

- (void)setMonogram:(id)a3
{
  *&self->_has |= 0x10u;
  objc_storeStrong(&self->_monogram, a3);
  v11 = a3;
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

- (void)setAvatar:(id)a3
{
  *&self->_has |= 8u;
  objc_storeStrong(&self->_avatar, a3);
  v11 = a3;
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

- (void)setApp_icon:(id)a3
{
  *&self->_has |= 4u;
  objc_storeStrong(&self->_app_icon, a3);
  v11 = a3;
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

- (void)setSymbol:(id)a3
{
  *&self->_has |= 2u;
  objc_storeStrong(&self->_symbol, a3);
  v11 = a3;
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

- (void)setUrl:(id)a3
{
  *&self->_has |= 1u;
  objc_storeStrong(&self->_url, a3);
  v11 = a3;
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