@interface SXSystemFontFace
- (NSDictionary)fontDescriptorAttributes;
- (NSString)description;
- (SXSystemFontFace)initWithMetadata:(id)metadata;
- (id)fontAttributesForMetadata:(id)metadata;
- (int64_t)fontStyleForValue:(id)value;
- (int64_t)fontWeightForValue:(id)value;
- (int64_t)fontWidthForValue:(id)value;
@end

@implementation SXSystemFontFace

- (SXSystemFontFace)initWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v11.receiver = self;
  v11.super_class = SXSystemFontFace;
  v5 = [(SXSystemFontFace *)&v11 init];
  if (v5)
  {
    v6 = [metadataCopy objectForKey:@"ps"];
    fontName = v5->_fontName;
    v5->_fontName = v6;

    v8 = [(SXSystemFontFace *)v5 fontAttributesForMetadata:metadataCopy];
    fontAttributes = v5->_fontAttributes;
    v5->_fontAttributes = v8;
  }

  return v5;
}

- (NSDictionary)fontDescriptorAttributes
{
  v26[2] = *MEMORY[0x1E69E9840];
  v25[0] = *MEMORY[0x1E69DB8B8];
  fontName = [(SXSystemFontFace *)self fontName];
  v26[0] = fontName;
  v25[1] = *MEMORY[0x1E69DB8F0];
  v23[0] = *MEMORY[0x1E69DB990];
  v4 = MEMORY[0x1E696AD98];
  fontAttributes = [(SXSystemFontFace *)self fontAttributes];
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
  v24[0] = v8;
  v23[1] = *MEMORY[0x1E69DB9C0];
  v9 = MEMORY[0x1E696AD98];
  fontAttributes2 = [(SXSystemFontFace *)self fontAttributes];
  width = [fontAttributes2 width];
  if (width > 5)
  {
    if (width > 8)
    {
      switch(width)
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
      if (width == 6)
      {
        v12 = MEMORY[0x1E69659B0];
        goto LABEL_45;
      }

      if (width != 7)
      {
        v12 = MEMORY[0x1E69659B8];
        goto LABEL_45;
      }
    }

LABEL_38:
    v12 = MEMORY[0x1E69659C0];
    goto LABEL_45;
  }

  if (width > 2)
  {
    if (width == 3)
    {
      v12 = MEMORY[0x1E6965980];
    }

    else if (width == 4)
    {
      v12 = MEMORY[0x1E69659A0];
    }

    else
    {
      v12 = MEMORY[0x1E6965988];
    }

    goto LABEL_45;
  }

  if (!width)
  {
    v12 = MEMORY[0x1E69659D0];
    goto LABEL_45;
  }

  if (width != 1 && width != 2)
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
  fontAttributes3 = [(SXSystemFontFace *)self fontAttributes];
  style = [fontAttributes3 style];
  v18 = 0.06944444;
  if ((style - 1) >= 2)
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

- (id)fontAttributesForMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = [metadataCopy objectForKey:@"f"];
  v6 = [metadataCopy objectForKey:@"wi"];
  v7 = [metadataCopy objectForKey:@"we"];
  v8 = [metadataCopy objectForKey:@"s"];

  v9 = [[SXFontAttributes alloc] initWithFamilyName:v5 weight:[(SXSystemFontFace *)self fontWeightForValue:v7] width:[(SXSystemFontFace *)self fontWidthForValue:v6] style:[(SXSystemFontFace *)self fontStyleForValue:v8] grade:0];

  return v9;
}

- (int64_t)fontWidthForValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v4 = [valueCopy integerValue], v4 <= 9))
  {
    v5 = qword_1D83921A8[v4];
  }

  else
  {
    v5 = 7;
  }

  return v5;
}

- (int64_t)fontWeightForValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  integerValue = [valueCopy integerValue];
  v5 = integerValue;
  if (integerValue <= 499)
  {
    if (integerValue > 299)
    {
      if (integerValue != 300 && integerValue != 400)
      {
        goto LABEL_17;
      }
    }

    else if (integerValue != 100 && integerValue != 200)
    {
      goto LABEL_17;
    }
  }

  else if (integerValue <= 699)
  {
    if (integerValue != 500 && integerValue != 600)
    {
      goto LABEL_17;
    }
  }

  else if (integerValue != 700 && integerValue != 800 && integerValue != 900)
  {
LABEL_17:
    v5 = 400;
  }

  return v5;
}

- (int64_t)fontStyleForValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([valueCopy isEqualToString:@"n"] & 1) == 0)
  {
    if ([valueCopy isEqualToString:@"i"])
    {
      v4 = 1;
      goto LABEL_4;
    }

    if ([valueCopy isEqualToString:@"o"])
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
  fontName = [(SXSystemFontFace *)self fontName];
  [v3 appendFormat:@"; PostScript name: %@", fontName];

  fontAttributes = [(SXSystemFontFace *)self fontAttributes];
  [v3 appendFormat:@"; attributes: %@", fontAttributes];

  [v3 appendString:@">"];

  return v3;
}

@end