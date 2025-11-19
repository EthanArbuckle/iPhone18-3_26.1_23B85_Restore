@interface CRDataDetectorUtilities
+ (BOOL)_shouldGroupAllEntitiesFor:(id)a3 lines:(id)a4;
+ (_NSRange)_mappedUrlificationRangeFor:(_NSRange)a3 withMapping:(id)a4;
+ (double)_personNameScoreForFullNameString:(id)a3 locale:(id)a4;
+ (double)_personNameScoreForString:(id)a3 locale:(id)a4;
+ (id)_personNameFromFullNameString:(id)a3;
+ (id)_personNameLineInRegion:(id)a3;
+ (id)_personNameLineInRegion:(id)a3 defaultLocale:(id)a4;
+ (id)_regionsForTranscript:(id)a3 inRange:(_NSRange)a4 mapping:(id)a5;
+ (id)_stringByRemovingNamePrefixes:(id)a3;
+ (id)computeDataDetectorRegionsForText:(id)a3 locale:(id)a4 transcriptComponents:(id)a5 ddQOS:(int)a6;
+ (id)computeGroupRegionsWithDataDetectorRegions:(id)a3 inRegion:(id)a4;
+ (unint64_t)_dataCountOfType:(unint64_t)a3 inRegions:(id)a4;
+ (unint64_t)_groupTypeFromChildren:(id)a3;
+ (void)debugDataDetectorForRegion:(id)a3 withImage:(id)a4 ddQOS:(int)a5;
@end

@implementation CRDataDetectorUtilities

+ (_NSRange)_mappedUrlificationRangeFor:(_NSRange)a3 withMapping:(id)a4
{
  length = a3.length;
  location = a3.location;
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (location >= [v6 count] || (v7 = length + location - 1, v7 >= objc_msgSend(v6, "count")))
  {
    v13 = CROSLogForCategory(7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 134218496;
      v17 = location;
      v18 = 2048;
      v19 = length;
      v20 = 2048;
      v21 = [v6 count];
      _os_log_impl(&dword_1B40D2000, v13, OS_LOG_TYPE_ERROR, "_mappedUrlificationRangeFor:withMapping: Range (%ld, %ld) out of bounds for mapping length %ld.", &v16, 0x20u);
    }

    v12 = 0;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = [v6 objectAtIndexedSubscript:location];
    v9 = [v8 unsignedIntegerValue];

    v10 = [v6 objectAtIndexedSubscript:v7];
    v11 = [v10 unsignedIntegerValue];

    v12 = v11 - v9 + 1;
  }

  v14 = v9;
  v15 = v12;
  result.length = v15;
  result.location = v14;
  return result;
}

+ (id)_regionsForTranscript:(id)a3 inRange:(_NSRange)a4 mapping:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v9 = a5;
  v10 = [objc_opt_class() _mappedUrlificationRangeFor:location withMapping:{length, v9}];
  v12 = v11;
  v20.location = [v8 representedRange];
  v21.location = v10;
  v21.length = v12;
  v13 = NSIntersectionRange(v20, v21);
  v14 = v13.length;
  if (v13.length)
  {
    v15 = [v8 representedRange];
    v16 = [v8 outputRegion];
    v17 = [v16 outputRegionWithContentsOfCharacterRange:{v13.location - v15, v13.length}];

    v14 = [v17 regionsSuitableForDataDetectorOutput];
  }

  return v14;
}

+ (double)_personNameScoreForString:(id)a3 locale:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__CRDataDetectorUtilities__personNameScoreForString_locale___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED95FE28 != -1)
  {
    dispatch_once(&qword_1ED95FE28, block);
  }

  v8 = qword_1ED95FE20;
  objc_sync_enter(v8);
  if ([v7 isEqualToString:@"en-US"])
  {
    [qword_1ED95FE20 personNameScoreForStringWithGazetteers:v6 locale:v7 useLastNameGazetteer:1];
  }

  else
  {
    [qword_1ED95FE20 personNameScoreForStringWithGazetteers:v6 locale:v7 useLastNameGazetteer:0];
  }

  v10 = -1.79769313e308;
  if (v9 <= -1.79769313e308 || (v10 = v9, v9 < 0.0))
  {
    [qword_1ED95FE20 personNameScoreForStringWithTagger:v6 locale:v7];
    if (v10 < v11)
    {
      v10 = v11;
    }
  }

  objc_sync_exit(v8);

  return v10;
}

