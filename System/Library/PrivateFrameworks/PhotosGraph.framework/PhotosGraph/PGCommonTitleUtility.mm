@interface PGCommonTitleUtility
+ (BOOL)containsCelebrationForDateNodes:(id)a3 holidayName:(id *)a4 titleGenerationContext:(id)a5 graph:(id)a6;
+ (BOOL)isLargeCountryForAddressNode:(id)a3 locationHelper:(id)a4;
+ (_NSRange)_closestSpaceMatchFromMatches:(id)a3 withUsedNameRange:(_NSRange)a4 searchForward:(BOOL)a5;
+ (id)addressNodesFromMomentNodes:(id)a3;
+ (id)bestAddressNodeForMomentNodes:(id)a3;
+ (id)dateNodesFromMomentNodes:(id)a3;
+ (id)holidayNameForDateNodes:(id)a3;
+ (id)locationLabelForDimension:(unint64_t)a3;
+ (id)titleWithLineBreakForTitle:(id)a3;
+ (id)titleWithLineBreakForTitle:(id)a3 andUsedNames:(id)a4;
+ (id)titleWithNoLineBreakSpaceForTitle:(id)a3 andUsedNames:(id)a4;
+ (unint64_t)dimensionForLabel:(id)a3;
+ (void)startAndEndDateNodeFromDateNodes:(id)a3 startDateNode:(id *)a4 endDateNode:(id *)a5;
@end

@implementation PGCommonTitleUtility

+ (unint64_t)dimensionForLabel:(id)a3
{
  v3 = a3;
  if (dimensionForLabel__onceToken != -1)
  {
    dispatch_once(&dimensionForLabel__onceToken, &__block_literal_global_286);
  }

  v4 = [dimensionForLabel__dimensionLabelMapping indexOfObject:v3];
  if (v4)
  {
    v5 = v4 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

void __42__PGCommonTitleUtility_dimensionForLabel___block_invoke()
{
  v3[10] = *MEMORY[0x277D85DE8];
  v3[0] = @"None";
  v3[1] = @"Area";
  v3[2] = @"Address";
  v3[3] = @"Number";
  v3[4] = @"Street";
  v3[5] = @"District";
  v3[6] = @"City";
  v3[7] = @"County";
  v3[8] = @"State";
  v3[9] = @"Country";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:10];
  v1 = dimensionForLabel__dimensionLabelMapping;
  dimensionForLabel__dimensionLabelMapping = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)locationLabelForDimension:(unint64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3 <= 4)
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v4 = @"Number";
      }

      else
      {
        v4 = @"Street";
      }

      goto LABEL_20;
    }

    if (a3 == 1)
    {
      v4 = @"Area";
      goto LABEL_20;
    }

    if (a3 == 2)
    {
      v4 = @"Address";
      goto LABEL_20;
    }
  }

  else
  {
    if (a3 <= 6)
    {
      if (a3 == 5)
      {
        v4 = @"District";
      }

      else
      {
        v4 = @"City";
      }

      goto LABEL_20;
    }

    switch(a3)
    {
      case 7uLL:
        v4 = @"County";
        goto LABEL_20;
      case 8uLL:
        v4 = @"State";
        goto LABEL_20;
      case 9uLL:
        v4 = @"Country";
LABEL_20:
        v5 = v4;
        goto LABEL_21;
    }
  }

  v8 = +[PGLogging sharedLogging];
  v9 = [v8 loggingConnection];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = 134217984;
    v11 = a3;
    _os_log_error_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_ERROR, "Couldn't match dimension %lu to label", &v10, 0xCu);
  }

  v4 = 0;
LABEL_21:
  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)titleWithLineBreakForTitle:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  if ([v5 length] >= 0xC)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = [v5 length] >> 1;
    v6 = [v5 length];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__PGCommonTitleUtility_titleWithLineBreakForTitle___block_invoke;
    v13[3] = &unk_27887F880;
    v13[4] = &v14;
    [v5 enumerateSubstringsInRange:0 options:v6 usingBlock:{3, v13}];
    v7 = v15[3];
    if (v7 < [v5 length])
    {
      v8 = objc_msgSend(MEMORY[0x277CCA900], "characterSetWithCharactersInString:", @"([{");
      v9 = v15[3];
      if (v9 >= 2)
      {
        do
        {
          if (![v8 characterIsMember:{objc_msgSend(v5, "characterAtIndex:", v9 - 1)}])
          {
            break;
          }

          v9 = v15[3] - 1;
          v15[3] = v9;
        }

        while (v9 > 1);
      }
    }

    v10 = v15[3];
    if (v10 && v10 < [v5 length])
    {
      v11 = [v5 stringByReplacingCharactersInRange:v15[3] withString:{0, @"\n"}];

      v5 = v11;
    }

    _Block_object_dispose(&v14, 8);
  }

  return v5;
}

