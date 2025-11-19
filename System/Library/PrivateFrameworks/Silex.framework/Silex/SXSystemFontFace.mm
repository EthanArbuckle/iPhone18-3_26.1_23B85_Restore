@interface SXSystemFontFace
- (NSDictionary)fontDescriptorAttributes;
- (NSString)description;
- (SXSystemFontFace)initWithMetadata:(id)a3;
- (id)fontAttributesForMetadata:(id)a3;
- (int64_t)fontStyleForValue:(id)a3;
- (int64_t)fontWeightForValue:(id)a3;
- (int64_t)fontWidthForValue:(id)a3;
@end

@implementation SXSystemFontFace

- (SXSystemFontFace)initWithMetadata:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SXSystemFontFace;
  v5 = [(SXSystemFontFace *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"ps"];
    fontName = v5->_fontName;
    v5->_fontName = v6;

    v8 = [(SXSystemFontFace *)v5 fontAttributesForMetadata:v4];
    fontAttributes = v5->_fontAttributes;
    v5->_fontAttributes = v8;
  }

  return v5;
}

- (NSDictionary)fontDescriptorAttributes
{
  v26[2] = *MEMORY[0x1E69E9840];
  v25[0] = *MEMORY[0x1E69DB8B8];
  v3 = [(SXSystemFontFace *)self fontName];
  v26[0] = v3;
  v25[1] = *MEMORY[0x1E69DB8F0];
  v23[0] = *MEMORY[0x1E69DB990];
  v4 = MEMORY[0x1E696AD98];
  v5 = [(SXSystemFontFace *)self fontAttributes];
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
  v24[0] = v8;
  v23[1] = *MEMORY[0x1E69DB9C0];
  v9 = MEMORY[0x1E696AD98];
  v10 = [(SXSystemFontFace *)self fontAttributes];
  v11 = [v10 width];
  if (v11 > 5)
  {
    if (v11 > 8)
    {
      switch(v11)
      {
        case 9:
          v12 = MEMORY[0x1E6965990];
          goto LABEL_45;
        case 10:
          v12 = MEMORY[0x1E69659A8];
          goto LABEL_45;
        case 11:
          v13 = 0.4;
          goto LABEL_46;
      }
    }

    else
    {
      if (v11 == 6)
      {
        v12 = MEMORY[0x1E69659B0];
        goto LABEL_45;
      }

      if (v11 != 7)
      {
        v12 = MEMORY[0x1E69659B8];
        goto LABEL_45;
      }
    }

LABEL_38:
    v12 = MEMORY[0x1E69659C0];
    goto LABEL_45;
  }

  if (v11 > 2)
  {
    if (v11 == 3)
    {
      v12 = MEMORY[0x1E6965980];
    }

    else if (v11 == 4)
    {
      v12 = MEMORY[0x1E69659A0];
    }

    else
    {
      v12 = MEMORY[0x1E6965988];
    }

    goto LABEL_45;
  }

  if (!v11)
  {
    v12 = MEMORY[0x1E69659D0];
    goto LABEL_45;
  }

  if (v11 != 1 && v11 != 2)
  {
    goto LABEL_38;
  }

  v12 = MEMORY[0x1E6965998];
LABEL_45:
  v13 = *v12;
LABEL_46:
  v14 = [v9 numberWithDouble:v13];
  v24[1] = v14;
  v23[2] = *MEMORY[0x1E69DB910];
  v15 = MEMORY[0x1E696AD98];
  v16 = [(SXSystemFontFace *)self fontAttributes];
  v17 = [v16 style];
  v18 = 0.06944444;
  if ((v17 - 1) >= 2)
  {
    v18 = 0.0;
  }

  v19 = [v15 numberWithDouble:v18];
  v24[2] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v26[1] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];

  return v21;
}

- (id)fontAttributesForMetadata:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"f"];
  v6 = [v4 objectForKey:@"wi"];
  v7 = [v4 objectForKey:@"we"];
  v8 = [v4 objectForKey:@"s"];

  v9 = [[SXFontAttributes alloc] initWithFamilyName:v5 weight:[(SXSystemFontFace *)self fontWeightForValue:v7] width:[(SXSystemFontFace *)self fontWidthForValue:v6] style:[(SXSystemFontFace *)self fontStyleForValue:v8] grade:0];

  return v9;
}

- (int64_t)fontWidthForValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v4 = [v3 integerValue], v4 <= 9))
  {
    v5 = qword_1D83921A8[v4];
  }

  else
  {
    v5 = 7;
  }

  return v5;
}

- (int64_t)fontWeightForValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  v4 = [v3 integerValue];
  v5 = v4;
  if (v4 <= 499)
  {
    if (v4 > 299)
    {
      if (v4 != 300 && v4 != 400)
      {
        goto LABEL_17;
      }
    }

    else if (v4 != 100 && v4 != 200)
    {
      goto LABEL_17;
    }
  }

  else if (v4 <= 699)
  {
    if (v4 != 500 && v4 != 600)
    {
      goto LABEL_17;
    }
  }

  else if (v4 != 700 && v4 != 800 && v4 != 900)
  {
LABEL_17:
    v5 = 400;
  }

  return v5;
}

- (int64_t)fontStyleForValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 isEqualToString:@"n"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"i"])
    {
      v4 = 1;
      goto LABEL_4;
    }

    if ([v3 isEqualToString:@"o"])
    {
      v4 = 2;
      goto LABEL_4;
    }
  }

  v4 = 0;
LABEL_4:

  return v4;
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = [(SXSystemFontFace *)self fontName];
  [v3 appendFormat:@"; PostScript name: %@", v4];

  v5 = [(SXSystemFontFace *)self fontAttributes];
  [v3 appendFormat:@"; attributes: %@", v5];

  [v3 appendString:@">"];

  return v3;
}

@end