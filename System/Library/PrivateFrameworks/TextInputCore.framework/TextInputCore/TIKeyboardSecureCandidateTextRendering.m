@interface TIKeyboardSecureCandidateTextRendering
+ (BOOL)_isAllSingleLineStrings:(id)a3;
+ (BOOL)_textRunsHaveFixedFontSize:(id)a3;
+ (CGColor)_newCgColorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
+ (CGColor)_newCgColorWithTraitsColor:(id)a3;
+ (__CFAttributedString)_newAttributedStringWithText:(id)a3 font:(__CTFont *)a4 color:(CGColor *)a5;
+ (double)_totalWidthForCell:(unint64_t)a3 fromTextRunResponses:(id)a4;
+ (id)_arrayOfSecureCandidateAttributes:(unint64_t)a3;
+ (id)_defaultLayoutTraitsForTraits:(id)a3;
+ (id)_drawSingleLineSecureHeaders:(id)a3 secureContents:(id)a4 layoutTraits:(id)a5 renderTraits:(id)a6 contexts:(__CFArray *)a7 availableWidth:(double)a8 truncationSentinel:(id)a9 abortInsteadOfTruncating:(BOOL)a10;
+ (id)_drawTwoLineCellsWithSecureHeaders:(id)a3 secureContents:(id)a4 layoutTraits:(id)a5 renderTraits:(id)a6 contexts:(__CFArray *)a7 availableWidth:(double)a8 truncationSentinel:(id)a9;
+ (id)_requestLayoutForSimplifiedTextRuns:(id)a3 inWidthGroups:(id)a4 steps:(unint64_t)a5;
+ (id)drawSecureHeaders:(id)a3 secureContents:(id)a4 inContexts:(__CFArray *)a5 traits:(id)a6 truncationSentinel:(id)a7;
+ (id)requestLayoutForTextRuns:(id)a3 inWidthGroups:(id)a4 steps:(unint64_t)a5;
+ (id)truncatedWidthsForItemWidths:(id)a3 availableWidth:(double)a4;
+ (void)_drawLineFromCellAtIndex:(unint64_t)a3 ofResponse:(id)a4 atYCoordinate:(double)a5 atXCoordinate:(double)a6 inContext:(CGContext *)a7;
+ (void)_handleEllipsisTruncationForTextRuns:(id)a3 textRunResponses:(id)a4 inAvailableWidth:(double)a5;
@end

@implementation TIKeyboardSecureCandidateTextRendering

+ (id)drawSecureHeaders:(id)a3 secureContents:(id)a4 inContexts:(__CFArray *)a5 traits:(id)a6 truncationSentinel:(id)a7
{
  v85 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v80 = a4;
  v13 = a6;
  v14 = a7;
  v15 = [v13 layoutTraits];
  v77 = a1;
  if (![v15 headerInliningBehavior])
  {
    v16 = [a1 _defaultLayoutTraitsForTraits:v13];

    v15 = v16;
  }

  v17 = [v13 resultCountToSingleCellWidth];
  v18 = [v13 maxCellCount];
  v19 = [v12 count];
  if (v18 >= 1)
  {
    v20 = [v13 maxCellCount];
    if (v19 >= v20)
    {
      v19 = v20;
    }
  }

  v21 = v19;
  if ([v13 sharedCellCount])
  {
    v21 = [v13 sharedCellCount] + v19;
  }

  if ([v13 isInlinePromptUI])
  {
    v22 = [v13 cellWidthOptions];
    v23 = v22;
    v24 = *MEMORY[0x277D6F940];
LABEL_29:
    v30 = [v22 objectForKey:v24];
    [v30 doubleValue];
    v29 = v31;

    goto LABEL_30;
  }

  if (![v17 count])
  {
    v26 = [v13 cellRenderingStyle];
    v22 = [v13 cellWidthOptions];
    v23 = v22;
    if (v26)
    {
      switch(v21)
      {
        case 1uLL:
          v27 = MEMORY[0x277D6F938];
          break;
        case 2uLL:
          v27 = MEMORY[0x277D6F958];
          break;
        case 3uLL:
          v27 = MEMORY[0x277D6F948];
          break;
        default:
          v27 = MEMORY[0x277D6F968];
          break;
      }
    }

    else if (v21 == 1)
    {
      v27 = MEMORY[0x277D6F940];
    }

    else if (v21 == 2)
    {
      v27 = MEMORY[0x277D6F960];
    }

    else
    {
      v27 = MEMORY[0x277D6F950];
    }

    v24 = *v27;
    goto LABEL_29;
  }

  v25 = [v12 count];
  if (v25 >= [v17 count])
  {
    [v17 lastObject];
  }

  else
  {
    [v17 objectAtIndexedSubscript:{objc_msgSend(v12, "count")}];
  }
  v23 = ;
  [v23 doubleValue];
  v29 = v28;
LABEL_30:

  v76 = v17;
  if (v29 >= 20.0)
  {
    [v13 singleCellHeight];
    if (v32 > 0.0)
    {
      for (i = 0; CFArrayGetCount(a5) > i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a5, i);
        CGContextSaveGState(ValueAtIndex);
        [v13 singleCellHeight];
        CGContextTranslateCTM(ValueAtIndex, 10.0, v35);
      }

      v40 = v29 + -20.0;
      if ([v15 headerInliningBehavior] == 2 && (objc_msgSend(v15, "inputTraitsInOnlyLine"), v41 = objc_claimAutoreleasedReturnValue(), v41, v41) && objc_msgSend(v77, "_isAllSingleLineStrings:", v80))
      {
        v42 = [v13 shouldForceDoubleLineCandidateForPasswordAutofill];
        [v13 setShouldForceDoubleLineCandidateForPasswordAutofill:0];
        if ((v42 & 1) == 0)
        {
          v43 = [v13 shouldForceDoubleLineCandidateForCellularAutofill];
          [v13 setShouldForceDoubleLineCandidateForCellularAutofill:0];
          if ((v43 & 1) == 0)
          {
            LOBYTE(v74) = 1;
            v37 = [v77 _drawSingleLineSecureHeaders:v12 secureContents:v80 layoutTraits:v15 renderTraits:v13 contexts:a5 availableWidth:v14 truncationSentinel:v40 abortInsteadOfTruncating:v74];
            if (v37)
            {
LABEL_78:
              for (j = 0; CFArrayGetCount(a5) > j; ++j)
              {
                v70 = CFArrayGetValueAtIndex(a5, j);
                CGContextRestoreGState(v70);
              }

              goto LABEL_42;
            }
          }

LABEL_54:
          v75 = v14;
          v79 = [MEMORY[0x277CCAB58] indexSet];
          v78 = [MEMORY[0x277CCAB58] indexSet];
          v44 = v12;
          if (v19)
          {
            v45 = 0;
            v46 = -1;
            while (1)
            {
              v47 = [v12 objectAtIndexedSubscript:v45];
              v48 = [v47 length];

              if (v48)
              {
                [v78 addIndex:v45];
                if (([v15 forceSingleLineLayout] & 1) == 0)
                {
                  goto LABEL_62;
                }
              }

              else if (([v15 forceSingleLineLayout] & 1) == 0)
              {
                v49 = [v80 objectAtIndexedSubscript:v45];
                v50 = [v49 containsString:@"\n"];

                if (v50)
                {
                  goto LABEL_62;
                }
              }

              [v79 addIndex:v45];
LABEL_62:
              v51 = [v80 objectAtIndexedSubscript:v45];
              v52 = [v13 hideMyEmailLocalizedText];
              v53 = [v51 isEqualToString:v52];

              if (v53)
              {
                v46 = v45;
              }

              ++v45;
              v12 = v44;
              if (v19 == v45)
              {
                goto LABEL_67;
              }
            }
          }

          v46 = -1;
LABEL_67:
          v54 = v79;
          if (([v15 forceSingleLineLayout] & 1) == 0 && objc_msgSend(v78, "count"))
          {
            [v79 removeAllIndexes];
          }

          if ((v46 & 0x8000000000000000) == 0)
          {
            [v79 addIndex:v46];
          }

          if ([v79 count])
          {
            v55 = [v44 objectsAtIndexes:v79];
            v56 = [v80 objectsAtIndexes:v79];
            v57 = [v79 count];
            Mutable = CFArrayCreateMutable(0, v57, MEMORY[0x277CBF128]);
            v82[0] = MEMORY[0x277D85DD0];
            v82[1] = 3221225472;
            v82[2] = __112__TIKeyboardSecureCandidateTextRendering_drawSecureHeaders_secureContents_inContexts_traits_truncationSentinel___block_invoke;
            v82[3] = &__block_descriptor_48_e12_v24__0Q8_B16l;
            v82[4] = Mutable;
            v82[5] = a5;
            [v79 enumerateIndexesUsingBlock:v82];
            LOBYTE(v74) = 0;
            v59 = v55;
            v37 = [v77 _drawSingleLineSecureHeaders:v55 secureContents:v56 layoutTraits:v15 renderTraits:v13 contexts:Mutable availableWidth:v75 truncationSentinel:v40 abortInsteadOfTruncating:v74];
            v60 = Mutable;
            v54 = v79;
            CFRelease(v60);
          }

          else
          {
            v37 = 0;
          }

          v61 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, v19}];
          [v61 removeIndexes:v54];
          if ([v61 count])
          {
            v62 = [v61 count];
            v63 = [v44 objectsAtIndexes:v61];
            v64 = [v80 objectsAtIndexes:v61];
            v65 = CFArrayCreateMutable(0, v62, MEMORY[0x277CBF128]);
            v81[0] = MEMORY[0x277D85DD0];
            v81[1] = 3221225472;
            v81[2] = __112__TIKeyboardSecureCandidateTextRendering_drawSecureHeaders_secureContents_inContexts_traits_truncationSentinel___block_invoke_2;
            v81[3] = &__block_descriptor_48_e12_v24__0Q8_B16l;
            v81[4] = v65;
            v81[5] = a5;
            [v61 enumerateIndexesUsingBlock:v81];
            v66 = v63;
            v67 = [v77 _drawTwoLineCellsWithSecureHeaders:v63 secureContents:v64 layoutTraits:v15 renderTraits:v13 contexts:v65 availableWidth:v75 truncationSentinel:v40];

            v68 = v65;
            v54 = v79;
            CFRelease(v68);

            v37 = v67;
          }

          v12 = v44;
          v14 = v75;
          goto LABEL_78;
        }
      }

      else
      {
        [v13 setShouldForceDoubleLineCandidateForPasswordAutofill:0];
      }

      [v13 setShouldForceDoubleLineCandidateForCellularAutofill:0];
      goto LABEL_54;
    }
  }

  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel >= 2)
  {
    v36 = TIOSLogFacility();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v71 = MEMORY[0x277CCACA8];
      [v13 singleCellHeight];
      v73 = [v71 stringWithFormat:@"%s TISecureCandidateLogging: failed to draw secure candidate - cell too small, width(%f), height(%f)", "+[TIKeyboardSecureCandidateTextRendering drawSecureHeaders:secureContents:inContexts:traits:truncationSentinel:]", *&v29, v72];
      *buf = 138412290;
      v84 = v73;
      _os_log_debug_impl(&dword_22CA55000, v36, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v37 = [v77 _arrayOfSecureCandidateAttributes:{objc_msgSend(v12, "count")}];
LABEL_42:

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

void __112__TIKeyboardSecureCandidateTextRendering_drawSecureHeaders_secureContents_inContexts_traits_truncationSentinel___block_invoke(uint64_t a1, CFIndex a2)
{
  v2 = *(a1 + 32);
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), a2);

  CFArrayAppendValue(v2, ValueAtIndex);
}