uint64_t __51__PGCommonTitleUtility_titleWithLineBreakForTitle___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, _BYTE *a7)
{
  v7 = *(*(result + 32) + 8);
  v8 = *(v7 + 24);
  if (v8 >= a5 && v8 - a5 < a6)
  {
    if (v8 >= a3 + (a4 >> 1))
    {
      v10 = a6;
    }

    else
    {
      v10 = 0;
    }

    *(v7 + 24) = a5 + v10;
    *a7 = 1;
  }

  return result;
}

+ (id)titleWithLineBreakForTitle:(id)a3 andUsedNames:(id)a4
{
  v105 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v88 = [v5 length];
  if (v88 <= 0xB)
  {
    v7 = v5;
    goto LABEL_113;
  }

  v102 = 0;
  v8 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[\\r\\n\\t\\f\\v ]+" options:64 error:&v102];
  v83 = v102;
  v84 = v8;
  v90 = [v8 matchesInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];
  v92 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v85 = v6;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v98 objects:v104 count:16];
  if (!v9)
  {
    goto LABEL_45;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v99;
  do
  {
    v13 = 0;
    v86 = v11;
    v87 = -v11;
    do
    {
      if (*v99 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v98 + 1) + 8 * v13);
      v15 = [v5 rangeOfString:v14];
      v17 = v15;
      v18 = v16;
      if (v15)
      {
        v19 = v15 == 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
LABEL_13:
        v20 = 0;
        goto LABEL_14;
      }

      v28 = [a1 _closestSpaceMatchFromMatches:v90 withUsedNameRange:v15 searchForward:{v16, 0}];
      if (v28 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v87 != v13)
        {
          goto LABEL_13;
        }

        v30 = 0;
        v31 = v17;
      }

      else
      {
        v30 = v28 + v29;
        v31 = v17 - (v28 + v29);
        v32 = v17 <= v28 + v29 || v30 == 0x7FFFFFFFFFFFFFFFLL;
        if (v32 || v17 >= [v5 length])
        {
          goto LABEL_13;
        }
      }

      v20 = [v5 substringWithRange:{v30, v31}];
LABEL_14:
      if (v17 == 0x7FFFFFFFFFFFFFFFLL || (v21 = v17 + v18, v17 + v18 >= [v5 length]) || ((v22 = objc_msgSend(a1, "_closestSpaceMatchFromMatches:withUsedNameRange:searchForward:", v90, v17, v18, 1), v22 != 0x7FFFFFFFFFFFFFFFLL) ? (v23 = v22 > v21) : (v23 = 0), !v23 || v21 == 0x7FFFFFFFFFFFFFFFLL || (v24 = v22, v22 >= objc_msgSend(v5, "length"))))
      {
        v25 = 0;
      }

      else
      {
        v25 = [v5 substringWithRange:{v21, v24 - v21}];
      }

      if (v25 | v20)
      {
        if (!v20)
        {
          v20 = &stru_2843F5C58;
        }

        if (v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = &stru_2843F5C58;
        }

        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v20, v14, v27];
      }

      else
      {
        v26 = v14;
      }

      [v92 addObject:v26];

      ++v13;
    }

    while (v10 != v13);
    v11 = v86 + v10;
    v33 = [obj countByEnumeratingWithState:&v98 objects:v104 count:16];
    v10 = v33;
  }

  while (v33);