void __60__CRDataDetectorUtilities__personNameScoreForString_locale___block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v0 URLForResource:@"lex-names" withExtension:@"gzt"];

  v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v2 = [v1 URLForResource:@"names" withExtension:@"gzt"];

  v3 = [[CRNamedEntityRecognizer alloc] initWithNameGazetteerURL:v5 lastNameGazetteerURL:v2];
  v4 = qword_1ED95FE20;
  qword_1ED95FE20 = v3;
}

+ (double)_personNameScoreForFullNameString:(id)a3 locale:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() _personNameFromFullNameString:v5];
  if (v7)
  {
    [objc_opt_class() _personNameScoreForString:v7 locale:v6];
    v9 = v8;
  }

  else
  {
    v9 = -1.0;
  }

  return v9;
}

+ (id)_stringByRemovingNamePrefixes:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ((atomic_load_explicit(&qword_1ED95FE40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED95FE40))
  {
    qword_1ED95FE38 = objc_opt_new();
    __cxa_guard_release(&qword_1ED95FE40);
  }

  if (qword_1ED95FE30 != -1)
  {
    dispatch_once(&qword_1ED95FE30, &__block_literal_global_168);
  }

  v4 = v3;
  v5 = 0;
  v21 = v4;
LABEL_5:
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = qword_1ED95FE38;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v7)
  {
    v22 = *v28;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        if ([v9 hasSuffix:@"."])
        {
          v10 = [v9 stringByAppendingString:@" "];
          v33 = v10;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
        }

        else
        {
          v10 = [v9 stringByAppendingString:@". "];
          v32[0] = v10;
          v12 = [v9 stringByAppendingString:@" "];
          v32[1] = v12;
          v13 = [v9 stringByAppendingString:@"."];
          v32[2] = v13;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
        }

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v14 = v11;
        v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v15)
        {
          v16 = *v24;
LABEL_15:
          v17 = 0;
          while (1)
          {
            if (*v24 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v23 + 1) + 8 * v17);
            if ([v4 hasPrefix:v18])
            {
              break;
            }

            if (v15 == ++v17)
            {
              v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v15)
              {
                goto LABEL_15;
              }

              goto LABEL_21;
            }
          }

          v19 = [v4 substringFromIndex:{objc_msgSend(v18, "length")}];

          ++v5;
          v4 = v19;
          if (v5 != 3)
          {
            goto LABEL_5;
          }

          goto LABEL_27;
        }

LABEL_21:
      }

      v7 = [v6 countByEnumeratingWithState:&v27 objects:v34 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v19 = v4;
LABEL_27:

  return v19;
}

void __57__CRDataDetectorUtilities__stringByRemovingNamePrefixes___block_invoke()
{
  v0 = getNamePrefixes();
  v1 = [v0 objectForKeyedSubscript:@"prefixes"];

  [v1 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_174];
  [qword_1ED95FE38 sortUsingComparator:&__block_literal_global_177];
}

