@interface SKUIItemOfferButtonAppearance
- (SKUIItemOfferButtonAppearance)initWithColorScheme:(id)a3;
@end

@implementation SKUIItemOfferButtonAppearance

- (SKUIItemOfferButtonAppearance)initWithColorScheme:(id)a3
{
  v4 = a3;
  if (!os_variant_has_internal_content() || !_os_feature_enabled_impl() || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  [SKUIItemOfferButtonAppearance initWithColorScheme:];
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_5:
  v15.receiver = self;
  v15.super_class = SKUIItemOfferButtonAppearance;
  v5 = [(SKUIItemOfferButtonAppearance *)&v15 init];
  if (v5)
  {
    v6 = [v4 secondaryTextColor];
    v7 = *(v5 + 1);
    *(v5 + 1) = v6;

    v8 = [v4 schemeStyle];
    if (v8 <= 1)
    {
      if (v8)
      {
        if (v8 != 1)
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

    if (v8 == 2)
    {
      goto LABEL_13;
    }

    if (v8 == 3)
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