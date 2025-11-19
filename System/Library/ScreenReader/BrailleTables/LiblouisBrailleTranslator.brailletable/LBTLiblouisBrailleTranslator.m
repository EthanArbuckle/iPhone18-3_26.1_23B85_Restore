@interface LBTLiblouisBrailleTranslator
+ (void)initialize;
- (BOOL)activeTableSupportsContractedBraille;
- (BOOL)activeTableSupportsEightDotBraille;
- (BOOL)activeTableSupportsIPA;
- (BOOL)activeTableSupportsModeWithKey:(id)a3;
- (BOOL)activeTableSupportsTechnicalBraille;
- (LBTLiblouisBrailleTranslator)init;
- (NSDictionary)activeTableMap;
- (NSDictionary)languageMap;
- (id)_printBrailleForText:(id)a3 table:(id)a4 locations:(id *)a5 textPositionsRange:(_NSRange)a6 textFormattingRanges:(id)a7;
- (id)printBrailleForText:(id)a3 mode:(unint64_t)a4 locations:(id *)a5 textFormattingRanges:(id)a6;
- (id)printBrailleForText:(id)a3 mode:(unint64_t)a4 locations:(id *)a5 textPositionsRange:(_NSRange)a6 textFormattingRanges:(id)a7;
- (id)tableForActiveTableMode:(unint64_t)a3;
- (id)tableListForTable:(id)a3;
- (id)technicalTableForActiveLanguage:(BOOL)a3;
- (id)textForPrintBraille:(id)a3 mode:(unint64_t)a4 locations:(id *)a5;
- (void)dealloc;
- (void)setActiveTable:(id)a3;
@end

@implementation LBTLiblouisBrailleTranslator

+ (void)initialize
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 resourcePath];
  v5 = [v3 stringByAppendingString:@"/liblouis/tables"];

  v4 = v5;
  setenv("LOUIS_TABLEPATH", [v5 UTF8String], 1);
  lou_registerLogCallback(sub_172C);
}

- (LBTLiblouisBrailleTranslator)init
{
  v6.receiver = self;
  v6.super_class = LBTLiblouisBrailleTranslator;
  v2 = [(LBTLiblouisBrailleTranslator *)&v6 init];
  v3 = objc_opt_new();
  [(LBTLiblouisBrailleTranslator *)v2 setEmojiPreprocessor:v3];

  v4 = objc_opt_new();
  [(LBTLiblouisBrailleTranslator *)v2 setTextFormattingPreprocessor:v4];

  return v2;
}

- (void)dealloc
{
  lou_free();
  v3.receiver = self;
  v3.super_class = LBTLiblouisBrailleTranslator;
  [(LBTLiblouisBrailleTranslator *)&v3 dealloc];
}

- (NSDictionary)languageMap
{
  languageMap = self->_languageMap;
  if (!languageMap)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 pathForResource:@"Tables" ofType:@"plist"];
    v6 = [NSDictionary dictionaryWithContentsOfFile:v5];
    v7 = self->_languageMap;
    self->_languageMap = v6;

    languageMap = self->_languageMap;
  }

  return languageMap;
}

- (NSDictionary)activeTableMap
{
  v3 = [(LBTLiblouisBrailleTranslator *)self languageMap];
  v4 = [(LBTLiblouisBrailleTranslator *)self activeTable];
  v5 = [v3 objectForKeyedSubscript:v4];

  return v5;
}

