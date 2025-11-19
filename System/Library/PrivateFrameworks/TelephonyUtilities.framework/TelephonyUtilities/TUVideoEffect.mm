@interface TUVideoEffect
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEffect:(id)a3;
- (TUVideoEffect)init;
- (TUVideoEffect)initWithName:(id)a3 thumbnailImage:(id)a4;
- (unint64_t)hash;
@end

@implementation TUVideoEffect

- (TUVideoEffect)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"TUVideoEffect.m" lineNumber:20 description:{@"%s is not available. Use a designated initializer instead.", "-[TUVideoEffect init]"}];

  return 0;
}

- (TUVideoEffect)initWithName:(id)a3 thumbnailImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = TUVideoEffect;
  v8 = [(TUVideoEffect *)&v12 init];
  if (v8)
  {
    if (v6)
    {
      if (v7)
      {
LABEL_4:
        v9 = [v6 copy];
        name = v8->_name;
        v8->_name = v9;

        objc_storeStrong(&v8->_thumbnailImage, a4);
        goto LABEL_5;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[TUVideoEffect initWithName:thumbnailImage:]", @"name"}];
      if (v7)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUVideoEffect *)self isEqualToEffect:v4];

  return v5;
}

- (BOOL)isEqualToEffect:(id)a3
{
  v4 = a3;
  v5 = [(TUVideoEffect *)self name];
  v6 = [v4 name];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(TUVideoEffect *)self thumbnailImage];
    v8 = [v4 thumbnailImage];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(TUVideoEffect *)self name];
  v4 = [v3 hash];
  v5 = [(TUVideoEffect *)self thumbnailImage];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end