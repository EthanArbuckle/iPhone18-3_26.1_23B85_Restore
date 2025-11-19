@interface _UITabBasicAlternateRepresentation
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_UITabBasicAlternateRepresentation)initWithTitle:(id)a3 image:(id)a4;
@end

@implementation _UITabBasicAlternateRepresentation

- (_UITabBasicAlternateRepresentation)initWithTitle:(id)a3 image:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _UITabBasicAlternateRepresentation;
  v8 = [(_UITabBasicAlternateRepresentation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(_UITabBasicAlternateRepresentation *)v8 setTitle:v6];
    [(_UITabBasicAlternateRepresentation *)v9 setImage:v7];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(_UITabBasicAlternateRepresentation *)v5 title];
      v7 = [(_UITabBasicAlternateRepresentation *)self title];
      v8 = [v6 isEqual:v7];

      if (v8)
      {
        v9 = [(_UITabBasicAlternateRepresentation *)v5 image];
        v10 = [(_UITabBasicAlternateRepresentation *)self image];
        v11 = [v9 isEqual:v10];
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