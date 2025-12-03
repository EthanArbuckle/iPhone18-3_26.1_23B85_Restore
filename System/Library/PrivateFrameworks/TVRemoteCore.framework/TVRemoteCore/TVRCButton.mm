@interface TVRCButton
+ (BOOL)_isMediaButtonEvent:(id)event;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToButton:(id)button;
- (TVRCButton)initWithCoder:(id)coder;
- (id)_initWithButtonType:(int64_t)type hasTapAction:(BOOL)action properties:(id)properties;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TVRCButton

- (TVRCButton)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TVRCButton;
  v5 = [(TVRCButton *)&v13 init];
  if (v5)
  {
    v5->_buttonType = [coderCopy decodeIntegerForKey:@"buttonType"];
    v5->_hasTapAction = [coderCopy decodeBoolForKey:@"hasTapAction"];
    v5->_enabled = [coderCopy decodeBoolForKey:@"enabled"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"properties"];
    properties = v5->_properties;
    v5->_properties = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  buttonType = self->_buttonType;
  coderCopy = coder;
  [coderCopy encodeInteger:buttonType forKey:@"buttonType"];
  [coderCopy encodeBool:self->_hasTapAction forKey:@"hasTapAction"];
  [coderCopy encodeBool:self->_enabled forKey:@"enabled"];
  [coderCopy encodeObject:self->_properties forKey:@"properties"];
}

- (id)_initWithButtonType:(int64_t)type hasTapAction:(BOOL)action properties:(id)properties
{
  propertiesCopy = properties;
  v13.receiver = self;
  v13.super_class = TVRCButton;
  v9 = [(TVRCButton *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_buttonType = type;
    v9->_hasTapAction = action;
    if (propertiesCopy)
    {
      v11 = propertiesCopy;
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

+ (BOOL)_isMediaButtonEvent:(id)event
{
  v3 = MEMORY[0x277CBEB98];
  eventCopy = event;
  v5 = [v3 setWithArray:&unk_287E66CB8];
  v6 = MEMORY[0x277CCABB0];
  button = [eventCopy button];

  v8 = [v6 numberWithInteger:{objc_msgSend(button, "buttonType")}];
  LOBYTE(v6) = [v5 containsObject:v8];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TVRCButton *)self isEqualToButton:equalCopy];

  return v5;
}

- (BOOL)isEqualToButton:(id)button
{
  buttonCopy = button;
  v5 = buttonCopy;
  v6 = self->_buttonType == *(buttonCopy + 2) && self->_hasTapAction == buttonCopy[9] && self->_enabled == buttonCopy[8] && [(NSDictionary *)self->_properties isEqualToDictionary:*(buttonCopy + 3)];

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