- (BOOL)activeTableSupportsModeWithKey:(id)a3
{
  v4 = a3;
  v5 = [(LBTLiblouisBrailleTranslator *)self activeTableMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6 != 0;
}

- (id)tableListForTable:(id)a3
{
  v4 = a3;
  v5 = [(LBTLiblouisBrailleTranslator *)self languageMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 allValues];
  v8 = [v7 componentsJoinedByString:{@", "}];

  return v8;
}

- (id)tableForActiveTableMode:(unint64_t)a3
{
  v4 = [(LBTLiblouisBrailleTranslator *)self activeTableMap];
  v5 = [v4 objectForKeyedSubscript:@"table"];
  if (!v5)
  {
    v6 = @"6Dot";
    if (a3 == 2)
    {
      v6 = @"8Dot";
    }

    if (a3 == 3)
    {
      v7 = @"Contracted";
    }

    else
    {
      v7 = v6;
    }

    v5 = [v4 objectForKeyedSubscript:v7];
    if (!v5)
    {
      v5 = [v4 objectForKeyedSubscript:@"Contracted"];
      if (!v5)
      {
        v5 = [v4 objectForKeyedSubscript:@"8Dot"];
        if (!v5)
        {
          v5 = [v4 objectForKeyedSubscript:@"6Dot"];
        }
      }
    }
  }

  v8 = v5;

  return v8;
}

- (id)technicalTableForActiveLanguage:(BOOL)a3
{
  v3 = a3;
  v5 = [(LBTLiblouisBrailleTranslator *)self activeTableMap];
  v6 = v5;
  if (!v3 || ([v5 objectForKeyedSubscript:@"Technical"], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [(LBTLiblouisBrailleTranslator *)self tableForActiveTableMode:1];
  }

  return v7;
}

- (void)setActiveTable:(id)a3
{
  v4 = a3;
  v5 = LBTLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1CA04();
  }

  if (![(NSString *)self->_activeTable isEqualToString:v4])
  {
    lou_free();
    v6 = [v4 copy];
    activeTable = self->_activeTable;
    self->_activeTable = v6;

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 objectForInfoDictionaryKey:@"BrailleTables"];
    v10 = [v9 objectForKey:v4];
    v11 = [v10 objectForKey:@"supportsContraction"];
    self->_supportsContraction = [v11 BOOLValue];

    v12 = [v10 objectForKey:@"supportsTechnical"];
    self->_supportsTechnical = [v12 BOOLValue];

    v13 = [v10 objectForKey:@"supports8dot"];
    self->_supportsEightDot = [v13 BOOLValue];

    v14 = [v10 objectForKey:@"supportsIPA"];
    self->_supportsIPA = [v14 BOOLValue];
  }
}

- (BOOL)activeTableSupportsContractedBraille
{
  if (_os_feature_enabled_impl())
  {
    return self->_supportsContraction;
  }

  return [(LBTLiblouisBrailleTranslator *)self activeTableSupportsModeWithKey:@"Contracted"];
}

- (BOOL)activeTableSupportsEightDotBraille
{
  if (_os_feature_enabled_impl())
  {
    return self->_supportsEightDot;
  }

  return [(LBTLiblouisBrailleTranslator *)self activeTableSupportsModeWithKey:@"8Dot"];
}

- (BOOL)activeTableSupportsTechnicalBraille
{
  if (_os_feature_enabled_impl())
  {
    return self->_supportsTechnical;
  }

  return [(LBTLiblouisBrailleTranslator *)self activeTableSupportsModeWithKey:@"Technical"];
}

- (id)printBrailleForText:(id)a3 mode:(unint64_t)a4 locations:(id *)a5 textFormattingRanges:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = -[LBTLiblouisBrailleTranslator printBrailleForText:mode:locations:textPositionsRange:textFormattingRanges:](self, "printBrailleForText:mode:locations:textPositionsRange:textFormattingRanges:", v11, a4, a5, 0, [v11 length], v10);

  return v12;
}

- (id)printBrailleForText:(id)a3 mode:(unint64_t)a4 locations:(id *)a5 textPositionsRange:(_NSRange)a6 textFormattingRanges:(id)a7
{
  length = a6.length;
  location = a6.location;
  v13 = a3;
  v14 = a7;
  v15 = [(LBTLiblouisBrailleTranslator *)self tableForActiveTableMode:a4];
  if (v15)
  {
    v16 = [(LBTLiblouisBrailleTranslator *)self _printBrailleForText:v13 table:v15 locations:a5 textPositionsRange:location textFormattingRanges:length, v14];
  }

  else
  {
    v17 = LBTLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1CAFC(self);
    }

    v16 = 0;
  }

  return v16;
}

