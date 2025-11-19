@interface PRPosterContentCustomStyle
- (BOOL)isEqual:(id)a3;
- (PRPosterContentCustomStyle)initWithCoder:(id)a3;
- (PRPosterContentCustomStyle)initWithIdentifier:(id)a3 localizedName:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)applyStyleWithRenderer:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRPosterContentCustomStyle

- (PRPosterContentCustomStyle)initWithIdentifier:(id)a3 localizedName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PRPosterContentCustomStyle;
  v8 = [(PRPosterContentCustomStyle *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v7 copy];
    localizedName = v8->_localizedName;
    v8->_localizedName = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([(NSString *)self->_localizedName isEqual:v5->_localizedName])
      {
        v6 = [(NSString *)self->_identifier isEqual:v5->_identifier];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E698E6B8]);
  v4 = [v3 appendString:self->_identifier];
  v5 = [v3 appendString:self->_localizedName];
  v6 = [v3 hash];

  return v6;
}

- (void)applyStyleWithRenderer:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 renderCustomStyle:self];
  }
}

- (PRPosterContentCustomStyle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];

  v7 = [(PRPosterContentCustomStyle *)self initWithIdentifier:v5 localizedName:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_localizedName forKey:@"localizedName"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PRPosterContentCustomStyle allocWithZone:a3];
  identifier = self->_identifier;
  localizedName = self->_localizedName;

  return [(PRPosterContentCustomStyle *)v4 initWithIdentifier:identifier localizedName:localizedName];
}

@end