void __112__TIKeyboardSecureCandidateTextRendering_drawSecureHeaders_secureContents_inContexts_traits_truncationSentinel___block_invoke_2(uint64_t a1, CFIndex a2)
{
  v2 = *(a1 + 32);
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), a2);

  CFArrayAppendValue(v2, ValueAtIndex);
}

+ (id)_drawSingleLineSecureHeaders:(id)a3 secureContents:(id)a4 layoutTraits:(id)a5 renderTraits:(id)a6 contexts:(__CFArray *)a7 availableWidth:(double)a8 truncationSentinel:(id)a9 abortInsteadOfTruncating:(BOOL)a10
{
  v140[3] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v123 = a9;
  v19 = [v17 headerTraitsInOnlyLine];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = [v17 inputTraitsInOnlyLine];
  }

  v22 = v21;

  v124 = [v17 inputTraitsInOnlyLine];
  v23 = [v18 maxCellCount];
  v24 = [v15 count];
  v119 = v17;
  if (v23 >= 1)
  {
    v25 = [v18 maxCellCount];
    if (v24 >= v25)
    {
      v24 = v25;
    }
  }

  v122 = v18;
  v26 = a8 + -7.0;
  v125 = v24;
  v126 = [a1 _arrayOfSecureCandidateAttributes:v24];
  v27 = [v22 textColor];
  color = [a1 _newCgColorWithTraitsColor:v27];

  v28 = [v124 textColor];
  v127 = [a1 _newCgColorWithTraitsColor:v28];

  v29 = [MEMORY[0x277CCAB58] indexSet];
  v30 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v16, "count")}];
  v31 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v16, "count")}];
  if ([v15 count])
  {
    v32 = 0;
    do
    {
      v33 = v31;
      v34 = v30;
      v35 = [v15 objectAtIndexedSubscript:v32];
      v36 = [v35 length];

      if (v36)
      {
        [v29 addIndex:v32];
        v37 = [v16 objectAtIndexedSubscript:v32];
        v30 = v34;
        [v34 addObject:v37];

        v31 = v33;
        [v33 addObject:&stru_283FDFAF8];
      }

      else
      {
        v30 = v34;
        [v34 addObject:&stru_283FDFAF8];
        v38 = [v16 objectAtIndexedSubscript:v32];
        v31 = v33;
        [v33 addObject:v38];
      }

      ++v32;
    }

    while (v32 < [v15 count]);
  }

  v118 = v30;
  v120 = v16;
  [v22 maxFontSize];
  v40 = v39;
  v121 = v22;
  [v22 minFontSize];
  v116 = [TISCTextRunRequest textRunRequestWithStrings:v15 color:color maxFontSize:!a10 minFontSize:v123 allowTruncation:0 truncationSentinel:v40 widthGroup:v41];
  v140[0] = v116;
  [v124 maxFontSize];
  v43 = v42;
  [v124 minFontSize];
  v114 = [TISCTextRunRequest textRunRequestWithStrings:v30 color:v127 maxFontSize:!a10 minFontSize:v123 allowTruncation:0 truncationSentinel:v43 widthGroup:v44];
  v140[1] = v114;
  [v124 maxFontSize];
  v46 = v45;
  [v124 minFontSize];
  v48 = [TISCTextRunRequest textRunRequestWithStrings:v31 color:v127 maxFontSize:!a10 minFontSize:v123 allowTruncation:1 truncationSentinel:v46 widthGroup:v47];
  v140[2] = v48;
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v140 count:3];
  v50 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
  v139[0] = v50;
  v51 = [MEMORY[0x277CCABB0] numberWithDouble:a8];
  v139[1] = v51;
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v139 count:2];
  v53 = [a1 requestLayoutForTextRuns:v49 inWidthGroups:v52 steps:10];

  CGColorRelease(color);
  CGColorRelease(v127);
  if (![v53 count])
  {
    v108 = v31;
    v83 = v126;
    v109 = v126;

LABEL_44:
    v57 = v121;
    goto LABEL_45;
  }

  v54 = [v53 objectAtIndexedSubscript:0];
  v55 = [v53 objectAtIndexedSubscript:1];
  v117 = v53;
  v56 = [v53 objectAtIndexedSubscript:2];
  v57 = v121;
  if (!a10 || ![v15 count])
  {
LABEL_22:
    v115 = v31;
    [v122 singleCellVerticalPadding];
    v66 = v65;
    [v121 yCoordinate];
    v68 = v66 - v67;
    [v124 yCoordinate];
    v70 = v66 - v69;
    [v121 maxFontSize];
    v72 = v71;
    [v124 maxFontSize];
    v74 = v72 - v73;
    if (v72 - v73 != 0.0)
    {
      v75 = v68 - v70;
      if (v68 - v70 != 0.0)
      {
        v76 = [v54 font];
        v77 = [v55 font];
        Size = CTFontGetSize(v76);
        v79 = round(v75 * ((Size - CTFontGetSize(v77)) / v74));
        if (v79 > fabs(v75))
        {
          v79 = v68 - v70;
        }

        v80 = (v68 + v70) * 0.5;
        v81 = v79 * 0.5;
        v68 = v80 + v81;
        v70 = v80 - v81;
      }
    }

    v82 = v125;
    v83 = v126;
    if (v125)
    {
      v84 = 0;
      v85 = a8 * 0.5;
      v129 = *(MEMORY[0x277CBF2C0] + 16);
      *colora = *MEMORY[0x277CBF2C0];
      v128 = *(MEMORY[0x277CBF2C0] + 32);
      do
      {
        v86 = [v29 containsIndex:v84];
        if (v86)
        {
          v136[0] = v54;
          v136[1] = v55;
          v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v136 count:2];
          [a1 _totalWidthForCell:v84 fromTextRunResponses:v87];
          v89 = v88;

          v90 = v89 + 7.0;
        }

        else
        {
          v135 = v56;
          v91 = [MEMORY[0x277CBEA60] arrayWithObjects:&v135 count:1];
          [a1 _totalWidthForCell:v84 fromTextRunResponses:v91];
          v90 = v92;
        }

        v93 = v85 + v90 * -0.5;
        ValueAtIndex = CFArrayGetValueAtIndex(a7, v84);
        CGContextSaveGState(ValueAtIndex);
        *&v134.a = *colora;
        *&v134.c = v129;
        *&v134.tx = v128;
        CGContextSetTextMatrix(ValueAtIndex, &v134);
        if (v86)
        {
          v95 = CFArrayGetValueAtIndex([v54 ctLines], v84);
          v96 = [v54 widths];
          v97 = [v96 objectAtIndexedSubscript:v84];
          [v97 doubleValue];
          v99 = v98;

          v100 = [v15 firstObject];
          LODWORD(v97) = [v100 _isNaturallyRTL];

          v101 = v90 + v93 - v99;
          v102 = v97 == 0;
          v82 = v125;
          v83 = v126;
          if (v102)
          {
            v103 = v93 + v99 + 7.0;
          }

          else
          {
            v103 = v85 + v90 * -0.5;
          }

          if (v102)
          {
            v101 = v85 + v90 * -0.5;
          }

          CGContextSetTextPosition(ValueAtIndex, v101, v68);
          CTLineDraw(v95, ValueAtIndex);
          v104 = v55;
          v93 = v103;
        }

        else
        {
          v104 = v56;
        }

        v105 = CFArrayGetValueAtIndex([v104 ctLines], v84);
        CGContextSetTextPosition(ValueAtIndex, v93, v70);
        CTLineDraw(v105, ValueAtIndex);
        CGContextRestoreGState(ValueAtIndex);
        v106 = [v83 objectAtIndexedSubscript:v84];
        [v106 setSecureCandidateWidth:v90];

        ++v84;
      }

      while (v82 != v84);
    }

    v107 = v83;
    goto LABEL_44;
  }

  v58 = 0;
  while ([v29 containsIndex:v58])
  {
    v138[0] = v54;
    v138[1] = v55;
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v138 count:2];
    [a1 _totalWidthForCell:v58 fromTextRunResponses:v59];
    v61 = v60;

    if (v61 > v26)
    {
      goto LABEL_48;
    }