LABEL_45:

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v34 = v92;
  v35 = [v34 countByEnumeratingWithState:&v94 objects:v103 count:16];
  if (!v35)
  {

LABEL_111:
    v7 = [a1 titleWithLineBreakForTitle:v5];
    goto LABEL_112;
  }

  v36 = v35;
  v37 = vcvtps_u32_f32(vcvts_n_f32_u64(v88, 1uLL));
  v38 = -1;
  v39 = *v95;
  v40 = -1;
  v41 = -1;
  v42 = -1;
  v93 = v34;
  do
  {
    for (i = 0; i != v36; ++i)
    {
      if (*v95 != v39)
      {
        objc_enumerationMutation(v93);
      }

      v44 = [v5 rangeOfString:*(*(&v94 + 1) + 8 * i)];
      if (v44 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v46 = v44 + v45;
        if ((v37 - v44) >= 0)
        {
          v47 = v37 - v44;
        }

        else
        {
          v47 = v44 - v37;
        }

        v48 = v37 - v46;
        if ((v37 - v46) < 0)
        {
          v48 = v46 - v37;
        }

        if (v47 >= v38)
        {
          v49 = v38;
        }

        else
        {
          v49 = v47;
        }

        if (v47 >= v38)
        {
          v50 = v41;
        }

        else
        {
          v50 = v44;
        }

        v51 = v47 >= v40;
        if (v47 >= v40)
        {
          v47 = v40;
        }

        else
        {
          v49 = v40;
        }

        if (v51)
        {
          v52 = v42;
        }

        else
        {
          v50 = v42;
          v52 = v44;
        }

        if (v44)
        {
          v38 = v49;
          v40 = v47;
          v41 = v50;
          v42 = v52;
        }

        if (v46 != v88)
        {
          if (v48 >= v40)
          {
            if (v48 < v38)
            {
              v38 = v48;
              v41 = v44 + v45;
            }
          }

          else
          {
            v38 = v40;
            v40 = v48;
            v41 = v42;
            v42 = v44 + v45;
          }
        }
      }
    }

    v34 = v93;
    v36 = [v93 countByEnumeratingWithState:&v94 objects:v103 count:16];
  }

  while (v36);

  if (v42 == -1)
  {
    goto LABEL_111;
  }

  if (v41 == -1)
  {
    v53 = v42;
  }

  else
  {
    v53 = v41;
  }

  v54 = 0x277CCA000;
  if (v88 > 0x16)
  {
LABEL_87:
    v57 = 0;
    goto LABEL_88;
  }

  if (v42 <= v53)
  {
    v55 = v53;
  }

  else
  {
    v55 = v42;
  }

  v56 = [v5 substringToIndex:v55];
  v57 = [v5 substringFromIndex:v55];
  v58 = [v56 length];
  if ([v57 length] * 1.5 < v58)
  {

    goto LABEL_87;
  }

  if (!v56)
  {
LABEL_88:
    v59 = [v5 substringToIndex:v42];
    v60 = [v5 substringFromIndex:v42];
    v61 = [v5 substringToIndex:v53];
    v62 = [v5 substringFromIndex:v53];
    v63 = [v59 length];
    if ((v63 - v37) >= 0)
    {
      v64 = v63 - v37;
    }

    else
    {
      v64 = v37 - v63;
    }

    v65 = [v61 length];
    if ((v65 - v37) >= 0)
    {
      v66 = v65 - v37;
    }

    else
    {
      v66 = v37 - v65;
    }

    v67 = [MEMORY[0x277CCA900] punctuationCharacterSet];
    v68 = [v60 rangeOfCharacterFromSet:v67 options:0];
    v69 = [v62 rangeOfCharacterFromSet:v67 options:0];
    if (v68)
    {
      v70 = v64 >= v66;
    }

    else
    {
      v70 = 1;
    }

    v71 = !v70 || v69 == 0;
    if (v71)
    {
      v72 = v59;
    }

    else
    {
      v72 = v61;
    }

    if (v71)
    {
      v73 = v60;
    }

    else
    {
      v73 = v62;
    }

    v56 = v72;
    v74 = v73;
    v34 = v93;
    v75 = v74;

    v54 = 0x277CCA000uLL;
    v57 = v75;
  }

  v76 = [*(v54 + 2304) whitespaceCharacterSet];
  v77 = [v57 pg_stringByTrailingCharactersInSet:v76 options:1];

  if (([v77 isEqualToString:v57] & 1) == 0)
  {
    v78 = [v57 substringToIndex:{objc_msgSend(v57, "length") - objc_msgSend(v77, "length")}];
    v79 = v77;

    v80 = [v56 stringByAppendingString:v78];

    v57 = v79;
    v56 = v80;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v56, @"\n", v57];

