@interface XBStatusBarSettings
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (XBStatusBarSettings)init;
- (XBStatusBarSettings)initWithCoder:(id)a3;
- (id)_initWithBSSettings:(id)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (int64_t)style;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation XBStatusBarSettings

- (int64_t)style
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:2];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (XBStatusBarSettings)init
{
  v3 = objc_alloc_init(MEMORY[0x277CF0CD8]);
  v4 = [(XBStatusBarSettings *)self _initWithBSSettings:v3];

  return v4;
}

- (void)dealloc
{
  [(BSMutableSettings *)self->_settings setDescriptionProvider:0];
  v3.receiver = self;
  v3.super_class = XBStatusBarSettings;
  [(XBStatusBarSettings *)&v3 dealloc];
}

- (id)_initWithBSSettings:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = XBStatusBarSettings;
  v5 = [(XBStatusBarSettings *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    settings = v5->_settings;
    v5->_settings = v6;

    [(BSMutableSettings *)v5->_settings setDescriptionProvider:v5];
  }

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[XBStatusBarSettings isHidden](self withName:{"isHidden"), @"hidden"}];
  v5 = [MEMORY[0x277D75128] stringForStatusBarStyle:{-[XBStatusBarSettings style](self, "style")}];
  v6 = [v3 appendObject:v5 withName:@"style"];

  v7 = [v3 appendBool:-[XBStatusBarSettings isBackgroundActivityEnabled](self withName:{"isBackgroundActivityEnabled"), @"backgroundActivityEnabled"}];
  v8 = [v3 build];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(XBStatusBarSettings *)self isHidden], v5 == [(XBStatusBarSettings *)v4 isHidden]) && (v6 = [(XBStatusBarSettings *)self isBackgroundActivityEnabled], v6 == [(XBStatusBarSettings *)v4 isBackgroundActivityEnabled]) && (v7 = [(XBStatusBarSettings *)self style], v7 == [(XBStatusBarSettings *)v4 style]))
    {
      v8 = [(BSMutableSettings *)self->_settings isEqual:v4->_settings];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendBool:{-[XBStatusBarSettings isHidden](self, "isHidden")}];
  v5 = [v3 appendBool:{-[XBStatusBarSettings isBackgroundActivityEnabled](self, "isBackgroundActivityEnabled")}];
  v6 = [v3 appendInteger:{-[XBStatusBarSettings style](self, "style")}];
  v7 = [v3 appendObject:self->_settings];
  v8 = [v3 hash];

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [XBMutableStatusBarSettings alloc];
  settings = self->_settings;

  return [(XBStatusBarSettings *)v4 _initWithBSSettings:settings];
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return 0;
  }

  else
  {
    return off_279CF9E70[a3 - 1];
  }
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  v6 = a4;
  v7 = v6;
  switch(a5)
  {
    case 3uLL:
      goto LABEL_4;
    case 2uLL:
      v8 = [MEMORY[0x277D75128] stringForStatusBarStyle:{objc_msgSend(v6, "integerValue")}];
      goto LABEL_6;
    case 1uLL:
LABEL_4:
      v8 = BSSettingFlagDescription();
LABEL_6:
      v9 = v8;
      goto LABEL_8;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  settings = self->_settings;
  v6 = a3;
  [v6 encodeInteger:-[BSMutableSettings flagForSetting:](settings forKey:{"flagForSetting:", 1), @"hidden"}];
  v5 = [(BSMutableSettings *)self->_settings objectForSetting:2];
  [v6 encodeObject:v5 forKey:@"style"];

  [v6 encodeInteger:-[BSMutableSettings flagForSetting:](self->_settings forKey:{"flagForSetting:", 3), @"isBackgroundActivityEnabled"}];
}

- (XBStatusBarSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(XBStatusBarSettings *)self init];
  v6 = v5;
  if (v5)
  {
    -[BSMutableSettings setFlag:forSetting:](v5->_settings, "setFlag:forSetting:", [v4 decodeIntegerForKey:@"hidden"], 1);
    settings = v6->_settings;
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"style"];
    [(BSMutableSettings *)settings setObject:v8 forSetting:2];

    -[BSMutableSettings setFlag:forSetting:](v6->_settings, "setFlag:forSetting:", [v4 decodeIntegerForKey:@"isBackgroundActivityEnabled"], 3);
  }

  return v6;
}

@end