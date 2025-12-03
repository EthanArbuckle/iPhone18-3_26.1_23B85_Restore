@interface NSAttributedString(PhotosUICore)
+ (id)px_attributedStringWithHTMLString:()PhotosUICore defaultAttributes:emphasizedAttributes:italicizedAttributes:;
+ (id)px_stringWithFormat:()PhotosUICore defaultAttributes:arguments:;
- (id)px_attributedStringByAddingAttributes:()PhotosUICore;
- (id)px_attributedStringByApplyingCapitalization:()PhotosUICore;
- (id)px_attributedStringByDeletingCharactersInSet:()PhotosUICore;
- (id)px_attributedStringWithParagraphLineBreakMode:()PhotosUICore;
- (id)px_bulletPrefixAttributedStringWithBulletAttributes:()PhotosUICore isLeftToRight:;
- (uint64_t)px_containsAttribute:()PhotosUICore;
- (void)px_sizeWithProposedWidth:()PhotosUICore maximumLines:drawingOptions:;
@end

@implementation NSAttributedString(PhotosUICore)

- (void)px_sizeWithProposedWidth:()PhotosUICore maximumLines:drawingOptions:
{
  v22[1] = *MEMORY[0x1E69E9840];
  v9 = [self attributesAtIndex:0 effectiveRange:0];
  [&stru_1F1741150 stringByPaddingToLength:a4 - 1 withString:@"\n" startingAtIndex:0];
  [objc_msgSend(objc_alloc(MEMORY[0x1E696AAB0]) initWithString:objc_claimAutoreleasedReturnValue() attributes:{v9), "boundingRectWithSize:options:context:", a5, 0, a2, INFINITY}];
  [self boundingRectWithSize:a5 options:0 context:{a2, v10}];
  if (self)
  {
    v11 = [self attributesAtIndex:0 effectiveRange:0];
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
    string = [self string];
    v14 = _PXLanguageRequiringLineHeightAdjustmentsForString();

    if (v12)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      v20 = v12;
    }

    else
    {
      fontDescriptor = [v12 fontDescriptor];
      v21 = *MEMORY[0x1E69656F0];
      v22[0] = v14;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v18 = [fontDescriptor fontDescriptorByAddingAttributes:v17];

      v19 = MEMORY[0x1E69DB878];
      [v12 pointSize];
      v20 = [v19 fontWithDescriptor:v18 size:?];

      if (v20)
      {
        if (CTFontGetLanguageAwareOutsets())
        {
          PXEdgeInsetsMake();
        }
      }
    }
  }

  PXEdgeInsetsInsetSize();
}

- (uint64_t)px_containsAttribute:()PhotosUICore
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [self length];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__NSAttributedString_PhotosUICore__px_containsAttribute___block_invoke;
  v8[3] = &unk_1E772D418;
  v8[4] = &v9;
  [self enumerateAttribute:v4 inRange:0 options:v5 usingBlock:{0, v8}];
  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)px_bulletPrefixAttributedStringWithBulletAttributes:()PhotosUICore isLeftToRight:
{
  v6 = a3;
  v7 = [self mutableCopy];
  v8 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (a4)
  {
    v9 = [v8 initWithString:@"● " attributes:v6];

    [v7 insertAttributedString:v9 atIndex:0];
  }

  else
  {
    v9 = [v8 initWithString:@" ●" attributes:v6];

    [v7 appendAttributedString:v9];
  }

  return v7;
}

- (id)px_attributedStringByDeletingCharactersInSet:()PhotosUICore
{
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSAttributedString+PhotosUICore.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"characterSet"}];
  }

  v6 = [self mutableCopy];
  string = [v6 string];
  v8 = [string rangeOfCharacterFromSet:v5];
  v10 = v9;

  while (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 deleteCharactersInRange:{v8, v10}];
    string2 = [v6 string];
    v8 = [string2 rangeOfCharacterFromSet:v5];
    v10 = v12;
  }

  v13 = [v6 copy];

  return v13;
}

- (id)px_attributedStringWithParagraphLineBreakMode:()PhotosUICore
{
  selfCopy = self;
  v5 = [selfCopy length];
  v6 = MEMORY[0x1E69DB688];
  if (v5 < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [selfCopy attribute:*MEMORY[0x1E69DB688] atIndex:v5 - 1 effectiveRange:0];
  }

  if ([v7 lineBreakMode] != a3)
  {
    v8 = [v7 mutableCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    }

    v11 = v10;

    [v11 setLineBreakMode:a3];
    v12 = [selfCopy mutableCopy];
    [v12 addAttribute:*v6 value:v11 range:{0, v5}];

    selfCopy = v12;
  }

  return selfCopy;
}

