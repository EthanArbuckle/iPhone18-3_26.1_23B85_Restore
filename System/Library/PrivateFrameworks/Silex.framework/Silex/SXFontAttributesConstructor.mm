@interface SXFontAttributesConstructor
- (SXFontAttributesConstructor)initWithFontIndex:(id)index;
- (id)fontAttributesForFontDescriptions:(id)descriptions;
- (int64_t)weightByApplyingWeightLabels:(id)labels toWeight:(int64_t)weight;
@end

@implementation SXFontAttributesConstructor

- (SXFontAttributesConstructor)initWithFontIndex:(id)index
{
  indexCopy = index;
  v9.receiver = self;
  v9.super_class = SXFontAttributesConstructor;
  v6 = [(SXFontAttributesConstructor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fontIndex, index);
  }

  return v7;
}

- (id)fontAttributesForFontDescriptions:(id)descriptions
{
  v39 = *MEMORY[0x1E69E9840];
  descriptionsCopy = descriptions;
  array = [MEMORY[0x1E695DF70] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = descriptionsCopy;
  v4 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    grade = 0;
    familyName = 0;
    v33 = *v35;
    style = 0x7FFFFFFFFFFFFFFFLL;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    width = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v35 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        fontName = [v11 fontName];

        if (fontName)
        {
          v13 = familyName == 0;
        }

        else
        {
          v13 = 0;
        }

        if (v13)
        {
          fontIndex = self->_fontIndex;
          fontName2 = [v11 fontName];
          fontAttributes6 = [(SXFontIndex *)fontIndex fontAttributesForFontName:fontName2];

          if (fontAttributes6)
          {
            familyName = [fontAttributes6 familyName];
            if (width == 0x7FFFFFFFFFFFFFFFLL)
            {
              width = [fontAttributes6 width];
            }

            if (style == 0x7FFFFFFFFFFFFFFFLL)
            {
              style = [fontAttributes6 style];
            }

            if (v8 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v8 = -[SXFontAttributesConstructor weightByApplyingWeightLabels:toWeight:](self, "weightByApplyingWeightLabels:toWeight:", array, [fontAttributes6 weight]);
            }
          }

          else
          {
            familyName = 0;
          }

          goto LABEL_29;
        }

        fontAttributes = [v11 fontAttributes];

        if (fontAttributes)
        {
          if (!familyName)
          {
            fontAttributes2 = [v11 fontAttributes];
            familyName = [fontAttributes2 familyName];
          }

          if (width == 0x7FFFFFFFFFFFFFFFLL)
          {
            fontAttributes3 = [v11 fontAttributes];
            width = [fontAttributes3 width];
          }

          if (style == 0x7FFFFFFFFFFFFFFFLL)
          {
            fontAttributes4 = [v11 fontAttributes];
            style = [fontAttributes4 style];
          }

          if (v8 == 0x7FFFFFFFFFFFFFFFLL)
          {
            fontAttributes5 = [v11 fontAttributes];
            v8 = -[SXFontAttributesConstructor weightByApplyingWeightLabels:toWeight:](self, "weightByApplyingWeightLabels:toWeight:", array, [fontAttributes5 weight]);
          }

          if (!grade)
          {
            fontAttributes6 = [v11 fontAttributes];
            grade = [fontAttributes6 grade];
LABEL_29:
          }
        }

        if (v8 == 0x7FFFFFFFFFFFFFFFLL)
        {
          fontAttributes7 = [v11 fontAttributes];
          weightLabel = [fontAttributes7 weightLabel];

          if (weightLabel)
          {
            v24 = MEMORY[0x1E696AD98];
            fontAttributes8 = [v11 fontAttributes];
            v26 = [v24 numberWithUnsignedInteger:{objc_msgSend(fontAttributes8, "weightLabel")}];
            [array addObject:v26];
          }
        }

        if (v8 != 0x7FFFFFFFFFFFFFFFLL && familyName && width != 0x7FFFFFFFFFFFFFFFLL && style != 0x7FFFFFFFFFFFFFFFLL)
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

  grade = 0;
  familyName = 0;
  style = 0x7FFFFFFFFFFFFFFFLL;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  width = 0x7FFFFFFFFFFFFFFFLL;
LABEL_41:

  v27 = 0;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL && familyName && width != 0x7FFFFFFFFFFFFFFFLL && style != 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = [[SXFontAttributes alloc] initWithFamilyName:familyName weight:v8 width:width style:style grade:grade];
  }

  return v27;
}

- (int64_t)weightByApplyingWeightLabels:(id)labels toWeight:(int64_t)weight
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  reverseObjectEnumerator = [labels reverseObjectEnumerator];
  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        integerValue = [*(*(&v13 + 1) + 8 * v9) integerValue];
        if (integerValue == 1)
        {
          v11 = [SXFontMatching bolderWeightForWeight:weight];
        }

        else
        {
          if (integerValue != 2)
          {
            goto LABEL_11;
          }

          v11 = [SXFontMatching lighterWeightForWeight:weight];
        }

        weight = v11;
LABEL_11:
        ++v9;
      }

      while (v7 != v9);
      v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return weight;
}

@end