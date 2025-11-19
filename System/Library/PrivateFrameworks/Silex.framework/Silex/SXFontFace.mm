@interface SXFontFace
- (SXFontFace)initWithFontName:(id)a3 fontAttributes:(id)a4;
- (id)attributes;
@end

@implementation SXFontFace

- (SXFontFace)initWithFontName:(id)a3 fontAttributes:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXFontFace;
  v9 = [(SXFontFace *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fontName, a3);
    objc_storeStrong(&v10->_fontAttributes, a4);
  }

  return v10;
}

- (id)attributes
{
  v25[2] = *MEMORY[0x1E69E9840];
  v24[0] = *MEMORY[0x1E69DB8B8];
  v3 = [(SXFontFace *)self fontName];
  v25[0] = v3;
  v24[1] = *MEMORY[0x1E69DB8F0];
  v22[0] = *MEMORY[0x1E69DB990];
  v4 = MEMORY[0x1E696AD98];
  v5 = [(SXFontFace *)self fontAttributes];
  v6 = [v5 weight];
  if (v6 <= 499)
  {
    if (v6 <= 299)
    {
      if (v6 != 100)
      {
        if (v6 == 200)
        {
          v7 = MEMORY[0x1E69DB998];
          goto LABEL_21;
        }

        goto LABEL_12;
      }

      v7 = MEMORY[0x1E69DB988];
      goto LABEL_21;
    }

    if (v6 == 300)
    {
      v7 = MEMORY[0x1E69DB968];
      goto LABEL_21;
    }

LABEL_12:
    v7 = MEMORY[0x1E69DB978];
    goto LABEL_21;
  }

  if (v6 <= 699)
  {
    if (v6 == 500)
    {
      v7 = MEMORY[0x1E69DB970];
      goto LABEL_21;
    }

    if (v6 == 600)
    {
      v7 = MEMORY[0x1E69DB980];
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  switch(v6)
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
  v10 = [(SXFontFace *)self fontAttributes];
  v11 = [v10 width];
  if (v11 <= 499)
  {
    if (v11 <= 299)
    {
      if (v11 != 100)
      {
        if (v11 == 200)
        {
          v12 = MEMORY[0x1E69DB998];
          goto LABEL_41;
        }

        goto LABEL_32;
      }

      v12 = MEMORY[0x1E69DB988];
      goto LABEL_41;
    }

    if (v11 == 300)
    {
      v12 = MEMORY[0x1E69DB968];
      goto LABEL_41;
    }

LABEL_32:
    v12 = MEMORY[0x1E69DB978];
    goto LABEL_41;
  }

  if (v11 <= 699)
  {
    if (v11 == 500)
    {
      v12 = MEMORY[0x1E69DB970];
      goto LABEL_41;
    }

    if (v11 == 600)
    {
      v12 = MEMORY[0x1E69DB980];
      goto LABEL_41;
    }

    goto LABEL_32;
  }

  switch(v11)
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
  v15 = [(SXFontFace *)self fontAttributes];
  v16 = [v15 style];
  v17 = 0.06944444;
  if ((v16 - 1) >= 2)
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