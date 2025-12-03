@interface SXFontIndex
- (BOOL)fontFamilyName:(id)name matchesFontAttributes:(id)attributes;
- (SXFontIndex)initWithFontFamilyProviders:(id)providers;
- (id)fontAttributesForFontName:(id)name;
- (id)fontFaceForFontAttributes:(id)attributes size:(int64_t)size;
- (id)fontNameForFontAttributes:(id)attributes size:(int64_t)size;
- (id)fontsForFamilyProviders:(id)providers;
- (void)addFontFamilyProvider:(id)provider;
@end

@implementation SXFontIndex

- (SXFontIndex)initWithFontFamilyProviders:(id)providers
{
  providersCopy = providers;
  v15.receiver = self;
  v15.super_class = SXFontIndex;
  v5 = [(SXFontIndex *)&v15 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithArray:providersCopy];
    fontFamilyProviders = v5->_fontFamilyProviders;
    v5->_fontFamilyProviders = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    attributeToFontIndex = v5->_attributeToFontIndex;
    v5->_attributeToFontIndex = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    fontToAttributeIndex = v5->_fontToAttributeIndex;
    v5->_fontToAttributeIndex = v10;

    v12 = [(SXFontIndex *)v5 fontsForFamilyProviders:providersCopy];
    fonts = v5->_fonts;
    v5->_fonts = v12;
  }

  return v5;
}

- (void)addFontFamilyProvider:(id)provider
{
  if (provider)
  {
    providerCopy = provider;
    fontFamilyProviders = [(SXFontIndex *)self fontFamilyProviders];
    [fontFamilyProviders addObject:providerCopy];

    v6 = [(SXFontIndex *)self fontsForFamilyProviders:self->_fontFamilyProviders];
    fonts = self->_fonts;
    self->_fonts = v6;

    [(NSCache *)self->_attributeToFontIndex removeAllObjects];
    fontToAttributeIndex = self->_fontToAttributeIndex;

    [(NSCache *)fontToAttributeIndex removeAllObjects];
  }
}

- (id)fontNameForFontAttributes:(id)attributes size:(int64_t)size
{
  v32 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  if (attributesCopy)
  {
    v7 = [[SXFontIndexCacheKey alloc] initWithFontAttributes:attributesCopy fontSize:size];
    v8 = [(NSCache *)self->_attributeToFontIndex objectForKey:v7];
    if (!v8)
    {
      familyName = [attributesCopy familyName];
      if (!familyName || [attributesCopy width] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(attributesCopy, "weight") == 0x7FFFFFFFFFFFFFFFLL)
      {
      }

      else
      {
        style = [attributesCopy style];

        if (style != 0x7FFFFFFFFFFFFFFFLL)
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
                if ([(SXFontIndex *)self fontFamilyName:v17 matchesFontAttributes:attributesCopy])
                {
                  v18 = [(NSDictionary *)self->_fonts objectForKey:v17];
                  [v18 fontFaceWithAttributes:attributesCopy size:size];
                  selfCopy = self;
                  v20 = attributesCopy;
                  v21 = v12;
                  v23 = v22 = size;
                  fontName = [v23 fontName];
                  v25 = v8;
                  v8 = fontName;

                  size = v22;
                  v12 = v21;
                  attributesCopy = v20;
                  self = selfCopy;
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

- (id)fontFaceForFontAttributes:(id)attributes size:(int64_t)size
{
  v22 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  familyName = [attributesCopy familyName];
  if (familyName && [attributesCopy width] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(attributesCopy, "weight") != 0x7FFFFFFFFFFFFFFFLL)
  {
    style = [attributesCopy style];

    if (style == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_5;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    familyName = self->_fonts;
    v11 = [(NSDictionary *)familyName countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(familyName);
          }

          v15 = *(*(&v17 + 1) + 8 * i);
          if ([(SXFontIndex *)self fontFamilyName:v15 matchesFontAttributes:attributesCopy, v17])
          {
            v16 = [(NSDictionary *)self->_fonts objectForKey:v15];
            v8 = [v16 fontFaceWithAttributes:attributesCopy size:size];

            goto LABEL_6;
          }
        }

        v12 = [(NSDictionary *)familyName countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (id)fontAttributesForFontName:(id)name
{
  v34 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (!nameCopy)
  {
    goto LABEL_24;
  }

  v5 = [(NSCache *)self->_fontToAttributeIndex objectForKey:nameCopy];
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
  selfCopy = self;
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
      fontFaces = [v8 fontFaces];
      v10 = [fontFaces countByEnumeratingWithState:&v24 objects:v32 count:16];
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
              objc_enumerationMutation(fontFaces);
            }

            v14 = *(*(&v24 + 1) + 8 * j);
            fontName = [v14 fontName];
            v16 = [fontName isEqualToString:nameCopy];

            if (v16)
            {
              fontAttributes = [v14 fontAttributes];

              v23 = fontAttributes;
              goto LABEL_18;
            }
          }

          v11 = [fontFaces countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }

LABEL_18:
        self = selfCopy;
      }
    }

    v22 = [(NSDictionary *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  }

  while (v22);

  v5 = v23;
  if (v23)
  {
    [(NSCache *)self->_fontToAttributeIndex setObject:v23 forKey:nameCopy];
  }

LABEL_25:

  return v5;
}

- (id)fontsForFamilyProviders:(id)providers
{
  v29 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = providersCopy;
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
        fontFamilies = [v9 fontFamilies];
        v11 = [fontFamilies countByEnumeratingWithState:&v19 objects:v27 count:16];
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
                objc_enumerationMutation(fontFamilies);
              }

              v15 = *(*(&v19 + 1) + 8 * j);
              familyName = [v15 familyName];
              [dictionary setObject:v15 forKey:familyName];
            }

            v12 = [fontFamilies countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v12);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  return dictionary;
}

- (BOOL)fontFamilyName:(id)name matchesFontAttributes:(id)attributes
{
  nameCopy = name;
  attributesCopy = attributes;
  familyName = [attributesCopy familyName];
  if ([familyName isEqualToString:nameCopy])
  {
    v8 = 1;
  }

  else
  {
    familyName2 = [attributesCopy familyName];
    v10 = [familyName2 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F532F6C0];
    v8 = [v10 isEqualToString:nameCopy];
  }

  return v8;
}

@end