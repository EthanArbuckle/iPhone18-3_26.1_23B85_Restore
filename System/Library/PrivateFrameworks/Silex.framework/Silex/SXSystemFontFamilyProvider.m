@interface SXSystemFontFamilyProvider
- (NSString)description;
- (SXSystemFontFamilyProvider)initWithFontMetaData:(id)a3;
- (id)fontsForMetadata:(id)a3;
@end

@implementation SXSystemFontFamilyProvider

- (SXSystemFontFamilyProvider)initWithFontMetaData:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SXSystemFontFamilyProvider;
  v5 = [(SXSystemFontFamilyProvider *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(SXSystemFontFamilyProvider *)v5 fontsForMetadata:v4];
    fonts = v6->_fonts;
    v6->_fonts = v7;
  }

  return v6;
}

- (id)fontsForMetadata:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = v3;
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
        v11 = [(SXSystemFontFace *)v10 fontAttributes];
        v12 = [v11 familyName];
        v13 = [v4 objectForKey:v12];

        if (!v13)
        {
          v13 = [MEMORY[0x1E695DF70] array];
          v14 = [(SXSystemFontFace *)v10 fontAttributes];
          v15 = [v14 familyName];
          [v4 setObject:v13 forKey:v15];
        }

        [v13 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v7);
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = v4;
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

        [v16 addObject:v26];
      }

      v19 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v19);
  }

  return v16;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = [(SXSystemFontFamilyProvider *)self fonts];
  [v3 appendFormat:@"; fonts: %@", v4];

  [v3 appendString:@">"];

  return v3;
}

@end