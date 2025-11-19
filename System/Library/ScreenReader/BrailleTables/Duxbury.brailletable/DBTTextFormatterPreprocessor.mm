@interface DBTTextFormatterPreprocessor
- (id)preprocessPrintString:(id)a3 withLocationMap:(id *)a4 isEightDot:(BOOL)a5 textFormattingRanges:(id)a6;
@end

@implementation DBTTextFormatterPreprocessor

- (id)preprocessPrintString:(id)a3 withLocationMap:(id *)a4 isEightDot:(BOOL)a5 textFormattingRanges:(id)a6
{
  v7 = a5;
  v9 = a3;
  v10 = a6;
  if (v9)
  {
    if (v7)
    {
      v11 = v9;
    }

    else
    {
      [NSMutableString stringWithString:v9];
      v76 = a4;
      v89 = v77 = v9;
      if (a4)
      {
        v86 = [NSMutableData dataWithLength:0];
      }

      else
      {
        v86 = 0;
      }

      v82 = +[NSMutableDictionary dictionary];
      v110 = 0u;
      v111 = 0u;
      v112 = 0u;
      v113 = 0u;
      v78 = v10;
      v12 = [v10 boldRanges];
      v13 = [v12 countByEnumeratingWithState:&v110 objects:v118 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v111;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v111 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [*(*(&v110 + 1) + 8 * i) rangeValue];
            if (v17 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v19 = v17;
              v20 = &v17[v18];
              if (&v17[v18] <= [v89 length])
              {
                v21 = [NSNumber numberWithUnsignedInteger:v19];
                [v82 setArrayObject:@"\x1Cfts~b\x1F" forKey:v21];

                v22 = [NSNumber numberWithUnsignedInteger:v20];
                [v82 setArrayObject:@"\x1Cfte~b\x1F" forKey:v22];
              }
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v110 objects:v118 count:16];
        }

        while (v14);
      }

      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v23 = [v78 italicRanges];
      v24 = [v23 countByEnumeratingWithState:&v106 objects:v117 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v107;
        do
        {
          for (j = 0; j != v25; j = j + 1)
          {
            if (*v107 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = [*(*(&v106 + 1) + 8 * j) rangeValue];
            if (v28 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v30 = v28;
              v31 = &v28[v29];
              if (&v28[v29] <= [v89 length])
              {
                v32 = [NSNumber numberWithUnsignedInteger:v30];
                [v82 setArrayObject:@"\x1Cfts~i\x1F" forKey:v32];

                v33 = [NSNumber numberWithUnsignedInteger:v31];
                [v82 setArrayObject:@"\x1Cfte~i\x1F" forKey:v33];
              }
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v106 objects:v117 count:16];
        }

        while (v25);
      }

      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v34 = [v78 underlineRanges];
      v35 = [v34 countByEnumeratingWithState:&v102 objects:v116 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v103;
        do
        {
          for (k = 0; k != v36; k = k + 1)
          {
            if (*v103 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = [*(*(&v102 + 1) + 8 * k) rangeValue];
            if (v39 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v41 = v39;
              v42 = &v39[v40];
              if (&v39[v40] <= [v89 length])
              {
                v43 = [NSNumber numberWithUnsignedInteger:v41];
                [v82 setArrayObject:@"\x1Cfts~u\x1F" forKey:v43];

                v44 = [NSNumber numberWithUnsignedInteger:v42];
                [v82 setArrayObject:@"\x1Cfte~u\x1F" forKey:v44];
              }
            }
          }

          v36 = [v34 countByEnumeratingWithState:&v102 objects:v116 count:16];
        }

        while (v36);
      }

      v101 = 0;
      v11 = v89;
      if ([v89 length])
      {
        do
        {
          [v86 appendBytes:&v101 length:8];
          v45 = ++v101;
        }

        while (v45 < [v89 length]);
      }

      v46 = +[NSMutableArray array];
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v47 = [v82 allKeys];
      v48 = [v47 sortedArrayUsingComparator:&__block_literal_global_0];

      v79 = v48;
      v81 = [v48 countByEnumeratingWithState:&v97 objects:v115 count:16];
      if (v81)
      {
        v80 = *v98;
        v49 = &NSLog_ptr;
        do
        {
          v50 = 0;
          do
          {
            if (*v98 != v80)
            {
              objc_enumerationMutation(v79);
            }

            v84 = v50;
            v51 = *(*(&v97 + 1) + 8 * v50);
            v52 = [v82 objectForKeyedSubscript:v51];
            v53 = [v52 sortedArrayUsingComparator:&__block_literal_global_22];

            v95 = 0u;
            v96 = 0u;
            v93 = 0u;
            v94 = 0u;
            v83 = v53;
            v85 = [v53 reverseObjectEnumerator];
            v90 = [v85 countByEnumeratingWithState:&v93 objects:v114 count:16];
            if (v90)
            {
              v87 = *v94;
              v88 = v51;
              do
              {
                v54 = 0;
                do
                {
                  if (*v94 != v87)
                  {
                    objc_enumerationMutation(v85);
                  }

                  v92 = v54;
                  v55 = *(*(&v93 + 1) + 8 * v54);
                  [v11 insertString:v55 atIndex:{objc_msgSend(v51, "integerValue")}];
                  [v55 length];
                  v91 = &v75;
                  __chkstk_darwin();
                  v57 = &v75 - v56;
                  if ([v55 length])
                  {
                    v58 = 0;
                    do
                    {
                      *&v57[8 * v58++] = [v51 integerValue];
                    }

                    while (v58 < [v55 length]);
                  }

                  v59 = 8 * [v51 integerValue];
                  v60 = [v55 length];
                  [v86 replaceBytesInRange:v59 withBytes:0 length:{v57, 8 * v60}];
                  if ([v46 count])
                  {
                    v61 = 0;
                    do
                    {
                      v62 = v49[132];
                      [v46 objectAtIndexedSubscript:v61];
                      v64 = v63 = v49;
                      v65 = [v64 rangeValue];
                      v66 = [v55 length];
                      v67 = [v46 objectAtIndexedSubscript:v61];
                      [v67 rangeValue];
                      v69 = [v62 valueWithRange:{&v66[v65], v68}];
                      [v46 setObject:v69 atIndexedSubscript:v61];

                      v49 = v63;
                      ++v61;
                    }

                    while (v61 < [v46 count]);
                  }

                  v51 = v88;
                  v70 = [v49[132] valueWithRange:{objc_msgSend(v88, "integerValue"), objc_msgSend(v55, "length")}];
                  [v46 addObject:v70];

                  v54 = v92 + 1;
                  v11 = v89;
                }

                while ((v92 + 1) != v90);
                v90 = [v85 countByEnumeratingWithState:&v93 objects:v114 count:16];
              }

              while (v90);
            }

            v50 = v84 + 1;
          }

          while ((v84 + 1) != v81);
          v81 = [v79 countByEnumeratingWithState:&v97 objects:v115 count:16];
        }

        while (v81);
      }

      v71 = v76;
      v72 = v86;
      if (v76)
      {
        v73 = v86;
        *v71 = v72;
      }

      v9 = v77;
      v10 = v78;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

int64_t __102__DBTTextFormatterPreprocessor_preprocessPrintString_withLocationMap_isEightDot_textFormattingRanges___block_invoke_2(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 containsString:@"~b"])
  {
    goto LABEL_2;
  }

  if ([v5 containsString:@"~b"])
  {
LABEL_4:
    v6 = 1;
    goto LABEL_5;
  }

  if (([v4 containsString:@"~i"] & 1) == 0)
  {
    if (([v5 containsString:@"~i"] & 1) == 0)
    {
      if (([v4 containsString:@"~u"] & 1) == 0)
      {
        v6 = [v5 containsString:@"~u"];
        goto LABEL_5;
      }

      goto LABEL_2;
    }

    goto LABEL_4;
  }

LABEL_2:
  v6 = -1;
LABEL_5:

  return v6;
}

@end