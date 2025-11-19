@interface TVRCButton
+ (BOOL)_isMediaButtonEvent:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToButton:(id)a3;
- (TVRCButton)initWithCoder:(id)a3;
- (id)_initWithButtonType:(int64_t)a3 hasTapAction:(BOOL)a4 properties:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TVRCButton

- (TVRCButton)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TVRCButton;
  v5 = [(TVRCButton *)&v13 init];
  if (v5)
  {
    v5->_buttonType = [v4 decodeIntegerForKey:@"buttonType"];
    v5->_hasTapAction = [v4 decodeBoolForKey:@"hasTapAction"];
    v5->_enabled = [v4 decodeBoolForKey:@"enabled"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"properties"];
    properties = v5->_properties;
    v5->_properties = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  buttonType = self->_buttonType;
  v5 = a3;
  [v5 encodeInteger:buttonType forKey:@"buttonType"];
  [v5 encodeBool:self->_hasTapAction forKey:@"hasTapAction"];
  [v5 encodeBool:self->_enabled forKey:@"enabled"];
  [v5 encodeObject:self->_properties forKey:@"properties"];
}

- (id)_initWithButtonType:(int64_t)a3 hasTapAction:(BOOL)a4 properties:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = TVRCButton;
  v9 = [(TVRCButton *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_buttonType = a3;
    v9->_hasTapAction = a4;
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = MEMORY[0x277CBEC10];
    }

    objc_storeStrong(&v9->_properties, v11);
    v10->_enabled = 1;
  }

  return v10;
}

+ (BOOL)_isMediaButtonEvent:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = [v3 setWithArray:&unk_287E66CB8];
  v6 = MEMORY[0x277CCABB0];
  v7 = [v4 button];

  v8 = [v6 numberWithInteger:{objc_msgSend(v7, "buttonType")}];
  LOBYTE(v6) = [v5 containsObject:v8];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TVRCButton *)self isEqualToButton:v4];

  return v5;
}

- (BOOL)isEqualToButton:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = self->_buttonType == *(v4 + 2) && self->_hasTapAction == v4[9] && self->_enabled == v4[8] && [(NSDictionary *)self->_properties isEqualToDictionary:*(v4 + 3)];

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = TVRCButtonTypeDescription(self->_buttonType);
  v6 = v5;
  if (self->_hasTapAction)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v3 initWithFormat:@"<%@ %p; type=%@; hasTapAction=%@", v4, self, v5, v7];

  if (!self->_enabled)
  {
    [v8 appendString:@"; disabled"];
  }

  if ([(NSDictionary *)self->_properties count])
  {
    [v8 appendFormat:@"; properties=%@", self->_properties];
  }

  [v8 appendString:@">"];
  v9 = [v8 copy];

  return v9;
}

@end