uint64_t __57__CRDataDetectorUtilities__stringByRemovingNamePrefixes___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 length];
  if (v6 <= [v5 length])
  {
    v8 = [v4 length];
    v7 = v8 != [v5 length];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

+ (id)_personNameFromFullNameString:(id)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (qword_1ED95FE50 != -1)
  {
    dispatch_once(&qword_1ED95FE50, &__block_literal_global_185);
  }

  if ([v4 length] <= 0x23)
  {
    v6 = [a1 _stringByRemovingNamePrefixes:v4];

    v7 = [v6 stringByFoldingWithOptions:128 locale:0];
    if ([v7 length] && (v8 = objc_msgSend(v7, "length"), v8 == objc_msgSend(v6, "length")))
    {
      v9 = [qword_1ED95FE48 firstMatchInString:v7 options:0 range:{0, objc_msgSend(v7, "length")}];
      if ([v9 range] || (objc_msgSend(v9, "range"), v10 < objc_msgSend(v6, "length")) || objc_msgSend(v9, "numberOfRanges") != 8 || objc_msgSend(v9, "rangeAtIndex:", 1) == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v9, "rangeAtIndex:", 3) == 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = 0;
      }

      else
      {
        v12 = [v9 rangeAtIndex:1];
        v14 = [v6 substringWithRange:{v12, v13}];
        v19[0] = v14;
        v15 = [v9 rangeAtIndex:3];
        v17 = [v6 substringWithRange:{v15, v16}];
        v19[1] = v17;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
        v5 = [v18 componentsJoinedByString:@" "];
      }
    }

    else
    {
      v5 = 0;
    }

    v4 = v6;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __57__CRDataDetectorUtilities__personNameFromFullNameString___block_invoke()
{
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"([A-Z][A-Za-zïß-]+) +([A-Z]\\.? +|[A-Z][A-Za-zïß]+ +){0 options:2}([A-Z][A-Za-zïß-]+)( +(Jr|Jr.|Sr|Sr.|I|II|III|Júnior|Neto|Filho)){0 error:{1}(, ? ?([A-Z][A-Za-z.]{1, 5}|[a-z][A-Z]{1, 4})){0, 5}", 0, 0}];
  v1 = qword_1ED95FE48;
  qword_1ED95FE48 = v0;
}

+ (id)_personNameLineInRegion:(id)a3
{
  v3 = [a1 _personNameLineInRegion:a3 defaultLocale:@"en-US"];

  return v3;
}

+ (id)_personNameLineInRegion:(id)a3 defaultLocale:(id)a4
{
  v82[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v69 = a4;
  v73 = v5;
  if ([v5 type] == 8)
  {
    v82[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:1];
  }

  else
  {
    v6 = [v5 contentsWithTypes:8];
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v76 objects:v81 count:16];
  v8 = 0;
  if (!v7)
  {
    v72 = 0;
    goto LABEL_41;
  }

  v72 = 0;
  v74 = *v77;
  v9 = 0.0;
  do
  {
    v75 = v7;
    for (i = 0; i != v75; ++i)
    {
      if (*v77 != v74)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v76 + 1) + 8 * i);
      v12 = [v11 text];
      v13 = [v12 length] == 0;

      if (!v13)
      {
        v14 = [v73 recognizedLocale];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v17 = [v73 children];
          v18 = [v17 firstObject];
          v19 = [v18 recognizedLocale];
          v20 = v19;
          v21 = v69;
          if (v19)
          {
            v21 = v19;
          }

          v16 = v21;
        }

        v22 = objc_opt_class();
        v23 = [v11 text];
        [v22 _personNameScoreForFullNameString:v23 locale:v16];
        v25 = v24;

        if (v25 > v9)
        {
LABEL_16:
          v26 = v72;
          v72 = v11;
          v9 = v25;
          goto LABEL_23;
        }

        v27 = v70;
        if (!v8)
        {
          goto LABEL_24;
        }

        v26 = [v8 text];
        v28 = [v26 componentsSeparatedByString:@" "];
        if ([v28 count] != 1)
        {

LABEL_23:
          goto LABEL_24;
        }

        v67 = [v11 text];
        v68 = [v67 componentsSeparatedByString:@" "];
        if ([v68 count] != 1)
        {
          v38 = 0;
          goto LABEL_35;
        }

        v66 = [v8 boundingQuad];
        [v66 topLeft];
        v30 = v29;
        v65 = [v11 boundingQuad];
        [v65 topLeft];
        v32 = v31;
        if (v30 >= v31)
        {
          v64 = [v8 boundingQuad];
          [v64 topLeft];
          v40 = v39;
          v27 = [v11 boundingQuad];
          [v27 topLeft];
          v36 = v40 - v41;
        }

        else
        {
          v63 = [v8 boundingQuad];
          [v63 topLeft];
          v34 = v33;
          v62 = [v11 boundingQuad];
          [v62 topLeft];
          v36 = -(v34 - v35);
        }

        v70 = v27;
        v42 = [v11 boundingQuad];
        [v42 size];
        if (v36 / v43 >= 1.0)
        {

          v38 = 0;
          v51 = v70;
          v52 = v64;
          if (v30 >= v32)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v61 = [v11 boundingQuad];
          [v61 topLeft];
          v45 = v44;
          v46 = [v8 boundingQuad];
          [v46 bottomLeft];
          v48 = v47;
          v49 = [v11 boundingQuad];
          [v49 size];
          v38 = (v45 - v48) / v50 < 0.5;

          v51 = v70;
          v52 = v64;
          if (v30 >= v32)
          {
LABEL_34:

LABEL_35:
            if (v38)
            {
              v53 = objc_opt_class();
              v54 = [v8 text];
              v80[0] = v54;
              v55 = [v11 text];
              v80[1] = v55;
              v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:2];
              v57 = [v56 componentsJoinedByString:@" "];
              [v53 _personNameScoreForFullNameString:v57 locale:v16];
              v25 = v58;

              if (v25 > v9)
              {
                goto LABEL_16;
              }
            }

LABEL_24:
            v37 = v11;

            v8 = v37;
            continue;
          }
        }

        v51 = v62;
        v52 = v63;
        goto LABEL_34;
      }
    }

    v7 = [obj countByEnumeratingWithState:&v76 objects:v81 count:16];
  }

  while (v7);
