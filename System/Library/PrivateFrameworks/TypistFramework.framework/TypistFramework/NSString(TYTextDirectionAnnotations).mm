@interface NSString(TYTextDirectionAnnotations)
- (id)textDirectionAnnotations;
@end

@implementation NSString(TYTextDirectionAnnotations)

- (id)textDirectionAnnotations
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCA900] numberCombiningCharacterSet];
  v4 = [objc_alloc(MEMORY[0x277CD89E0]) initWithUnit:0];
  v5 = objc_alloc_init(MEMORY[0x277CD89C0]);
  [v4 setString:a1];
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v6 = [a1 length];
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __64__NSString_TYTextDirectionAnnotations__textDirectionAnnotations__block_invoke;
  v30 = &unk_279DF4868;
  v31 = a1;
  v35 = &v42;
  v7 = v5;
  v32 = v7;
  v36 = &v46;
  v37 = &v38;
  v8 = v3;
  v33 = v8;
  v9 = v2;
  v34 = v9;
  [v4 enumerateTokensInRange:0 usingBlock:{v6, &v27}];
  v10 = v43[3];
  if (v10 < [a1 length])
  {
    v11 = v43[3];
    v12 = [a1 length];
    v13 = v12 - v43[3];
    v14 = [a1 substringWithRange:{v11, v13}];
    [v7 processString:v14];
    v15 = MEMORY[0x277CBEAF8];
    v16 = [v7 dominantLanguage];
    v17 = [v15 characterDirectionForLanguage:v16];

    if (*(v39 + 24) == 1 && (v17 != 2 || ([MEMORY[0x277CCA900] punctuationCharacterSet], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCA900], "characterSetWithCharactersInString:", v14), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "isSupersetOfSet:", v19), v19, v18, v20)))
    {
      v21 = [v9 lastObject];
      v22 = [v21 range];
      [v21 range];
      [v21 setRange:{v22, v23 + v13}];
    }

    else
    {
      v21 = [TYTextDirectionAnnotation initWithRange:v11 textDirection:v13, v47[3]];
      [v9 addObject:v21];
    }
  }

  v24 = v34;
  v25 = v9;

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);

  return v25;
}

@end