LABEL_21:
    if (++v58 >= [v15 count])
    {
      goto LABEL_22;
    }
  }

  v137 = v56;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v137 count:1];
  [a1 _totalWidthForCell:v58 fromTextRunResponses:v62];
  v64 = v63;

  if (v64 <= a8)
  {
    goto LABEL_21;
  }

LABEL_48:
  v112 = v31;
  v83 = v126;
  v113 = v126;

LABEL_45:
  v110 = *MEMORY[0x277D85DE8];

  return v83;
}

+ (id)_drawTwoLineCellsWithSecureHeaders:(id)a3 secureContents:(id)a4 layoutTraits:(id)a5 renderTraits:(id)a6 contexts:(__CFArray *)a7 availableWidth:(double)a8 truncationSentinel:(id)a9
{
  v136[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v123 = a4;
  v111 = a5;
  v131 = a6;
  v110 = a9;
  v15 = [v14 count];
  v126 = [MEMORY[0x277CBEB18] arrayWithCapacity:v15];
  v125 = [MEMORY[0x277CBEB18] arrayWithCapacity:v15];
  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:v15];
  v124 = [MEMORY[0x277CBEB18] arrayWithCapacity:v15];
  v127 = [MEMORY[0x277CCAB58] indexSet];
  v112 = v16;
  v132 = v15;
  if (v15)
  {
    v17 = 0;
    do
    {
      v18 = [v14 objectAtIndexedSubscript:v17];
      v19 = [v123 objectAtIndexedSubscript:v17];
      if ([v18 length] || (v20 = objc_msgSend(v19, "rangeOfString:", @"\n"), v20 == 0x7FFFFFFFFFFFFFFFLL))
      {
        [v127 addIndex:v17];
        [v126 addObject:v18];
        [v125 addObject:v19];
        [v16 addObject:&stru_283FDFAF8];
        [v124 addObject:&stru_283FDFAF8];
      }

      else
      {
        v22 = v20;
        v23 = v21;
        [v126 addObject:&stru_283FDFAF8];
        [v125 addObject:&stru_283FDFAF8];
        v24 = [v19 substringToIndex:v22];
        [v112 addObject:v24];

        v16 = v112;
        v25 = [v19 substringFromIndex:v22 + v23];
        [v124 addObject:v25];
      }

      ++v17;
    }

    while (v132 != v17);
  }

  v109 = v14;
  v122 = [a1 _arrayOfSecureCandidateAttributes:v132];
  v26 = [v111 headerTraitsInFirstLine];
  v27 = [v26 textColor];
  v28 = [a1 _newCgColorWithTraitsColor:v27];

  [v26 maxFontSize];
  v30 = v29;
  v120 = v26;
  [v26 minFontSize];
  v32 = [TISCTextRunRequest textRunRequestWithStrings:v126 color:v28 maxFontSize:1 minFontSize:v110 allowTruncation:0 truncationSentinel:v30 widthGroup:v31];
  v136[0] = v32;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v136 count:1];
  v34 = [MEMORY[0x277CCABB0] numberWithDouble:a8];
  v135 = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v135 count:1];
  v128 = [a1 requestLayoutForTextRuns:v33 inWidthGroups:v35 steps:10];

  v119 = [v128 objectAtIndexedSubscript:0];
  CGColorRelease(v28);
  v36 = [v111 inputTraitsInSecondLine];
  v37 = [v111 inputTraitsInFirstAndSecondLines];
  v38 = [v36 textColor];
  color = [a1 _newCgColorWithTraitsColor:v38];

  v39 = [v37 textColor];
  v40 = [a1 _newCgColorWithTraitsColor:v39];

  [v36 maxFontSize];
  v42 = v41;
  [v36 minFontSize];
  v115 = [TISCTextRunRequest textRunRequestWithStrings:v125 color:color maxFontSize:1 minFontSize:v110 allowTruncation:1 truncationSentinel:v42 widthGroup:v43];
  v134[0] = v115;
  [v37 maxFontSize];
  v45 = v44;
  v117 = v37;
  [v37 minFontSize];
  v47 = [TISCTextRunRequest textRunRequestWithStrings:v112 color:v40 maxFontSize:1 minFontSize:v110 allowTruncation:0 truncationSentinel:v45 widthGroup:v46];
  v134[1] = v47;
  [v36 maxFontSize];
  v49 = v48;
  v118 = v36;
  [v36 minFontSize];
  v51 = [TISCTextRunRequest textRunRequestWithStrings:v124 color:v40 maxFontSize:1 minFontSize:v110 allowTruncation:1 truncationSentinel:v49 widthGroup:v50];
  v134[2] = v51;
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v134 count:3];
  v53 = [MEMORY[0x277CCABB0] numberWithDouble:a8];
  v133[0] = v53;
  v54 = [MEMORY[0x277CCABB0] numberWithDouble:a8];
  v133[1] = v54;
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v133 count:2];
  v56 = [a1 requestLayoutForTextRuns:v52 inWidthGroups:v55 steps:10];

  v116 = [v56 objectAtIndexedSubscript:0];
  v114 = [v56 objectAtIndexedSubscript:1];
  v108 = v56;
  v113 = [v56 objectAtIndexedSubscript:2];
  CGColorRelease(color);
  CGColorRelease(v40);
  if (v132)
  {
    v57 = 0;
    v58 = a8 * 0.5;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a7, v57);
      if ([v127 containsIndex:v57])
      {
        v60 = v119;
        v61 = v116;
        [v120 yCoordinate];
        v63 = v62;
        [v118 yCoordinate];
        v65 = v64;
      }

      else
      {
        v60 = v114;
        v61 = v113;
        [v117 yCoordinate];
        v63 = v66;
        [v117 yCoordinate];
        v68 = v67;
        [v117 baselineOffset];
        v65 = v68 + v69;
      }

      [v131 singleCellVerticalPadding];
      v71 = v70;
      v72 = [v60 widths];
      v73 = [v72 objectAtIndexedSubscript:v57];
      [v73 doubleValue];
      v75 = v74;

      v76 = [v61 widths];
      v77 = [v76 objectAtIndexedSubscript:v57];
      [v77 doubleValue];
      v79 = v78;

      v80 = v75;
      v81 = v79;
      v82 = v58 + (fmaxf(v80, v81) * -0.5);
      if ([v131 isInlinePromptUI])
      {
        if (v75 >= v79)
        {
          v86 = v82 + 0.0;
        }

        else
        {
          v83 = [v126 objectAtIndexedSubscript:v57];
          v84 = [v83 _isNaturallyRTL];
          v85 = v79 - v75;
          if (!v84)
          {
            v85 = 0.0;
          }

          v86 = v82 + v85;
        }
      }

      else
      {
        v86 = v58 + v75 * -0.5;
      }

      [a1 _drawLineFromCellAtIndex:v57 ofResponse:v60 atYCoordinate:ValueAtIndex atXCoordinate:v71 - v63 inContext:v86];
      if ([v131 isInlinePromptUI])
      {
        if (v75 <= v79)
        {
          v90 = v82 + 0.0;
        }

        else
        {
          v87 = [v125 objectAtIndexedSubscript:v57];
          v88 = [v87 _isNaturallyRTL];
          v89 = v75 - v79;
          if (!v88)
          {
            v89 = 0.0;
          }

          v90 = v82 + v89;
        }
      }

      else
      {
        v90 = v58 + v79 * -0.5;
      }

      [a1 _drawLineFromCellAtIndex:v57 ofResponse:v61 atYCoordinate:ValueAtIndex atXCoordinate:v71 - v65 inContext:v90];
      v91 = [v60 widths];
      v92 = [v91 objectAtIndexedSubscript:v57];
      [v92 floatValue];
      v94 = v93;
      v95 = [v61 widths];
      v96 = [v95 objectAtIndexedSubscript:v57];
      [v96 floatValue];
      if (v94 > v97)
      {
        v98 = v60;
      }

      else
      {
        v98 = v61;
      }

      [v98 widths];
      v99 = v129 = v61;
      v100 = [v99 objectAtIndexedSubscript:v57];
      [v100 floatValue];
      v102 = v101;
      v103 = [v122 objectAtIndexedSubscript:v57];
      [v103 setSecureCandidateWidth:v102];

      v104 = [v122 objectAtIndexedSubscript:v57];
      [v104 setIsSecureCandidateDoubleLines:1];

      ++v57;
    }

    while (v132 != v57);
  }

  v105 = *MEMORY[0x277D85DE8];

  return v122;
}