- (id)px_attributedStringByApplyingCapitalization:()PhotosUICore
{
  selfCopy = self;
  v5 = selfCopy;
  if (a3 != 3)
  {
    if (a3 == 2)
    {
      v15 = [selfCopy mutableCopy];
      string = [v5 string];
      v17 = [v5 length];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __80__NSAttributedString_PhotosUICore__px_attributedStringByApplyingCapitalization___block_invoke;
      v27[3] = &unk_1E772D3F0;
      v18 = v15;
      v28 = v18;
      v29 = 2;
      [string enumerateSubstringsInRange:0 options:v17 usingBlock:{1027, v27}];

      v6 = v18;
      goto LABEL_15;
    }

    if (a3 == 1)
    {
      v6 = [selfCopy mutableCopy];
      v30 = 0;
      v31 = 0;
      if ([v5 length])
      {
        v7 = 0;
        do
        {
          v8 = v31;
          if (v31)
          {
            string2 = [v5 string];
            v10 = [string2 substringWithRange:{v30, v31}];

            v11 = [v10 px_stringByApplyingCapitalization:1];

            v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11 attributes:v7];
            [v6 replaceCharactersInRange:v30 withAttributedString:{v31, v12}];

            v8 = v31;
          }

          v13 = [v5 attributesAtIndex:v8 + v30 effectiveRange:&v30];

          v14 = v31 + v30;
          v7 = v13;
        }

        while (v14 < [v5 length]);
      }

      goto LABEL_14;
    }

LABEL_12:
    v6 = v5;
    goto LABEL_15;
  }

  string3 = [selfCopy string];
  px_firstLetterRange = [string3 px_firstLetterRange];
  v22 = v21;

  if (px_firstLetterRange == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  v6 = [v5 mutableCopy];
  string4 = [v5 string];
  v24 = [string4 substringWithRange:{px_firstLetterRange, v22}];
  v25 = [v24 px_stringByApplyingCapitalization:3];
  [v6 replaceCharactersInRange:px_firstLetterRange withString:{v22, v25}];

LABEL_14:
LABEL_15:

  return v6;
}

- (id)px_attributedStringByAddingAttributes:()PhotosUICore
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 addAttributes:v4 range:{0, objc_msgSend(self, "length")}];

  return v5;
}

