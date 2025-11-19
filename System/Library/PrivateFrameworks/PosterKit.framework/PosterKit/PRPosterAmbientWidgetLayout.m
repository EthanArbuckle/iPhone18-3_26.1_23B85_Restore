@interface PRPosterAmbientWidgetLayout
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToWidgetLayout:(id)a3;
- (NSString)description;
- (PRPosterAmbientWidgetLayout)initWithBSXPCCoder:(id)a3;
- (PRPosterAmbientWidgetLayout)initWithCoder:(id)a3;
- (PRPosterAmbientWidgetLayout)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRPosterAmbientWidgetLayout

- (PRPosterAmbientWidgetLayout)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10.receiver = self;
    v10.super_class = PRPosterAmbientWidgetLayout;
    v5 = [(PRPosterAmbientWidgetLayout *)&v10 init];
    if (v5)
    {
      v6 = [v4 copy];
      widgetLayoutIconState = v5->_widgetLayoutIconState;
      v5->_widgetLayoutIconState = v6;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqualToWidgetLayout:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else if (v4)
  {
    v6 = [(NSDictionary *)self->_widgetLayoutIconState isEqual:v4->_widgetLayoutIconState];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
    v8 = v4 && (objc_opt_self(), v6 = {;
  }

  return v8;
}

- (NSString)description
{
  v2 = [MEMORY[0x1E698E680] builderWithObject:self];
  v3 = PRSPosterUpdateAmbientWidgetsIdentifiers();
  v4 = [v2 appendObject:v3 withName:@"widgetLayoutIconState"];

  v5 = [v2 build];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v3 = MEMORY[0x1E696AE40];
  widgetLayoutIconState = self->_widgetLayoutIconState;
  v5 = a3;
  v6 = [v3 dataWithPropertyList:widgetLayoutIconState format:200 options:0 error:0];
  [v5 encodeObject:v6 forKey:@"_widgetLayoutIconStateData"];
}

- (PRPosterAmbientWidgetLayout)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"_widgetLayoutIconStateData"];

  v7 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:0];
  v8 = [(PRPosterAmbientWidgetLayout *)self initWithDictionary:v7];

  return v8;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v3 = MEMORY[0x1E696AE40];
  widgetLayoutIconState = self->_widgetLayoutIconState;
  v5 = a3;
  v6 = [v3 dataWithPropertyList:widgetLayoutIconState format:200 options:0 error:0];
  [v5 encodeObject:v6 forKey:@"_widgetLayoutIconStateData"];
}

- (PRPosterAmbientWidgetLayout)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"_widgetLayoutIconStateData"];

  v7 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:0];
  v8 = [(PRPosterAmbientWidgetLayout *)self initWithDictionary:v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PRPosterAmbientWidgetLayout alloc];
  widgetLayoutIconState = self->_widgetLayoutIconState;

  return [(PRPosterAmbientWidgetLayout *)v4 initWithDictionary:widgetLayoutIconState];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [PRMutablePosterAmbientWidgetLayout allocWithZone:a3];
  widgetLayoutIconState = self->_widgetLayoutIconState;

  return [(PRPosterAmbientWidgetLayout *)v4 initWithDictionary:widgetLayoutIconState];
}

@end