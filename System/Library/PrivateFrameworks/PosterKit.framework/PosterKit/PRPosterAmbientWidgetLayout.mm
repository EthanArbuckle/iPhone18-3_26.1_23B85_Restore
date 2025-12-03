@interface PRPosterAmbientWidgetLayout
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToWidgetLayout:(id)layout;
- (NSString)description;
- (PRPosterAmbientWidgetLayout)initWithBSXPCCoder:(id)coder;
- (PRPosterAmbientWidgetLayout)initWithCoder:(id)coder;
- (PRPosterAmbientWidgetLayout)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRPosterAmbientWidgetLayout

- (PRPosterAmbientWidgetLayout)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v10.receiver = self;
    v10.super_class = PRPosterAmbientWidgetLayout;
    v5 = [(PRPosterAmbientWidgetLayout *)&v10 init];
    if (v5)
    {
      v6 = [dictionaryCopy copy];
      widgetLayoutIconState = v5->_widgetLayoutIconState;
      v5->_widgetLayoutIconState = v6;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqualToWidgetLayout:(id)layout
{
  layoutCopy = layout;
  v5 = layoutCopy;
  if (self == layoutCopy)
  {
    v6 = 1;
  }

  else if (layoutCopy)
  {
    v6 = [(NSDictionary *)self->_widgetLayoutIconState isEqual:layoutCopy->_widgetLayoutIconState];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
    v8 = equalCopy && (objc_opt_self(), v6 = {;
  }

  return v8;
}

- (NSString)description
{
  v2 = [MEMORY[0x1E698E680] builderWithObject:self];
  v3 = PRSPosterUpdateAmbientWidgetsIdentifiers();
  v4 = [v2 appendObject:v3 withName:@"widgetLayoutIconState"];

  build = [v2 build];

  return build;
}

- (void)encodeWithCoder:(id)coder
{
  v3 = MEMORY[0x1E696AE40];
  widgetLayoutIconState = self->_widgetLayoutIconState;
  coderCopy = coder;
  v6 = [v3 dataWithPropertyList:widgetLayoutIconState format:200 options:0 error:0];
  [coderCopy encodeObject:v6 forKey:@"_widgetLayoutIconStateData"];
}

- (PRPosterAmbientWidgetLayout)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"_widgetLayoutIconStateData"];

  v7 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:0];
  v8 = [(PRPosterAmbientWidgetLayout *)self initWithDictionary:v7];

  return v8;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v3 = MEMORY[0x1E696AE40];
  widgetLayoutIconState = self->_widgetLayoutIconState;
  coderCopy = coder;
  v6 = [v3 dataWithPropertyList:widgetLayoutIconState format:200 options:0 error:0];
  [coderCopy encodeObject:v6 forKey:@"_widgetLayoutIconStateData"];
}

- (PRPosterAmbientWidgetLayout)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"_widgetLayoutIconStateData"];

  v7 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:0];
  v8 = [(PRPosterAmbientWidgetLayout *)self initWithDictionary:v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PRPosterAmbientWidgetLayout alloc];
  widgetLayoutIconState = self->_widgetLayoutIconState;

  return [(PRPosterAmbientWidgetLayout *)v4 initWithDictionary:widgetLayoutIconState];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PRMutablePosterAmbientWidgetLayout allocWithZone:zone];
  widgetLayoutIconState = self->_widgetLayoutIconState;

  return [(PRPosterAmbientWidgetLayout *)v4 initWithDictionary:widgetLayoutIconState];
}

@end