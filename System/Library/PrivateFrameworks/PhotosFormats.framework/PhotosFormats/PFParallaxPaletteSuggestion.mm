@interface PFParallaxPaletteSuggestion
+ (id)dictionaryWithPaletteSuggestion:(id)suggestion;
+ (id)paletteSuggestionWithDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSuggestion:(id)suggestion;
- (PFParallaxPaletteSuggestion)initWithCoder:(id)coder;
- (PFParallaxPaletteSuggestion)initWithPrimaryColor:(id)color secondaryColor:(id)secondaryColor;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PFParallaxPaletteSuggestion

- (PFParallaxPaletteSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryColor"];
  if ([coderCopy decodeBoolForKey:@"hasSecondaryColor"])
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryColor"];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PFParallaxPaletteSuggestion *)self initWithPrimaryColor:v5 secondaryColor:v6];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  secondaryColor = [(PFParallaxPaletteSuggestion *)self secondaryColor];

  primaryColor = [(PFParallaxPaletteSuggestion *)self primaryColor];
  [coderCopy encodeObject:primaryColor forKey:@"primaryColor"];

  [coderCopy encodeBool:secondaryColor != 0 forKey:@"hasSecondaryColor"];
  if (secondaryColor)
  {
    secondaryColor2 = [(PFParallaxPaletteSuggestion *)self secondaryColor];
    [coderCopy encodeObject:secondaryColor2 forKey:@"secondaryColor"];
  }
}

- (BOOL)isEqualToSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  primaryColor = [(PFParallaxPaletteSuggestion *)self primaryColor];
  primaryColor2 = [suggestionCopy primaryColor];
  v7 = [primaryColor isEqualToParallaxColor:primaryColor2];

  if (!v7)
  {
    goto LABEL_7;
  }

  secondaryColor = [(PFParallaxPaletteSuggestion *)self secondaryColor];
  if (secondaryColor)
  {

    goto LABEL_4;
  }

  secondaryColor2 = [suggestionCopy secondaryColor];

  if (secondaryColor2)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

LABEL_4:
  secondaryColor3 = [(PFParallaxPaletteSuggestion *)self secondaryColor];
  if (secondaryColor3)
  {
    v10 = secondaryColor3;
    secondaryColor4 = [(PFParallaxPaletteSuggestion *)self secondaryColor];
    secondaryColor5 = [suggestionCopy secondaryColor];
    v13 = [secondaryColor4 isEqualToParallaxColor:secondaryColor5];
  }

  else
  {
    v13 = 1;
  }

LABEL_8:

  return v13 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PFParallaxPaletteSuggestion *)self isEqualToSuggestion:equalCopy];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  primaryColor = [(PFParallaxPaletteSuggestion *)self primaryColor];
  secondaryColor = [(PFParallaxPaletteSuggestion *)self secondaryColor];
  v7 = [v3 stringWithFormat:@"<%@: %p, primary: %@, secondary: %@>", v4, self, primaryColor, secondaryColor];

  return v7;
}

- (PFParallaxPaletteSuggestion)initWithPrimaryColor:(id)color secondaryColor:(id)secondaryColor
{
  colorCopy = color;
  secondaryColorCopy = secondaryColor;
  v13.receiver = self;
  v13.super_class = PFParallaxPaletteSuggestion;
  v8 = [(PFParallaxPaletteSuggestion *)&v13 init];
  primaryColor = v8->_primaryColor;
  v8->_primaryColor = colorCopy;
  v10 = colorCopy;

  secondaryColor = v8->_secondaryColor;
  v8->_secondaryColor = secondaryColorCopy;

  return v8;
}

+ (id)paletteSuggestionWithDictionary:(id)dictionary error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"primaryColor"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (!error)
    {
      v11 = 0;
      goto LABEL_20;
    }

    v10 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A278];
    dictionaryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid primary color array: %@", dictionaryCopy];
    v18[0] = dictionaryCopy;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [v10 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v8];
    *error = v11 = 0;
    goto LABEL_18;
  }

  dictionaryCopy = [PFParallaxColor colorWithRGBValues:v6 error:error];
  if (dictionaryCopy)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"secondaryColor"];
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
LABEL_17:
          v11 = 0;
          goto LABEL_18;
        }

        v12 = MEMORY[0x1E696ABC0];
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid secondary color array: %@", dictionaryCopy, *MEMORY[0x1E696A278]];
        v16 = v9;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        *error = [v12 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v13];

        v11 = 0;
LABEL_16:

LABEL_18:
        goto LABEL_19;
      }

      v9 = [PFParallaxColor colorWithRGBValues:v8 error:error];
      if (!v9)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = [[PFParallaxPaletteSuggestion alloc] initWithPrimaryColor:dictionaryCopy secondaryColor:v9];
    goto LABEL_16;
  }

  v11 = 0;
LABEL_19:

LABEL_20:

  return v11;
}

+ (id)dictionaryWithPaletteSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  primaryColor = [suggestionCopy primaryColor];
  rGBValues = [primaryColor RGBValues];
  [v4 setObject:rGBValues forKeyedSubscript:@"primaryColor"];

  secondaryColor = [suggestionCopy secondaryColor];

  if (secondaryColor)
  {
    secondaryColor2 = [suggestionCopy secondaryColor];
    rGBValues2 = [secondaryColor2 RGBValues];
    [v4 setObject:rGBValues2 forKeyedSubscript:@"secondaryColor"];
  }

  return v4;
}

@end