@interface TYParsedLatexData
- (CGSize)boundingSize;
- (void)_convertFormula;
@end

@implementation TYParsedLatexData

- (void)_convertFormula
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  selfCopy = self;
  string = [(TYParsedLatexData *)self string];
  v49 = 0;
  v34 = v3;
  v5 = [v3 getBoundingBoxWithLatex:string error:&v49];
  v32 = v49;

  v37 = objc_opt_new();
  v6 = objc_opt_new();
  v40 = +[TypistLatexSymbolTranslation latexSymbolMap];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v5;
  v38 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v38)
  {
    v36 = *v46;
    v7 = 0.0;
    v8 = -3.40282347e38;
    v9 = 3.40282347e38;
    do
    {
      v10 = 0;
      do
      {
        if (*v46 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v39 = v10;
        v11 = *(*(&v45 + 1) + 8 * v10);
        v12 = objc_opt_new();
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        allKeys = [v11 allKeys];
        v14 = [allKeys countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v42;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v42 != v16)
              {
                objc_enumerationMutation(allKeys);
              }

              v18 = *(*(&v41 + 1) + 8 * i);
              v19 = [v11 objectForKey:v18];
              [v19 CGRectValue];
              v22 = v20 + v21;
              v25 = v23 + v24;
              if (v22 >= v20)
              {
                v26 = v20;
              }

              else
              {
                v26 = v22;
              }

              if (v22 >= v20)
              {
                v20 = v22;
              }

              if (v26 < v9)
              {
                v9 = v26;
              }

              if (v20 >= v8)
              {
                v8 = v20;
              }

              if (v25 >= v7)
              {
                v7 = v25;
              }

              v27 = [v40 objectForKey:v18];
              v28 = v27;
              if (v27)
              {
                v29 = v27;
              }

              else
              {
                v29 = v18;
              }

              v30 = v29;

              [v6 appendString:v30];
              [v12 setObject:v19 forKey:v30];
            }

            v15 = [allKeys countByEnumeratingWithState:&v41 objects:v50 count:16];
          }

          while (v15);
        }

        [v37 addObject:v12];
        v10 = v39 + 1;
      }

      while (v39 + 1 != v38);
      v38 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v38);
  }

  else
  {
    v7 = 0.0;
    v8 = -3.40282347e38;
    v9 = 3.40282347e38;
  }

  [(TYParsedLatexData *)selfCopy setLatexFormulaBoundingBoxes:v37];
  [(TYParsedLatexData *)selfCopy setConvertedString:v6];
  [(TYParsedLatexData *)selfCopy setBoundingSize:v7, v8 - v9];
  [(TYParsedLatexData *)selfCopy setOffsetY:v9];

  v31 = *MEMORY[0x277D85DE8];
}

- (CGSize)boundingSize
{
  width = self->_boundingSize.width;
  height = self->_boundingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end