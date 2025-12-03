@interface TYParsedScribbleData
- (TYParsedScribbleData)initWithText:(id)text regionCode:(id)code isCursive:(BOOL)cursive;
- (id)_latexRegularExpression;
- (unint64_t)_calculateTotalWidthWithPathMap:(id)map;
@end

@implementation TYParsedScribbleData

- (id)_latexRegularExpression
{
  if (_latexRegularExpression_onceToken != -1)
  {
    [TYParsedScribbleData _latexRegularExpression];
  }

  v3 = _latexRegularExpression_latexRegularExpression;

  return v3;
}

uint64_t __47__TYParsedScribbleData__latexRegularExpression__block_invoke()
{
  _latexRegularExpression_latexRegularExpression = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(?<!\\\\)((?:((?<!\\$)\\${1}(?!\\$)))(.*?)(?<!\\\\)(?:((?<!\\$)\\${1}(?!\\$)))|(?:((?<!\\$)\\${2}(?!\\$)))(.*?)(?<!\\\\)(?:((?<!\\$)\\${2}(?!\\$)))|(?:(\\\\begin\\{equation\\}))(.*?)(?<!\\\\)(?:(\\\\end\\{equation\\})))" options:0 error:0];

  return MEMORY[0x2821F96F8]();
}

- (unint64_t)_calculateTotalWidthWithPathMap:(id)map
{
  v24 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(TYParsedScribbleData *)self parsedData];
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if ([v9 isLatexString])
        {
          [v9 boundingSize];
          v6 = (v10 + v6);
        }

        else
        {
          string = [v9 string];
          isCursive = [(TYParsedScribbleData *)self isCursive];
          regionCode = [(TYParsedScribbleData *)self regionCode];
          v14 = [TypistPathUtilities getTotalWidthForText:string isCursive:isCursive withRegion:regionCode fromPathMap:mapCopy];

          [v9 setBoundingSize:{v14, 0.0}];
          v6 += v14;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (TYParsedScribbleData)initWithText:(id)text regionCode:(id)code isCursive:(BOOL)cursive
{
  cursiveCopy = cursive;
  v56 = *MEMORY[0x277D85DE8];
  textCopy = text;
  codeCopy = code;
  v54.receiver = self;
  v54.super_class = TYParsedScribbleData;
  v10 = [(TYParsedScribbleData *)&v54 init];
  if (v10)
  {
    v43 = cursiveCopy;
    v45 = codeCopy;
    v49 = objc_opt_new();
    v48 = objc_opt_new();
    v44 = v10;
    _latexRegularExpression = [(TYParsedScribbleData *)v10 _latexRegularExpression];
    [_latexRegularExpression matchesInString:textCopy options:0 range:{0, objc_msgSend(textCopy, "length")}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v53 = 0u;
    v11 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v47 = *v51;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v51 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v15 = textCopy;
          v16 = *(*(&v50 + 1) + 8 * i);
          range = [v16 range];
          v19 = v18;
          v20 = 2;
          if ([v16 rangeAtIndex:2] == 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([v16 rangeAtIndex:5] == 0x7FFFFFFFFFFFFFFFLL)
            {
              v20 = 8;
            }

            else
            {
              v20 = 5;
            }
          }

          v21 = [v16 rangeAtIndex:v20];
          v22 = v21 - v13;
          if (v21 > v13)
          {
            v23 = [TYParsedLatexData alloc];
            v24 = [v15 substringWithRange:{v13, v22}];
            v25 = [(TYParsedLatexData *)v23 initWithString:v24 isLatex:0];

            string = [(TYParsedLatexData *)v25 string];
            [v48 appendString:string];

            [v49 addObject:v25];
          }

          v27 = 9;
          if (v20 == 5)
          {
            v27 = 6;
          }

          if (v20 == 2)
          {
            v28 = 3;
          }

          else
          {
            v28 = v27;
          }

          v29 = [TYParsedLatexData alloc];
          v30 = [v16 rangeAtIndex:v28];
          textCopy = v15;
          v32 = [v15 substringWithRange:{v30, v31}];
          v33 = [(TYParsedLatexData *)v29 initWithString:v32 isLatex:1];

          convertedString = [(TYParsedLatexData *)v33 convertedString];
          [v48 appendString:convertedString];

          [v49 addObject:v33];
          v13 = range + v19;
        }

        v12 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    if (v13 < [textCopy length])
    {
      v35 = [TYParsedLatexData alloc];
      v36 = [textCopy substringFromIndex:v13];
      v37 = [(TYParsedLatexData *)v35 initWithString:v36 isLatex:0];

      string2 = [(TYParsedLatexData *)v37 string];
      [v48 appendString:string2];

      [v49 addObject:v37];
    }

    codeCopy = v45;
    v39 = [TypistPathUtilities getPathDataForCharacters:v48 withRegion:v45 isCursive:v43];
    v10 = v44;
    [(TYParsedScribbleData *)v44 setParsedData:v49];
    [(TYParsedScribbleData *)v44 setConvertedString:v48];
    [(TYParsedScribbleData *)v44 setPathMap:v39];
    [(TYParsedScribbleData *)v44 setIsCursive:v43];
    [(TYParsedScribbleData *)v44 setRegionCode:v45];
    [(TYParsedScribbleData *)v44 setTotalWidth:[(TYParsedScribbleData *)v44 _calculateTotalWidthWithPathMap:v39]];
  }

  v40 = *MEMORY[0x277D85DE8];
  return v10;
}

@end