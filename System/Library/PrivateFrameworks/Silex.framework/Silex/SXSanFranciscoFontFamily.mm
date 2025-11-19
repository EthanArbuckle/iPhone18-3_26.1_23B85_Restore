@interface SXSanFranciscoFontFamily
- (id)fontFaceWithAttributes:(id)a3 size:(int64_t)a4;
@end

@implementation SXSanFranciscoFontFamily

- (id)fontFaceWithAttributes:(id)a3 size:(int64_t)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  [v5 setObject:*MEMORY[0x1E69DB930] forKey:*MEMORY[0x1E69DB940]];
  v6 = [v4 weight];
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
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:*v7];
  [v5 setObject:v8 forKey:*MEMORY[0x1E69DB990]];

  v9 = [v4 width];
  if (v9 > 5)
  {
    if (v9 > 8)
    {
      switch(v9)
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
      if (v9 == 6)
      {
        v10 = MEMORY[0x1E69659B0];
        goto LABEL_45;
      }

      if (v9 != 7)
      {
        v10 = MEMORY[0x1E69659B8];
        goto LABEL_45;
      }
    }

LABEL_38:
    v10 = MEMORY[0x1E69659C0];
    goto LABEL_45;
  }

  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v10 = MEMORY[0x1E6965980];
    }

    else if (v9 == 4)
    {
      v10 = MEMORY[0x1E69659A0];
    }

    else
    {
      v10 = MEMORY[0x1E6965988];
    }

    goto LABEL_45;
  }

  if (!v9)
  {
    v10 = MEMORY[0x1E69659D0];
    goto LABEL_45;
  }

  if (v9 != 1 && v9 != 2)
  {
    goto LABEL_38;
  }

  v10 = MEMORY[0x1E6965998];
LABEL_45:
  v11 = *v10;
LABEL_46:
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  [v5 setObject:v12 forKey:*MEMORY[0x1E69DB9C0]];

  v13 = [v4 style];
  v14 = 0.06944444;
  if ((v13 - 1) >= 2)
  {
    v14 = 0.0;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
  [v5 setObject:v15 forKey:*MEMORY[0x1E69DB910]];

  v16 = [v4 grade];

  if (v16)
  {
    v17 = [v4 grade];
    [v5 setObject:v17 forKey:*MEMORY[0x1E69DB948]];
  }

  v25 = *MEMORY[0x1E69DB8F0];
  v26[0] = v5;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v19 = [MEMORY[0x1E69DB880] fontDescriptorWithFontAttributes:v18];
  v20 = [SXSanFranciscoFontFace alloc];
  v21 = [v19 postscriptName];
  v22 = [v19 fontAttributes];
  v23 = [(SXSanFranciscoFontFace *)v20 initWithFontName:v21 fontAttributes:v4 fontDescriptorAttributes:v22];

  return v23;
}

@end