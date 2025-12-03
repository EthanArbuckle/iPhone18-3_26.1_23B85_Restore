@interface SXSanFranciscoFontFamily
- (id)fontFaceWithAttributes:(id)attributes size:(int64_t)size;
@end

@implementation SXSanFranciscoFontFamily

- (id)fontFaceWithAttributes:(id)attributes size:(int64_t)size
{
  v26[1] = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:*MEMORY[0x1E69DB930] forKey:*MEMORY[0x1E69DB940]];
  weight = [attributesCopy weight];
  if (weight <= 499)
  {
    if (weight <= 299)
    {
      if (weight != 100)
      {
        if (weight == 200)
        {
          v7 = MEMORY[0x1E69DB998];
          goto LABEL_21;
        }

        goto LABEL_12;
      }

      v7 = MEMORY[0x1E69DB988];
      goto LABEL_21;
    }

    if (weight == 300)
    {
      v7 = MEMORY[0x1E69DB968];
      goto LABEL_21;
    }

LABEL_12:
    v7 = MEMORY[0x1E69DB978];
    goto LABEL_21;
  }

  if (weight <= 699)
  {
    if (weight == 500)
    {
      v7 = MEMORY[0x1E69DB970];
      goto LABEL_21;
    }

    if (weight == 600)
    {
      v7 = MEMORY[0x1E69DB980];
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  switch(weight)
  {
    case 700:
      v7 = MEMORY[0x1E69DB958];
      break;
    case 800:
      v7 = MEMORY[0x1E69DB960];
      break;
    case 900:
      v7 = MEMORY[0x1E69DB950];
      break;
    default:
      goto LABEL_12;
  }

LABEL_21:
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:*v7];
  [dictionary setObject:v8 forKey:*MEMORY[0x1E69DB990]];

  width = [attributesCopy width];
  if (width > 5)
  {
    if (width > 8)
    {
      switch(width)
      {
        case 9:
          v10 = MEMORY[0x1E6965990];
          goto LABEL_45;
        case 10:
          v10 = MEMORY[0x1E69659A8];
          goto LABEL_45;
        case 11:
          v11 = 0.4;
          goto LABEL_46;
      }
    }

    else
    {
      if (width == 6)
      {
        v10 = MEMORY[0x1E69659B0];
        goto LABEL_45;
      }

      if (width != 7)
      {
        v10 = MEMORY[0x1E69659B8];
        goto LABEL_45;
      }
    }

LABEL_38:
    v10 = MEMORY[0x1E69659C0];
    goto LABEL_45;
  }

  if (width > 2)
  {
    if (width == 3)
    {
      v10 = MEMORY[0x1E6965980];
    }

    else if (width == 4)
    {
      v10 = MEMORY[0x1E69659A0];
    }

    else
    {
      v10 = MEMORY[0x1E6965988];
    }

    goto LABEL_45;
  }

  if (!width)
  {
    v10 = MEMORY[0x1E69659D0];
    goto LABEL_45;
  }

  if (width != 1 && width != 2)
  {
    goto LABEL_38;
  }

  v10 = MEMORY[0x1E6965998];
LABEL_45:
  v11 = *v10;
LABEL_46:
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  [dictionary setObject:v12 forKey:*MEMORY[0x1E69DB9C0]];

  style = [attributesCopy style];
  v14 = 0.06944444;
  if ((style - 1) >= 2)
  {
    v14 = 0.0;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
  [dictionary setObject:v15 forKey:*MEMORY[0x1E69DB910]];

  grade = [attributesCopy grade];

  if (grade)
  {
    grade2 = [attributesCopy grade];
    [dictionary setObject:grade2 forKey:*MEMORY[0x1E69DB948]];
  }

  v25 = *MEMORY[0x1E69DB8F0];
  v26[0] = dictionary;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v19 = [MEMORY[0x1E69DB880] fontDescriptorWithFontAttributes:v18];
  v20 = [SXSanFranciscoFontFace alloc];
  postscriptName = [v19 postscriptName];
  fontAttributes = [v19 fontAttributes];
  v23 = [(SXSanFranciscoFontFace *)v20 initWithFontName:postscriptName fontAttributes:attributesCopy fontDescriptorAttributes:fontAttributes];

  return v23;
}

@end