+ (id)px_stringWithFormat:()PhotosUICore defaultAttributes:arguments:
{
  v128 = *MEMORY[0x1E69E9840];
  v107 = a3;
  v106 = a4;
  v7 = a5;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v108 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v123 objects:v127 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v124;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v124 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v123 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v13];
          v15 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"<#$^|"];
          [v15 appendString:v14];
          [v15 appendString:@"|^$#>"];
          [v108 setObject:v13 forKey:v15];
          [v8 addObject:v15];
        }

        else
        {
          [v8 addObject:v13];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v123 objects:v127 count:16];
    }

    while (v10);
  }

  v105 = v8;
  if (![v8 count])
  {
    v16 = v107;
    v19 = v107;
    v20 = 0;
    goto LABEL_21;
  }

  v16 = v107;
  if ([v8 count] == 1)
  {
    v17 = MEMORY[0x1E696AEC0];
    v122 = 0;
    v18 = [v8 objectAtIndexedSubscript:0];
    v19 = [v17 localizedStringWithValidatedFormat:v107 validFormatSpecifiers:@"%@" error:&v122, v18];
    v20 = v122;
LABEL_20:

    goto LABEL_21;
  }

  if ([v8 count] == 2)
  {
    v21 = MEMORY[0x1E696AEC0];
    v121 = 0;
    v18 = [v8 objectAtIndexedSubscript:0];
    v22 = [v8 objectAtIndexedSubscript:1];
    v19 = [v21 localizedStringWithValidatedFormat:v107 validFormatSpecifiers:@"%@ %@" error:&v121, v18, v22];
    v20 = v121;
LABEL_19:

    goto LABEL_20;
  }

  if ([v8 count] == 3)
  {
    v23 = MEMORY[0x1E696AEC0];
    v120 = 0;
    v18 = [v8 objectAtIndexedSubscript:0];
    v22 = [v8 objectAtIndexedSubscript:1];
    v24 = [v8 objectAtIndexedSubscript:2];
    v19 = [v23 localizedStringWithValidatedFormat:v107 validFormatSpecifiers:@"%@ %@ %@" error:&v120, v18, v22, v24];
    v20 = v120;

    goto LABEL_19;
  }

  if ([v8 count] == 4)
  {
    v50 = MEMORY[0x1E696AEC0];
    v119 = 0;
    v51 = [v8 objectAtIndexedSubscript:0];
    v52 = [v8 objectAtIndexedSubscript:1];
    v53 = [v8 objectAtIndexedSubscript:2];
    v54 = [v8 objectAtIndexedSubscript:3];
    v55 = [v50 localizedStringWithValidatedFormat:v107 validFormatSpecifiers:@"%@ %@ %@ %@" error:&v119, v51, v52, v53, v54];
    v20 = v119;
LABEL_41:

    v19 = v55;
    goto LABEL_21;
  }

  if ([v8 count] == 5)
  {
    v56 = MEMORY[0x1E696AEC0];
    v118 = 0;
    v51 = [v8 objectAtIndexedSubscript:0];
    v52 = [v8 objectAtIndexedSubscript:1];
    v53 = [v8 objectAtIndexedSubscript:2];
    v54 = [v8 objectAtIndexedSubscript:3];
    v57 = [v8 objectAtIndexedSubscript:4];
    v55 = [v56 localizedStringWithValidatedFormat:v107 validFormatSpecifiers:@"%@ %@ %@ %@ %@" error:&v118, v51, v52, v53, v54, v57];
    v20 = v118;
LABEL_40:

    goto LABEL_41;
  }

  if ([v8 count] == 6)
  {
    v58 = MEMORY[0x1E696AEC0];
    v117 = 0;
    v51 = [v8 objectAtIndexedSubscript:0];
    v52 = [v8 objectAtIndexedSubscript:1];
    v53 = [v8 objectAtIndexedSubscript:2];
    v54 = [v8 objectAtIndexedSubscript:3];
    v57 = [v8 objectAtIndexedSubscript:4];
    v59 = [v8 objectAtIndexedSubscript:5];
    v55 = [v58 localizedStringWithValidatedFormat:v107 validFormatSpecifiers:@"%@ %@ %@ %@ %@ %@" error:&v117, v51, v52, v53, v54, v57, v59];
    v60 = v117;

    v20 = v60;
    goto LABEL_40;
  }

  if ([v8 count] == 7)
  {
    v61 = MEMORY[0x1E696AEC0];
    v116 = 0;
    v62 = [v8 objectAtIndexedSubscript:0];
    v63 = [v8 objectAtIndexedSubscript:1];
    v102 = [v8 objectAtIndexedSubscript:2];
    v64 = [v8 objectAtIndexedSubscript:3];
    v65 = [v8 objectAtIndexedSubscript:4];
    v66 = [v8 objectAtIndexedSubscript:5];
    v67 = [v8 objectAtIndexedSubscript:6];
    v68 = v62;
    v69 = [v61 localizedStringWithValidatedFormat:v107 validFormatSpecifiers:@"%@ %@ %@ %@ %@ %@ %@" error:&v116, v62, v63, v102, v64, v65, v66, v67];
    v20 = v116;

    v19 = v69;
  }

  else
  {
    if ([v8 count] == 8)
    {
      v103 = MEMORY[0x1E696AEC0];
      v115 = 0;
      v95 = [v8 objectAtIndexedSubscript:0];
      v70 = [v8 objectAtIndexedSubscript:1];
      v98 = [v8 objectAtIndexedSubscript:2];
      v71 = [v8 objectAtIndexedSubscript:3];
      v72 = [v8 objectAtIndexedSubscript:4];
      v73 = [v8 objectAtIndexedSubscript:5];
      v74 = [v8 objectAtIndexedSubscript:6];
      v75 = [v8 objectAtIndexedSubscript:7];
      v76 = [v103 localizedStringWithValidatedFormat:v107 validFormatSpecifiers:@"%@ %@ %@ %@ %@ %@ %@ %@" error:&v115, v95, v70, v98, v71, v72, v73, v74, v75];
      v20 = v115;

      v19 = v76;
      v77 = v95;
    }

    else
    {
      if ([v8 count] == 9)
      {
        v99 = MEMORY[0x1E696AEC0];
        v114 = 0;
        v104 = [v8 objectAtIndexedSubscript:0];
        v78 = [v8 objectAtIndexedSubscript:1];
        v96 = [v8 objectAtIndexedSubscript:2];
        v79 = [v8 objectAtIndexedSubscript:3];
        v93 = [v8 objectAtIndexedSubscript:4];
        v80 = [v8 objectAtIndexedSubscript:5];
        v81 = [v8 objectAtIndexedSubscript:6];
        v82 = [v8 objectAtIndexedSubscript:7];
        v83 = [v8 objectAtIndexedSubscript:8];
        v84 = [v99 localizedStringWithValidatedFormat:v107 validFormatSpecifiers:@"%@ %@ %@ %@ %@ %@ %@ %@ %@" error:&v114, v104, v78, v96, v79, v93, v80, v81, v82, v83];
        v20 = v114;

        v19 = v84;
      }

      else
      {
        if ([v8 count] != 10)
        {
          v25 = *MEMORY[0x1E695D920];
          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"px_stringWithFormat cannot take more than 10 input args"];
          v20 = 0;
          goto LABEL_24;
        }

        v97 = MEMORY[0x1E696AEC0];
        v113 = 0;
        v104 = [v8 objectAtIndexedSubscript:0];
        v100 = [v8 objectAtIndexedSubscript:1];
        v94 = [v8 objectAtIndexedSubscript:2];
        v92 = [v8 objectAtIndexedSubscript:3];
        v85 = [v8 objectAtIndexedSubscript:4];
        v86 = [v8 objectAtIndexedSubscript:5];
        v87 = [v8 objectAtIndexedSubscript:6];
        v88 = [v8 objectAtIndexedSubscript:7];
        v89 = [v8 objectAtIndexedSubscript:8];
        v90 = [v8 objectAtIndexedSubscript:9];
        v91 = [v97 localizedStringWithValidatedFormat:v107 validFormatSpecifiers:@"%@ %@ %@ %@ %@ %@ %@ %@ %@ %@" error:&v113, v104, v100, v94, v92, v85, v86, v87, v88, v89, v90];
        v20 = v113;

        v19 = v91;
      }

      v77 = v104;
    }
  }

