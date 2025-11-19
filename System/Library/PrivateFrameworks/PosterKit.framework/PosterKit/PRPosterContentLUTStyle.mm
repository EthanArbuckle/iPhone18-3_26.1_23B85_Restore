@interface PRPosterContentLUTStyle
- (BOOL)isEqual:(id)a3;
- (NSString)nonVariatedIdentifier;
- (PRPosterContentLUTStyle)initWithCoder:(id)a3;
- (PRPosterContentLUTStyle)initWithLUTIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)applyStyleWithRenderer:(id)a3;
@end

@implementation PRPosterContentLUTStyle

- (PRPosterContentLUTStyle)initWithLUTIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PRPosterContentLUTStyle;
  v6 = [(PRPosterContentLUTStyle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lutIdentifier, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PRPosterContentLUTStyle *)v4 lutIdentifier];
      v6 = [(PRPosterContentLUTStyle *)self lutIdentifier];
      v7 = [v5 isEqual:v6];
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

- (void)applyStyleWithRenderer:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 renderLUTStyle:self];
  }
}

- (PRPosterContentLUTStyle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lutIdentifier"];

  v6 = [(PRPosterContentLUTStyle *)self initWithLUTIdentifier:v5];
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PRPosterContentLUTStyle alloc];
  lutIdentifier = self->_lutIdentifier;

  return [(PRPosterContentLUTStyle *)v4 initWithLUTIdentifier:lutIdentifier];
}

@end