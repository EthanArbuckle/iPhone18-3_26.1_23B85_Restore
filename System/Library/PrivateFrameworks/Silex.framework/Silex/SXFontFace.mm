@interface SXFontFace
- (SXFontFace)initWithFontName:(id)name fontAttributes:(id)attributes;
- (id)attributes;
@end

@implementation SXFontFace

- (SXFontFace)initWithFontName:(id)name fontAttributes:(id)attributes
{
  nameCopy = name;
  attributesCopy = attributes;
  v12.receiver = self;
  v12.super_class = SXFontFace;
  v9 = [(SXFontFace *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fontName, name);
    objc_storeStrong(&v10->_fontAttributes, attributes);
  }

  return v10;
}

- (id)attributes
{
  v25[2] = *MEMORY[0x1E69E9840];
  v24[0] = *MEMORY[0x1E69DB8B8];
  fontName = [(SXFontFace *)self fontName];
  v25[0] = fontName;
  v24[1] = *MEMORY[0x1E69DB8F0];
  v22[0] = *MEMORY[0x1E69DB990];
  v4 = MEMORY[0x1E696AD98];
  fontAttributes = [(SXFontFace *)self fontAttributes];
  weight = [fontAttributes weight];
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
  v8 = [v4 numberWithDouble:*v7];
  v23[0] = v8;
  v22[1] = *MEMORY[0x1E69DB9C0];
  v9 = MEMORY[0x1E696AD98];
  fontAttributes2 = [(SXFontFace *)self fontAttributes];
  width = [fontAttributes2 width];
  if (width <= 499)
  {
    if (width <= 299)
    {
      if (width != 100)
      {
        if (width == 200)
        {
          v12 = MEMORY[0x1E69DB998];
          goto LABEL_41;
        }

        goto LABEL_32;
      }

      v12 = MEMORY[0x1E69DB988];
      goto LABEL_41;
    }

    if (width == 300)
    {
      v12 = MEMORY[0x1E69DB968];
      goto LABEL_41;
    }

LABEL_32:
    v12 = MEMORY[0x1E69DB978];
    goto LABEL_41;
  }

  if (width <= 699)
  {
    if (width == 500)
    {
      v12 = MEMORY[0x1E69DB970];
      goto LABEL_41;
    }

    if (width == 600)
    {
      v12 = MEMORY[0x1E69DB980];
      goto LABEL_41;
    }

    goto LABEL_32;
  }

  switch(width)
  {
    case 700:
      v12 = MEMORY[0x1E69DB958];
      break;
    case 800:
      v12 = MEMORY[0x1E69DB960];
      break;
    case 900:
      v12 = MEMORY[0x1E69DB950];
      break;
    default:
      goto LABEL_32;
  }

LABEL_41:
  v13 = [v9 numberWithDouble:*v12];
  v23[1] = v13;
  v22[2] = *MEMORY[0x1E69DB910];
  v14 = MEMORY[0x1E696AD98];
  fontAttributes3 = [(SXFontFace *)self fontAttributes];
  style = [fontAttributes3 style];
  v17 = 0.06944444;
  if ((style - 1) >= 2)
  {
    v17 = 0.0;
  }

  v18 = [v14 numberWithDouble:v17];
  v23[2] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v25[1] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];

  return v20;
}

@end