+ (id)_arrayOfSecureCandidateAttributes:(unint64_t)a3
{
  for (i = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  {
    v5 = objc_alloc_init(TISecureCandidateAttributes);
    [i addObject:v5];
  }

  return i;
}

+ (void)_drawLineFromCellAtIndex:(unint64_t)a3 ofResponse:(id)a4 atYCoordinate:(double)a5 atXCoordinate:(double)a6 inContext:(CGContext *)a7
{
  ValueAtIndex = CFArrayGetValueAtIndex([a4 ctLines], a3);
  CGContextSaveGState(a7);
  v11 = *(MEMORY[0x277CBF2C0] + 16);
  *&v12.a = *MEMORY[0x277CBF2C0];
  *&v12.c = v11;
  *&v12.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGContextSetTextMatrix(a7, &v12);
  CGContextSetTextPosition(a7, a6, a5);
  CTLineDraw(ValueAtIndex, a7);
  CGContextRestoreGState(a7);
}

+ (CGColor)_newCgColorWithTraitsColor:(id)a3
{
  v4 = a3;
  [v4 colorR];
  v6 = v5;
  [v4 colorG];
  v8 = v7;
  [v4 colorB];
  v10 = v9;
  [v4 colorA];
  v12 = v11;

  return [a1 _newCgColorWithRed:v6 green:v8 blue:v10 alpha:v12];
}

+ (BOOL)_isAllSingleLineStrings:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v11 + 1) + 8 * i) containsString:{@"\n", v11}])
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)_defaultLayoutTraitsForTraits:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D6F418]);
  v5 = [v3 isCandidateUI];
  v6 = [v3 isInlinePromptUI];
  v7 = [v3 headerTextTraits];
  v8 = [v7 textColor];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x277D6F420] lightGrayColor];
  }

  v11 = v10;

  v12 = [v3 inputTextTraits];
  v13 = [v12 textColor];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = [MEMORY[0x277D6F420] whiteColor];
  }

  v16 = v15;

  [v3 singleCellHeight];
  v18 = v17;
  [v3 screenScale];
  v20 = 1.0 / v19;
  [v3 screenScale];
  v22 = 2.0 / v21;
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __72__TIKeyboardSecureCandidateTextRendering__defaultLayoutTraitsForTraits___block_invoke;
  v78[3] = &__block_descriptor_57_e11_d24__0d8d16l;
  v79 = v5;
  v23 = 55.0 - 2.0 / v21;
  *&v78[4] = v20;
  *&v78[5] = 2.0 / v21;
  *&v78[6] = v18;
  v24 = _Block_copy(v78);
  if (v18 >= v23 + -0.1)
  {
    [v4 setHeaderInliningBehavior:2];
    v31 = MEMORY[0x277D6F430];
    v32 = (v24 + 2);
    v33 = v24[2](v24, 33.0, 55.0);
    v34 = 15.0;
    if (v5)
    {
      v35 = 15.0;
    }

    else
    {
      v35 = 11.0;
    }

    if (v5)
    {
      v36 = 15.0;
    }

    else
    {
      v36 = 14.0;
    }

    v37 = [v31 traitsWithFontName:0 maxFontSize:v11 minFontSize:18.0 textColor:v35 yCoordinate:v33 baselineOffset:0.0];
    [v4 setHeaderTraitsInOnlyLine:v37];

    v38 = [MEMORY[0x277D6F430] traitsWithFontName:0 maxFontSize:v16 minFontSize:18.0 textColor:v35 yCoordinate:(*v32)(v24 baselineOffset:{33.0, 55.0), 0.0}];
    [v4 setInputTraitsInOnlyLine:v38];

    v39 = [MEMORY[0x277D6F430] traitsWithFontName:0 maxFontSize:v16 minFontSize:15.0 textColor:v35 yCoordinate:(*v32)(v24 baselineOffset:{24.0, 55.0), 17.0}];
    [v4 setInputTraitsInFirstAndSecondLines:v39];

    if (v6)
    {
      v41 = 17.0;
    }

    else
    {
      v41 = v36;
    }

    if (v6)
    {
      v34 = 20.0;
    }

    v40.n128_u64[0] = 0x4045000000000000;
    if (v6)
    {
      v42 = 17.0;
    }

    else
    {
      v40.n128_f64[0] = 24.0;
      v42 = v35;
    }

    if (v6)
    {
      v43 = 22.0;
    }

    else
    {
      v43 = 41.0;
    }

    if (v6)
    {
      v35 = 20.0;
    }

    v44 = [MEMORY[0x277D6F430] traitsWithFontName:0 maxFontSize:v11 minFontSize:v41 textColor:v42 yCoordinate:(*v32)(v24 baselineOffset:{v40, 55.0), 0.0}];
    [v4 setHeaderTraitsInFirstLine:v44];

    v45 = MEMORY[0x277D6F430];
    v46 = (*v32)(v24, v43, 55.0);
    v47 = v45;
    v48 = v34;
    goto LABEL_49;
  }

  if (v18 >= 45.0 - v22 + -0.1)
  {
    [v4 setHeaderInliningBehavior:3];
    v49 = MEMORY[0x277D6F430];
    v50 = v24 + 2;
    v51 = v24[2](v24, 31.0, 45.0);
    if (v5)
    {
      v35 = 15.0;
    }

    else
    {
      v35 = 11.0;
    }

    if (v5)
    {
      v52 = 17.0;
    }

    else
    {
      v52 = 14.0;
    }

    v53 = [v49 traitsWithFontName:0 maxFontSize:v16 minFontSize:18.0 textColor:v35 yCoordinate:v51 baselineOffset:0.0];
    [v4 setInputTraitsInOnlyLine:v53];

    v54 = [MEMORY[0x277D6F430] traitsWithFontName:0 maxFontSize:v16 minFontSize:17.0 textColor:v35 yCoordinate:(*v50)(v24 baselineOffset:{18.0, 45.0), 19.0}];
    [v4 setInputTraitsInFirstAndSecondLines:v54];

    v55 = [MEMORY[0x277D6F430] traitsWithFontName:0 maxFontSize:v11 minFontSize:v52 textColor:v35 yCoordinate:(*v50)(v24 baselineOffset:{18.0, 45.0), 0.0}];
    [v4 setHeaderTraitsInFirstLine:v55];

    v56 = MEMORY[0x277D6F430];
    v46 = (*v50)(v24, 37.0, 45.0);
    v48 = 17.0;
    v47 = v56;
LABEL_49:
    v57 = v35;
LABEL_50:
    v30 = [v47 traitsWithFontName:0 maxFontSize:v16 minFontSize:v48 textColor:v57 yCoordinate:v46 baselineOffset:0.0];
    [v4 setInputTraitsInSecondLine:v30];
    goto LABEL_51;
  }

  if (v18 >= 44.0 - v22 + -0.1)
  {
    [v4 setHeaderInliningBehavior:3];
    v59 = MEMORY[0x277D6F430];
    v60 = v24 + 2;
    v61 = v24[2](v24, 30.0, 44.0);
    if (v5)
    {
      v62 = 15.0;
    }

    else
    {
      v62 = 11.0;
    }

    if (v5)
    {
      v63 = 18.0;
    }

    else
    {
      v63 = 17.0;
    }

    if (v5)
    {
      v64 = 17.0;
    }

    else
    {
      v64 = 14.0;
    }

    v65 = [v59 traitsWithFontName:0 maxFontSize:v16 minFontSize:18.0 textColor:v62 yCoordinate:v61 baselineOffset:0.0];
    [v4 setInputTraitsInOnlyLine:v65];

    v66 = [MEMORY[0x277D6F430] traitsWithFontName:0 maxFontSize:v16 minFontSize:17.0 textColor:v62 yCoordinate:(*v60)(v24 baselineOffset:{v63, 44.0), 19.0}];
    [v4 setInputTraitsInFirstAndSecondLines:v66];

    v67 = [MEMORY[0x277D6F430] traitsWithFontName:0 maxFontSize:v11 minFontSize:v64 textColor:v62 yCoordinate:(*v60)(v24 baselineOffset:{20.0, 44.0), 0.0}];
    [v4 setHeaderTraitsInFirstLine:v67];

    v68 = MEMORY[0x277D6F430];
    v46 = (*v60)(v24, 36.0, 44.0);
    v48 = 17.0;
    goto LABEL_78;
  }

  if (v18 >= 38.0 - v22 + -0.1)
  {
    [v4 setHeaderInliningBehavior:3];
    v69 = MEMORY[0x277D6F430];
    v70 = v24 + 2;
    v71 = v24[2](v24, 27.0, 38.0);
    if (v5)
    {
      v62 = 15.0;
    }

    else
    {
      v62 = 11.0;
    }

    if (v5)
    {
      v72 = 13.0;
    }

    else
    {
      v72 = 11.0;
    }

    if (v5)
    {
      v73 = 15.0;
    }

    else
    {
      v73 = 16.0;
    }

    if (v5)
    {
      v74 = 32.0;
    }

    else
    {
      v74 = 34.0;
    }

    v75 = [v69 traitsWithFontName:0 maxFontSize:v16 minFontSize:18.0 textColor:v62 yCoordinate:v71 baselineOffset:0.0];
    [v4 setInputTraitsInOnlyLine:v75];

    v76 = [MEMORY[0x277D6F430] traitsWithFontName:0 maxFontSize:v16 minFontSize:16.0 textColor:v62 yCoordinate:(*v70)(v24 baselineOffset:{17.0, 38.0), 17.0}];
    [v4 setInputTraitsInFirstAndSecondLines:v76];

    v77 = [MEMORY[0x277D6F430] traitsWithFontName:0 maxFontSize:v11 minFontSize:13.0 textColor:v72 yCoordinate:(*v70)(v24 baselineOffset:{v73, 38.0), 0.0}];
    [v4 setHeaderTraitsInFirstLine:v77];

    v68 = MEMORY[0x277D6F430];
    v46 = (*v70)(v24, v74, 38.0);
    v48 = 16.0;
LABEL_78:
    v47 = v68;
    v57 = v62;
    goto LABEL_50;
  }

  if (v18 < 32.0 - v22 + -0.1)
  {
    goto LABEL_52;
  }

  [v4 setHeaderInliningBehavior:1];
  [v4 setForceSingleLineLayout:1];
  if (v5)
  {
    v26 = 18.0;
  }

  else
  {
    v26 = 14.0;
  }

  if (v5)
  {
    v27 = 15.0;
  }

  else
  {
    v27 = 11.0;
  }

  v25.n128_u64[0] = 21.0;
  if (v5)
  {
    v25.n128_f64[0] = 22.0;
    v28 = 18.0;
  }

  else
  {
    v28 = 17.0;
  }

  v29 = [MEMORY[0x277D6F430] traitsWithFontName:0 maxFontSize:v11 minFontSize:v26 textColor:v27 yCoordinate:(v24[2])(v24 baselineOffset:{v25, 32.0), 0.0}];
  [v4 setHeaderTraitsInOnlyLine:v29];

  v30 = [MEMORY[0x277D6F430] traitsWithFontName:0 maxFontSize:v16 minFontSize:v28 textColor:v27 yCoordinate:v24[2](v24 baselineOffset:{22.0, 32.0), 0.0}];
  [v4 setInputTraitsInOnlyLine:v30];