- (id)_printBrailleForText:(id)a3 table:(id)a4 locations:(id *)a5 textPositionsRange:(_NSRange)a6 textFormattingRanges:(id)a7
{
  v58 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a7;
  v13 = [(LBTLiblouisBrailleTranslator *)self textFormattingPreprocessor];
  v14 = [v13 processText:v10 withFormattingRanges:v12];

  v15 = [(LBTLiblouisBrailleTranslator *)self emojiPreprocessor];
  v61 = 0;
  v16 = [v15 preprocessPrintString:v10 withLocationMap:&v61 typeformData:v14];
  v17 = v61;

  v18 = [v16 dataUsingEncoding:2483028224];
  v19 = [v18 bytes];
  v20 = [v16 rangeOfComposedCharacterSequencesForRange:{0, objc_msgSend(v16, "length")}];
  v60 = v20 + v21;
  if ((3 * (v20 + v21)) <= 512)
  {
    v22 = 512;
  }

  else
  {
    v22 = 3 * (v20 + v21);
  }

  v59 = v22;
  v23 = malloc_type_malloc(2 * v22, 0x1000040BDFB0063uLL);
  if (v23)
  {
    v24 = v23;
    v57 = v17;
    if (v14)
    {
      v25 = [v14 length];
      if ([v16 length] != (v25 >> 1))
      {
        v26 = LBTLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_1CB80();
        }

        v14 = 0;
      }
    }

    if (v58)
    {
      v27 = malloc_type_malloc(4 * v22, 0x9892EA0uLL);
      if (!v27)
      {
        v28 = LBTLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_1CC04();
        }

        free(v24);
        v29 = 0;
        v17 = v57;
        goto LABEL_50;
      }
    }

    else
    {
      v27 = 0;
    }

    [v14 length];
    v56 = &v54;
    v31 = __chkstk_darwin();
    v33 = (&v54 - v32);
    if (v31)
    {
      [v14 getBytes:&v54 - v32 length:?];
    }

    else
    {
      v33 = 0;
    }

    if (lou_translate([v11 UTF8String], v19, &v60, v24, &v59, v33, 0, v27, 0, 0, 68) == 1)
    {
      v17 = v57;
      if (v58)
      {
        v55 = 8 * v59;
        v34 = malloc_type_malloc(v55, 0x6BDFE5AAuLL);
        if (v34)
        {
          v35 = v34;
          v36 = [v17 bytes];
          v38 = (v60 - 1);
          if (v60 >= 1)
          {
            v39 = v59;
            v37 = 0.0;
            while (v38)
            {
              v40 = v27[v38];
              v41 = v38 - 1;
              if (v40 != v27[v38 - 1])
              {
                goto LABEL_31;
              }

LABEL_39:
              v50 = v38 <= 0;
              v38 = v41;
              if (v50)
              {
                goto LABEL_41;
              }
            }

            v40 = *v27;
LABEL_31:
            v42 = v40;
            if (v39 > v40)
            {
              v43 = 0;
              v44 = v36[v38];
              v45 = v39 - v42;
              v46 = (v39 - v42 + 1) & 0xFFFFFFFFFFFFFFFELL;
              v47 = vdupq_n_s64(v45 - 1);
              v48 = &v35[8 * v42];
              do
              {
                v49 = vmovn_s64(vcgeq_u64(v47, vorrq_s8(vdupq_n_s64(v43), xmmword_1DCF0)));
                if (v49.i8[0])
                {
                  *&v48[8 * v43] = v44;
                }

                if (v49.i8[4])
                {
                  *&v48[8 * v43 + 8] = v44;
                }

                v43 += 2;
              }

              while (v46 != v43);
            }

            v41 = v38 - 1;
            v39 = v42;
            goto LABEL_39;
          }

LABEL_41:
          v51 = [NSData dataWithBytes:v35 length:v55, v37];
          *v58 = v51;
          free(v35);
        }
      }

      if (v27)
      {
        free(v27);
      }

      v29 = [NSString stringWithCharacters:v24 length:v59];
      free(v24);
    }

    else
    {
      v52 = LBTLog();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        sub_1CC44();
      }

      free(v24);
      if (v27)
      {
        free(v27);
      }

      v29 = 0;
      v17 = v57;
    }
  }

  else
  {
    v30 = LBTLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1CCC8();
    }

    v29 = 0;
  }

