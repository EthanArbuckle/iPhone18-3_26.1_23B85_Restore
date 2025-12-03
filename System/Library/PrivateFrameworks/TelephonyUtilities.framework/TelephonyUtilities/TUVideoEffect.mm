@interface TUVideoEffect
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEffect:(id)effect;
- (TUVideoEffect)init;
- (TUVideoEffect)initWithName:(id)name thumbnailImage:(id)image;
- (unint64_t)hash;
@end

@implementation TUVideoEffect

- (TUVideoEffect)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"TUVideoEffect.m" lineNumber:20 description:{@"%s is not available. Use a designated initializer instead.", "-[TUVideoEffect init]"}];

  return 0;
}

- (TUVideoEffect)initWithName:(id)name thumbnailImage:(id)image
{
  nameCopy = name;
  imageCopy = image;
  v12.receiver = self;
  v12.super_class = TUVideoEffect;
  v8 = [(TUVideoEffect *)&v12 init];
  if (v8)
  {
    if (nameCopy)
    {
      if (imageCopy)
      {
LABEL_4:
        v9 = [nameCopy copy];
        name = v8->_name;
        v8->_name = v9;

        objc_storeStrong(&v8->_thumbnailImage, image);
        goto LABEL_5;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[TUVideoEffect initWithName:thumbnailImage:]", @"name"}];
      if (imageCopy)
      {
        goto LABEL_4;
      }
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[TUVideoEffect initWithName:thumbnailImage:]", @"thumbnailImage"}];
    goto LABEL_4;
  }

LABEL_5:

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUVideoEffect *)self isEqualToEffect:equalCopy];

  return v5;
}

- (BOOL)isEqualToEffect:(id)effect
{
  effectCopy = effect;
  name = [(TUVideoEffect *)self name];
  name2 = [effectCopy name];
  if ([name isEqualToString:name2])
  {
    thumbnailImage = [(TUVideoEffect *)self thumbnailImage];
    thumbnailImage2 = [effectCopy thumbnailImage];
    v9 = [thumbnailImage isEqual:thumbnailImage2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  name = [(TUVideoEffect *)self name];
  v4 = [name hash];
  thumbnailImage = [(TUVideoEffect *)self thumbnailImage];
  v6 = [thumbnailImage hash];

  return v6 ^ v4;
}

@end