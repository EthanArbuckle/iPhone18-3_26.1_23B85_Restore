@interface SXSystemFontFamilyProvider
- (NSString)description;
- (SXSystemFontFamilyProvider)initWithFontMetaData:(id)data;
- (id)fontsForMetadata:(id)metadata;
@end

@implementation SXSystemFontFamilyProvider

- (SXSystemFontFamilyProvider)initWithFontMetaData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = SXSystemFontFamilyProvider;
  v5 = [(SXSystemFontFamilyProvider *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(SXSystemFontFamilyProvider *)v5 fontsForMetadata:dataCopy];
    fonts = v6->_fonts;
    v6->_fonts = v7;
  }

  return v6;
}

- (id)fontsForMetadata:(id)metadata
{
  v38 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = metadataCopy;
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [[SXSystemFontFace alloc] initWithMetadata:*(*(&v32 + 1) + 8 * i)];
        fontAttributes = [(SXSystemFontFace *)v10 fontAttributes];
        familyName = [fontAttributes familyName];
        array = [dictionary objectForKey:familyName];

        if (!array)
        {
          array = [MEMORY[0x1E695DF70] array];
          fontAttributes2 = [(SXSystemFontFace *)v10 fontAttributes];
          familyName2 = [fontAttributes2 familyName];
          [dictionary setObject:array forKey:familyName2];
        }

        [array addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v7);
  }

  array2 = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = dictionary;
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v28 + 1) + 8 * j);
        v23 = [v17 objectForKey:v22];
        v24 = [SXFontFamily alloc];
        v25 = [MEMORY[0x1E695DFD8] setWithArray:v23];
        v26 = [(SXFontFamily *)v24 initWithFamilyName:v22 faces:v25];

        [array2 addObject:v26];
      }

      v19 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v19);
  }

  return array2;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  fonts = [(SXSystemFontFamilyProvider *)self fonts];
  [v3 appendFormat:@"; fonts: %@", fonts];

  [v3 appendString:@">"];

  return v3;
}

@end