LABEL_112:
  v6 = v85;

LABEL_113:
  v81 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)titleWithNoLineBreakSpaceForTitle:(id)a3 andUsedNames:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      v11 = v5;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * v10);
        v13 = [v12 stringByReplacingOccurrencesOfString:@" " withString:@" "];
        v5 = [v11 stringByReplacingOccurrencesOfString:v12 withString:v13];

        ++v10;
        v11 = v5;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (_NSRange)_closestSpaceMatchFromMatches:(id)a3 withUsedNameRange:(_NSRange)a4 searchForward:(BOOL)a5
{
  v32 = a5;
  length = a4.length;
  location = a4.location;
  v41 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = a3;
  v7 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    v10 = location + length;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v33 = 0x7FFFFFFFFFFFFFFFLL;
    v34 = 0;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13.location = [*(*(&v36 + 1) + 8 * i) range];
        if (v13.location != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = v13.location;
          v15 = v13.length;
          v44.location = location;
          v44.length = length;
          v16 = NSIntersectionRange(v13, v44).length;
          v42.location = v14;
          v42.length = v15;
          v45.location = location;
          v45.length = length;
          v17 = NSUnionRange(v42, v45);
          v18 = v14 - v10 + v15;
          if (location <= v14)
          {
            v19 = location + length;
          }

          else
          {
            v18 = location - v14;
            v19 = v14;
          }

          if (v17.location == location && v17.length == length)
          {
            v18 = v15;
            v21 = v14;
          }

          else
          {
            v21 = v19;
          }

          if (v16)
          {
            v22 = v18;
          }

          else
          {
            v22 = v15;
          }

          if (v16)
          {
            v23 = v21;
          }

          else
          {
            v23 = v14;
          }

          if (v32)
          {
            if (v23 < v10)
            {
              continue;
            }
          }

          else if (location <= v23)
          {
            continue;
          }

          v24 = location - v23;
          if ((location - v23) < 0)
          {
            v24 = v23 - location;
          }

          v25 = location - (v22 + v23);
          if (v25 < 0)
          {
            v25 = v22 + v23 - location;
          }

          if (v24 >= v25)
          {
            v24 = v25;
          }

          v26 = v24 < v11;
          if (v24 < v11)
          {
            v11 = v24;
          }

          v27 = v34;
          if (v26)
          {
            v27 = v22;
          }

          v28 = v33;
          if (v26)
          {
            v28 = v23;
          }

          v33 = v28;
          v34 = v27;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (!v8)
      {
        goto LABEL_43;
      }
    }
  }

  v33 = 0x7FFFFFFFFFFFFFFFLL;
  v34 = 0;
LABEL_43:

  v29 = *MEMORY[0x277D85DE8];
  v30 = v33;
  v31 = v34;
  result.length = v31;
  result.location = v30;
  return result;
}

+ (void)startAndEndDateNodeFromDateNodes:(id)a3 startDateNode:(id *)a4 endDateNode:(id *)a5
{
  v21 = a4;
  v30 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = a3;
  v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v24 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v12 localDate];
        if (!v7 || [v7 compare:v13] == 1)
        {
          v14 = v13;

          v15 = v12;
          v7 = v14;
          v10 = v15;
        }

        if (!v8 || [v8 compare:v13] == -1)
        {
          v16 = v13;

          v17 = v12;
          v8 = v16;
          v9 = v17;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  if (v21)
  {
    v18 = v10;
    *v21 = v10;
  }

  if (a5)
  {
    v19 = v9;
    *a5 = v9;
  }

  v20 = *MEMORY[0x277D85DE8];
}

