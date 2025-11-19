@interface UIFont(SecureTextEntry)
- (__CFString)_ui_bulletStringWithFont:()SecureTextEntry;
- (uint64_t)_bulletGlyphWithOriginalFont:()SecureTextEntry fontForBulletRendering:;
@end

@implementation UIFont(SecureTextEntry)

- (__CFString)_ui_bulletStringWithFont:()SecureTextEntry
{
  v4 = a1;
  GlyphsForCharacters = CTFontGetGlyphsForCharacters(a1, kBullets, &glyphs, 2);
  if (glyphs)
  {
    v6 = 1;
  }

  else
  {
    v6 = GlyphsForCharacters;
  }

  v7 = v17;
  if (v17)
  {
    v8 = @"⦁";
  }

  else
  {
    v8 = 0;
  }

  if (v6)
  {
    v8 = @"";
  }

  v9 = v8;
  if (a3)
  {
    if (v7)
    {
      v10 = 1;
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      v11 = v4;
    }

    else
    {
      [v4 pointSize];
      v4 = [off_1E70ECC18 systemFontOfSize:?];
      v12 = v4;
    }

    *a3 = v4;
  }

  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = @"⦁";
  }

  v14 = v13;

  return v14;
}

- (uint64_t)_bulletGlyphWithOriginalFont:()SecureTextEntry fontForBulletRendering:
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  GlyphsForCharacters = CTFontGetGlyphsForCharacters(a1, kBullets, &glyphs, 5);
  if (glyphs)
  {
    v8 = 1;
  }

  else
  {
    v8 = GlyphsForCharacters;
  }

  v9 = v24;
  v10 = @"⦁";
  if (!v24)
  {
    v10 = 0;
  }

  if (v8)
  {
    v10 = @"";
  }

  v11 = v10;
  if (v6 && (!v8 ? (v12 = v9 == 0) : (v12 = 0), v12))
  {
    if (([(__CTFont *)a1 isEqual:v6]& 1) == 0 && ([(__CTFont *)a1 isEqual:v6]& 1) == 0)
    {
      v13 = CTFontGetGlyphsForCharacters(v6, kBullets, &glyphs, 5);
      if (glyphs)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      if ((v14 & 1) != 0 || v24)
      {
        v17 = v6;
      }

      else
      {
        v22 = 0;
        v15 = [(__CTFont *)a1 _ui_bulletStringWithFont:&v22];
        v16 = v22;
        if (v16 && ([(__CTFont *)a1 isEqual:v16]& 1) == 0)
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }
      }

      goto LABEL_26;
    }
  }

  else
  {
  }

  v17 = 0;
LABEL_26:
  if (a4)
  {
    v18 = v17;
    *a4 = v17;
  }

  if (v17)
  {
    v19 = glyphs;
  }

  else
  {
    v21 = 0;
    while (1)
    {
      v19 = *(&glyphs + v21);
      if (*(&glyphs + v21))
      {
        break;
      }

      v21 += 2;
      if (v21 == 10)
      {
        v19 = glyphs;
        if (!glyphs)
        {
          v19 = 3;
        }

        break;
      }
    }
  }

  return v19;
}

@end