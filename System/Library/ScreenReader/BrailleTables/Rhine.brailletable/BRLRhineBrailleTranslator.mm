@interface BRLRhineBrailleTranslator
- (BOOL)activeTableSupportsContractedBraille;
- (BRLRhineBrailleTranslator)init;
- (id)printBrailleForText:(id)text mode:(unint64_t)mode locations:(id *)locations textPositionsRange:(_NSRange)range textFormattingRanges:(id)ranges;
- (id)textForPrintBraille:(id)braille mode:(unint64_t)mode locations:(id *)locations;
- (int)sendCommand:(id)command;
- (void)extractLocations:(int *)locations locations_output:(id *)locations_output output_size:(int64_t)output_size;
- (void)setActiveTable:(id)table;
- (void)setTranslationMode:(unint64_t)mode;
@end

@implementation BRLRhineBrailleTranslator

- (BRLRhineBrailleTranslator)init
{
  [(BRLRhineBrailleTranslator *)self sendCommand:@"{FU on}"];
  [(BRLRhineBrailleTranslator *)self sendCommand:@"{FF on}"];
  v3 = objc_opt_new();
  v9[0] = v3;
  v4 = objc_opt_new();
  v9[1] = v4;
  v5 = objc_opt_new();
  v9[2] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:3];
  allPreprocessors = self->_allPreprocessors;
  self->_allPreprocessors = v6;

  return self;
}

- (BOOL)activeTableSupportsContractedBraille
{
  if (_os_feature_enabled_impl())
  {
    useContraction = self->_useContraction;
  }

  else
  {
    useContraction = ![(NSString *)self->_activeTable isEqualToString:@"es"];
  }

  return useContraction & 1;
}

- (void)setActiveTable:(id)table
{
  tableCopy = table;
  v6 = [NSCharacterSet characterSetWithCharactersInString:@"_-"];
  v7 = [tableCopy rangeOfCharacterFromSet:v6 options:4];
  v8 = tableCopy;
  v9 = v8;
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_useContraction = 0;
    v10 = v8;
  }

  else
  {
    v10 = [v8 substringToIndex:v7];

    v11 = [v9 substringFromIndex:v7 + 1];
    self->_useContraction = [v11 isEqualToString:@"g2"];
  }

  v12 = [languageDict objectForKeyedSubscript:v10];
  if (v12)
  {
    v13 = [NSString stringWithFormat:@"{FLN %@}", v12];
    if ([(BRLRhineBrailleTranslator *)self sendCommand:v13])
    {
      v14 = sub_1B834();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1C138();
      }
    }

    else
    {
      objc_storeStrong(&self->_activeTable, table);
    }
  }

  else
  {
    v13 = sub_1B834();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1C1AC();
    }
  }
}

- (int)sendCommand:(id)command
{
  commandCopy = command;
  uTF8String = [commandCopy UTF8String];
  v5 = 6 * strlen(uTF8String);
  if (v5 >= 0x1FFFFFFF)
  {
    v6 = 0x1FFFFFFFLL;
  }

  else
  {
    v6 = v5;
  }

  v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
  if (v7)
  {
    v8 = v7;
    v9 = wh_forward_translate(uTF8String, v7, v6, 0);
    if (v9)
    {
      v10 = sub_1B834();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1C234();
      }
    }

    free(v8);
  }

  else
  {
    v11 = sub_1B834();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1C29C();
    }

    v9 = 1;
  }

  return v9;
}

- (void)extractLocations:(int *)locations locations_output:(id *)locations_output output_size:(int64_t)output_size
{
  if (locations_output)
  {
    output_sizeCopy = output_size;
    v8 = 8 * output_size;
    v9 = malloc_type_malloc(8 * output_size, 0x92B35D10uLL);
    v10 = v9;
    if (output_sizeCopy >= 1)
    {
      v11 = v9;
      do
      {
        v12 = *locations++;
        *v11++ = v12;
        --output_sizeCopy;
      }

      while (output_sizeCopy);
    }

    *locations_output = [NSData dataWithBytes:v9 length:v8];

    free(v10);
  }
}

- (void)setTranslationMode:(unint64_t)mode
{
  if (_os_feature_enabled_impl())
  {
    if (!self->_useContraction)
    {
LABEL_7:
      v5 = @"{FGR 1}";
      goto LABEL_8;
    }
  }

  else if (mode != 3)
  {
    if (mode - 1 > 1)
    {
      return;
    }

    goto LABEL_7;
  }

  v5 = @"{FGR 2}";
LABEL_8:

  [(BRLRhineBrailleTranslator *)self sendCommand:v5];
}

