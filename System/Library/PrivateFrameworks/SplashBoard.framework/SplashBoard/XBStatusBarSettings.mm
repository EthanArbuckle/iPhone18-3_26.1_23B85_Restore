@interface XBStatusBarSettings
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (XBStatusBarSettings)init;
- (XBStatusBarSettings)initWithCoder:(id)coder;
- (id)_initWithBSSettings:(id)settings;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (int64_t)style;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XBStatusBarSettings

- (int64_t)style
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:2];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
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

- (id)_initWithBSSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = XBStatusBarSettings;
  v5 = [(XBStatusBarSettings *)&v9 init];
  if (v5)
  {
    v6 = [settingsCopy mutableCopy];
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
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(XBStatusBarSettings *)self isHidden], v5 == [(XBStatusBarSettings *)equalCopy isHidden]) && (v6 = [(XBStatusBarSettings *)self isBackgroundActivityEnabled], v6 == [(XBStatusBarSettings *)equalCopy isBackgroundActivityEnabled]) && (v7 = [(XBStatusBarSettings *)self style], v7 == [(XBStatusBarSettings *)equalCopy style]))
    {
      v8 = [(BSMutableSettings *)self->_settings isEqual:equalCopy->_settings];
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
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendBool:{-[XBStatusBarSettings isHidden](self, "isHidden")}];
  v5 = [builder appendBool:{-[XBStatusBarSettings isBackgroundActivityEnabled](self, "isBackgroundActivityEnabled")}];
  v6 = [builder appendInteger:{-[XBStatusBarSettings style](self, "style")}];
  v7 = [builder appendObject:self->_settings];
  v8 = [builder hash];

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [XBMutableStatusBarSettings alloc];
  settings = self->_settings;

  return [(XBStatusBarSettings *)v4 _initWithBSSettings:settings];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting - 1 > 2)
  {
    return 0;
  }

  else
  {
    return off_279CF9E70[setting - 1];
  }
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  v7 = objectCopy;
  switch(setting)
  {
    case 3uLL:
      goto LABEL_4;
    case 2uLL:
      v8 = [MEMORY[0x277D75128] stringForStatusBarStyle:{objc_msgSend(objectCopy, "integerValue")}];
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

- (void)encodeWithCoder:(id)coder
{
  settings = self->_settings;
  coderCopy = coder;
  [coderCopy encodeInteger:-[BSMutableSettings flagForSetting:](settings forKey:{"flagForSetting:", 1), @"hidden"}];
  v5 = [(BSMutableSettings *)self->_settings objectForSetting:2];
  [coderCopy encodeObject:v5 forKey:@"style"];

  [coderCopy encodeInteger:-[BSMutableSettings flagForSetting:](self->_settings forKey:{"flagForSetting:", 3), @"isBackgroundActivityEnabled"}];
}

- (XBStatusBarSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(XBStatusBarSettings *)self init];
  v6 = v5;
  if (v5)
  {
    -[BSMutableSettings setFlag:forSetting:](v5->_settings, "setFlag:forSetting:", [coderCopy decodeIntegerForKey:@"hidden"], 1);
    settings = v6->_settings;
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"style"];
    [(BSMutableSettings *)settings setObject:v8 forSetting:2];

    -[BSMutableSettings setFlag:forSetting:](v6->_settings, "setFlag:forSetting:", [coderCopy decodeIntegerForKey:@"isBackgroundActivityEnabled"], 3);
  }

  return v6;
}

@end