LABEL_50:

  return v29;
}

- (id)textForPrintBraille:(id)a3 mode:(unint64_t)a4 locations:(id *)a5
{
  v8 = a3;
  v9 = [(LBTLiblouisBrailleTranslator *)self tableForActiveTableMode:a4];
  v10 = [v8 dataUsingEncoding:2483028224];
  v11 = [v10 bytes];
  v12 = [v8 rangeOfComposedCharacterSequencesForRange:{0, objc_msgSend(v8, "length")}];
  v38 = v12 + v13;
  v14 = 4 * (v12 + v13) + 64;
  v37 = v14;
  v15 = malloc_type_malloc(2 * v14, 0x1000040BDFB0063uLL);
  if (a5)
  {
    v16 = malloc_type_malloc(v14, 0x9550110CuLL);
    if (!v16)
    {
      v17 = LBTLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1CC04();
      }

LABEL_32:

      free(v15);
      v34 = 0;
      goto LABEL_33;
    }
  }

  else
  {
    v16 = 0;
  }

  if (lou_backTranslate([v9 UTF8String], v11, &v38, v15, &v37, 0, 0, v16, 0, 0, 0x80u) != 1)
  {
    v17 = LBTLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1CD08();
    }

    goto LABEL_32;
  }

  if (v16)
  {
    v18 = 8 * v37;
    v19 = malloc_type_malloc(v18, 0xAF383437uLL);
    if (v19)
    {
      v21 = v19;
      v22 = (v38 - 1);
      if (v38 >= 1)
      {
        v23 = v37;
        v20 = 0.0;
        while (v22)
        {
          v24 = *&v16[4 * v22];
          v25 = v22 - 1;
          if (v24 != *&v16[4 * v22 - 4])
          {
            goto LABEL_15;
          }

LABEL_23:
          v33 = v22 <= 0;
          v22 = v25;
          if (v33)
          {
            goto LABEL_25;
          }
        }

        v24 = *v16;
LABEL_15:
        v26 = v24;
        if (v23 > v24)
        {
          v27 = 0;
          v28 = v23 - v24;
          v29 = (v23 - v26 + 1) & 0xFFFFFFFFFFFFFFFELL;
          v30 = vdupq_n_s64(v28 - 1);
          v31 = &v19[8 * v26];
          do
          {
            v32 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v27), xmmword_1DCF0)));
            if (v32.i8[0])
            {
              *&v31[8 * v27] = v22;
            }

            if (v32.i8[4])
            {
              *&v31[8 * v27 + 8] = v22;
            }

            v27 += 2;
          }

          while (v29 != v27);
        }

        v25 = v22 - 1;
        v23 = v26;
        goto LABEL_23;
      }

LABEL_25:
      *a5 = [NSData dataWithBytes:v19 length:v18, v20];
      free(v21);
    }

    free(v16);
  }

  v34 = [NSString stringWithCharacters:v15 length:v37];
  free(v15);
  v35 = LBTLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    sub_1CD78();
  }

LABEL_33:

  return v34;
}

- (BOOL)activeTableSupportsIPA
{
  if (_os_feature_enabled_impl())
  {
    return self->_supportsIPA;
  }

  v4 = [(LBTLiblouisBrailleTranslator *)self activeTable];
  v5 = [v4 isEqualToString:@"ipa"];

  return v5;
}

@end