LABEL_41:

  v59 = v72;
  return v72;
}

+ (id)computeDataDetectorRegionsForText:(id)a3 locale:(id)a4 transcriptComponents:(id)a5 ddQOS:(int)a6
{
  v6 = *&a6;
  v75 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v46 = a4;
  v41 = a5;
  v42 = v9;
  if ([v9 length])
  {
    v10 = CROSLogForCategory(7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v68 = "+[CRDataDetectorUtilities computeDataDetectorRegionsForText:locale:transcriptComponents:ddQOS:]";
      v69 = 2048;
      v70 = [v9 length];
      v71 = 2112;
      v72 = v46;
      v73 = 2048;
      v74 = [v41 count];
      _os_log_impl(&dword_1B40D2000, v10, OS_LOG_TYPE_DEBUG, "%s: Computing data detector regions (text-length:%lu locale:%@ #components:%lu)", buf, 0x2Au);
    }

    v62 = 0;
    v40 = [v9 _crDDFriendlyTextWithIndexMapping:&v62];
    v11 = v62;
    v38 = [MEMORY[0x1E6999A90] _crConfigForLocale:v46];
    [v38 setQos:v6];
    v37 = [MEMORY[0x1E6999A88] scanString:v40 range:0 configuration:{objc_msgSend(v40, "length"), v38}];
    v44 = objc_opt_new();
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = v37;
    v45 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
    if (v45)
    {
      v43 = *v59;
      do
      {
        for (i = 0; i != v45; i = i + 1)
        {
          if (*v59 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v58 + 1) + 8 * i);
          if ([v12 category] == 3)
          {
            v57 = 0;
            [v12 getStreet:&v57 city:0 state:0 zip:0 country:0];
            if (!v57)
            {
              continue;
            }
          }

          v13 = objc_opt_new();
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v14 = v41;
          v15 = [v14 countByEnumeratingWithState:&v53 objects:v65 count:16];
          if (v15)
          {
            v16 = *v54;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v54 != v16)
                {
                  objc_enumerationMutation(v14);
                }

                v18 = *(*(&v53 + 1) + 8 * j);
                v19 = objc_opt_class();
                v20 = [v12 urlificationRange];
                v22 = [v19 _regionsForTranscript:v18 inRange:v20 mapping:{v21, v11}];
                if (v22)
                {
                  [v13 addObjectsFromArray:v22];
                }
              }

              v15 = [v14 countByEnumeratingWithState:&v53 objects:v65 count:16];
            }

            while (v15);
          }

          v23 = [[CRDataDetectorsOutputRegion alloc] initWithDataDetectorsResult:v12 children:v13 locale:v46 originalString:v42 ddFriendlyString:v40 matchToOriginalIndexMapping:v11];
          if ([(CRDataDetectorsOutputRegion *)v23 dataType]&& [(CRDataDetectorsOutputRegion *)v23 dataType]!= 10)
          {
            [v44 addObject:v23];
          }
        }

        v45 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
      }

      while (v45);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = v41;
    v24 = [v48 countByEnumeratingWithState:&v49 objects:v64 count:16];
    if (v24)
    {
      v25 = *v50;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v50 != v25)
          {
            objc_enumerationMutation(v48);
          }

          v27 = *(*(&v49 + 1) + 8 * k);
          v28 = objc_opt_class();
          v29 = [v27 outputRegion];
          v30 = [v28 _personNameLineInRegion:v29];

          if (v30)
          {
            v31 = [v30 text];
            v32 = [MEMORY[0x1E6999A80] resultFromText:v31 personName:v31 jobTitle:0 department:0 company:0];
            if (v32)
            {
              v33 = [CRDataDetectorsOutputRegion alloc];
              v63 = v30;
              v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
              v35 = [(CRDataDetectorsOutputRegion *)v33 initWithDataType:10 ddResult:v32 children:v34 locale:v46];

              [v44 addObject:v35];
            }
          }
        }

        v24 = [v48 countByEnumeratingWithState:&v49 objects:v64 count:16];
      }

      while (v24);
    }
  }

  else
  {
    v44 = 0;
  }

  return v44;
}