LABEL_51:

LABEL_52:

  return v4;
}

double __72__TIKeyboardSecureCandidateTextRendering__defaultLayoutTraitsForTraits___block_invoke(uint64_t a1, double a2, double a3)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    a2 = a2 - *(a1 + 32);
  }

  result = a2 + (*(a1 + 48) - (a3 - *(a1 + 40))) * 0.5;
  if (!*(a1 + 56))
  {
    return result + 1.0;
  }

  return result;
}

+ (double)_totalWidthForCell:(unint64_t)a3 fromTextRunResponses:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v16 + 1) + 8 * i) widths];
        v12 = [v11 objectAtIndexedSubscript:a3];
        [v12 doubleValue];
        v9 = v9 + v13;
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)requestLayoutForTextRuns:(id)a3 inWidthGroups:(id)a4 steps:(unint64_t)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v36;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v35 + 1) + 8 * i) truncationSentinel];

          if (v15)
          {

            v17 = [MEMORY[0x277CBEB18] array];
            v18 = objc_autoreleasePoolPush();
            v19 = [MEMORY[0x277CCAB58] indexSet];
            v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
            v32[0] = MEMORY[0x277D85DD0];
            v32[1] = 3221225472;
            v32[2] = __87__TIKeyboardSecureCandidateTextRendering_requestLayoutForTextRuns_inWidthGroups_steps___block_invoke;
            v32[3] = &unk_27872FD08;
            v33 = v20;
            v34 = v19;
            v21 = v19;
            v22 = v20;
            [v10 enumerateObjectsUsingBlock:v32];
            v23 = [a1 _requestLayoutForSimplifiedTextRuns:v22 inWidthGroups:v9 steps:a5];
            v31[0] = 0;
            v31[1] = v31;
            v31[2] = 0x2020000000;
            v31[3] = 0;
            v27[0] = MEMORY[0x277D85DD0];
            v27[1] = 3221225472;
            v27[2] = __87__TIKeyboardSecureCandidateTextRendering_requestLayoutForTextRuns_inWidthGroups_steps___block_invoke_2;
            v27[3] = &unk_27872FD30;
            v28 = v23;
            v30 = v31;
            v16 = v17;
            v29 = v16;
            v24 = v23;
            [v21 enumerateIndexesUsingBlock:v27];

            _Block_object_dispose(v31, 8);
            objc_autoreleasePoolPop(v18);
            goto LABEL_13;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v16 = [a1 _requestLayoutForSimplifiedTextRuns:v10 inWidthGroups:v9 steps:a5];
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

LABEL_13:

  v25 = *MEMORY[0x277D85DE8];

  return v16;
}

