@interface SXFontIndex
- (BOOL)fontFamilyName:(id)a3 matchesFontAttributes:(id)a4;
- (SXFontIndex)initWithFontFamilyProviders:(id)a3;
- (id)fontAttributesForFontName:(id)a3;
- (id)fontFaceForFontAttributes:(id)a3 size:(int64_t)a4;
- (id)fontNameForFontAttributes:(id)a3 size:(int64_t)a4;
- (id)fontsForFamilyProviders:(id)a3;
- (void)addFontFamilyProvider:(id)a3;
@end

@implementation SXFontIndex

- (SXFontIndex)initWithFontFamilyProviders:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SXFontIndex;
  v5 = [(SXFontIndex *)&v15 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithArray:v4];
    fontFamilyProviders = v5->_fontFamilyProviders;
    v5->_fontFamilyProviders = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    attributeToFontIndex = v5->_attributeToFontIndex;
    v5->_attributeToFontIndex = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    fontToAttributeIndex = v5->_fontToAttributeIndex;
    v5->_fontToAttributeIndex = v10;

    v12 = [(SXFontIndex *)v5 fontsForFamilyProviders:v4];
    fonts = v5->_fonts;
    v5->_fonts = v12;
  }

  return v5;
}

- (void)addFontFamilyProvider:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SXFontIndex *)self fontFamilyProviders];
    [v5 addObject:v4];

    v6 = [(SXFontIndex *)self fontsForFamilyProviders:self->_fontFamilyProviders];
    fonts = self->_fonts;
    self->_fonts = v6;

    [(NSCache *)self->_attributeToFontIndex removeAllObjects];
    fontToAttributeIndex = self->_fontToAttributeIndex;

    [(NSCache *)fontToAttributeIndex removeAllObjects];
  }
}

- (id)fontNameForFontAttributes:(id)a3 size:(int64_t)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = [[SXFontIndexCacheKey alloc] initWithFontAttributes:v6 fontSize:a4];
    v8 = [(NSCache *)self->_attributeToFontIndex objectForKey:v7];
    if (!v8)
    {
      v9 = [v6 familyName];
      if (!v9 || [v6 width] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v6, "weight") == 0x7FFFFFFFFFFFFFFFLL)
      {
      }

      else
      {
        v11 = [v6 style];

        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v12 = self->_fonts;
          v13 = [(NSDictionary *)v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v13)
          {
            v14 = v13;
            v26 = v7;
            v8 = 0;
            v15 = *v28;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v28 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v27 + 1) + 8 * i);
                if ([(SXFontIndex *)self fontFamilyName:v17 matchesFontAttributes:v6])
                {
                  v18 = [(NSDictionary *)self->_fonts objectForKey:v17];
                  [v18 fontFaceWithAttributes:v6 size:a4];
                  v19 = self;
                  v20 = v6;
                  v21 = v12;
                  v23 = v22 = a4;
                  v24 = [v23 fontName];
                  v25 = v8;
                  v8 = v24;

                  a4 = v22;
                  v12 = v21;
                  v6 = v20;
                  self = v19;
                }
              }

              v14 = [(NSDictionary *)v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
            }

            while (v14);

            v7 = v26;
            if (v8)
            {
              [(NSCache *)self->_attributeToFontIndex setObject:v8 forKey:v26];
            }

            goto LABEL_8;
          }
        }
      }

      v8 = 0;
    }

LABEL_8:

    goto LABEL_10;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (id)fontFaceForFontAttributes:(id)a3 size:(int64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 familyName];
  if (v7 && [v6 width] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v6, "weight") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v6 style];

    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_5;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_fonts;
    v11 = [(NSDictionary *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v7);
          }

          v15 = *(*(&v17 + 1) + 8 * i);
          if ([(SXFontIndex *)self fontFamilyName:v15 matchesFontAttributes:v6, v17])
          {
            v16 = [(NSDictionary *)self->_fonts objectForKey:v15];
            v8 = [v16 fontFaceWithAttributes:v6 size:a4];

            goto LABEL_6;
          }
        }

        v12 = [(NSDictionary *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_5:
  v8 = 0;
LABEL_6:

  return v8;
}

- (id)fontAttributesForFontName:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = [(NSCache *)self->_fontToAttributeIndex objectForKey:v4];
  if (v5)
  {
    goto LABEL_25;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = self->_fonts;
  v22 = [(NSDictionary *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (!v22)
  {

LABEL_24:
    v5 = 0;
    goto LABEL_25;
  }

  v23 = 0;
  v20 = self;
  v21 = *v29;
  obj = v6;
  do
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v29 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v8 = [(NSDictionary *)self->_fonts objectForKey:*(*(&v28 + 1) + 8 * i)];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v9 = [v8 fontFaces];
      v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v25;
        while (2)
        {
          for (j = 0; j != v11; ++j)
          {
            if (*v25 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v24 + 1) + 8 * j);
            v15 = [v14 fontName];
            v16 = [v15 isEqualToString:v4];

            if (v16)
            {
              v17 = [v14 fontAttributes];

              v23 = v17;
              goto LABEL_18;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }

LABEL_18:
        self = v20;
      }
    }

    v22 = [(NSDictionary *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  }

  while (v22);

  v5 = v23;
  if (v23)
  {
    [(NSCache *)self->_fontToAttributeIndex setObject:v23 forKey:v4];
  }

LABEL_25:

  return v5;
}

- (id)fontsForFamilyProviders:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v10 = [v9 fontFamilies];
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v20 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v19 + 1) + 8 * j);
              v16 = [v15 familyName];
              [v4 setObject:v15 forKey:v16];
            }

            v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v12);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  return v4;
}

- (BOOL)fontFamilyName:(id)a3 matchesFontAttributes:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 familyName];
  if ([v7 isEqualToString:v5])
  {
    v8 = 1;
  }

  else
  {
    v9 = [v6 familyName];
    v10 = [v9 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F532F6C0];
    v8 = [v10 isEqualToString:v5];
  }

  return v8;
}

@end