+ (unint64_t)_groupTypeFromChildren:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count] <= 0xC)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = 0;
      v7 = *v13;
      v8 = 1;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([v10 dataType] == 10)
          {
            if ([v4 count] > 1)
            {
              goto LABEL_24;
            }
          }

          else if ([v10 dataType] == 5)
          {
            if ([v4 count])
            {
              v8 = 2;
LABEL_24:

              goto LABEL_25;
            }
          }

          else if ([v10 dataType] == 3 || objc_msgSend(v10, "dataType") == 4 || objc_msgSend(v10, "dataType") == 2)
          {
            v6 = 1;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }

      if ((v6 & 1) != 0 && [v4 count] > 1)
      {
        v8 = 1;
        goto LABEL_25;
      }
    }

    else
    {
    }
  }

  v8 = 0;
LABEL_25:

  return v8;
}

+ (unint64_t)_dataCountOfType:(unint64_t)a3 inRegions:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = a4;
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * v9) dataType] == a3)
        {
          ++v6;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v6;
}

+ (BOOL)_shouldGroupAllEntitiesFor:(id)a3 lines:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 count] >= 3 && objc_msgSend(v7, "count") <= 0xF && objc_msgSend(a1, "_dataCountOfType:inRegions:", 10, v6) == 1 && (objc_msgSend(a1, "_dataCountOfType:inRegions:", 3, v6) - 1) < 3;

  return v8;
}