void __87__TIKeyboardSecureCandidateTextRendering_requestLayoutForTextRuns_inWidthGroups_steps___block_invoke(uint64_t a1, void *a2)
{
  v31 = a1;
  v40 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = MEMORY[0x277CBEB18];
  v4 = [v2 strings];
  v34 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v5 = MEMORY[0x277CBEB18];
  v6 = [v2 strings];
  v33 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [v2 strings];
  v7 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v36;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        v13 = [v2 truncationSentinel];
        if (v13 && (v14 = [v12 rangeOfString:v13], (v16 = v15) != 0))
        {
          v17 = v2;
          v18 = [v12 substringToIndex:v14];
          v19 = [v12 substringFromIndex:v14 + v16];
          [v34 addObject:v18];
          [v33 addObject:v19];
          v9 = v9 || [v19 length] != 0;

          v2 = v17;
        }

        else
        {
          [v34 addObject:v12];
          [v33 addObject:&stru_283FDFAF8];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v20 = [v2 color];
  [v2 maxFontSize];
  v22 = v21;
  [v2 minFontSize];
  v24 = +[TISCTextRunRequest textRunRequestWithStrings:color:maxFontSize:minFontSize:allowTruncation:truncationSentinel:widthGroup:](TISCTextRunRequest, "textRunRequestWithStrings:color:maxFontSize:minFontSize:allowTruncation:truncationSentinel:widthGroup:", v34, v20, [v2 allowTruncation], 0, objc_msgSend(v2, "widthGroup"), v22, v23);
  [*(v31 + 32) addObject:v24];
  if (v9)
  {
    v25 = [v2 color];
    [v2 maxFontSize];
    v27 = v26;
    [v2 minFontSize];
    v29 = +[TISCTextRunRequest textRunRequestWithStrings:color:maxFontSize:minFontSize:allowTruncation:truncationSentinel:widthGroup:](TISCTextRunRequest, "textRunRequestWithStrings:color:maxFontSize:minFontSize:allowTruncation:truncationSentinel:widthGroup:", v33, v25, 0, 0, [v2 widthGroup], v27, v28);
    [*(v31 + 32) addObject:v29];
  }

  [*(v31 + 40) addIndex:{objc_msgSend(*(v31 + 32), "count", v31)}];

  v30 = *MEMORY[0x277D85DE8];
}

void __87__TIKeyboardSecureCandidateTextRendering_requestLayoutForTextRuns_inWidthGroups_steps___block_invoke_2(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if ([*(a1 + 32) count] >= a2)
  {
    v6 = *(*(*(a1 + 48) + 8) + 24);
    v9 = [*(a1 + 32) subarrayWithRange:{v6, a2 - v6}];
    v7 = *(a1 + 40);
    v8 = [TISCTextRunResponse textRunResponseByMergingResponses:v9];
    [v7 addObject:v8];

    *(*(*(a1 + 48) + 8) + 24) = a2;
  }

  else
  {
    *a3 = 1;
  }
}

+ (id)_requestLayoutForSimplifiedTextRuns:(id)a3 inWidthGroups:(id)a4 steps:(unint64_t)a5
{
  v82[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = v9;
  v12 = [v8 firstObject];
  v13 = [v12 strings];
  v65 = [v13 count];

  v69 = a1;
  if ([a1 _textRunsHaveFixedFontSize:v8])
  {
    v14 = 1;
  }

  else
  {
    v14 = a5;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__TIKeyboardSecureCandidateTextRendering__requestLayoutForSimplifiedTextRuns_inWidthGroups_steps___block_invoke;
  aBlock[3] = &__block_descriptor_40_e14_d32__0d8d16Q24l;
  v70 = v14 - 1;
  aBlock[4] = v14 - 1;
  v68 = _Block_copy(aBlock);
  v76 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  v15 = [v10 count];
  theArray = CFArrayCreateMutable(0, v15, MEMORY[0x277CBF128]);
  v16 = malloc_type_malloc(8 * [v11 count], 0x100004000313F17uLL);
  v17 = v16;
  v73 = v11;
  v64 = v14;
  if (v14)
  {
    v75 = 0;
    v67 = *MEMORY[0x277CC4908];
    v66 = *MEMORY[0x277CC4840];
    v74 = v10;
    v72 = v16;
LABEL_6:
    while (2)
    {
      [v76 removeAllObjects];
      CFArrayRemoveAllValues(theArray);
      if (v65)
      {
        v18 = 0;
        v19 = 1;
        while (1)
        {
          if ([v11 count])
          {
            v20 = 0;
            do
            {
              v17[v20++] = 0;
            }

            while (v20 < [v11 count]);
          }

          if ([v10 count])
          {
            break;
          }

LABEL_30:
          ++v18;
          v17 = v72;
          v11 = v73;
          if (v18 == v65)
          {
            if (!(v19 & 1 | (++v75 == v64)))
            {
              goto LABEL_6;
            }

            goto LABEL_34;
          }
        }

        v21 = 0;
        while (1)
        {
          v22 = [v10 objectAtIndexedSubscript:v21];
          v23 = [v22 strings];
          v24 = [v23 objectAtIndexedSubscript:v18];

          v25 = [v22 widthGroup];
          v26 = [v73 objectAtIndexedSubscript:v25];
          [v26 doubleValue];
          v28 = v27;

          if (v18)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v21);
          }

          else
          {
            v81 = v67;
            v82[0] = @".SFUISymbols-Regular";
            v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:&v81 count:1];
            v31 = CTFontDescriptorCreateWithAttributesAndOptions();

            v80 = v31;
            v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];

            v78 = v66;
            v79 = v32;
            v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
            v34 = CTFontDescriptorCreateWithAttributes(v33);

            [v22 minFontSize];
            v36 = v35;
            [v22 maxFontSize];
            v38 = v68[2](v68, v75, v36, v37);
            UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontSystem, v38, 0);
            ValueAtIndex = CTFontCreateCopyWithAttributes(UIFontForLanguage, 0.0, 0, v34);
            CFRelease(v34);
            v40 = UIFontForLanguage;
            v10 = v74;
            CFRelease(v40);
            CFArrayAppendValue(theArray, ValueAtIndex);
            CFRelease(ValueAtIndex);
          }

          if ([v24 length])
          {
            v41 = [v69 _newAttributedStringWithText:v24 font:ValueAtIndex color:{objc_msgSend(v22, "color")}];
            v42 = CTLineCreateWithAttributedString(v41);
            CFRelease(v41);
            TypographicBounds = CTLineGetTypographicBounds(v42, 0, 0, 0);
          }

          else
          {
            if (_requestLayoutForSimplifiedTextRuns_inWidthGroups_steps__onceToken != -1)
            {
              dispatch_once(&_requestLayoutForSimplifiedTextRuns_inWidthGroups_steps__onceToken, &__block_literal_global_64);
            }

            v42 = CFRetain(_requestLayoutForSimplifiedTextRuns_inWidthGroups_steps__emptyCtLine);
            TypographicBounds = 0.0;
          }

          v44 = TypographicBounds + *&v72[v25];
          *&v72[v25] = v44;
          v45 = v44 <= v28;
          if (v44 > v28 && v75 != v70)
          {
            break;
          }

          v47 = objc_autoreleasePoolPush();
          if (v18)
          {
            v48 = [v76 objectAtIndexedSubscript:v21];
          }

          else
          {
            v48 = [TISCTextRunResponse textRunResponseWithFont:ValueAtIndex];
            [v76 addObject:v48];
          }

          v19 &= v45;
          CFArrayAppendValue([v48 ctLines], v42);
          CFRelease(v42);
          v49 = [v48 widths];
          v50 = [MEMORY[0x277CCABB0] numberWithDouble:TypographicBounds];
          [v49 addObject:v50];

          objc_autoreleasePoolPop(v47);
          ++v21;
          v10 = v74;
          if (v21 >= [v74 count])
          {
            goto LABEL_30;
          }
        }

        CFRelease(v42);

        ++v75;
        v17 = v72;
        v11 = v73;
        if (v75 != v64)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_34:
  CFRelease(theArray);
  free(v17);
  v51 = [v76 count];
  if ([v11 count])
  {
    v52 = 0;
    do
    {
      v53 = [v11 objectAtIndexedSubscript:{v52, v64}];
      [v53 doubleValue];
      v55 = v54;

      v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v57 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if ([v10 count])
      {
        v58 = 0;
        do
        {
          v59 = [v10 objectAtIndexedSubscript:v58];
          if ([v59 widthGroup] == v52 && v58 < v51)
          {
            [v56 addObject:v59];
            v61 = [v76 objectAtIndexedSubscript:v58];
            [v57 addObject:v61];
          }

          ++v58;
        }

        while (v58 < [v10 count]);
      }

      [v69 _handleEllipsisTruncationForTextRuns:v56 textRunResponses:v57 inAvailableWidth:v55];

      ++v52;
      v11 = v73;
    }

    while (v52 < [v73 count]);
  }

  v62 = *MEMORY[0x277D85DE8];

  return v76;
}

double __98__TIKeyboardSecureCandidateTextRendering__requestLayoutForSimplifiedTextRuns_inWidthGroups_steps___block_invoke(uint64_t a1, unint64_t a2, double a3, double a4)
{
  if (a3 != a4 && a2 != 0)
  {
    v5 = *(a1 + 32);
    if (v5 == a2)
    {
      return a3;
    }

    else
    {
      return ((v5 - a2) * a4 + a3 * a2) / v5;
    }
  }

  return a4;
}

void __98__TIKeyboardSecureCandidateTextRendering__requestLayoutForSimplifiedTextRuns_inWidthGroups_steps___block_invoke_2()
{
  v0 = CFAttributedStringCreate(0, &stru_283FDFAF8, MEMORY[0x277CBEC10]);
  _requestLayoutForSimplifiedTextRuns_inWidthGroups_steps__emptyCtLine = CTLineCreateWithAttributedString(v0);

  CFRelease(v0);
}

+ (void)_handleEllipsisTruncationForTextRuns:(id)a3 textRunResponses:(id)a4 inAvailableWidth:(double)a5
{
  v62 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v48 = a4;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v57 objects:v61 count:16];
  v11 = v9;
  if (v10)
  {
    v12 = v10;
    v13 = *v58;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v58 != v13)
        {
          objc_enumerationMutation(v9);
        }

        if ([*(*(&v57 + 1) + 8 * i) allowTruncation])
        {
          v45 = a1;

          v15 = [v9 firstObject];
          v16 = [v15 strings];
          v17 = [v16 count];

          v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:v17];
          v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:v17];
          if (v17)
          {
            v19 = v17;
            do
            {
              [v11 addObject:{&unk_28400C288, v45}];
              [v18 addObject:&unk_28400C288];
              --v19;
            }

            while (v19);
          }

          v50 = v18;
          if ([v9 count])
          {
            v20 = 0;
            v47 = v9;
            do
            {
              v21 = [v9 objectAtIndexedSubscript:v20];
              v49 = v20;
              v51 = [v48 objectAtIndexedSubscript:v20];
              if (v17)
              {
                for (j = 0; j != v17; ++j)
                {
                  v23 = MEMORY[0x277CCABB0];
                  v24 = [v11 objectAtIndexedSubscript:j];
                  [v24 doubleValue];
                  v26 = v25;
                  v27 = [v51 widths];
                  v28 = [v27 objectAtIndexedSubscript:j];
                  [v28 doubleValue];
                  v30 = [v23 numberWithDouble:v26 + v29];
                  [v11 setObject:v30 atIndexedSubscript:j];

                  if (([v21 allowTruncation] & 1) == 0)
                  {
                    v31 = MEMORY[0x277CCABB0];
                    v32 = [v50 objectAtIndexedSubscript:j];
                    [v32 doubleValue];
                    v34 = v33;
                    v35 = [v51 widths];
                    v36 = [v35 objectAtIndexedSubscript:j];
                    [v36 doubleValue];
                    v38 = [v31 numberWithDouble:v34 + v37];
                    [v50 setObject:v38 atIndexedSubscript:j];
                  }
                }
              }

              v20 = v49 + 1;
              v9 = v47;
            }

            while (v49 + 1 < [v47 count]);
          }

          v39 = [MEMORY[0x277CCAB58] indexSet];
          if ([v11 count])
          {
            v40 = 0;
            do
            {
              v41 = [v11 objectAtIndexedSubscript:v40];
              [v41 doubleValue];
              v43 = v42;

              if (v43 > a5)
              {
                [v39 addIndex:v40];
              }

              ++v40;
            }

            while (v40 < [v11 count]);
          }

          if ([v39 count])
          {
            v52[0] = MEMORY[0x277D85DD0];
            v52[1] = 3221225472;
            v52[2] = __113__TIKeyboardSecureCandidateTextRendering__handleEllipsisTruncationForTextRuns_textRunResponses_inAvailableWidth___block_invoke;
            v52[3] = &unk_27872FCC0;
            v53 = v9;
            v54 = v48;
            v55 = v46;
            v56 = a5;
            [v39 enumerateIndexesUsingBlock:v52];
          }

          goto LABEL_29;
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v57 objects:v61 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v11 = v9;
  }

