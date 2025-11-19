@interface SXDocumentFontFamilyProvider
- (SXDocumentFontFamilyProvider)initWithDocument:(id)a3;
- (id)fontsFromDocument:(id)a3;
@end

@implementation SXDocumentFontFamilyProvider

- (SXDocumentFontFamilyProvider)initWithDocument:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SXDocumentFontFamilyProvider;
  v5 = [(SXDocumentFontFamilyProvider *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(SXDocumentFontFamilyProvider *)v5 fontsFromDocument:v4];
    fonts = v6->_fonts;
    v6->_fonts = v7;
  }

  return v6;
}

- (id)fontsFromDocument:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v40 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v39 = v3;
  v5 = [v3 resources];
  v6 = [v5 countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v56;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v56 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v55 + 1) + 8 * i);
        v11 = [v39 resources];
        v12 = [v11 objectForKey:v10];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 fontAttributes];

          if (v13)
          {
            v14 = [v12 fontAttributes];
            v15 = [v14 familyName];

            v16 = [v4 objectForKey:v15];
            if (!v16)
            {
              v16 = [MEMORY[0x1E695DF70] array];
              [v4 setObject:v16 forKey:v15];
            }

            [v16 addObject:v12];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v7);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v4;
  v41 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v41)
  {
    v38 = *v52;
    do
    {
      v17 = 0;
      do
      {
        if (*v52 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v17;
        v18 = *(*(&v51 + 1) + 8 * v17);
        v45 = [MEMORY[0x1E695DFA8] set];
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v43 = v18;
        v19 = [obj objectForKey:v18];
        v20 = [v19 countByEnumeratingWithState:&v47 objects:v59 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v48;
          do
          {
            v23 = 0;
            v46 = v21;
            do
            {
              if (*v48 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v47 + 1) + 8 * v23);
              v25 = [v24 fontAttributes];
              v26 = [v25 familyName];
              if (!v26)
              {
                goto LABEL_28;
              }

              v27 = v26;
              v28 = [v24 fontAttributes];
              if ([v28 width] == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_27;
              }

              v29 = [v24 fontAttributes];
              if ([v29 weight] == 0x7FFFFFFFFFFFFFFFLL)
              {

LABEL_27:
LABEL_28:

                goto LABEL_29;
              }

              v30 = [v24 fontAttributes];
              v31 = v22;
              v32 = v19;
              v33 = [v30 style];

              v34 = v33 == 0x7FFFFFFFFFFFFFFFLL;
              v19 = v32;
              v22 = v31;
              v21 = v46;
              if (!v34)
              {
                [v45 addObject:v24];
              }

LABEL_29:
              ++v23;
            }

            while (v21 != v23);
            v35 = [v19 countByEnumeratingWithState:&v47 objects:v59 count:16];
            v21 = v35;
          }

          while (v35);
        }

        v36 = [[SXFontFamily alloc] initWithFamilyName:v43 faces:v45];
        [v40 addObject:v36];

        v17 = v44 + 1;
      }

      while (v44 + 1 != v41);
      v41 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v41);
  }

  return v40;
}

@end