+ (id)computeGroupRegionsWithDataDetectorRegions:(id)a3 inRegion:(id)a4
{
  v59[1] = *MEMORY[0x1E69E9840];
  v39 = a3;
  v31 = a4;
  v34 = objc_opt_new();
  v32 = [[CRTextFeatureOrderV2 alloc] initWithAngleThresholdForRotatedCrops:0.0];
  v33 = [v31 contentsWithTypes:8];
  obj = [CRTextFeatureOrderV2 orderAndGroupRegions:v32 coarseDelegate:"orderAndGroupRegions:coarseDelegate:fineDelegate:coarseOnly:" fineDelegate:? coarseOnly:?];
  if ([obj count] >= 2 && objc_msgSend(a1, "_shouldGroupAllEntitiesFor:lines:", v39, v33))
  {
    v5 = [obj objectAtIndexedSubscript:0];
    v6 = [v5 boundingQuad];
    [v6 baselineAngle];
    v7 = [CRBlockOutputRegion blockWithLines:v33 confidence:2 quad:0 baselineAngle:?];

    v8 = [CRGroupRegion alloc];
    v9 = [v7 boundingQuad];
    v10 = -[CRGroupRegion initWithBoundingQuad:layoutDirection:subregions:](v8, "initWithBoundingQuad:layoutDirection:subregions:", v9, [v7 layoutDirection], v33);
    v59[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:1];

    obj = v11;
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obja = obj;
  v40 = [obja countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v40)
  {
    v37 = *v53;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v53 != v37)
        {
          objc_enumerationMutation(obja);
        }

        v12 = *(*(&v52 + 1) + 8 * i);
        v42 = objc_opt_new();
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v43 = v39;
        v13 = [v43 countByEnumeratingWithState:&v48 objects:v57 count:16];
        if (v13)
        {
          v14 = *v49;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v49 != v14)
              {
                objc_enumerationMutation(v43);
              }

              v16 = *(*(&v48 + 1) + 8 * j);
              v17 = [v12 boundingQuad];
              v18 = [v17 denormalizedQuad];
              v19 = [v16 boundingQuad];
              v20 = [v19 denormalizedQuad];
              v21 = [v18 entirelyContainsQuad:v20];

              if (v21)
              {
                [v42 addObject:v16];
              }
            }

            v13 = [v43 countByEnumeratingWithState:&v48 objects:v57 count:16];
          }

          while (v13);
        }

        v22 = [objc_opt_class() _groupTypeFromChildren:v42];
        if (v22)
        {
          v23 = [MEMORY[0x1E695DF70] array];
          if (v22 == 2)
          {
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v24 = [v12 subregions];
            v25 = [v24 countByEnumeratingWithState:&v44 objects:v56 count:16];
            if (v25)
            {
              v26 = *v45;
              do
              {
                for (k = 0; k != v25; ++k)
                {
                  if (*v45 != v26)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v28 = *(*(&v44 + 1) + 8 * k);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v23 addObject:v28];
                  }
                }

                v25 = [v24 countByEnumeratingWithState:&v44 objects:v56 count:16];
              }

              while (v25);
            }
          }

          v29 = [[CRDataDetectorsGroupOutputRegion alloc] initWithDDRegions:v42 children:v23 groupType:v22];
          if (v29)
          {
            [v34 addObject:v29];
          }
        }
      }

      v40 = [obja countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v40);
  }

  return v34;
}

+ (void)debugDataDetectorForRegion:(id)a3 withImage:(id)a4 ddQOS:(int)a5
{
  v5 = *&a5;
  v20 = a3;
  v7 = a4;
  if (qword_1ED95FE60 != -1)
  {
    dispatch_once(&qword_1ED95FE60, &__block_literal_global_198);
  }

  v8 = [v20 text];
  v9 = [v20 recognizedLocale];
  v10 = [v20 transcriptComponents];
  v11 = [CRDataDetectorUtilities computeDataDetectorRegionsForText:v8 locale:v9 transcriptComponents:v10 ddQOS:v5];

  v12 = [v7 imageByOverlayingRegions:v11 strings:0 lineWidth:4.0 red:0.0 green:0.2 blue:0.8 alpha:0.8];

  v13 = [[CRTextFeatureOrderV2 alloc] initWithAngleThresholdForRotatedCrops:0.0];
  v14 = [v20 contentsWithTypes:8];
  v15 = [(CRTextFeatureOrderV2 *)v13 orderAndGroupRegions:v14];
  v16 = [v12 imageByOverlayingRegions:v15 strings:0 lineWidth:4.0 red:0.2 green:0.8 blue:0.0 alpha:0.5];

  v17 = [CRDataDetectorUtilities computeGroupRegionsWithDataDetectorRegions:v11 inRegion:v20];
  v18 = [v16 imageByOverlayingRegions:v17 strings:0 lineWidth:8.0 red:1.0 green:0.0 blue:0.0 alpha:0.8];

  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/dd_debug_%lu.png", qword_1ED95FE58, objc_msgSend(v18, "hash")];
  [v18 writeToFile:v19];
}

void __70__CRDataDetectorUtilities_debugDataDetectorForRegion_withImage_ddQOS___block_invoke()
{
  v2 = NSHomeDirectory();
  v0 = [v2 stringByAppendingPathComponent:@"CRDDDebug"];
  v1 = qword_1ED95FE58;
  qword_1ED95FE58 = v0;
}

@end