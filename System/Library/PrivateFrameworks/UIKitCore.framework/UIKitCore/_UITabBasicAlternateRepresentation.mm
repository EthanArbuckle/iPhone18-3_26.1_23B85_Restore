@interface _UITabBasicAlternateRepresentation
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_UITabBasicAlternateRepresentation)initWithTitle:(id)title image:(id)image;
@end

@implementation _UITabBasicAlternateRepresentation

- (_UITabBasicAlternateRepresentation)initWithTitle:(id)title image:(id)image
{
  titleCopy = title;
  imageCopy = image;
  v11.receiver = self;
  v11.super_class = _UITabBasicAlternateRepresentation;
  v8 = [(_UITabBasicAlternateRepresentation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(_UITabBasicAlternateRepresentation *)v8 setTitle:titleCopy];
    [(_UITabBasicAlternateRepresentation *)v9 setImage:imageCopy];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      title = [(_UITabBasicAlternateRepresentation *)v5 title];
      title2 = [(_UITabBasicAlternateRepresentation *)self title];
      v8 = [title isEqual:title2];

      if (v8)
      {
        image = [(_UITabBasicAlternateRepresentation *)v5 image];
        image2 = [(_UITabBasicAlternateRepresentation *)self image];
        v11 = [image isEqual:image2];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (NSString)description
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(sel_title);
  v8[0] = v3;
  v4 = NSStringFromSelector(sel_image);
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [UIDescriptionBuilder descriptionForObject:self keys:v5];

  return v6;
}

@end