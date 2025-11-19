@interface SKUIColorScheme
- (SKUIColorScheme)initWithCoder:(id)a3;
- (SKUIColorScheme)initWithColorSchemeDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKUIColorScheme

- (SKUIColorScheme)initWithColorSchemeDictionary:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIColorScheme *)v5 initWithColorSchemeDictionary:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v30.receiver = self;
  v30.super_class = SKUIColorScheme;
  v13 = [(SKUIColorScheme *)&v30 init];
  if (v13)
  {
    v14 = [v4 objectForKey:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = SKUIColorWithHTMLCode(v14);
      backgroundColor = v13->_backgroundColor;
      v13->_backgroundColor = v15;
    }

    v17 = [v4 objectForKey:@"primaryTextColor"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = SKUIColorWithHTMLCode(v17);
      primaryTextColor = v13->_primaryTextColor;
      v13->_primaryTextColor = v18;
    }

    v20 = [v4 objectForKey:@"titleTextColor"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = SKUIColorWithHTMLCode(v20);
      secondaryTextColor = v13->_secondaryTextColor;
      v13->_secondaryTextColor = v21;
    }

    v28 = 0.0;
    v29 = 0.0;
    v26 = 0.0;
    v27 = 0.0;
    [(UIColor *)v13->_primaryTextColor getHue:&v29 saturation:&v28 brightness:&v27 alpha:&v26];
    v23 = [MEMORY[0x277D75348] colorWithHue:v29 saturation:v28 brightness:v27 + dbl_215F3EE20[v27 < 0.5] alpha:v26];
    highlightedTextColor = v13->_highlightedTextColor;
    v13->_highlightedTextColor = v23;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(UIColor *)self->_backgroundColor copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(UIColor *)self->_highlightedTextColor copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(UIColor *)self->_primaryTextColor copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(UIColor *)self->_secondaryTextColor copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (SKUIColorScheme)initWithCoder:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIColorScheme *)v5 initWithCoder:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v22.receiver = self;
  v22.super_class = SKUIColorScheme;
  v13 = [(SKUIColorScheme *)&v22 init];
  if (v13)
  {
    v14 = objc_opt_class();
    v15 = [v4 decodeObjectOfClass:v14 forKey:@"bgc"];
    backgroundColor = v13->_backgroundColor;
    v13->_backgroundColor = v15;

    v17 = [v4 decodeObjectOfClass:v14 forKey:@"ptc"];
    primaryTextColor = v13->_primaryTextColor;
    v13->_primaryTextColor = v17;

    v19 = [v4 decodeObjectOfClass:v14 forKey:@"ttc"];
    secondaryTextColor = v13->_secondaryTextColor;
    v13->_secondaryTextColor = v19;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  backgroundColor = self->_backgroundColor;
  v5 = a3;
  [v5 encodeObject:backgroundColor forKey:@"bgc"];
  [v5 encodeObject:self->_primaryTextColor forKey:@"ptc"];
  [v5 encodeObject:self->_secondaryTextColor forKey:@"ttc"];
}

@end