LABEL_21:
  if (!v19)
  {
    v25 = *MEMORY[0x1E695D920];
LABEL_24:
    v101 = v20;
    [MEMORY[0x1E695DF30] raise:v25 format:{@"px_stringWithFormat failed to make validated localized string with %td arguments for format: %@: %@", objc_msgSend(v8, "count"), v16, v20}];
    v19 = 0;
    goto LABEL_25;
  }

  v101 = v20;
LABEL_25:
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = [v19 length];
  v28 = [v19 rangeOfString:@"|^$#>" options:6 range:{0, v27}];
  if (v29)
  {
    v30 = v28;
    v31 = v29;
    v32 = [v19 rangeOfString:@"<#$^|" options:6 range:{0, v28}];
    if (v33)
    {
      v34 = v32;
      do
      {
        v35 = v30 + v31;
        v36 = [v19 substringWithRange:{v30 + v31, v27 - (v30 + v31)}];
        [v26 addObject:v36];
        v37 = v19;
        v38 = [v19 substringWithRange:{v34, v35 - v34}];
        v39 = [v108 objectForKey:v38];
        if (v39)
        {
          [v26 addObject:v39];
          v27 = v34;
        }

        else
        {
          [v26 addObject:@"|^$#>"];
          v27 = v30;
        }

        v19 = v37;
        v40 = [v37 rangeOfString:@"|^$#>" options:6 range:{0, v27}];
        if (!v41)
        {
          break;
        }

        v30 = v40;
        v31 = v41;
        v34 = [v37 rangeOfString:@"<#$^|" options:6 range:{0, v40}];
      }

      while (v42);
    }
  }

  v43 = [v19 substringWithRange:{0, v27}];
  [v26 addObject:v43];

  v44 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v110[0] = MEMORY[0x1E69E9820];
  v110[1] = 3221225472;
  v110[2] = __84__NSAttributedString_PhotosUICore__px_stringWithFormat_defaultAttributes_arguments___block_invoke;
  v110[3] = &unk_1E7746D00;
  v45 = v44;
  v111 = v45;
  v112 = v106;
  v46 = v106;
  [v26 enumerateObjectsWithOptions:2 usingBlock:v110];
  v47 = v112;
  v48 = v45;

  return v45;
}

+ (id)px_attributedStringWithHTMLString:()PhotosUICore defaultAttributes:emphasizedAttributes:italicizedAttributes:
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[PXAttributedStringHTMLParser alloc] initWithHTMLString:v12 defaultAttributes:v11];

  [(PXAttributedStringHTMLParser *)v13 setEmphasizedAttributes:v10];
  [(PXAttributedStringHTMLParser *)v13 setItalicizedAttributes:v9];

  v14 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1F1741150 attributes:v11];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __130__NSAttributedString_PhotosUICore__px_attributedStringWithHTMLString_defaultAttributes_emphasizedAttributes_italicizedAttributes___block_invoke;
  v23[3] = &unk_1E77470A0;
  v15 = v14;
  v24 = v15;
  [(PXAttributedStringHTMLParser *)v13 setParsedAttributedStringBlock:v23];
  [(PXAttributedStringHTMLParser *)v13 parse];
  v16 = +[PXApplicationSettings sharedInstance];
  wantsPseudostringsWithSpecialCharacters = [v16 wantsPseudostringsWithSpecialCharacters];

  if (wantsPseudostringsWithSpecialCharacters)
  {
    v19 = objc_alloc(MEMORY[0x1E696AAB0]);
    v20 = +[PXApplicationSettings sharedInstance];
    stringWithSpecialCharacters = [v20 stringWithSpecialCharacters];
    v22 = [v19 initWithString:stringWithSpecialCharacters];
    [v15 insertAttributedString:v22 atIndex:0];
  }

  return v15;
}

@end