LABEL_29:

  v44 = *MEMORY[0x277D85DE8];
}

void __113__TIKeyboardSecureCandidateTextRendering__handleEllipsisTruncationForTextRuns_textRunResponses_inAvailableWidth___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_new();
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  if ([*(a1 + 32) count])
  {
    v6 = 0;
    v7 = 0.0;
    do
    {
      v8 = [*(a1 + 32) objectAtIndexedSubscript:v6];
      v9 = [v8 allowTruncation];

      v10 = [*(a1 + 40) objectAtIndexedSubscript:v6];
      v11 = [v10 widths];
      v12 = [v11 objectAtIndexedSubscript:a2];
      [v12 doubleValue];
      v14 = v13;

      if (v9 && v14 > 0.0)
      {
        v15 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
        [v5 addObject:v15];

        [v4 addIndex:v6];
      }

      else
      {
        [v5 addObject:&unk_28400C288];
        v7 = v7 + v14;
      }

      ++v6;
    }

    while (v6 < [*(a1 + 32) count]);
  }

  else
  {
    v7 = 0.0;
  }

  v16 = [*(a1 + 48) truncatedWidthsForItemWidths:v5 availableWidth:*(a1 + 56) - v7];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __113__TIKeyboardSecureCandidateTextRendering__handleEllipsisTruncationForTextRuns_textRunResponses_inAvailableWidth___block_invoke_2;
  v19[3] = &unk_27872FC98;
  v20 = *(a1 + 40);
  v21 = v16;
  v17 = *(a1 + 48);
  v23 = a2;
  v24 = v17;
  v22 = *(a1 + 32);
  v18 = v16;
  [v4 enumerateIndexesUsingBlock:v19];
}