- (id)printBrailleForText:(id)text mode:(unint64_t)mode locations:(id *)locations textPositionsRange:(_NSRange)range textFormattingRanges:(id)ranges
{
  locationsCopy = locations;
  textCopy = text;
  rangesCopy = ranges;
  [(BRLRhineBrailleTranslator *)self setTranslationMode:mode];
  v11 = textCopy;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v12 = self->_allPreprocessors;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v44 objects:v48 count:16];
  v41 = v11;
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v45;
    do
    {
      v17 = 0;
      v18 = v11;
      v19 = v15;
      do
      {
        if (*v45 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v20 = *(*(&v44 + 1) + 8 * v17);
        v43 = 0;
        v11 = [v20 preprocessPrintString:v18 withLocationMap:&v43 isEightDot:1 textFormattingRanges:{rangesCopy, locationsCopy, v41}];
        v21 = v43;

        v15 = [BRLTPreprocessorHelper mergeLocationMap:v19 withLocationMap:v21];

        v17 = v17 + 1;
        v18 = v11;
        v19 = v15;
      }

      while (v14 != v17);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  v22 = v11;
  v23 = [v22 cStringUsingEncoding:12];
  if (!v23)
  {
    v33 = sub_1B834();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_1C344();
    }

    goto LABEL_34;
  }

  v24 = v23;
  v25 = 6 * strlen(v23);
  if (v25 >= 0x1FFFFFFF)
  {
    v25 = 0x1FFFFFFF;
  }

  if (v25 <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v25;
  }

  v27 = malloc_type_malloc(v26, 0x100004077774924uLL);
  v28 = malloc_type_malloc(v26, 0x100004077774924uLL);
  v29 = malloc_type_malloc(4 * v26, 0x100004052888210uLL);
  v30 = v29;
  if (v27)
  {
    v31 = v28 == 0;
  }

  else
  {
    v31 = 1;
  }

  if (v31 || v29 == 0)
  {
    if (v27)
    {
      free(v27);
    }

    if (v28)
    {
      free(v28);
    }

    if (v30)
    {
      free(v30);
    }

    v33 = sub_1B834();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_1C29C();
    }

LABEL_34:

    v34 = 0;
    goto LABEL_40;
  }

  v35 = wh_forward_translate(v24, v27, v26, v29);
  brl_convert_to_utf(v27, v28, v26);
  v34 = [NSString stringWithCString:v28 encoding:4];
  if (v35)
  {
    v36 = sub_1B834();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_1C2DC();
    }

    v34 = 0;
  }

  v37 = [v34 length];
  [BRLTPreprocessorHelper mergePreprocessorOutputLocationMap:v15 outputToPreprocessedMap:v30 outputLen:v37 outputToTextMap:v40];
  free(v28);
  free(v27);
  free(v30);
LABEL_40:

  return v34;
}

- (id)textForPrintBraille:(id)braille mode:(unint64_t)mode locations:(id *)locations
{
  brailleCopy = braille;
  [(BRLRhineBrailleTranslator *)self setTranslationMode:mode];
  v9 = [brailleCopy cStringUsingEncoding:4];
  v10 = 6 * strlen(v9);
  if (v10 >= 0x1FFFFFFF)
  {
    v10 = 0x1FFFFFFF;
  }

  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = malloc_type_malloc(v11, 0x100004077774924uLL);
  v13 = malloc_type_malloc(v11, 0x100004077774924uLL);
  v14 = malloc_type_malloc(4 * v11, 0x100004052888210uLL);
  v15 = v14;
  if (v12)
  {
    v16 = v13 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16 || v14 == 0)
  {
    if (v12)
    {
      free(v12);
    }

    if (v13)
    {
      free(v13);
    }

    if (v15)
    {
      free(v15);
    }

    v18 = sub_1B834();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1C420();
    }

    v19 = 0;
  }

  else
  {
    wh_backward_translate("%", v13, v11, v14);
    brl_convert_from_utf(v9, v12, v11);
    if (wh_backward_translate(v12, v13, v11, v15))
    {
      v21 = sub_1B834();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1C3B8();
      }
    }

    v19 = [NSString stringWithCString:v13 encoding:12];
    -[BRLRhineBrailleTranslator extractLocations:locations_output:output_size:](self, "extractLocations:locations_output:output_size:", v15, locations, [v19 length]);
    free(v13);
    free(v12);
    free(v15);
  }

  return v19;
}

@end