@interface SKUIItemOfferButtonAppearance
- (SKUIItemOfferButtonAppearance)initWithColorScheme:(id)scheme;
@end

@implementation SKUIItemOfferButtonAppearance

- (SKUIItemOfferButtonAppearance)initWithColorScheme:(id)scheme
{
  schemeCopy = scheme;
  if (!os_variant_has_internal_content() || !_os_feature_enabled_impl() || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    if (schemeCopy)
    {
      goto LABEL_5;
    }

LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  [SKUIItemOfferButtonAppearance initWithColorScheme:];
  if (!schemeCopy)
  {
    goto LABEL_16;
  }

LABEL_5:
  v15.receiver = self;
  v15.super_class = SKUIItemOfferButtonAppearance;
  v5 = [(SKUIItemOfferButtonAppearance *)&v15 init];
  if (v5)
  {
    secondaryTextColor = [schemeCopy secondaryTextColor];
    v7 = *(v5 + 1);
    *(v5 + 1) = secondaryTextColor;

    schemeStyle = [schemeCopy schemeStyle];
    if (schemeStyle <= 1)
    {
      if (schemeStyle)
      {
        if (schemeStyle != 1)
        {
          goto LABEL_18;
        }

        goto LABEL_12;
      }

LABEL_13:
      v9 = MEMORY[0x277D75348];
      v10 = 0.0980392157;
      v11 = 0.670588235;
      v12 = 0.125490196;
      goto LABEL_14;
    }

    if (schemeStyle == 2)
    {
      goto LABEL_13;
    }

    if (schemeStyle == 3)
    {
LABEL_12:
      v9 = MEMORY[0x277D75348];
      v10 = 0.2;
      v11 = 0.792156863;
      v12 = 0.231372549;
LABEL_14:
      v13 = [v9 colorWithRed:v10 green:v11 blue:v12 alpha:1.0];
      self = *(v5 + 2);
      *(v5 + 2) = v13;
LABEL_17:
    }
  }

LABEL_18:

  return v5;
}

- (void)initWithColorScheme:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIItemOfferButtonAppearance initWithColorScheme:]";
}

@end