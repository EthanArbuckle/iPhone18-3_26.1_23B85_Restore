@interface PRPosterContentLUTStyle
- (BOOL)isEqual:(id)equal;
- (NSString)nonVariatedIdentifier;
- (PRPosterContentLUTStyle)initWithCoder:(id)coder;
- (PRPosterContentLUTStyle)initWithLUTIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)applyStyleWithRenderer:(id)renderer;
@end

@implementation PRPosterContentLUTStyle

- (PRPosterContentLUTStyle)initWithLUTIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PRPosterContentLUTStyle;
  v6 = [(PRPosterContentLUTStyle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lutIdentifier, identifier);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      lutIdentifier = [(PRPosterContentLUTStyle *)equalCopy lutIdentifier];
      lutIdentifier2 = [(PRPosterContentLUTStyle *)self lutIdentifier];
      v7 = [lutIdentifier isEqual:lutIdentifier2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E698E6B8]);
  v4 = [v3 appendString:self->_lutIdentifier];
  v5 = [v3 hash];

  return v5;
}

- (NSString)nonVariatedIdentifier
{
  v3 = _PRPosterContentStyleStringForType([(PRPosterContentLUTStyle *)self type]);
  v4 = [v3 stringByAppendingFormat:@"-%@", self->_lutIdentifier];

  return v4;
}

- (void)applyStyleWithRenderer:(id)renderer
{
  rendererCopy = renderer;
  if (objc_opt_respondsToSelector())
  {
    [rendererCopy renderLUTStyle:self];
  }
}

- (PRPosterContentLUTStyle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lutIdentifier"];

  v6 = [(PRPosterContentLUTStyle *)self initWithLUTIdentifier:v5];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PRPosterContentLUTStyle alloc];
  lutIdentifier = self->_lutIdentifier;

  return [(PRPosterContentLUTStyle *)v4 initWithLUTIdentifier:lutIdentifier];
}

@end