@interface PFParallaxPaletteSuggestion
+ (id)dictionaryWithPaletteSuggestion:(id)a3;
+ (id)paletteSuggestionWithDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSuggestion:(id)a3;
- (PFParallaxPaletteSuggestion)initWithCoder:(id)a3;
- (PFParallaxPaletteSuggestion)initWithPrimaryColor:(id)a3 secondaryColor:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PFParallaxPaletteSuggestion

- (PFParallaxPaletteSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryColor"];
  if ([v4 decodeBoolForKey:@"hasSecondaryColor"])
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryColor"];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PFParallaxPaletteSuggestion *)self initWithPrimaryColor:v5 secondaryColor:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(PFParallaxPaletteSuggestion *)self secondaryColor];

  v5 = [(PFParallaxPaletteSuggestion *)self primaryColor];
  [v7 encodeObject:v5 forKey:@"primaryColor"];

  [v7 encodeBool:v4 != 0 forKey:@"hasSecondaryColor"];
  if (v4)
  {
    v6 = [(PFParallaxPaletteSuggestion *)self secondaryColor];
    [v7 encodeObject:v6 forKey:@"secondaryColor"];
  }
}

- (BOOL)isEqualToSuggestion:(id)a3
{
  v4 = a3;
  v5 = [(PFParallaxPaletteSuggestion *)self primaryColor];
  v6 = [v4 primaryColor];
  v7 = [v5 isEqualToParallaxColor:v6];

  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = [(PFParallaxPaletteSuggestion *)self secondaryColor];
  if (v8)
  {

    goto LABEL_4;
  }

  v14 = [v4 secondaryColor];

  if (v14)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

LABEL_4:
  v9 = [(PFParallaxPaletteSuggestion *)self secondaryColor];
  if (v9)
  {
    v10 = v9;
    v11 = [(PFParallaxPaletteSuggestion *)self secondaryColor];
    v12 = [v4 secondaryColor];
    v13 = [v11 isEqualToParallaxColor:v12];
  }

  else
  {
    v13 = 1;
  }

LABEL_8:

  return v13 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PFParallaxPaletteSuggestion *)self isEqualToSuggestion:v4];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PFParallaxPaletteSuggestion *)self primaryColor];
  v6 = [(PFParallaxPaletteSuggestion *)self secondaryColor];
  v7 = [v3 stringWithFormat:@"<%@: %p, primary: %@, secondary: %@>", v4, self, v5, v6];

  return v7;
}

- (PFParallaxPaletteSuggestion)initWithPrimaryColor:(id)a3 secondaryColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PFParallaxPaletteSuggestion;
  v8 = [(PFParallaxPaletteSuggestion *)&v13 init];
  primaryColor = v8->_primaryColor;
  v8->_primaryColor = v6;
  v10 = v6;

  secondaryColor = v8->_secondaryColor;
  v8->_secondaryColor = v7;

  return v8;
}

+ (id)paletteSuggestionWithDictionary:(id)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"primaryColor"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (!a4)
    {
      v11 = 0;
      goto LABEL_20;
    }

    v10 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A278];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid primary color array: %@", v5];
    v18[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [v10 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v8];
    *a4 = v11 = 0;
    goto LABEL_18;
  }

  v7 = [PFParallaxColor colorWithRGBValues:v6 error:a4];
  if (v7)
  {
    v8 = [v5 objectForKeyedSubscript:@"secondaryColor"];
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
LABEL_17:
          v11 = 0;
          goto LABEL_18;
        }

        v12 = MEMORY[0x1E696ABC0];
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid secondary color array: %@", v5, *MEMORY[0x1E696A278]];
        v16 = v9;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        *a4 = [v12 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v13];

        v11 = 0;
LABEL_16:

LABEL_18:
        goto LABEL_19;
      }

      v9 = [PFParallaxColor colorWithRGBValues:v8 error:a4];
      if (!v9)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = [[PFParallaxPaletteSuggestion alloc] initWithPrimaryColor:v7 secondaryColor:v9];
    goto LABEL_16;
  }

  v11 = 0;
LABEL_19:

LABEL_20:

  return v11;
}

+ (id)dictionaryWithPaletteSuggestion:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  v5 = [v3 primaryColor];
  v6 = [v5 RGBValues];
  [v4 setObject:v6 forKeyedSubscript:@"primaryColor"];

  v7 = [v3 secondaryColor];

  if (v7)
  {
    v8 = [v3 secondaryColor];
    v9 = [v8 RGBValues];
    [v4 setObject:v9 forKeyedSubscript:@"secondaryColor"];
  }

  return v4;
}

@end