void __113__TIKeyboardSecureCandidateTextRendering__handleEllipsisTruncationForTextRuns_textRunResponses_inAvailableWidth___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v20 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v4 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  [v4 doubleValue];
  v6 = v5;

  v7 = [v20 widths];
  v8 = [v7 objectAtIndexedSubscript:*(a1 + 56)];
  [v8 doubleValue];
  v10 = v9;

  if (v6 < v10)
  {
    ValueAtIndex = CFArrayGetValueAtIndex([v20 ctLines], *(a1 + 56));
    v12 = *(a1 + 64);
    v13 = [v20 font];
    v14 = [*(a1 + 48) objectAtIndexedSubscript:a2];
    v15 = [v12 _newAttributedStringWithText:@"…" font:v13 color:{objc_msgSend(v14, "color")}];

    v16 = CTLineCreateWithAttributedString(v15);
    CFRelease(v15);
    TruncatedLine = CTLineCreateTruncatedLine(ValueAtIndex, v6, kCTLineTruncationEnd, v16);
    if (!TruncatedLine)
    {
      TruncatedLine = CFRetain(v16);
    }

    CFRelease(v16);
    CFArraySetValueAtIndex([v20 ctLines], *(a1 + 56), TruncatedLine);
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:{CTLineGetTypographicBounds(TruncatedLine, 0, 0, 0)}];
    v19 = [v20 widths];
    [v19 setObject:v18 atIndexedSubscript:*(a1 + 56)];

    CFRelease(TruncatedLine);
  }
}

+ (__CFAttributedString)_newAttributedStringWithText:(id)a3 font:(__CTFont *)a4 color:(CGColor *)a5
{
  v7 = a3;
  Mutable = CFDictionaryCreateMutable(0, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC49C0], a5);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4838], a4);
  v9 = CFAttributedStringCreate(0, v7, Mutable);

  CFRelease(Mutable);
  return v9;
}

+ (BOOL)_textRunsHaveFixedFontSize:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        [v8 minFontSize];
        v10 = v9;
        [v8 maxFontSize];
        if (v10 != v11)
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)truncatedWidthsForItemWidths:(id)a3 availableWidth:(double)a4
{
  v41[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![v5 count])
  {
    v8 = v5;
LABEL_5:
    v7 = v8;
    goto LABEL_6;
  }

  if ([v5 count] == 1)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    v41[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];

    goto LABEL_6;
  }

  if (a4 <= 0.0)
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    if ([v5 count])
    {
      v18 = 0;
      do
      {
        [v7 addObject:&unk_28400C288];
        ++v18;
      }

      while (v18 < [v5 count]);
    }

    goto LABEL_6;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v37;
    v15 = 0.0;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v36 + 1) + 8 * i) doubleValue];
        v15 = v15 + v17;
      }

      v13 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v13);
  }

  else
  {
    v15 = 0.0;
  }

  if (v15 <= a4)
  {
    v8 = v11;
    goto LABEL_5;
  }

  v19 = [v11 mutableCopy];
  while (1)
  {
    v20 = objc_opt_new();
    if ([v19 count])
    {
      v21 = 0;
      v22 = 0.0;
      v23 = 0.0;
      do
      {
        v24 = [v19 objectAtIndexedSubscript:v21];
        [v24 doubleValue];
        v26 = v25;

        if (v26 > v22)
        {
          [v20 removeAllIndexes];
          v23 = v22;
          v22 = v26;
        }

        if (v26 == v22)
        {
          [v20 addIndex:v21];
        }

        else if (v26 > v23)
        {
          v23 = v26;
        }

        ++v21;
      }

      while (v21 < [v19 count]);
    }

    else
    {
      v23 = 0.0;
      v22 = 0.0;
    }

    v27 = v15 - [v20 count] * (v22 - v23);
    if (v27 < a4)
    {
      break;
    }

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __86__TIKeyboardSecureCandidateTextRendering_truncatedWidthsForItemWidths_availableWidth___block_invoke_2;
    v30[3] = &unk_27872FC70;
    v7 = v19;
    v31 = v7;
    v32 = v23;
    [v20 enumerateIndexesUsingBlock:v30];

    v15 = v27;
    if (v27 <= a4)
    {
      goto LABEL_6;
    }
  }

  v28 = a4 - (v15 - [v20 count] * v22);
  v29 = v28 / [v20 count];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __86__TIKeyboardSecureCandidateTextRendering_truncatedWidthsForItemWidths_availableWidth___block_invoke;
  v33[3] = &unk_27872FC70;
  v7 = v19;
  v34 = v7;
  v35 = v29;
  [v20 enumerateIndexesUsingBlock:v33];

LABEL_6:
  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

void __86__TIKeyboardSecureCandidateTextRendering_truncatedWidthsForItemWidths_availableWidth___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  [*(a1 + 32) setObject:v4 atIndexedSubscript:a2];
}

void __86__TIKeyboardSecureCandidateTextRendering_truncatedWidthsForItemWidths_availableWidth___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  [*(a1 + 32) setObject:v4 atIndexedSubscript:a2];
}

+ (CGColor)_newCgColorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  components[4] = *MEMORY[0x277D85DE8];
  if (_newCgColorWithRed_green_blue_alpha__onceToken != -1)
  {
    dispatch_once(&_newCgColorWithRed_green_blue_alpha__onceToken, &__block_literal_global_3698);
  }

  components[0] = a3;
  components[1] = a4;
  components[2] = a5;
  components[3] = a6;
  result = CGColorCreate(_newCgColorWithRed_green_blue_alpha__colorSpace, components);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

CGColorSpaceRef __78__TIKeyboardSecureCandidateTextRendering__newCgColorWithRed_green_blue_alpha___block_invoke()
{
  result = CGColorSpaceCreateDeviceRGB();
  _newCgColorWithRed_green_blue_alpha__colorSpace = result;
  return result;
}

@end