+ (id)bestAddressNodeForMomentNodes:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 bestAddressNode];
        v12 = [v11 anyEdgeFromNode:v10];
        if (!v6 || ([v6 relevance], v14 = v13, objc_msgSend(v12, "relevance"), v14 < v15))
        {
          v16 = v12;

          v17 = v11;
          v6 = v16;
          v7 = v17;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)dateNodesFromMomentNodes:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) dateNodes];
        [v4 unionSet:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)holidayNameForDateNodes:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v19 + 1) + 8 * i) collection];
        v9 = [v8 holidayNodes];

        v10 = [v9 array];
        v11 = [v10 sortedArrayUsingComparator:&__block_literal_global_5777];

        v12 = [v11 firstObject];
        v13 = v12;
        if (v12)
        {
          v14 = [v12 name];
          v15 = v14;
          if (v14 && [v14 length])
          {
            v16 = [MEMORY[0x277D276C8] localizedNameForName:v15];

            goto LABEL_14;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_14:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __48__PGCommonTitleUtility_holidayNameForDateNodes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  if ([v5 length])
  {
    v7 = [MEMORY[0x277D276C8] localizedNameForName:v5];
  }

  else
  {
    v7 = &stru_2843F5C58;
  }

  if ([v6 length])
  {
    v8 = [MEMORY[0x277D276C8] localizedNameForName:v6];
  }

  else
  {
    v8 = &stru_2843F5C58;
  }

  if ([(__CFString *)v7 length]|| ![(__CFString *)v8 length])
  {
    if ([(__CFString *)v8 length]|| ![(__CFString *)v7 length])
    {
      v9 = [(__CFString *)v7 localizedCompare:v8];
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

+ (BOOL)containsCelebrationForDateNodes:(id)a3 holidayName:(id *)a4 titleGenerationContext:(id)a5 graph:(id)a6
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v36 = a5;
  v35 = a6;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
  v10 = 0;
  if (v9)
  {
    v34 = *v47;
    v11 = &selRef_assetIsSafeForWidgetDisplay_;
LABEL_3:
    v40 = 0;
    v31 = v11[375];
    v33 = v9;
    while (1)
    {
      if (*v47 != v34)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v46 + 1) + 8 * v40);
      context = objc_autoreleasePoolPush();
      v13 = [v12 collection];
      v14 = [v13 holidayNodes];

      v37 = [(PGGraphEdgeCollection *)PGGraphCelebratingEdgeCollection edgesToNodes:v14];
      v15 = [v37 holidayNodes];
      v41 = [v15 holidayNames];
      v16 = v10;
      v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v18 = [v12 localDate];
      v19 = [v36 holidayService];
      v20 = [v35 infoNode];
      v21 = [v20 locale];
      v22 = [v21 countryCode];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __97__PGCommonTitleUtility_containsCelebrationForDateNodes_holidayName_titleGenerationContext_graph___block_invoke;
      v42[3] = &unk_27887F838;
      v44 = &v50;
      v45 = a4;
      v23 = v17;
      v43 = v23;
      [v19 enumerateEventRulesWithNames:v41 betweenLocalDate:v18 andLocalDate:v18 supportedCountryCode:v22 usingBlock:v42];

      v10 = v16;
      v24 = *(v51 + 24);
      if (((a4 != 0) & v24) == 1)
      {
        v25 = [v23 sortedArrayUsingSelector:v31];
        v26 = [v25 firstObject];

        v10 = v26;
      }

      objc_autoreleasePoolPop(context);
      v11 = &selRef_assetIsSafeForWidgetDisplay_;
      if (v24)
      {
        break;
      }

      if (v33 == ++v40)
      {
        v9 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (a4)
  {
    v27 = v10;
    *a4 = v10;
  }

  v28 = *(v51 + 24);

  _Block_object_dispose(&v50, 8);
  v29 = *MEMORY[0x277D85DE8];
  return v28 & 1;
}

void __97__PGCommonTitleUtility_containsCelebrationForDateNodes_holidayName_titleGenerationContext_graph___block_invoke(void *a1, void *a2)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 24) = 1;
  if (v2)
  {
    v3 = a1[4];
    v4 = [a2 localizedName];
    [v3 addObject:v4];
  }
}

+ (BOOL)isLargeCountryForAddressNode:(id)a3 locationHelper:(id)a4
{
  v4 = [a4 countryNodeFromAddressNode:a3];
  v5 = [v4 anyNode];

  v6 = [v5 name];
  LOBYTE(v4) = [PGCountrySize isLargeCountry:v6];

  return v4;
}

+ (id)addressNodesFromMomentNodes:(id)a3
{
  v3 = a3;
  v4 = [v3 anyObject];
  v5 = [v4 graph];

  if (v5)
  {
    v6 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithSet:v3 graph:v5];
    v7 = [(PGGraphMomentNodeCollection *)v6 addressNodes];
    v8 = [v7 set];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB98] set];
  }

  return v8;
}

@end