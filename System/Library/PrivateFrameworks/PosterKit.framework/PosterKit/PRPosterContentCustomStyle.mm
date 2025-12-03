@interface PRPosterContentCustomStyle
- (BOOL)isEqual:(id)equal;
- (PRPosterContentCustomStyle)initWithCoder:(id)coder;
- (PRPosterContentCustomStyle)initWithIdentifier:(id)identifier localizedName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)applyStyleWithRenderer:(id)renderer;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRPosterContentCustomStyle

- (PRPosterContentCustomStyle)initWithIdentifier:(id)identifier localizedName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = PRPosterContentCustomStyle;
  v8 = [(PRPosterContentCustomStyle *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [nameCopy copy];
    localizedName = v8->_localizedName;
    v8->_localizedName = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (void)applyStyleWithRenderer:(id)renderer
{
  rendererCopy = renderer;
  if (objc_opt_respondsToSelector())
  {
    [rendererCopy renderCustomStyle:self];
  }
}

- (PRPosterContentCustomStyle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];

  v7 = [(PRPosterContentCustomStyle *)self initWithIdentifier:v5 localizedName:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_localizedName forKey:@"localizedName"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PRPosterContentCustomStyle allocWithZone:zone];
  identifier = self->_identifier;
  localizedName = self->_localizedName;

  return [(PRPosterContentCustomStyle *)v4 initWithIdentifier:identifier localizedName:localizedName];
}

@end