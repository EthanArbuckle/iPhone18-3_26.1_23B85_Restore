@interface SXFontAttributesConstructor
- (SXFontAttributesConstructor)initWithFontIndex:(id)a3;
- (id)fontAttributesForFontDescriptions:(id)a3;
- (int64_t)weightByApplyingWeightLabels:(id)a3 toWeight:(int64_t)a4;
@end

@implementation SXFontAttributesConstructor

- (SXFontAttributesConstructor)initWithFontIndex:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXFontAttributesConstructor;
  v6 = [(SXFontAttributesConstructor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fontIndex, a3);
  }

  return v7;
}

- (id)fontAttributesForFontDescriptions:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v31 = [MEMORY[0x1E695DF70] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v29 = 0;
    v6 = 0;
    v33 = *v35;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v35 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        v12 = [v11 fontName];

        if (v12)
        {
          v13 = v6 == 0;
        }

        else
        {
          v13 = 0;
        }

        if (v13)
        {
          fontIndex = self->_fontIndex;
          v21 = [v11 fontName];
          v19 = [(SXFontIndex *)fontIndex fontAttributesForFontName:v21];

          if (v19)
          {
            v6 = [v19 familyName];
            if (v9 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v9 = [v19 width];
            }

            if (v7 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v7 = [v19 style];
            }

            if (v8 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v8 = -[SXFontAttributesConstructor weightByApplyingWeightLabels:toWeight:](self, "weightByApplyingWeightLabels:toWeight:", v31, [v19 weight]);
            }
          }

          else
          {
            v6 = 0;
          }

          goto LABEL_29;
        }

        v14 = [v11 fontAttributes];

        if (v14)
        {
          if (!v6)
          {
            v15 = [v11 fontAttributes];
            v6 = [v15 familyName];
          }

          if (v9 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v16 = [v11 fontAttributes];
            v9 = [v16 width];
          }

          if (v7 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v17 = [v11 fontAttributes];
            v7 = [v17 style];
          }

          if (v8 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v18 = [v11 fontAttributes];
            v8 = -[SXFontAttributesConstructor weightByApplyingWeightLabels:toWeight:](self, "weightByApplyingWeightLabels:toWeight:", v31, [v18 weight]);
          }

          if (!v29)
          {
            v19 = [v11 fontAttributes];
            v29 = [v19 grade];
LABEL_29:
          }
        }

        if (v8 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v22 = [v11 fontAttributes];
          v23 = [v22 weightLabel];

          if (v23)
          {
            v24 = MEMORY[0x1E696AD98];
            v25 = [v11 fontAttributes];
            v26 = [v24 numberWithUnsignedInteger:{objc_msgSend(v25, "weightLabel")}];
            [v31 addObject:v26];
          }
        }

        if (v8 != 0x7FFFFFFFFFFFFFFFLL && v6 && v9 != 0x7FFFFFFFFFFFFFFFLL && v7 != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_41;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (!v5)
      {
        goto LABEL_41;
      }
    }
  }

  v29 = 0;
  v6 = 0;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_41:

  v27 = 0;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL && v6 && v9 != 0x7FFFFFFFFFFFFFFFLL && v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = [[SXFontAttributes alloc] initWithFamilyName:v6 weight:v8 width:v9 style:v7 grade:v29];
  }

  return v27;
}

- (int64_t)weightByApplyingWeightLabels:(id)a3 toWeight:(int64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a3 reverseObjectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * v9) integerValue];
        if (v10 == 1)
        {
          v11 = [SXFontMatching bolderWeightForWeight:a4];
        }

        else
        {
          if (v10 != 2)
          {
            goto LABEL_11;
          }

          v11 = [SXFontMatching lighterWeightForWeight:a4];
        }

        a4 = v11;
LABEL_11:
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return a4;
}

@end