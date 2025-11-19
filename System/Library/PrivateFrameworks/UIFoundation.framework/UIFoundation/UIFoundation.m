uint64_t attributeDictionaryHash(char *a1)
{
  values[100] = *MEMORY[0x1E69E9840];
  for (i = attributeDictionaryHash_preTigerHash; ; attributeDictionaryHash_preTigerHash = i)
  {
    if (i == 1)
    {
      v8 = [a1 count];
      v9 = [objc_msgSend(a1 objectForKey:{@"NSFont", "hash"}] + v8;
      v10 = [objc_msgSend(a1 objectForKey:{@"NSParagraphStyle", "hash"}];
      return v9 + v10 + [objc_msgSend(a1 objectForKey:{@"NSColor", "hash"}];
    }

    if (!i)
    {
      break;
    }

    i = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  }

  if (a1 && ((Class = object_getClass(a1), Class != attributeDictionaryClass) ? (v4 = Class == tempAttributeDictionaryClass) : (v4 = 1), v4))
  {
    if (!*(a1 + 1))
    {
      return 0;
    }

    v5 = 0;
    v6 = 0;
    v7 = (a1 + 16);
    do
    {
      v5 += [v7[2] hash];
      ++v6;
      v7 += 3;
    }

    while (v6 < *(a1 + 1));
  }

  else
  {
    Count = CFDictionaryGetCount(a1);
    v12 = Count;
    if (Count <= 100)
    {
      CFDictionaryGetKeysAndValues(a1, 0, values);
      if (v12 >= 1)
      {
        v5 = 0;
        v13 = values;
        do
        {
          v14 = *v13++;
          v5 += [v14 hash];
          --v12;
        }

        while (v12);
        return v5;
      }

      return 0;
    }

    v15 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(a1, 0, v15);
    v5 = 0;
    v16 = 0;
    do
    {
      v5 += [v15[v16++] hash];
    }

    while (v12 != v16);
    free(v15);
  }

  return v5;
}

uint64_t __CTFontGetExtraData(const __CTFont *a1)
{
  result = CTFontGetClientObject();
  if (!result)
  {
    __CTFontGetExtraData_cold_1(a1, &v3);
    return v3;
  }

  return result;
}

uint64_t attributeDictionaryIsEqual(id a1, id a2)
{
  if (a1)
  {
    v4 = object_getClass(a1) == attributeDictionaryClass;
  }

  else
  {
    v4 = 0;
  }

  if (a1 == a2)
  {
    return 1;
  }

  if (v4)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (v4)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  return [v5 isEqualToDictionary:v6];
}

double __NSStringDrawingEngine(__CFString *a1, void *a2, uint64_t a3, unsigned int a4, void *a5, void *a6, _BYTE *a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, double a12)
{
  v13 = a5;
  if (!a5)
  {
    if (__NSSharedStringDrawingContext_onceToken != -1)
    {
      __NSStringDrawingEngine_cold_1();
    }

    v13 = __NSSharedStringDrawingContext_sharedStringDrawingContext;
  }

  v21 = [v13 applicationFrameworkContext];
  v22 = a1;
  if (!a2)
  {
    v22 = [(__CFString *)a1 string];
  }

  v152 = a6;
  if (v22)
  {
    Length = CFStringGetLength(v22);
  }

  else
  {
    Length = 0;
  }

  v24 = [v13 wantsMultilineDeviceMetrics];
  if (__NSStringDrawingEngine_onceToken != -1)
  {
    __NSStringDrawingEngine_cold_2();
  }

  v184.origin.x = a8;
  v184.origin.y = a9;
  v184.size.width = a10;
  v184.size.height = a11;
  v25 = 0.0;
  if (fabs(CGRectGetWidth(v184)) == INFINITY)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = a10;
  }

  v185.origin.x = a8;
  v185.origin.y = a9;
  v185.size.width = v26;
  v185.size.height = a11;
  if (fabs(CGRectGetHeight(v185)) == INFINITY)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = a11;
  }

  rect = v27;
  v28 = [v13 activeRenderers];
  v29 = __NSStringDrawingDefaultRendererConfiguration;
  if (v28)
  {
    v29 = v28;
  }

  v143 = v24;
  v30 = v24 == 0;
  v31 = 2;
  if (v24)
  {
    v29 = 2;
  }

  v32 = v29 & 0xFFFFFFFFFFFFFFFCLL;
  if (v30)
  {
    v31 = v29 & 0xFFFFFFFFFFFFFFFCLL;
  }

  if ((a3 & 8) != 0)
  {
    v29 = v31;
  }

  if ((a3 & 0x100) != 0)
  {
    if (__NSStringDrawingEngine_onceToken_359 != -1)
    {
      __NSStringDrawingEngine_cold_3();
    }

    v25 = *&__NSStringDrawingEngine__factor;
  }

  else
  {
    v32 = v29;
  }

  v33 = MEMORY[0x1E696AA80];
  if ((a3 & 0x800) != 0)
  {
    v34 = 8;
  }

  else
  {
    v34 = v32;
  }

  if (v13)
  {
    [v13 setActualScaleFactor:1.0];
    [v13 setBaselineOffset:0.0];
    [v13 setFirstBaselineOffset:0.0];
  }

  v35 = *v33;
  v36 = v33[1];
  v149 = a3 & 2;
  v38 = v33[2];
  v37 = v33[3];
  if (Length < 1)
  {
    if (v152)
    {
      v44 = v13 == 0;
    }

    else
    {
      v44 = 0;
    }

    v45 = !v44;
    if ((a3 & 8) == 0 && v45)
    {
      v46 = [a2 objectForKeyedSubscript:@"NSParagraphStyle"];
      v167 = 0.0;
      v175 = 0.0;
      +[NSCoreTypesetter _lineMetricsForAttributes:typesetterBehavior:usesFontLeading:applySpacings:usesSystemFontLeading:usesNegativeFontLeading:layoutOrientation:lineHeight:baselineOffset:spacing:](NSCoreTypesetter, "_lineMetricsForAttributes:typesetterBehavior:usesFontLeading:applySpacings:usesSystemFontLeading:usesNegativeFontLeading:layoutOrientation:lineHeight:baselineOffset:spacing:", a2, [MEMORY[0x1E696AEC0] typesetterBehavior], v149 != 0, v46 != 0, 0, 0, 0, &v167, &v175, 0);
      v35 = *MEMORY[0x1E696AA78];
      v47 = v167;
      v48 = (a3 & 1) != 0 ? *(MEMORY[0x1E696AA78] + 8) : v175 - v167;
      if (v13)
      {
        [v13 setNumberOfLineFragments:0];
        [v13 setTotalBounds:{v35, v48, 0.0, v47}];
        if ([v13 wantsBaselineOffset])
        {
          [v13 setBaselineOffset:v175];
          [v13 setFirstBaselineOffset:v175];
        }
      }
    }

    return v35;
  }

  v182 = 0;
  v183 = Length;
  if (!a2)
  {
    a2 = [(__CFString *)a1 attributesAtIndex:0 effectiveRange:&v182];
  }

  if ([a2 objectForKey:@"NSTextAnimation"])
  {
    v39 = softLinkSwiftUITextAnimationProviderClass();
    if (v39)
    {
      v40 = v39;
      if (objc_opt_respondsToSelector())
      {
        [v40 drawStaticString:a1 withAttributes:a2 options:a3 inRect:a4 withPadding:objc_msgSend(v152 forceClipping:"CGContext") cgContext:v13 stringDrawingContext:{a8, a9, v26, rect, a12}];
        return v41;
      }
    }
  }

  v42 = [a2 objectForKey:@"NSParagraphStyle"];
  v136 = v42;
  if (a4)
  {
    v43 = 2;
  }

  else
  {
    v43 = [(NSParagraphStyle *)v42 lineBreakMode];
  }

  v146 = (~a3 & 0x21) == 0;
  v181 = 0;
  v145 = [v13 drawsDebugBaselines];
  if ((a3 & 0x100000) != 0 || v21 == 2)
  {
    if ((a3 & 1) == 0)
    {
LABEL_71:
      v51 = __NSUltraFastLineBreakFinder(v22, Length, 0, &v181);
      if (!v51)
      {
        if (v13)
        {
          [v13 setNumberOfLineFragments:0];
          [v13 setTotalBounds:{v35, v36, v38, v37}];
        }

        return v35;
      }

      v52 = v51;
      v53 = 0;
      v54 = 1;
      rect = 0.0;
      v144 = 1;
      goto LABEL_80;
    }
  }

  else
  {
    v50 = [v13 maximumNumberOfLines] != 1 || v43 > 1;
    if ((v50 & a3 & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  if ([v13 wrapsForTruncationMode] && v43 >= 2)
  {
    if ([v13 maximumNumberOfLines] != 1)
    {
      v43 = 0;
    }

    v146 = 1;
  }

  v52 = __NSUltraFastLineBreakFinder(v22, Length, 0, &v181);
  v144 = 0;
  v53 = v52 == 0;
  v54 = v43 > 1;
LABEL_80:
  v142 = a3 & 0x200;
  v139 = a8;
  v140 = a3 & 0x400;
  v55 = 0.0;
  if (v52 >= Length)
  {
    v55 = v25;
  }

  v141 = v55;
  if (v145)
  {
    v137 = 0;
    v56 = a3 & 2;
    v57 = rect;
LABEL_84:
    v58 = v144;
LABEL_129:
    v175 = 0.0;
    v176 = &v175;
    v177 = 0x3052000000;
    v178 = __Block_byref_object_copy__10;
    v179 = __Block_byref_object_dispose__10;
    v180 = 0;
    v77 = v57;
    if ((v58 | !v146) == 1)
    {
      if (__NSSharedStringDrawingContext_onceToken != -1)
      {
        __NSStringDrawingEngine_cold_4();
      }

      if (v13 == __NSSharedStringDrawingContext_sharedStringDrawingContext)
      {
        v77 = 9000000.0;
      }

      else if ([v13 maximumNumberOfLines] == 1)
      {
        v77 = 9000000.0;
      }

      else
      {
        v77 = v57;
      }
    }

    v78 = 10000000.0;
    if (v26 > 0.0)
    {
      v78 = v26;
    }

    if (a4)
    {
      v79 = 40000.0;
    }

    else
    {
      v79 = v78;
    }

    v167 = 0.0;
    v168 = &v167;
    v169 = 0x4010000000;
    v170 = "";
    v171 = v35;
    v172 = v36;
    v173 = v38;
    v174 = v37;
    [MEMORY[0x1E696AEC0] setUsesFontLeading:v56 != 0];
    [MEMORY[0x1E696AEC0] setUsesScreenFonts:0];
    v157[0] = MEMORY[0x1E69E9820];
    v157[1] = 3221225472;
    v157[2] = ____NSStringDrawingEngine_block_invoke_376;
    v157[3] = &unk_1E7267A08;
    v158 = v58;
    v157[10] = v22;
    v157[11] = v52;
    v157[12] = Length;
    v157[4] = a1;
    v157[5] = a2;
    *&v157[13] = v79;
    *&v157[14] = v77;
    v159 = v146;
    *&v157[15] = v141;
    v160 = v145;
    v161 = v142 >> 9;
    v162 = v140 >> 10;
    v163 = (a3 & 0x800) >> 11;
    v164 = v56 >> 1;
    v157[6] = v13;
    v157[7] = v152;
    v165 = v21 == 2;
    v157[16] = v21;
    v157[17] = v137;
    *&v157[18] = v139;
    *&v157[19] = a9;
    *&v157[20] = v26;
    *&v157[21] = rect;
    v166 = a4;
    *&v157[22] = a12;
    v157[8] = &v175;
    v157[9] = &v167;
    v157[23] = a7;
    [NSStringDrawingTextStorage performLayoutOperation:v157];

    v35 = v168[4];
    _Block_object_dispose(&v167, 8);
    _Block_object_dispose(&v175, 8);
    return v35;
  }

  v134 = v54;
  v59 = 0;
  if (((v144 ^ 1) & v53) != 0)
  {
    v60 = v34 & 0xFFFFFFFFFFFFFFFDLL;
  }

  else
  {
    v60 = v34;
  }

  if ((v60 & 3) != 0)
  {
    v57 = rect;
    if (v55 == 0.0)
    {
      v138 = [v13 activeRenderers];
      [v13 setActiveRenderers:v60];
      v132 = [MEMORY[0x1E696AF00] isMainThread];
      if (!v132 || (v61 = __NSStringDrawingEngine_mainThreadCoreTypesetter, __NSStringDrawingEngine_mainThreadCoreTypesetter = 0, !v61))
      {
        v61 = objc_alloc_init(NSCoreTypesetter);
      }

      v168 = 0;
      v169 = 0;
      *&v167 = 255;
      [(NSCoreTypesetter *)v61 setTextContainerSize:v26, rect];
      [(NSTypesetter *)v61 setLineFragmentPadding:a12];
      [(NSCoreTypesetter *)v61 setEnforcesMinimumTextLineFragment:1];
      [(NSTypesetter *)v61 setApplicationFrameworkContext:v21];
      if (v13)
      {
        -[NSCoreTypesetter setFallbackBaseWritingDirection:](v61, "setFallbackBaseWritingDirection:", [v13 fallbackBaseWritingDirection]);
      }

      [(NSCoreTypesetter *)v61 _stringDrawingCoreTextEngineWithOriginalString:a1 rect:v152 padding:a4 graphicsContext:a2 forceClipping:a3 attributes:v13 stringDrawingOptions:a8 drawingContext:a9 stringDrawingInterface:v26, rect, a12, &v167];
      v35 = v62;
      v36 = v63;
      v38 = v64;
      v37 = v65;
      [v13 setHasTruncatedRanges:{-[NSArray count](-[NSCoreTypesetter truncatedRanges](v61, "truncatedRanges"), "count") != 0}];
      if (__NSStringDrawingEngine_mainThreadCoreTypesetter)
      {
        v66 = 0;
      }

      else
      {
        v66 = v132;
      }

      if (v66 == 1)
      {
        __NSStringDrawingEngine_mainThreadCoreTypesetter = v61;
      }

      else
      {
      }

      [v13 setActiveRenderers:v138];
      if (a7)
      {
        *a7 = BYTE1(v169);
      }

      if ((v169 & 1) == 0 && LOBYTE(v167) != 255)
      {
        return v35;
      }

      v59 = v168;
    }
  }

  else
  {
    v57 = rect;
  }

  v137 = v59;
  v58 = v144;
  if ([a2 objectForKey:*MEMORY[0x1E69655D0]])
  {
    __UIFoundationWriteLog("StringDrawing", OS_LOG_TYPE_ERROR, "Can't draw encapsulation for string %@ because it was disqualified from Core Text rendering paths!", v67, v68, v69, v70, v71, v22);
  }

  v72 = [MEMORY[0x1E696AEC0] typesetterBehavior];
  if (v52 == Length)
  {
    v73 = 1;
  }

  else
  {
    v73 = v144;
  }

  if ((v60 & 4) == 0 || !v73)
  {
    v56 = a3 & 2;
    goto LABEL_129;
  }

  v133 = v72;
  v74 = v26 <= 0.0 || v134;
  if ((v74 & 1) == 0)
  {
    if (!a2)
    {
      goto LABEL_125;
    }

    v75 = [a2 objectForKey:@"NSFont"];
    if ([objc_msgSend(a2 objectForKey:{@"CTVerticalForms", "BOOLValue"}])
    {
      v75 = [v75 verticalFont];
    }

    if (!v75)
    {
LABEL_125:
      v75 = NSDefaultFont();
    }

    [v75 advancementForGlyph:0];
    if (v76 * Length > v26 * 0.899999976)
    {
      v56 = a3 & 2;
      goto LABEL_84;
    }
  }

  v56 = a3 & 2;
  if (v146 & [v13 wrapsForTruncationMode])
  {
    goto LABEL_84;
  }

  if (v22 == a1)
  {
    if (![NSSingleLineTypesetter _validateAttributes:a2 measuringOnly:v152 == 0])
    {
      goto LABEL_84;
    }

    v85 = a1;
    if (v52 < Length)
    {
      v85 = [(__CFString *)a1 substringToIndex:v52];
    }

    if (a4)
    {
      v86 = 40000.0;
    }

    else
    {
      v86 = v26;
    }

    v84 = __NSCreateRenderingContextForString(v85, a2, v133, v142 != 0, v140 != 0, v181, v141, v86);
  }

  else
  {
    while (1)
    {
      v80 = [NSSingleLineTypesetter _validateAttributes:a2 measuringOnly:v152 == 0];
      v81 = v182;
      if (!v80)
      {
        break;
      }

      v81 = v183 + v182;
      v182 = v81;
      if (v81 >= v52)
      {
        break;
      }

      a2 = [__CFString attributesAtIndex:a1 effectiveRange:"attributesAtIndex:effectiveRange:"];
      if (!a2)
      {
        v81 = v182;
        break;
      }
    }

    v56 = a3 & 2;
    if (v81 < v52)
    {
      goto LABEL_84;
    }

    v82 = a1;
    if (v52 < Length)
    {
      v82 = [(__CFString *)a1 attributedSubstringFromRange:0, v52];
    }

    if (a4)
    {
      v83 = 40000.0;
    }

    else
    {
      v83 = v26;
    }

    v84 = __NSCreateRenderingContextForAttributedString(v82, v133, v142 != 0, v140 != 0, v181, v141, v83);
  }

  if (!v84)
  {
    goto LABEL_84;
  }

  v131 = v74;
  v87 = v84;
  [v84 lineFragmentWidth];
  v135 = v88;
  [v87 setApplicationFrameworkContext:v21];
  v89 = v135;
  v90 = v131;
  if (v135 <= v26)
  {
    v90 = 1;
  }

  if (v90 != 1)
  {

    goto LABEL_84;
  }

  v91 = v87;
  v92 = v135 > v26 && v26 > 0.0;
  if (a4)
  {
    v93 = v152;
    if (v26 > 0.0)
    {
      v94 = [v91 resolvedTextAlignment];
      v95 = [v91 resolvedBaseWritingDirection];
      [v91 elasticWidth];
      if (v94 == 1)
      {
        v99 = v89;
        v148 = (v89 - v135 + 40000.0) * 0.5;
        v100 = [v91 isRTL];
        v101 = 0.0;
        if (v100)
        {
          v102 = v99;
        }

        else
        {
          v102 = 0.0;
        }

        if (v92)
        {
          v103 = v102 - v148;
          if (v95 == 1)
          {
            v186.origin.x = a8;
            v186.origin.y = a9;
            v186.size.width = v26;
            v186.size.height = rect;
            v101 = v135 - CGRectGetWidth(v186);
          }

          v104 = v103 - v101;
        }

        else
        {
          v104 = (v26 - v135) * 0.5 - v148 + v102;
        }

        v89 = a8 + floor(v104);
        v139 = v89;
        v57 = rect;
      }

      else
      {
        v96 = v91;
        if (v94 == 2)
        {
          goto LABEL_195;
        }

        if (v94 == 3)
        {
          if ((a3 & 0x200) != 0)
          {
            v97 = v95;
            v96 = v91;
          }

          else
          {
            v154 = v89;
            v105 = v136;
            if (!v136)
            {
              v105 = +[NSParagraphStyle defaultParagraphStyle];
            }

            v97 = [(NSParagraphStyle *)v105 baseWritingDirection];
            if (v97 == NSWritingDirectionNatural)
            {
              v97 = [NSParagraphStyle defaultWritingDirectionForLanguage:0];
            }

            v96 = v91;
            v89 = v154;
          }

          if (v97 == NSWritingDirectionRightToLeft)
          {
LABEL_195:
            v155 = v89;
            v106 = [v96 isRTL];
            v107 = v135 - v155;
            if (v106)
            {
              v107 = v135;
            }

            v108 = 40000.0 - v107;
            if (v95)
            {
              v109 = 0;
            }

            else
            {
              v109 = v92;
            }

            if (v109 == 1)
            {
              v110 = -v108;
            }

            else
            {
              v110 = v26 - v107 - v108;
            }

            v89 = a8 + floor(v110);
            v139 = v89;
          }
        }
      }
    }
  }

  else
  {
    v93 = v152;
  }

  if (v93)
  {
    v111 = [v93 isFlipped] ^ 1;
  }

  else
  {
    v111 = 0;
  }

  if (v144)
  {
    v156 = a9;
  }

  else
  {
    v167 = 0.0;
    [v91 sizeWithBehavior:v133 usesFontLeading:v149 != 0 baselineDelta:&v167];
    v113 = v57 > 0.0;
    if (v112 <= v57)
    {
      v113 = 0;
    }

    LOBYTE(v92) = v113 | v92;
    if (v111)
    {
      if (v57 > 0.0)
      {
        v114 = v57;
      }

      else
      {
        v114 = v112;
      }

      v115 = v114 - v167;
    }

    else
    {
      v115 = v167;
    }

    v156 = a9 + v115;
  }

  v116 = [v93 CGContext];
  if (!v116)
  {
    goto LABEL_232;
  }

  v117 = v116;
  if (v92)
  {
    if (v57 <= 0.0)
    {
      v118 = 1;
    }

    else
    {
      v118 = v144;
    }

    if (v118 == 1)
    {
      v167 = 0.0;
      v175 = 0.0;
      [v91 getMaximumAscender:&v167 minimumDescender:&v175];
      v119 = -v167;
      if (v111)
      {
        v119 = v175;
      }

      a9 = a9 + v119;
      v57 = v167 - v175;
    }

    CGContextSaveGState(v117);
    v187.origin.x = a8 - a12;
    v187.origin.y = a9;
    v187.size.width = v26 + a12 * 2.0;
    v187.size.height = v57;
    CGContextClipToRect(v117, v187);
    v120 = v117;
  }

  else
  {
    v120 = 0;
  }

  [v91 setCuiCatalog:{objc_msgSend(v13, "cuiCatalog")}];
  [v91 setCuiStyleEffects:{objc_msgSend(v13, "cuiStyleEffects")}];
  [v91 _setUsesSimpleTextEffects:{objc_msgSend(v13, "usesSimpleTextEffects")}];
  [v91 drawAtPoint:v117 inContext:{v139, v156}];
  if (v92)
  {
    CGContextRestoreGState(v120);
  }

  if (v13)
  {
LABEL_232:
    if (((a3 & 8) == 0) | v143 & 1)
    {
      v167 = 0.0;
      v35 = *MEMORY[0x1E696AA78];
      v121 = *(MEMORY[0x1E696AA78] + 8);
      [v91 sizeWithBehavior:v133 usesFontLeading:v149 != 0 baselineDelta:&v167];
      v124 = v123;
      v125 = v122;
      v126 = v167;
      if (v144)
      {
        v121 = v167 - v122;
      }
    }

    else
    {
      [v91 imageBounds];
      v35 = v128;
      v126 = v127;
      v124 = v129;
      v125 = v130;
      if (v144)
      {
        v121 = v127;
      }

      else
      {
        v121 = 0.0;
      }
    }

    if (v13)
    {
      [v13 setNumberOfLineFragments:1];
      [v13 setTotalBounds:{v35, v121, v124, v125}];
      if ([v13 wantsBaselineOffset])
      {
        [v13 setBaselineOffset:v126];
        [v13 setFirstBaselineOffset:v126];
      }
    }
  }

  return v35;
}

uint64_t __NSUltraFastLineBreakFinder(CFStringRef theString, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  if (__NSUltraFastLineBreakFinder_once != -1)
  {
    __NSUltraFastLineBreakFinder_cold_1();
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  *buffer = 0u;
  v38 = 0u;
  theStringa = theString;
  v48 = 0;
  v49 = a2;
  CharactersPtr = CFStringGetCharactersPtr(theString);
  CStringPtr = 0;
  v46 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
  }

  v50 = 0;
  v51 = 0;
  v47 = CStringPtr;
  if (a2 < 1)
  {
    LOBYTE(v14) = 0;
    v13 = 0;
    v17 = 1;
    if (a3)
    {
      goto LABEL_70;
    }

    goto LABEL_71;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 64;
  v16 = &getNSColorClass_1;
  v17 = 1;
  do
  {
    if (v13 >= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = v13;
    }

    v19 = v49;
    if (v49 <= v13)
    {
      v20 = 0;
      v21 = 0;
LABEL_42:
      if (a3)
      {
        v30 = v20 == 9;
      }

      else
      {
        v30 = 0;
      }

      v31 = !v30;
      v17 &= v31;
      goto LABEL_49;
    }

    if (v46)
    {
      v20 = v46[v48 + v13];
    }

    else if (v47)
    {
      v20 = v47[v48 + v13];
    }

    else
    {
      if (v51 <= v13 || v12 > v13)
      {
        v23 = -v18;
        v24 = v18 + v10;
        v25 = v15 - v18;
        v26 = v13 + v23;
        v27 = v26 + 64;
        if (v26 + 64 >= v49)
        {
          v27 = v49;
        }

        v50 = v26;
        v51 = v27;
        if (v49 >= v25)
        {
          v19 = v25;
        }

        v52.location = v26 + v48;
        v52.length = v19 + v24;
        CFStringGetCharacters(theStringa, v52, buffer);
        v16 = &getNSColorClass_1;
        v11 = v50;
      }

      v20 = buffer[v13 - v11];
      v12 = v11;
    }

    v21 = v20;
    if ((v20 & 0xFF70) == 0)
    {
      v29 = v20 > 0xDu || ((1 << v20) & 0x3400) == 0;
      if (!v29 || v20 == 133)
      {
        goto LABEL_69;
      }

      goto LABEL_42;
    }

    if (v20 >= 0x100u)
    {
      if ((v20 & 0xFFFE) >> 1 == 4116 && (v20 & 0xFF00) == 0x2000)
      {
        goto LABEL_69;
      }

      if (((a3 != 0) & v17) == 1)
      {
        v28 = v16[181];
        if (v28 && ((*(v28 + (v20 >> 3)) >> (v20 & 7)) & 1) != 0 || __NSUltraFastLineBreakFinder_punctuationBMP && ((*(__NSUltraFastLineBreakFinder_punctuationBMP + (v20 >> 3)) >> (v20 & 7)) & 1) != 0)
        {
          v17 = 1;
        }

        else if (__NSUltraFastLineBreakFinder_alphaNumericBMP && (v32 = 1 << (v20 & 7), (v32 & *(__NSUltraFastLineBreakFinder_alphaNumericBMP + (v20 >> 3))) != 0) && (!__NSUltraFastLineBreakFinder_nonBaseBMP || (v32 & *(__NSUltraFastLineBreakFinder_nonBaseBMP + (v20 >> 3))) == 0))
        {
          v33 = ((v20 - 7424) >> 4) >= 0xE89u || ((v20 + 21504) >> 4) >= 0xF8Du;
          v34 = v20 >> 7;
          v17 = !v33 && v34 != 431;
        }

        else
        {
          v17 = 0;
        }
      }
    }

LABEL_49:
    if (__NSUltraFastLineBreakFinder_strongRightBMP)
    {
      v14 |= *(__NSUltraFastLineBreakFinder_strongRightBMP + (v21 >> 3)) >> (v21 & 7);
    }

    ++v13;
    --v10;
    ++v15;
  }

  while (a2 != v13);
  v13 = a2;
LABEL_69:
  if (a3)
  {
LABEL_70:
    *a3 = v17 & 1;
  }

LABEL_71:
  if (a4)
  {
    *a4 = v14 & 1;
  }

  return v13;
}

NSTextAlignment NSTextAlignmentFromCTTextAlignment(CTTextAlignment ctTextAlignment)
{
  v1 = ctTextAlignment;
  if (ctTextAlignment == kCTTextAlignmentRight)
  {
    v1 = NSTextAlignmentRight;
  }

  if (ctTextAlignment == kCTTextAlignmentCenter)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

void OUTLINED_FUNCTION_0(unint64_t a1@<X8>)
{
  if (!v1)
  {
    v2 = 0;
  }

  if (v2 + 64 < a1)
  {
    a1 = v2 + 64;
  }

  *(v3 + 168) = v2;
  *(v3 + 176) = a1;
  v5 = *(v3 + 128);
  v6.location = *(v3 + 152) + v2;

  v6.length = a1 - v2;
  CFStringGetCharacters(v5, v6, v3);
}

double _NSStringDrawingCore(__CFString *a1, void *a2, uint64_t a3, unsigned int a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, uint64_t a10, void *a11)
{
  v21 = +[NSTextGraphicsContextProvider textGraphicsContextProviderClass];
  if (a11)
  {
    v22 = [a11 applicationFrameworkContext];
  }

  else
  {
    v22 = _NSTextScalingTypeForCurrentEnvironment();
  }

  v23 = [(objc_class *)v21 graphicsContextForApplicationFrameworkContext:v22];

  return __NSStringDrawingEngine(a1, a2, a3, a4, a11, v23, 0, a5, a6, a7, a8, a9);
}

void __CTFontGetExtraData_cold_1(const __CTFont *a1, uint64_t *a2)
{
  v4 = [[__NSFontExtraData alloc] initWithFont:a1];
  os_unfair_lock_lock(&__CTFontExtraDataLock);
  ClientObject = CTFontGetClientObject();
  if (!ClientObject)
  {
    CTFontSetClientObject();
    ClientObject = v4;
  }

  *a2 = ClientObject;
  os_unfair_lock_unlock(&__CTFontExtraDataLock);
}

uint64_t __NSGetFrameworkReference(void *a1, int a2)
{
  if (a1)
  {
    os_unfair_lock_lock(&__NSGetFrameworkReference_frameworkCacheLock);
    v4 = [__NSGetFrameworkReference_table objectForKey:a1];
    os_unfair_lock_unlock(&__NSGetFrameworkReference_frameworkCacheLock);
    if (!v4)
    {
      v4 = __NSLoadFramework(a1, a2);
      if (v4)
      {
        os_unfair_lock_lock(&__NSGetFrameworkReference_frameworkCacheLock);
        v5 = __NSGetFrameworkReference_table;
        if (!__NSGetFrameworkReference_table)
        {
          v5 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:2 capacity:0];
          __NSGetFrameworkReference_table = v5;
        }

        if (![v5 objectForKey:a1])
        {
          [__NSGetFrameworkReference_table setObject:v4 forKey:a1];
        }

        os_unfair_lock_unlock(&__NSGetFrameworkReference_frameworkCacheLock);
      }
    }
  }

  else
  {
    if (__NSGetFrameworkReference_onceToken != -1)
    {
      __NSGetFrameworkReference_cold_1();
    }

    return __NSGetFrameworkReference_UIFrameworkReference;
  }

  return v4;
}

uint64_t initUIApplicationDidEnterBackgroundNotification()
{
  v0 = __NSGetFrameworkReference(0, 0);
  v1 = dlsym(v0, "UIApplicationDidEnterBackgroundNotification");
  if (!v1)
  {
    initUIApplicationDidEnterBackgroundNotification_cold_1();
  }

  result = *v1;
  constantUIApplicationDidEnterBackgroundNotification = result;
  getUIApplicationDidEnterBackgroundNotification[0] = UIApplicationDidEnterBackgroundNotificationFunction;
  return result;
}

uint64_t initUIApplicationDidEnterBackgroundNotification_0()
{
  v0 = __NSGetFrameworkReference(0, 0);
  v1 = dlsym(v0, "UIApplicationDidEnterBackgroundNotification");
  if (!v1)
  {
    initUIApplicationDidEnterBackgroundNotification_cold_1_0();
  }

  result = *v1;
  constantUIApplicationDidEnterBackgroundNotification_0 = result;
  getUIApplicationDidEnterBackgroundNotification_0 = UIApplicationDidEnterBackgroundNotificationFunction_0;
  return result;
}

const char *__NSLoadFramework(void *a1, int a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10[0] = 0;
  v10[1] = 0;
  if (a1)
  {
    result = [a1 UTF8String];
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = "UIKit";
  }

  v5 = "/System/Library/Frameworks/";
  if (a2)
  {
    v5 = "/System/Library/PrivateFrameworks/";
  }

  for (i = v10; ; ++i)
  {
    if (snprintf(__str, 0x400uLL, "%s%s.framework/%s", v5, v4, v4) <= 1023)
    {
      result = dlopen(__str, 258);
      if (result)
      {
        break;
      }
    }

    v7 = *i;
    v5 = v7;
    if (!v7)
    {
      return 0;
    }
  }

  return result;
}

const __CTFont *__UIFontForTextStyle(const __CTFont *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = +[UIFont _sharedFontCache];
  if (a5)
  {
    v11 = 0;
  }

  else
  {
    v12 = [UIFont _normalizedContentSizeCategory:a2 default:a4];
    if (a3 == -1)
    {
      v13 = _AXSEnhanceTextLegibilityEnabled() != 0;
    }

    else
    {
      v13 = a3 == 1;
    }

    v11 = [_UIFontCacheKey newFontCacheKeyWithTextStyle:v9 contentSizeCategory:v12 textLegibility:v13];
    v14 = [v10 retainedObjectForKey:v11];
    if (v14)
    {
      goto LABEL_15;
    }
  }

  v15 = __UIFontDescriptorWithTextStyle(v9, a2, a4, 0, 0, 0, a3);
  if (v15)
  {
    v16 = CTFontCreateWithFontDescriptor(v15, 0.0, 0);
    v14 = v16;
    if ((a5 & 1) == 0 && v16)
    {
      [v10 setObject:v16 forKey:v11];
    }

    if (!a5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = 0;
    if (!a5)
    {
      goto LABEL_15;
    }
  }

  ExtraData = __CTFontGetExtraData(v14);
  *(ExtraData + 24) |= 2u;
LABEL_15:

  return v14;
}

id __UIFontDescriptorWithTextStyle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  [UIFont _normalizedContentSizeCategory:a2 default:a3];
  if (!a4 && !a5 && !a6)
  {
    if (a7 == -1)
    {
      v11 = 0;
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v12 = objc_opt_new();
  if (a4)
  {
    [v12 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", a4), @"NSCTFontSymbolicTrait"}];
  }

  if (a5)
  {
    [v12 setObject:a5 forKeyedSubscript:@"NSCTFontUIFontDesignTrait"];
  }

  if (a6)
  {
    [v12 setObject:a6 forKeyedSubscript:@"NSCTFontWeightTrait"];
  }

  v11 = objc_opt_new();
  [v11 setObject:v12 forKeyedSubscript:@"NSCTFontTraitsAttribute"];

  if (a7 != -1)
  {
    if (v11)
    {
LABEL_15:
      v13 = [MEMORY[0x1E696AD98] numberWithLong:a7];
      [v11 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69657F0]];
      goto LABEL_16;
    }

LABEL_14:
    v11 = objc_opt_new();
    goto LABEL_15;
  }

LABEL_16:
  v14 = CTFontDescriptorCreateWithTextStyleAndAttributes();

  return v14;
}

CTFontRef UINewFont(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, CGFloat a7, double a8)
{
  v53[3] = *MEMORY[0x1E69E9840];
  if (a7 != 0.0 || a3 != 0)
  {
    v9 = a6;
    v14 = a2;
    if (a5)
    {
      if (a3)
      {
        v16 = [_UIFontCacheKey newSystemFontCacheKeyWithDesign:a3 weight:a4 width:a6 pointSize:a8 monospacedDigits:a7];
      }

      else
      {
        v16 = [_UIFontCacheKey newSystemFontCacheKeyWithTraits:a2 pointSize:a4 width:a7];
      }
    }

    else
    {
      v16 = [_UIFontCacheKey newFontCacheKeyWithFontName:a1 traits:a2 pointSize:a7];
    }

    v19 = v16;
    v20 = [+[UIFont _sharedFontCache](UIFont "_sharedFontCache")];
    if (v20)
    {
      goto LABEL_46;
    }

    if (a5)
    {
      if (a3)
      {
        if (a4)
        {
          v53[0] = a3;
          v52[0] = @"NSCTFontUIFontDesignTrait";
          v52[1] = @"NSCTFontWeightTrait";
          v52[2] = @"NSCTFontProportionTrait";
          v53[1] = [MEMORY[0x1E696AD98] numberWithDouble:a8];
          v53[2] = a4;
          v21 = MEMORY[0x1E695DF20];
          v22 = v53;
          v23 = v52;
          v24 = 3;
        }

        else
        {
          v50[0] = @"NSCTFontUIFontDesignTrait";
          v50[1] = @"NSCTFontWeightTrait";
          v51[0] = a3;
          v51[1] = [MEMORY[0x1E696AD98] numberWithDouble:a8];
          v21 = MEMORY[0x1E695DF20];
          v22 = v51;
          v23 = v50;
          v24 = 2;
        }

        v27 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:v24];
        v28 = v27;
        if (v9)
        {
          v48[0] = @"NSCTFontFeatureSettingsAttribute";
          v45[0] = @"CTFeatureTypeIdentifier";
          v45[1] = @"CTFeatureSelectorIdentifier";
          v46[0] = &unk_1F01CC300;
          v46[1] = &unk_1F01CC318;
          v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];
          v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
          v48[1] = @"NSCTFontTraitsAttribute";
          v49[0] = v29;
          v49[1] = v28;
          v30 = MEMORY[0x1E695DF20];
          v31 = v49;
          v32 = v48;
          v33 = 2;
        }

        else
        {
          v43 = @"NSCTFontTraitsAttribute";
          v44 = v27;
          v30 = MEMORY[0x1E695DF20];
          v31 = &v44;
          v32 = &v43;
          v33 = 1;
        }

        v34 = +[UIFontDescriptor fontDescriptorWithFontAttributes:](UIFontDescriptor, "fontDescriptorWithFontAttributes:", [v30 dictionaryWithObjects:v31 forKeys:v32 count:v33]);
        if (!v34)
        {
          +[UIFont _fontWithDescriptor:size:textStyleForScaling:pointSizeForScaling:maximumPointSizeAfterScaling:forIB:legibilityWeight:];
        }

        v35 = CTFontCreateWithFontDescriptor(v34, a7, 0);
      }

      else
      {
        if (v14)
        {
          if ((v14 & 2) != 0)
          {
            v26 = kCTFontUIFontEmphasizedSystem;
          }

          else if (v14)
          {
            v26 = kCTFontControlContentFontType|kCTFontUserFixedPitchFontType;
          }

          else if ((v14 & 0x10) != 0)
          {
            v26 = 104;
          }

          else if ((v14 & 8) != 0)
          {
            v26 = kCTFontMiniEmphasizedSystemFontType|0x60;
          }

          else if ((v14 & 4) != 0)
          {
            v26 = 102;
          }

          else
          {
            v26 = kCTFontUIFontSystem;
          }
        }

        else
        {
          v26 = kCTFontUIFontSystem;
        }

        UIFontForLanguage = CTFontCreateUIFontForLanguage(v26, a7, 0);
        v20 = UIFontForLanguage;
        if (!a4 || !UIFontForLanguage)
        {
          goto LABEL_44;
        }

        v37 = [(__CTFont *)UIFontForLanguage fontDescriptor];
        v40 = a4;
        v41 = @"NSCTFontTraitsAttribute";
        v39 = @"NSCTFontProportionTrait";
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v38 = [v37 fontDescriptorByAddingAttributes:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v42, &v41, 1)}];

        v35 = [UIFont fontWithDescriptor:v38 size:a7];
      }

      v25 = v35;
    }

    else
    {
      v25 = _CTFontCreateWithNameAndSymbolicTraits();
    }

    v20 = v25;
LABEL_44:
    if (v20)
    {
      __CTFontGetExtraData(v20);
      [+[UIFont _sharedFontCache](UIFont "_sharedFontCache")];
    }

LABEL_46:

    return v20;
  }

  v17 = +[UIFont _sharedZeroPointFont];

  return v17;
}

CTTextAlignment NSTextAlignmentToCTTextAlignment(NSTextAlignment nsTextAlignment)
{
  if (nsTextAlignment == NSTextAlignmentCenter)
  {
    v1 = kCTTextAlignmentCenter;
  }

  else
  {
    v1 = nsTextAlignment;
  }

  if (nsTextAlignment == NSTextAlignmentRight)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t _NSCTTextAlignmentToHorizontalAlignment(uint64_t result, uint64_t *a2, char *a3)
{
  if (result <= 1)
  {
    if (result)
    {
      if (result != 1)
      {
        return result;
      }

      if (!a2)
      {
        goto LABEL_20;
      }

      v3 = 3;
      goto LABEL_19;
    }

    if (a2)
    {
      v3 = 2;
      goto LABEL_19;
    }

LABEL_20:
    if (!a3)
    {
      return result;
    }

    v4 = 0;
    goto LABEL_22;
  }

  if (result == 2)
  {
    if (a2)
    {
      v3 = 4;
LABEL_19:
      *a2 = v3;
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if (result != 3)
  {
    if (result != 4)
    {
      return result;
    }

    if (a2)
    {
      *a2 = 0;
    }

    goto LABEL_20;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    v4 = 1;
LABEL_22:
    *a3 = v4;
  }

  return result;
}

double _flushFactorFromAlignment(unint64_t a1, NSWritingDirection IsRightToLeft, uint64_t a3, int a4, int a5)
{
  if (a1 > 1)
  {
    v6 = 2;
    if (a1 == 2)
    {
      v6 = 3;
    }

    if (!a5)
    {
      v6 = a1;
    }
  }

  else
  {
    if (a4)
    {
      if (IsRightToLeft == NSWritingDirectionNatural)
      {
        IsRightToLeft = CTLineIsRightToLeft();
      }
    }

    else
    {
      IsRightToLeft = [NSParagraphStyle defaultWritingDirectionForLanguage:0];
    }

    v6 = 2;
    if ((a1 == 1) != (IsRightToLeft == NSWritingDirectionRightToLeft))
    {
      v6 = 3;
    }
  }

  result = 0.0;
  if (v6 == 3)
  {
    result = 1.0;
  }

  if (v6 == 4)
  {
    return 0.5;
  }

  return result;
}

uint64_t __NSValidateCoreTextAttributes(CFDictionaryRef theDict, int a2, BOOL *a3)
{
  v33 = a3;
  v39 = *MEMORY[0x1E69E9840];
  if (__NSValidateCoreTextAttributes_invalidKeysOnce != -1)
  {
    __NSValidateCoreTextAttributes_cold_1();
  }

  Count = CFDictionaryGetCount(theDict);
  MEMORY[0x1EEE9AC00](Count, v6, v7, v8, v9, v10, v11, v12);
  v13 = (8 * Count + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = (&v32 - v13);
  if ((8 * Count) >= 0x200)
  {
    v15 = 512;
  }

  else
  {
    v15 = 8 * Count;
  }

  bzero(&v32 - v13, v15);
  MEMORY[0x1EEE9AC00](v16, v17, v18, v19, v20, v21, v22, v23);
  v24 = (&v32 - v13);
  bzero(v24, v15);
  CFDictionaryGetKeysAndValues(theDict, v14, v24);
  v38 = dyld_program_sdk_at_least();
  if (Count < 1)
  {
    v35 = 0;
    v36 = 0;
    v25 = 1;
LABEL_28:
    if (v33)
    {
      *v33 = v25;
    }

    v30 = v35;
    v31 = v36;
    if ((!v36 || !v35 || [v36 isEqual:?]) && objc_msgSend(v31, "renderingMode", v30) < 2)
    {
      return 1;
    }
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v37 = @"NSFont";
    v25 = 1;
    v34 = @"NSOriginalFont";
    while (!CFSetContainsValue(__NSValidateCoreTextAttributes_disallowedKeysForMeasurement, *v14))
    {
      if (v25)
      {
        v26 = CFSetContainsValue(__NSValidateCoreTextAttributes_disallowedKeysForDrawing, *v14);
        v25 = v26 == 0;
        if (v26 && (a2 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v25 = 0;
        result = 0;
        if (!a2)
        {
          return result;
        }
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v38)
        {
          return 0;
        }

        v28 = [MEMORY[0x1E696AAA8] currentHandler];
        [v28 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"_Bool __NSValidateCoreTextAttributes(NSDictionary * description:{BOOL, NSTextApplicationFrameworkContext, BOOL *)"), @"NSCoreTypesetter.m", 1959, @"Expected NSString type for attribute key, got %@ instead", objc_opt_class()}];
      }

      if ([*v14 isEqualToString:@"NSParagraphStyle"])
      {
        v29 = *v24;
        if ([objc_msgSend(*v24 "textBlocks")] || objc_msgSend(objc_msgSend(v29, "textLists"), "count"))
        {
          return 0;
        }
      }

      else if ([*v14 isEqualToString:v37])
      {
        v36 = *v24;
      }

      else if ([*v14 isEqualToString:v34])
      {
        v35 = *v24;
      }

      ++v24;
      ++v14;
      if (!--Count)
      {
        goto LABEL_28;
      }
    }
  }

  return 0;
}

uint64_t __attributedStringAtKeyframe_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

CTLineRef __NSCoreTypesetterCreateBaseLineFromAttributedString(void *a1, CFIndex a2, unint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52[1] = *MEMORY[0x1E69E9840];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3052000000;
  v41 = __Block_byref_object_copy__11;
  v42 = __Block_byref_object_dispose__11;
  v43 = a1;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3052000000;
  v35 = __Block_byref_object_copy__11;
  v36 = __Block_byref_object_dispose__11;
  v37 = 0;
  if (a2)
  {
    v15 = 0;
  }

  else
  {
    v15 = a3 >= [a1 length];
  }

  if (a6)
  {
    v16 = v39[5];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = ____NSCoreTypesetterCreateBaseLineFromAttributedString_block_invoke;
    v31[3] = &unk_1E7267C38;
    v31[5] = &v38;
    v31[6] = &v32;
    v31[4] = a6;
    [v16 enumerateAttribute:@"NSAttachment" inRange:a2 options:a3 usingBlock:{0x100000, v31}];
  }

  if (a7 || a8 == 1)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = ____NSCoreTypesetterCreateBaseLineFromAttributedString_block_invoke_2;
    v30[3] = &__block_descriptor_48_e18_r_32__0___qq_8_c24l;
    v30[4] = a8;
    v30[5] = a7;
    v17 = [v30 copy];
    v18 = v17;
    if (a4 == 1)
    {
      if (!v17)
      {
        goto LABEL_13;
      }

      v19 = *MEMORY[0x1E6965A98];
      v51[2] = *MEMORY[0x1E6965AA8];
      v51[3] = v19;
      v51[5] = MEMORY[0x1E695E118];
      v51[6] = MEMORY[0x1E695E118];
      v51[4] = *MEMORY[0x1E6965AA0];
      v20 = v52;
    }

    else
    {
      if (!v17)
      {
        goto LABEL_17;
      }

      v44 = *MEMORY[0x1E6965A98];
      v46 = [MEMORY[0x1E696AD98] numberWithInt:a5 ^ 1u];
      v45 = *MEMORY[0x1E6965AA0];
      v20 = &v47;
    }

    *v20 = v18;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
LABEL_24:
    v28 = CTTypesetterCreateWithAttributedStringAndOptions(v39[5], v25);
    v53.location = a2;
    v53.length = a3;
    Line = CTTypesetterCreateLine(v28, v53);
    CFRelease(v28);
    goto LABEL_25;
  }

  if (a4 == 1)
  {
LABEL_13:
    v21 = *MEMORY[0x1E6965A98];
    v50[0] = *MEMORY[0x1E6965AA8];
    v50[1] = v21;
    v51[0] = MEMORY[0x1E695E118];
    v51[1] = MEMORY[0x1E695E118];
    v22 = v50;
    v23 = v51;
    v24 = 2;
LABEL_23:
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:v24];
    v18 = 0;
    goto LABEL_24;
  }

LABEL_17:
  if (!a5)
  {
    v48 = *MEMORY[0x1E6965A98];
    v49 = MEMORY[0x1E695E118];
    v22 = &v48;
    v23 = &v49;
    v24 = 1;
    goto LABEL_23;
  }

  Line = CTLineCreateWithAttributedString(v39[5]);
  if (Line != 0 && !v15)
  {
    v27 = CTLineCreateFromLineWithOffset();
    CFRelease(Line);
    Line = v27;
  }

  v25 = 0;
  v18 = 0;
  if (!Line)
  {
    goto LABEL_24;
  }

LABEL_25:

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);
  return Line;
}

void sub_18E747324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

uint64_t __NSCoreTypesetterTruncateLine(uint64_t a1, CTLineRef *a2, void *a3, uint64_t a4, unsigned int a5, double *a6, double *a7, double a8)
{
  v15 = *a2;
  TypographicBounds = *a6;
  if (a4 == 4)
  {
    v17 = a5;
  }

  else
  {
    v17 = 0;
  }

  if (v17 == 1)
  {
    CTLineGetStringRange(*a2);
    HyphenatedLineWithOffset = CTLineCreateHyphenatedLineWithOffset();
    if (HyphenatedLineWithOffset)
    {
      v19 = HyphenatedLineWithOffset;
      CFRelease(v15);
      TypographicBounds = CTLineGetTypographicBounds(v19, 0, 0, 0);
      *a2 = v19;
      *a6 = TypographicBounds;
      v15 = v19;
    }
  }

  if ((a4 - 3) > 2)
  {
    return v17;
  }

  v20 = a8 <= 0.0 || v15 == 0;
  v21 = v20 || TypographicBounds <= a8;
  if (v21 || CTLineGetGlyphCount(v15) < 2)
  {
    return v17;
  }

  if (a3)
  {
    if ([a3 allowsDefaultTighteningForTruncation])
    {
      v22 = 1;
      goto LABEL_24;
    }

    [a3 tighteningFactorForTruncation];
  }

  else
  {
    if ([+[NSParagraphStyle allowsDefaultTighteningForTruncation] defaultParagraphStyle]
    {
      v22 = 1;
      goto LABEL_24;
    }

    [+[NSParagraphStyle defaultParagraphStyle](NSParagraphStyle tighteningFactorForTruncation];
  }

  v22 = 0;
  if ((v23 + 1.0) * a8 >= TypographicBounds)
  {
LABEL_24:
    JustifiedLineWithOptions = CTLineCreateJustifiedLineWithOptions();
    if (JustifiedLineWithOptions)
    {
      TruncatedLineWithTokenHandler = JustifiedLineWithOptions;
      v26 = CTLineGetTypographicBounds(JustifiedLineWithOptions, 0, 0, 0);
      if (v26 - CTLineGetTrailingWhitespaceWidth(TruncatedLineWithTokenHandler) <= a8)
      {
LABEL_37:
        CFRelease(v15);
        v29 = CTLineGetTypographicBounds(TruncatedLineWithTokenHandler, 0, 0, 0);
        TrailingWhitespaceWidth = CTLineGetTrailingWhitespaceWidth(TruncatedLineWithTokenHandler);
        *a2 = TruncatedLineWithTokenHandler;
        *a6 = v29 - TrailingWhitespaceWidth;
        *a7 = TrailingWhitespaceWidth;
        return v17;
      }

      CFRelease(TruncatedLineWithTokenHandler);
    }
  }

  v32 = *(a1 + 40);
  v27 = CFRetain(v15);
  v44 = 0;
  v45 = &v44;
  v46 = 0x3010000000;
  v47 = "";
  v48 = xmmword_18E856180;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3810000000;
  v40 = "a";
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 1;
  if (v22 && (v28 = CTLineCreateJustifiedLineWithOptions()) != 0)
  {
    CFRelease(v27);
  }

  else
  {
    v28 = v27;
  }

  TruncatedLineWithTokenHandler = CTLineCreateTruncatedLineWithTokenHandler();
  if (TruncatedLineWithTokenHandler && v32 && v45[4] != 0x7FFFFFFFFFFFFFFFLL && v45[5])
  {
    [v32 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:")}];
    v17 = 1;
  }

  __NSCoreTypesetterTruncationTokenContextDeallocate((v38 + 4));
  *(v34 + 24) = 0;
  CFRelease(v28);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v44, 8);
  if (TruncatedLineWithTokenHandler)
  {
    goto LABEL_37;
  }

  return v17;
}

void sub_18E74772C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 152), 8);
  _Unwind_Resume(a1);
}

void _NSCoreTypesetterRenderLine(const __CTLine *a1, void *a2, uint64_t a3, const __CFAttributedString *a4, int a5, uint64_t a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12)
{
  if (!a2)
  {
    return;
  }

  v24 = [a2 CGContext];
  v36.origin.x = a9;
  v36.origin.y = a10;
  v36.size.width = a11;
  v36.size.height = a12;
  v25 = NSEqualRects(v36, *MEMORY[0x1E696AA80]);
  v26 = [a2 isFlipped];
  if (!v25)
  {
    CGContextSaveGState(v24);
    v37.origin.x = a9;
    v37.origin.y = a10;
    v37.size.width = a11;
    v37.size.height = a12;
    CGContextClipToRect(v24, v37);
  }

  v35.a = 1.0;
  v35.b = 0.0;
  v35.c = 0.0;
  v35.d = 1.0;
  v35.tx = 0.0;
  v35.ty = 0.0;
  CGContextSetTextMatrix(v24, &v35);
  memset(&v35, 0, sizeof(v35));
  CGContextGetCTM(&v35, v24);
  v27 = 1.0;
  v34.b = 0.0;
  v34.c = 0.0;
  if (v26)
  {
    v27 = -1.0;
  }

  v34.a = 1.0;
  v34.d = v27;
  v34.tx = a7;
  v34.ty = a8;
  CGContextConcatCTM(v24, &v34);
  if (a5)
  {
    BoundsWithOptions = CTLineGetBoundsWithOptions(a1, 8uLL);
    x = BoundsWithOptions.origin.x;
    y = BoundsWithOptions.origin.y;
    width = BoundsWithOptions.size.width;
    height = BoundsWithOptions.size.height;
  }

  else
  {
    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
  }

  if (!a3)
  {
    CTLineDraw(a1, v24);
    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  CTLineDrawWithAttributeOverrides();
  if (a4)
  {
LABEL_11:
    v32 = *(MEMORY[0x1E695EFD0] + 16);
    *&v34.a = *MEMORY[0x1E695EFD0];
    *&v34.c = v32;
    *&v34.tx = *(MEMORY[0x1E695EFD0] + 32);
    CGContextSetTextMatrix(v24, &v34);
    v33 = CTLineCreateWithAttributedString(a4);
    CTLineDraw(v33, v24);
    CFRelease(v33);
  }

LABEL_12:
  v34 = v35;
  CGContextSetCTM();
  if (a6)
  {
    (*(a6 + 16))(a6, v24, x, y, width, height);
  }

  if (!v25)
  {
    CGContextRestoreGState(v24);
  }
}

void __NSCoreTypesetterRenderLineAndAttachments(CTLineRef line, void *a2, uint64_t a3, void *a4, const __CFAttributedString *a5, uint64_t a6, int a7, uint64_t a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, CGFloat a13, CGFloat a14)
{
  if (line)
  {
    _NSCoreTypesetterRenderLine(line, a2, a6, a5, a7, a8, a9, a10, a11, a12, a13, a14);
  }

  if (a4 && a2)
  {
    GlyphRuns = CTLineGetGlyphRuns(line);
    Count = CFArrayGetCount(GlyphRuns);
    v49.origin.x = a11;
    v49.origin.y = a12;
    v49.size.width = a13;
    v49.size.height = a14;
    v24 = NSEqualRects(v49, *MEMORY[0x1E696AA80]);
    v25 = [a2 CGContext];
    v26 = v25;
    v40 = v24;
    if (!v24)
    {
      CGContextSaveGState(v25);
      v50.origin.x = a11;
      v50.origin.y = a12;
      v50.size.width = a13;
      v50.size.height = a14;
      CGContextClipToRect(v26, v50);
    }

    c = v26;
    if (Count >= 1)
    {
      v27 = 0;
      v28 = *MEMORY[0x1E6965A50];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, v27);
        Attributes = CTRunGetAttributes(ValueAtIndex);
        if ([(__CFDictionary *)Attributes objectForKeyedSubscript:v28, c])
        {
          v31 = [(__CFDictionary *)Attributes objectForKeyedSubscript:@"NSAttachment"];
          if (v31)
          {
            v32 = v31;
            location = CTRunGetStringRange(ValueAtIndex).location;
            buffer = 0;
            v46 = 0u;
            descent = 0.0;
            ascent = 0.0;
            v47.location = 0;
            v47.length = 0;
            TypographicBounds = CTRunGetTypographicBounds(ValueAtIndex, v47, &ascent, &descent, 0);
            v48.location = 0;
            v48.length = 1;
            CTRunGetPositions(ValueAtIndex, v48, &buffer);
            *&v46 = TypographicBounds;
            buffer.x = a9 + buffer.x;
            if ([a2 isFlipped])
            {
              v35 = descent;
              v36 = a10 + descent - buffer.y;
            }

            else
            {
              v35 = descent;
              v36 = buffer.y + a10 - descent;
            }

            buffer.y = v36;
            *(&v46 + 1) = v35 + ascent;
            v37 = [[NSCountableTextLocation alloc] initWithIndex:location];
            v38 = [a4 textContainerForLocation:v37];
            [v32 _showWithBounds:Attributes attributes:v37 location:v38 textContainer:a3 applicationFrameworkContext:0 acceptsViewProvider:{buffer.x, buffer.y, v46}];
          }
        }

        ++v27;
      }

      while (Count != v27);
    }

    if (!v40)
    {
      CGContextRestoreGState(c);
    }
  }
}

uint64_t initUIGraphicsGetCurrentContext()
{
  v0 = __NSGetFrameworkReference(0, 0);
  v1 = dlsym(v0, "UIGraphicsGetCurrentContext");
  softLinkUIGraphicsGetCurrentContext[0] = v1;
  if (!v1)
  {
    initUIGraphicsGetCurrentContext_cold_1();
  }

  return v1();
}

uint64_t initUIGraphicsGetCurrentContext_0()
{
  v0 = __NSGetFrameworkReference(0, 0);
  v1 = dlsym(v0, "UIGraphicsGetCurrentContext");
  softLinkUIGraphicsGetCurrentContext_0 = v1;
  if (!v1)
  {
    initUIGraphicsGetCurrentContext_cold_1_0();
  }

  return v1();
}

Class initUIColor()
{
  __NSGetFrameworkReference(0, 0);
  result = objc_getClass("UIColor");
  classUIColor = result;
  if (!result)
  {
    initUIColor_cold_1();
  }

  getUIColorClass[0] = UIColorFunction;
  return result;
}

Class initUIColor_0()
{
  __NSGetFrameworkReference(0, 0);
  result = objc_getClass("UIColor");
  classUIColor_0 = result;
  if (!result)
  {
    initUIColor_cold_1_0();
  }

  getUIColorClass_0[0] = UIColorFunction_0;
  return result;
}

Class initUIColor_1()
{
  __NSGetFrameworkReference(0, 0);
  result = objc_getClass("UIColor");
  classUIColor_1 = result;
  if (!result)
  {
    initUIColor_cold_1_1();
  }

  getUIColorClass_1[0] = UIColorFunction_1;
  return result;
}

uint64_t __UIGetLegibilityWeight(void *a1)
{
  if (a1)
  {
    return [a1 legibilityWeight];
  }

  else
  {
    return -1;
  }
}

uint64_t OUTLINED_FUNCTION_2_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);

  return [(_NSTextRunStorage *)a2 _rangeFromTextRange:v4];
}

BOOL UIDataLooksLikeNibArchive(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 length] < 4)
  {
    v3 = 0;
  }

  else
  {
    [v1 getBytes:&v5 length:10];
    v3 = v5 == 0x696863724142494ELL && v6 == 25974;
  }

  return v3;
}

uint64_t UIFixedByteLengthForType(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return -2;
  }

  else
  {
    return UIFixedByteLengthForType_table[a1];
  }
}

uint64_t UIReadNibArchiveVInt32(uint64_t a1, unint64_t a2, uint64_t *a3, int *a4)
{
  v4 = *a3;
  if (a2 >= *a3)
  {
    v5 = a2 - *a3;
  }

  else
  {
    v5 = 0;
  }

  if (v5 < 5)
  {
    __memcpy_chk();
    if (v5 == 3 || v5 == 2 || v5 == 1)
    {
      return 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = *(a1 + v4);
    if ((v6 & 0x80) != 0)
    {
      v7 = *(a1 + v4) & 0x7F;
      v8 = 1;
    }

    else if ((v6 & 0x8000) != 0)
    {
      v7 = *(a1 + v4) & 0x7F | (((*(a1 + v4) >> 8) & 0x7F) << 7);
      v8 = 2;
    }

    else if ((v6 & 0x800000) != 0)
    {
      v7 = *(a1 + v4) & 0x7F | (((*(a1 + v4) >> 8) & 0x7F) << 7) | (*(a1 + v4) >> 2) & 0x1FC000;
      v8 = 3;
    }

    else if (v6 < 0)
    {
      v7 = *(a1 + v4) & 0x7F | ((HIWORD(*(a1 + v4)) & 0x7F) << 14) | (*(a1 + v4) >> 3) & 0xFE00000 | (*(a1 + v4) >> 1) & 0x3F80;
      v8 = 4;
    }

    else
    {
      v7 = (*(a1 + v4) >> 3) & 0xFE00000 | (*(a1 + v4 + 4) << 28) | (*(a1 + v4) >> 2) & 0x1FC000 | (*(a1 + v4) >> 1) & 0x3F80 | *(a1 + v4) & 0x7F;
      v8 = 5;
    }

    *a4 = v7;
    *a3 = (v4 + v8);
    return 1;
  }
}

__n128 UINibDecoderDecodeObjectForValue(uint64_t a1, uint64_t a2, int a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a3 == 10)
  {
    v4 = *(*(a1 + 72) + *(a2 + 4));
    if (v4 < *(a1 + 108) && !*(*(a1 + 144) + 8 * v4))
    {
      v5 = *(a1 + 152);
      if (v5)
      {
        v6 = *(v5 + 4 * v4);
      }

      else
      {
        v6 = *(*(a1 + 160) + v4);
      }

      if (!*(*(a1 + 32) + 8 * v6))
      {
        if (objc_opt_respondsToSelector())
        {
          *(*(a1 + 32) + 8 * v6) = [*(a1 + 216) nibDecoder:a1 cannotDecodeObjectOfClassName:*(*(a1 + 40) + 8 * v6)];
        }

        if (!*(*(a1 + 32) + 8 * v6))
        {
          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:{@"Could not instantiate class named %1$@ because no class named %1$@ was found; the class needs to be defined in source code or linked in from a library (ensure the class is part of the correct target)", *(*(a1 + 40) + 8 * v6)}];
        }
      }

      v27 = *(a1 + 184);
      v28 = *(a1 + 200);
      *(a1 + 192) = 0;
      *(a1 + 200) = 0;
      *(a1 + 184) = 0;
      *(a1 + 184) = v4;
      v7 = *(*(a1 + 32) + 8 * v6);
      v8 = (*(a1 + 48) + 8 * v4);
      if (!v8[1] || *(a1 + 176) != *(*(a1 + 56) + 8 * *v8))
      {
        *(*(a1 + 144) + 8 * v4) = objc_allocWithZone(v7);
        v15 = [*(*(a1 + 144) + 8 * v4) initWithCoder:a1];
        v16 = v15;
        if (*(a1 + 204) == 1)
        {
          v17 = *(*(a1 + 144) + 8 * v4);
          if (v17 != v15)
          {
            [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"This coder is expecting the replaced object %p to be returned from %@.initWithCoder instead of <%@: %p>", v17, v7, objc_opt_class(), v15}];
          }
        }

        *(*(a1 + 144) + 8 * v4) = v16;
        *(*(a1 + 144) + 8 * v4) = [*(*(a1 + 144) + 8 * v4) awakeAfterUsingCoder:a1];
        if (objc_opt_respondsToSelector())
        {
          [*(a1 + 216) nibDecoder:a1 didDecodeObject:*(*(a1 + 144) + 8 * v4)];
        }

        goto LABEL_39;
      }

      if (![(objc_class *)v7 isSubclassOfClass:*(a1 + 8)])
      {
        if ([(objc_class *)v7 isSubclassOfClass:*(a1 + 24)])
        {
          *(*(a1 + 144) + 8 * v4) = objc_allocWithZone(v7);
          v18 = UINibDecoderDecodeDictionary(a1, *(*(a1 + 144) + 8 * v4));
        }

        else
        {
          if (![(objc_class *)v7 isSubclassOfClass:*(a1 + 16)])
          {
            [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Unkown special cased class %@", v7}];
            goto LABEL_39;
          }

          *(*(a1 + 144) + 8 * v4) = objc_allocWithZone(v7);
          v18 = UINibDecoderDecodeSet(a1, *(*(a1 + 144) + 8 * v4));
        }

        v19 = v18;
LABEL_38:
        *(*(a1 + 144) + 8 * v4) = v19;
LABEL_39:
        result = v27;
        *(a1 + 184) = v27;
        *(a1 + 200) = v28;
        return result;
      }

      *(*(a1 + 144) + 8 * v4) = objc_allocWithZone(v7);
      v9 = (*(a1 + 48) + 8 * *(a1 + 184));
      v10 = v9[1];
      if (!v10)
      {
        __assert_rtn("UINibDecoderDecodeArray", "UINibDecoder.m", 608, "count >= 1 && It isn't possible to get here with count == 0.");
      }

      v11 = *(*(a1 + 144) + 8 * v4);
      v12 = *v9;
      v13 = (v10 - 1);
      if (v13 < 0x21)
      {
        v14 = v29;
        if (v10 == 1)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v14 = malloc_type_malloc(8 * v13, 0x80040B8603338uLL);
      }

      v26 = (v10 - 1);
      v20 = 0;
      v21 = 0;
      v22 = v12 + 1;
      v23 = v10 - 1;
      do
      {
        v24 = UINibDecoderDecodeObjectForValue(a1, *(a1 + 56) + 8 * v22, *(*(a1 + 64) + v22));
        *&v14[8 * v20] = v24;
        v21 |= v24 == 0;
        ++v22;
        ++v20;
      }

      while (v23 != v20);
      if (v21)
      {

        v19 = 0;
        goto LABEL_36;
      }

      v13 = v26;
LABEL_35:
      v19 = [v11 initWithObjects:v14 count:v13];
LABEL_36:
      if (v14 != v29)
      {
        free(v14);
      }

      goto LABEL_38;
    }
  }

  return result;
}

void sub_18E7496A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    *(*(v16 + *(v18 + 2008)) + 8 * v17) = 0;
    *(v16 + 200) = a16;
    *(v16 + 184) = a15;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void __NSCoreTypesetterTruncationTokenContextDeallocate(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t _NSCopyBreakIterator(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (shouldUseHangulWordPriorityWithLineBreakStrategy_once != -1)
  {
    _NSCopyBreakIterator_cold_1();
  }

  v6 = defaultBreakLanguage();
  v7 = v6;
  if (v5 && v6 != v5 && ![(__CFString *)v6 isEqualToString:v5])
  {
LABEL_11:
    if (([(__CFString *)v5 isEqualToString:NSPOSIXLocaleIdentifier]& 1) != 0 || [(__CFString *)v5 isEqualToString:NSPOSIXLanguageIdentifier])
    {
      if (!_NSCopyBreakIterator_posixBreakerSeed[!(a4 & 1)])
      {
        v11 = ubrk_open();
        v12 = 0;
        atomic_compare_exchange_strong_explicit(&_NSCopyBreakIterator_posixBreakerSeed[!(a4 & 1)], &v12, v11, memory_order_relaxed, memory_order_relaxed);
        if (v12)
        {
          ubrk_close();
        }
      }

      v8 = ubrk_clone();
      ubrk_setText();
      if ((a4 & 1) == 0 && v8)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v13 = v5;
      v5 = v13;
      v14 = v13;
      if ((a4 & 2) != 0)
      {
        v14 = v13;
        if ([(__CFString *)v13 rangeOfString:@"lb="]== 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = [(__CFString *)v5 stringByAppendingString:@"@lb=strict"];
        }
      }

      CFStringGetCString(v14, buffer, 128, 0x600u);
      v8 = ubrk_open();
      if (!v8)
      {
        v8 = ubrk_open();
      }

      if ((a4 & 1) == 0 && v8)
      {
        ubrk_setLineWordOpts();
      }
    }

    goto LABEL_26;
  }

  if (a4 >= 4)
  {
    _NSCopyBreakIterator_cold_2();
  }

  v8 = __NSDefaultBreakers[a4];
  if (!v8 || (v9 = __NSDefaultBreakers[a4], atomic_compare_exchange_strong_explicit(&__NSDefaultBreakers[a4], &v9, 0, memory_order_relaxed, memory_order_relaxed), v9 != v8))
  {
    v10 = v7;

    v5 = v10;
    goto LABEL_11;
  }

  ubrk_setText();
  if ((a4 & 1) == 0)
  {
LABEL_31:
    ubrk_setLineWordOpts();
  }

LABEL_26:

  return v8;
}

uint64_t rangeOfParagraphSeparatorAtIndex(unint64_t a1, UniChar *buffer, uint64_t a3)
{
  if (a3 < a1)
  {
    v4 = a3 + 1;
    if (a3 >= -1 && v4 < a1)
    {
      v6 = *(buffer + 20);
      if (v6 > v4)
      {
        v7 = *(buffer + 17);
        if (v7)
        {
          v8 = *(v7 + 2 * *(buffer + 19) + 2 * v4);
        }

        else
        {
          v9 = *(buffer + 18);
          if (v9)
          {
            v8 = *(v9 + *(buffer + 19) + v4);
          }

          else
          {
            if (*(buffer + 22) <= v4 || (v10 = *(buffer + 21), v10 > v4))
            {
              v11 = a3 - 3;
              if (a3 < 3)
              {
                v11 = 0;
              }

              if (v11 + 64 < v6)
              {
                v6 = v11 + 64;
              }

              *(buffer + 21) = v11;
              *(buffer + 22) = v6;
              v12 = *(buffer + 16);
              v17.length = v6 - v11;
              v17.location = *(buffer + 19) + v11;
              CFStringGetCharacters(v12, v17, buffer);
              v10 = *(buffer + 21);
            }

            v8 = buffer[v4 - v10];
          }
        }

        if (v8 == 10)
        {
          v13 = *(buffer + 20);
          if (v13 > a3 && !*(buffer + 17) && !*(buffer + 18))
          {
            if (*(buffer + 22) <= a3 || (v14 = *(buffer + 21), v14 > a3))
            {
              v15 = a3 - 4;
              if (a3 < 4)
              {
                v15 = 0;
              }

              if (v15 + 64 < v13)
              {
                v13 = v15 + 64;
              }

              *(buffer + 21) = v15;
              *(buffer + 22) = v13;
              v18.length = v13 - v15;
              v18.location = *(buffer + 19) + v15;
              CFStringGetCharacters(*(buffer + 16), v18, buffer);
            }
          }
        }
      }
    }
  }

  return a3;
}

uint64_t __NSLineBreakStrategyStandardActualOptions(char a1)
{
  if (__NSUsesOptimalLineBreaking == 1 && ((a1 & 1) != 0 || (__NSUsesOptimalLineBreakingForNonJustifiedAlignments & 1) != 0))
  {
    return 11;
  }

  else
  {
    return 7;
  }
}

void *__NSTextLayoutManagerGetTextContainerEntryAtIndex(void *a1, unint64_t a2, int a3)
{
  if (a1[33] <= a2)
  {
    v6 = a1[21];
    if (v6)
    {
      result = a1 + 21;
    }

    else
    {
      result = 0;
    }

    if (a3 && !v6)
    {
      [a1 _addTextContainerForLocation:{objc_msgSend(objc_msgSend(objc_msgSend(a1, "textContentManager"), "documentRange"), "location")}];
      if (a1[21])
      {
        return a1 + 21;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v4 = a1[30];
    if ((a3 & (v4 == 0)) != 0)
    {
      return 0;
    }

    else
    {
      return (v4 + 72 * a2);
    }
  }

  return result;
}

id __NSDefaultFont_block_invoke()
{
  _NSTextScalingTypeForCurrentEnvironment();
  v0 = objc_opt_class();
  v1 = [v0 fontWithName:@"Helvetica" size:12.0];
  NSDefaultFont__defaultFont = v1;
  if (!v1)
  {
    v1 = [v0 systemFontOfSize:12.0];
    NSDefaultFont__defaultFont = v1;
  }

  return v1;
}

uint64_t NSDefaultFont()
{
  if (NSDefaultFont_onceToken != -1)
  {
    NSDefaultFont_cold_1();
  }

  return NSDefaultFont__defaultFont;
}

uint64_t initUIContentSizeCategoryDidChangeNotification()
{
  v0 = __NSGetFrameworkReference(0, 0);
  v1 = dlsym(v0, "UIContentSizeCategoryDidChangeNotification");
  if (!v1)
  {
    initUIContentSizeCategoryDidChangeNotification_cold_1();
  }

  result = *v1;
  constantUIContentSizeCategoryDidChangeNotification = result;
  getUIContentSizeCategoryDidChangeNotification[0] = UIContentSizeCategoryDidChangeNotificationFunction;
  return result;
}

void sub_18E74C5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Unwind_Resume(a1);
}

uint64_t __NSTextLayoutManagerFillSoftInvalidationToLocation(uint64_t a1, void *a2, double a3)
{
  v47 = 0;
  v48 = &v47;
  v49 = 0x3052000000;
  v50 = __Block_byref_object_copy__2;
  v51 = __Block_byref_object_dispose__2;
  v52 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  objc_sync_enter(a1);
  v6 = *(a1 + 272);
  v7 = v6;
  if (v6 && (!a2 || [v6 compare:a2] == -1))
  {
    TextContainerEntryAndIndexForLocation = __NSTextLayoutManagerGetTextContainerEntryAndIndexForLocation(a1, v7);
    v9 = TextContainerEntryAndIndexForLocation;
    if (TextContainerEntryAndIndexForLocation)
    {
      v10 = *(TextContainerEntryAndIndexForLocation + 7);
    }

    else
    {
      v10 = 0;
    }

    v36 = [objc_msgSend(a1 "textContentManager")];
    if (v9)
    {
      do
      {
        if (a2 && [v7 compare:a2] != -1)
        {
          break;
        }

        v11 = *(v9 + 16);
        if (a1 + 168 == v9 || v11 == 0)
        {
          v11 = v36;
        }

        v13 = v11;
        v14 = [-[NSTextRange location](v13 "location")];
        if (a2)
        {
          v15 = [a2 compare:{-[NSTextRange endLocation](v13, "endLocation")}];
        }

        else
        {
          v15 = 0;
        }

        v39 = 0;
        v40 = &v39;
        v41 = 0x2020000000;
        v42 = 0;
        v16 = *(v9 + 8);
        if (!v16)
        {
          v16 = [v36 location];
        }

        v48[5] = v16;
        if (v14 == -1 || v15 == -1)
        {
          v18 = v7;
          if (v14 != -1)
          {
            v18 = [(NSTextRange *)v13 location];
          }

          v19 = a2;
          if (v15 != -1)
          {
            v19 = [(NSTextRange *)v13 endLocation];
          }

          if ([v18 compare:v19] != -1)
          {
            ++v10;
            v20 = *(a1 + 264);
            v21 = *(a1 + 168);
            if (v21)
            {
              v22 = v20 + 1;
            }

            else
            {
              v22 = *(a1 + 264);
            }

            if (v10 >= v22)
            {
              v9 = 0;
            }

            else if (v20 <= v10)
            {
              if (v21)
              {
                v9 = a1 + 168;
              }

              else
              {
                v9 = 0;
              }
            }

            else
            {
              v9 = *(a1 + 240) + 72 * v10;
            }

            goto LABEL_66;
          }

          v23 = [[NSTextRange alloc] initWithLocation:v18 endLocation:v19];

          if (v14 == -1)
          {
            v24 = [*(v9 + 16) location];
            if (!v24)
            {
              v24 = [v36 location];
            }

            v25 = [(NSTextRange *)v23 location];
            v38[0] = MEMORY[0x1E69E9820];
            v38[1] = 3221225472;
            v38[2] = ____NSTextLayoutManagerFillSoftInvalidationToLocation_block_invoke;
            v38[3] = &unk_1E72667F0;
            v38[4] = v24;
            v38[5] = &v39;
            v38[6] = &v47;
            [*(a1 + 88) enumerateTextLayoutFragmentFromLocation:v25 options:1 usingBlock:v38];
          }
        }

        else
        {
          v23 = v13;
        }

        if (v40[3] < a3)
        {
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = ____NSTextLayoutManagerFillSoftInvalidationToLocation_block_invoke_2;
          v37[3] = &unk_1E7266818;
          *&v37[8] = a3;
          v37[4] = a1;
          v37[5] = &v39;
          v37[6] = &v47;
          v37[7] = &v43;
          if ([-[NSTextRange endLocation](v23 "endLocation")])
          {
            [*(a1 + 88) enumerateTextLayoutFragmentFromLocation:-[NSTextRange location](v23 options:"location") usingBlock:{2, v37}];
          }

          else
          {
            [*(a1 + 88) enumerateTextLayoutFragmentInTextRange:v23 options:2 usingBlock:v37];
          }
        }

        if (*(v44 + 24) == 1)
        {
          if ([*(v9 + 16) isNotEmpty])
          {
            v26 = [*(a1 + 88) textLayoutFragmentForTextLocation:objc_msgSend(*(v9 + 16) allowsTrailingEdge:{"endLocation"), 1}];
            if (v26)
            {
              [v26 layoutFragmentFrame];
              MaxY = CGRectGetMaxY(v53);
              *(v9 + 32) = 0;
              *(v9 + 48) = MaxY;
            }
          }
        }

        v28 = [*(v9 + 16) endLocation];
        ++v10;
        v29 = *(a1 + 264);
        v30 = *(a1 + 168);
        if (v30)
        {
          v31 = v29 + 1;
        }

        else
        {
          v31 = *(a1 + 264);
        }

        if (v10 < v31)
        {
          if (v29 <= v10)
          {
            v9 = a1 + 168;
            if (v30)
            {
              goto LABEL_58;
            }
          }

          else
          {
            v32 = *(a1 + 240);
            if (v32)
            {
              v9 = v32 + 72 * v10;
LABEL_58:
              v33 = v48[5];
              goto LABEL_60;
            }
          }
        }

        if (!v28)
        {
          v9 = 0;
          v33 = 0;
          goto LABEL_60;
        }

        v9 = 0;
        v33 = 0;
        if ([v48[5] compare:v28] == -1)
        {
          goto LABEL_58;
        }

LABEL_60:

        v7 = v33;
LABEL_66:
        _Block_object_dispose(&v39, 8);
      }

      while (v9 && v7);
    }

    if (([v7 isEqual:*(a1 + 272)] & 1) == 0)
    {
      [a1 _setSoftInvalidationLocation:v7 onlyIfUpstream:0];
    }
  }

  objc_sync_exit(a1);
  if (*(v44 + 24) == 1)
  {
    v34 = v48[5];
  }

  else
  {
    v34 = 0;
  }

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
  return v34;
}

void sub_18E74CFAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  objc_sync_exit(v34);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v35 - 168), 8);
  _Unwind_Resume(a1);
}

uint64_t __NSTextLayoutManagerAddTextContainerEntry(uint64_t a1, void *a2)
{
  v4 = a1 + 168;
  if (*(a1 + 168))
  {
    v5 = *(a1 + 264);
    if (v5 == *(a1 + 256))
    {
      v6 = v5 + 8;
      *(a1 + 256) = v6;
      v7 = NSZoneRealloc(0, *(a1 + 240), 72 * v6);
      *(a1 + 240) = v7;
      v5 = *(a1 + 264);
    }

    else
    {
      v7 = *(a1 + 240);
    }

    v8 = &v7[72 * v5];
    *v8 = *v4;
    v9 = *(v4 + 16);
    v10 = *(v4 + 32);
    v11 = *(v4 + 48);
    *(v8 + 8) = *(v4 + 64);
    *(v8 + 2) = v10;
    *(v8 + 3) = v11;
    *(v8 + 1) = v9;
    ++*(a1 + 264);
  }

  v12 = [*(a1 + 184) endLocation];
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0;
  *(a1 + 168) = a2;
  *(a1 + 176) = v12;
  *(a1 + 224) = *(a1 + 264);
  *(a1 + 248) = 0;

  return [a2 setTextLayoutManager:a1];
}

NSUInteger __NSTextContentStorageEnumerateCachedElementsInElementIndexRange(NSUInteger result, NSUInteger a2, NSUInteger a3, uint64_t a4)
{
  v4 = a2 + a3;
  if (a2 < a2 + a3)
  {
    v8 = result;
    v13.location = 0;
    v13.length = 0;
    v9 = a2;
    do
    {
      v10 = [*(v8 + 96) pointerToElement:v9 directlyAccessibleElements:&v13];
      v14.length = v13.location - v9 + v13.length;
      v13.location = v9;
      v13.length = v14.length;
      v14.location = v9;
      v15.location = a2;
      v15.length = a3;
      v11 = NSIntersectionRange(v14, v15);
      result = v11.location;
      v13 = v11;
      if (v10)
      {
        v12 = v11.length == 0;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        break;
      }

      result = (*(a4 + 16))(a4, v10, v11.location, v11.length);
      v9 = v13.length + v13.location;
    }

    while (v13.length + v13.location < v4);
  }

  return result;
}

char *__NSTextLayoutManagerGetTextContainerEntryAndIndexForLocation(void *a1, void *a2)
{
  if (!a1[33])
  {
    goto LABEL_12;
  }

  v4 = [objc_msgSend(a1 "textContentManager")];
  v5 = a1[33];
  v6 = a1[30];
  TextContainerEntryAtIndex = a1[31];
  v8 = &v6[72 * v5];
  if (!TextContainerEntryAtIndex || TextContainerEntryAtIndex < v6 || TextContainerEntryAtIndex >= v8 || (v9 = *(TextContainerEntryAtIndex + 2)) == 0)
  {
LABEL_11:
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = ____NSTextLayoutManagerGetTextContainerEntryAndIndexForLocation_block_invoke;
    v12[3] = &unk_1E7266888;
    v12[4] = v4;
    v12[5] = v8;
    TextContainerEntryAtIndex = bsearch_b(a2, v6, v5, 0x48uLL, v12);
    if (TextContainerEntryAtIndex)
    {
LABEL_13:
      a1[31] = TextContainerEntryAtIndex;
      return TextContainerEntryAtIndex;
    }

LABEL_12:
    TextContainerEntryAtIndex = __NSTextLayoutManagerGetTextContainerEntryAtIndex(a1, 0x7FFFFFFFFFFFFFFFuLL, 1);
    goto LABEL_13;
  }

  if (([v9 containsLocation:a2] & 1) == 0)
  {
    if ([a2 compare:{objc_msgSend(*(TextContainerEntryAtIndex + 2), "location")}] == -1)
    {
      v10 = (TextContainerEntryAtIndex - v6) >> 3;
    }

    else
    {
      v6 = TextContainerEntryAtIndex + 72;
      v10 = (v8 - (TextContainerEntryAtIndex + 72)) >> 3;
    }

    v5 = 0x8E38E38E38E38E39 * v10;
    goto LABEL_11;
  }

  return TextContainerEntryAtIndex;
}

uint64_t __NSConcreteTextStorageLockedForwarding(id *a1, uint64_t a2)
{
  v4 = [a1 _lockForWritingWithExceptionHandler:0];
  [a1[13] beginEditing];
  (*(a2 + 16))(a2);
  result = [a1[13] endEditing];
  if (v4)
  {
    return [a1 _unlock];
  }

  return result;
}

void sub_18E74FCB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak(&STACK[0x310]);
  _Block_object_dispose(&STACK[0x340], 8);
  _Block_object_dispose(&STACK[0x448], 8);
  _Block_object_dispose(&STACK[0x468], 8);
  _Block_object_dispose(&STACK[0x488], 8);
  _Block_object_dispose(&STACK[0x4A8], 8);
  _Block_object_dispose(&STACK[0x4C8], 8);
  _Block_object_dispose(&STACK[0x508], 8);
  _Block_object_dispose(&STACK[0x528], 8);
  _Unwind_Resume(a1);
}

void *__NSTextElementGetFirstRepresentableChild(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [a1 childElements];
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *v10;
LABEL_3:
  v5 = 0;
  while (1)
  {
    if (*v10 != v4)
    {
      objc_enumerationMutation(v1);
    }

    v6 = *(*(&v9 + 1) + 8 * v5);
    if ([v6 isRepresentedElement])
    {
      return v6;
    }

    FirstRepresentableChild = __NSTextElementGetFirstRepresentableChild(v6);
    if (FirstRepresentableChild)
    {
      return FirstRepresentableChild;
    }

    if (v3 == ++v5)
    {
      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v6 = 0;
      if (v3)
      {
        goto LABEL_3;
      }

      return v6;
    }
  }
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __NSCoreTypesetterProcessTextLineFragment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, CGFloat a10, CGFloat a11, CGFloat a12, CGFloat a13, double a14, CGFloat a15)
{
  v30 = [NSTextLineFragment alloc];
  if (a1)
  {
    v31 = [(NSTextLineFragment *)v30 initWithAttributedString:a1 range:a4, a5];
  }

  else
  {
    v31 = [(NSTextLineFragment *)v30 initWithString:a2 attributes:a3 range:a4, a5];
  }

  v32 = v31;
  if (a15 > 0.0 && a15 < 10000000.0)
  {
    v34.origin.x = a10;
    v34.origin.y = a11;
    v34.size.width = a12;
    v34.size.height = a13;
    if (CGRectGetMaxX(v34) > a15)
    {
      v35.origin.x = a10;
      v35.origin.y = a11;
      v35.size.width = a12;
      v35.size.height = a13;
      a12 = a15 - CGRectGetMinX(v35);
      v36.origin.x = a10;
      v36.origin.y = a11;
      v36.size.width = a12;
      v36.size.height = a13;
      if (CGRectGetWidth(v36) < 0.0)
      {
        a12 = 0.0;
      }
    }
  }

  [v32 setGlyphOrigin:{a8 + a14, a9}];
  [v32 setTypographicBounds:{a10, a11, a12 + a14 * 2.0, a13}];
  [v32 setPadding:a14];
  [v32 setApplicationFrameworkContext:a6];
  (*(a7 + 16))(a7, v32);
}

CGFloat __NSTextLayoutFragmentUpdateTotalBoundsWithTypographicBounds(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v32.origin.x = a5;
  v32.origin.y = a6;
  v32.size.width = a7;
  v32.size.height = a8;
  v16 = CGRectEqualToRect(v32, *MEMORY[0x1E695F058]);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  if (v16)
  {
    if (CGRectGetMinY(*&v17) > 0.0)
    {
      v33.origin.x = a1;
      v33.origin.y = a2;
      v33.size.width = a3;
      v33.size.height = a4;
      CGRectGetMaxY(v33);
    }
  }

  else if (CGRectGetWidth(*&v17) <= 0.0 && (v34.origin.x = a1, v34.origin.y = a2, v34.size.width = a3, v34.size.height = a4, CGRectGetHeight(v34) <= 0.0))
  {
    return a5;
  }

  else
  {
    v35.origin.x = a1;
    v35.origin.y = a2;
    v35.size.width = a3;
    v35.size.height = a4;
    MinX = CGRectGetMinX(v35);
    v22 = a5;
    v23 = MinX;
    rect = v22;
    v36.origin.x = v22;
    v36.origin.y = v10;
    v36.size.width = v9;
    v36.size.height = v8;
    if (v23 < CGRectGetMinX(v36))
    {
      v37.origin.x = rect;
      v37.origin.y = v10;
      v37.size.width = v9;
      v37.size.height = v8;
      MaxX = CGRectGetMaxX(v37);
      v38.origin.x = a1;
      v38.origin.y = a2;
      v38.size.width = a3;
      v38.size.height = a4;
      v9 = MaxX - CGRectGetMinX(v38);
      v39.origin.x = a1;
      v39.origin.y = a2;
      v39.size.width = a3;
      v39.size.height = a4;
      rect = CGRectGetMinX(v39);
    }

    v40.origin.x = a1;
    v40.origin.y = a2;
    v40.size.width = a3;
    v40.size.height = a4;
    v25 = CGRectGetMaxX(v40);
    v41.origin.x = rect;
    v41.origin.y = v10;
    v41.size.width = v9;
    v41.size.height = v8;
    if (v25 > CGRectGetMaxX(v41))
    {
      v42.origin.x = a1;
      v42.origin.y = a2;
      v42.size.width = a3;
      v42.size.height = a4;
      v26 = CGRectGetMaxX(v42);
      v43.origin.x = rect;
      v43.origin.y = v10;
      v43.size.width = v9;
      v43.size.height = v8;
      v9 = v26 - CGRectGetMinX(v43);
    }

    v44.origin.x = a1;
    v44.origin.y = a2;
    v44.size.width = a3;
    v44.size.height = a4;
    MinY = CGRectGetMinY(v44);
    v45.origin.x = rect;
    v45.origin.y = v10;
    v45.size.width = v9;
    v45.size.height = v8;
    if (MinY < CGRectGetMinY(v45))
    {
      v46.origin.x = rect;
      v46.origin.y = v10;
      v46.size.width = v9;
      v46.size.height = v8;
      MaxY = CGRectGetMaxY(v46);
      v47.origin.x = a1;
      v47.origin.y = a2;
      v47.size.width = a3;
      v47.size.height = a4;
      v8 = MaxY - CGRectGetMinY(v47);
      v48.origin.x = a1;
      v48.origin.y = a2;
      v48.size.width = a3;
      v48.size.height = a4;
      v10 = CGRectGetMinY(v48);
    }

    v49.origin.x = a1;
    v49.origin.y = a2;
    v49.size.width = a3;
    v49.size.height = a4;
    v29 = CGRectGetMaxY(v49);
    v50.origin.x = rect;
    v50.origin.y = v10;
    v50.size.width = v9;
    v50.size.height = v8;
    if (v29 <= CGRectGetMaxY(v50))
    {
      return rect;
    }

    else
    {
      v51.origin.x = a1;
      v51.origin.y = a2;
      v51.size.width = a3;
      v51.size.height = a4;
      CGRectGetMaxY(v51);
      a1 = rect;
      v52.origin.x = rect;
      v52.origin.y = v10;
      v52.size.width = v9;
      v52.size.height = v8;
      CGRectGetMinY(v52);
    }
  }

  return a1;
}

uint64_t initUIContentSizeCategoryUnspecified()
{
  v0 = __NSGetFrameworkReference(0, 0);
  v1 = dlsym(v0, "UIContentSizeCategoryUnspecified");
  if (!v1)
  {
    initUIContentSizeCategoryUnspecified_cold_1();
  }

  result = *v1;
  constantUIContentSizeCategoryUnspecified = result;
  getUIContentSizeCategoryUnspecified = UIContentSizeCategoryUnspecifiedFunction;
  return result;
}

uint64_t _NSStringImputedBaseWritingDirectionAtIndex(const __CFString *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  theString = a1;
  v55 = a3;
  v56 = a4;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  v53 = CharactersPtr;
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v57 = 0;
  v58 = 0;
  v54 = CStringPtr;
  if (!_NSStringImputedBaseWritingDirectionAtIndex_bidiPropertyBMP)
  {
    _NSStringImputedBaseWritingDirectionAtIndex_bidiPropertyBMP = CFUniCharGetUnicodePropertyDataForPlane();
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  *buffer = 0u;
  v45 = 0u;
  v10 = ~a3 + a2;
  if (v10 < 0)
  {
    goto LABEL_22;
  }

  if (a4 <= v10)
  {
    v43 = a2;
    v12 = 0;
LABEL_24:
    v15 = ~a3 + a2;
LABEL_25:
    v17 = -1;
    while (1)
    {
      UnicodePropertyDataForPlane = _NSStringImputedBaseWritingDirectionAtIndex_bidiPropertyBMP;
      if (v15)
      {
        if (v12 >> 10 != 55)
        {
          goto LABEL_44;
        }

        v19 = v56;
        if (v56 <= v15)
        {
          goto LABEL_44;
        }

        if (v53)
        {
          v20 = v53[v55 + v15];
        }

        else if (v54)
        {
          v20 = v54[v55 + v15];
        }

        else
        {
          if (v58 <= v15 || (v22 = v57, v57 > v15))
          {
            v23 = v15 - 4;
            if (v15 < 4)
            {
              v23 = 0;
            }

            if (v23 + 64 < v56)
            {
              v19 = v23 + 64;
            }

            v57 = v23;
            v58 = v19;
            v60.length = v19 - v23;
            v60.location = v55 + v23;
            CFStringGetCharacters(theString, v60, buffer);
            v22 = v57;
          }

          v20 = buffer[v15 - v22];
        }

        if (v20 >> 10 == 54)
        {
          v12 += 9216 + (v20 << 10);
          v21 = v15 - 1;
          UnicodePropertyDataForPlane = CFUniCharGetUnicodePropertyDataForPlane();
        }

        else
        {
LABEL_44:
          v21 = v15;
        }
      }

      else
      {
        v21 = 0;
      }

      if (!UnicodePropertyDataForPlane)
      {
        break;
      }

      v24 = *(UnicodePropertyDataForPlane + HIBYTE(v12));
      if (v24 >= 0x13)
      {
        v24 = *(UnicodePropertyDataForPlane + (((v24 << 8) - 4864) & 0xFFFFFF00) + v12 + 256);
      }

      if (v24 <= 0x11)
      {
        if (((1 << v24) & 0xC024) != 0)
        {
          v17 = 1;
          goto LABEL_53;
        }

        if (((1 << v24) & 0x30002) != 0)
        {
          break;
        }

        if (v24 == 13)
        {
LABEL_68:
          a2 = v43;
          goto LABEL_69;
        }
      }

LABEL_53:
      if (!v21)
      {
        goto LABEL_68;
      }

      v12 = 0;
      v15 = v21 - 1;
      v25 = v56;
      if (v56 >= v21)
      {
        if (v53)
        {
          v12 = v53[v55 + v15];
        }

        else if (v54)
        {
          v12 = v54[v55 + v15];
        }

        else
        {
          if (v58 < v21 || (v26 = v57, v57 >= v21))
          {
            v27 = v21 - 5;
            if (v21 < 5)
            {
              v27 = 0;
            }

            if (v27 + 64 < v56)
            {
              v25 = v27 + 64;
            }

            v57 = v27;
            v58 = v25;
            v61.length = v25 - v27;
            v61.location = v55 + v27;
            CFStringGetCharacters(theString, v61, buffer);
            v26 = v57;
          }

          v12 = buffer[v15 - v26];
        }
      }
    }

    v17 = 0;
    goto LABEL_53;
  }

  if (CharactersPtr)
  {
    v11 = 0;
    v12 = CharactersPtr[a3 + v10];
  }

  else if (CStringPtr)
  {
    v11 = 0;
    v12 = CStringPtr[a3 + v10];
  }

  else
  {
    v13 = v10 - 4;
    if (v10 < 4)
    {
      v13 = 0;
    }

    v14 = v13 + 64;
    if (v13 + 64 >= a4)
    {
      v14 = a4;
    }

    v57 = v13;
    v58 = v14;
    v59.length = v14 - v13;
    v59.location = a3 + v13;
    CFStringGetCharacters(a1, v59, buffer);
    v11 = v57;
    v12 = buffer[v10 - v57];
  }

  if (v12 >> 10 != 54)
  {
    v43 = a2;
    goto LABEL_24;
  }

  --a2;
  if (v10)
  {
    v15 = v10 - 1;
    v16 = v56;
    v43 = a2;
    if (v56 >= v10)
    {
      if (v53)
      {
        v12 = v53[v55 + v15];
      }

      else if (v54)
      {
        v12 = v54[v55 + v15];
      }

      else
      {
        if (v58 < v10 || v11 >= v10)
        {
          v42 = v10 - 5;
          if (v10 < 5)
          {
            v42 = 0;
          }

          if (v42 + 64 < v56)
          {
            v16 = v42 + 64;
          }

          v57 = v42;
          v58 = v16;
          v64.length = v16 - v42;
          v64.location = v55 + v42;
          CFStringGetCharacters(theString, v64, buffer);
          v11 = v57;
        }

        v12 = buffer[v15 - v11];
      }
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_25;
  }

LABEL_22:
  v17 = -1;
LABEL_69:
  v28 = a2 - a3;
  if (a2 - a3 < a4 && v17 == -1)
  {
    while (1)
    {
      if (v28 < 0 || (v29 = v56, v56 <= v28))
      {
        v30 = 0;
      }

      else if (v53)
      {
        v30 = v53[v55 + v28];
      }

      else if (v54)
      {
        v30 = v54[v55 + v28];
      }

      else
      {
        if (v58 <= v28 || (v35 = v57, v57 > v28))
        {
          v36 = v28 - 4;
          if (v28 < 4)
          {
            v36 = 0;
          }

          if (v36 + 64 < v56)
          {
            v29 = v36 + 64;
          }

          v57 = v36;
          v58 = v29;
          v62.length = v29 - v36;
          v62.location = v55 + v36;
          CFStringGetCharacters(theString, v62, buffer);
          v35 = v57;
        }

        v30 = buffer[v28 - v35];
      }

      v31 = v28 + 1;
      v32 = _NSStringImputedBaseWritingDirectionAtIndex_bidiPropertyBMP;
      if (v28 < -1)
      {
        goto LABEL_105;
      }

      if (v31 >= a4)
      {
        goto LABEL_105;
      }

      if ((v30 & 0xFC00) != 0xD800)
      {
        goto LABEL_105;
      }

      v33 = v56;
      if (v56 <= v31)
      {
        goto LABEL_105;
      }

      if (v53)
      {
        v34 = v53[v55 + v31];
      }

      else if (v54)
      {
        v34 = v54[v55 + v31];
      }

      else
      {
        if (v58 <= v31 || (v37 = v57, v57 > v31))
        {
          v38 = v28 - 3;
          if (v28 < 3)
          {
            v38 = 0;
          }

          if (v38 + 64 < v56)
          {
            v33 = v38 + 64;
          }

          v57 = v38;
          v58 = v33;
          v63.length = v33 - v38;
          v63.location = v55 + v38;
          CFStringGetCharacters(theString, v63, buffer);
          v37 = v57;
        }

        v34 = buffer[v31 - v37];
      }

      if (v34 >> 10 == 55)
      {
        v30 = (v30 << 10) + 9216 + v34;
        v28 += 2;
        v32 = CFUniCharGetUnicodePropertyDataForPlane();
        if (!v32)
        {
          return 0;
        }
      }

      else
      {
LABEL_105:
        ++v28;
        if (!v32)
        {
          return 0;
        }
      }

      v39 = *(v32 + HIBYTE(v30));
      if (v39 >= 0x13)
      {
        LODWORD(v39) = *(v32 + (((v39 << 8) - 4864) & 0xFFFFFF00) + v30 + 256);
      }

      v40 = v39 - 1;
      if (v40 < 0x11 && ((0x1F013u >> v40) & 1) != 0)
      {
        return qword_18E856580[v40];
      }

      if (v28 >= a4)
      {
        return -1;
      }
    }
  }

  return v17;
}

void UIFreeMissingClasses(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    if (a2 >= 1)
    {
      v5 = 0;
      v6 = 1;
      do
      {

        v5 = v6++;
      }

      while (v5 < a2);
    }

    free(v2);
    *a1 = 0;
  }
}

uint64_t UINibDecoderDecodeDictionary(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = (a1[6] + 8 * a1[23]);
  v3 = v2[1];
  if (!v3)
  {
    UINibDecoderDecodeDictionary_cold_1();
  }

  v4 = a2;
  if ((v3 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Invalid NSDictionary in archive. Illegal quantity of Keys and Values"];

    return 0;
  }

  v7 = *v2;
  v8 = v3 >> 1;
  if (v3 < 0x42)
  {
    v9 = v20;
    v10 = v19;
    if (v3 == 1)
    {
      goto LABEL_26;
    }

    v18 = a2;
  }

  else
  {
    v18 = a2;
    v9 = malloc_type_malloc(8 * v8, 0x80040B8603338uLL);
    v10 = malloc_type_malloc(8 * v8, 0x80040B8603338uLL);
  }

  v11 = 0;
  v12 = 0;
  if (v8 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v8;
  }

  for (i = v7 + 2; ; i += 2)
  {
    *&v9[8 * v11] = UINibDecoderDecodeObjectForValue(a1, a1[7] + 8 * (i - 1), *(a1[8] + i - 1));
    v15 = UINibDecoderDecodeObjectForValue(a1, a1[7] + 8 * i, *(a1[8] + i));
    *&v10[8 * v11] = v15;
    if ((v12 & 1) == 0)
    {
      break;
    }

    if (++v11 == v13)
    {
      goto LABEL_24;
    }

    v12 = 1;
LABEL_22:
    ;
  }

  if (*&v9[8 * v11])
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  v12 = v16;
  if (++v11 != v13)
  {
    goto LABEL_22;
  }

  if (v12)
  {
LABEL_24:

    v5 = 0;
    goto LABEL_27;
  }

  v4 = v18;
LABEL_26:
  v5 = [v4 initWithObjects:v10 forKeys:v9 count:v8];
LABEL_27:
  if (v9 != v20)
  {
    free(v9);
  }

  if (v10 != v19)
  {
    free(v10);
  }

  return v5;
}

uint64_t __NSScaledTextOversized(__CFString *a1, unint64_t a2, void *a3, uint64_t a4, void *a5, unint64_t a6, double a7, double a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12)
{
  v33 = 0;
  [a5 setLayout:0];
  v24 = __NSStringDrawingEngine(a1, a3, a4, 0, a5, 0, &v33, a9, a10, a11, a12, 0.0);
  v27 = v26;
  if (a6 == 1)
  {
    v28 = a7 / v25;
    if (a7 / v25 >= a8 / v26)
    {
      v28 = a8 / v26;
    }

    v29 = v28 < 1.0;
  }

  else
  {
    v29 = v26 > a8;
    if (a6)
    {
      v30 = [a5 numberOfLineFragments];
      v29 = v27 > a8 || v30 > a6;
    }

    if (a2 <= 0x200)
    {
      v29 |= v33;
    }
  }

  return v29 & 1;
}

void __NSCoreTypesetterHyphenateLine(uint64_t a1, uint64_t a2, int a3, double *a4, double *a5)
{
  if (*a1)
  {
    CTLineGetStringRange(*a1);
    HyphenatedLineWithOffset = CTLineCreateHyphenatedLineWithOffset();
    if (!HyphenatedLineWithOffset)
    {
      __NSCoreTypesetterHyphenateLine_cold_1();
    }

    v10 = HyphenatedLineWithOffset;
    if (a3)
    {
      if (*(a1 + 80) > 0.0)
      {
        JustifiedLineWithOptions = CTLineCreateJustifiedLineWithOptions();
        if (JustifiedLineWithOptions)
        {
          v12 = JustifiedLineWithOptions;
          CFRelease(v10);
          v10 = v12;
        }
      }
    }

    CFRelease(*a1);
    *a1 = v10;
    if (a4)
    {
      *a4 = CTLineGetTypographicBounds(v10, 0, 0, 0);
    }

    if (a5)
    {
      *a5 = CTLineGetTrailingWhitespaceWidth(*a1);
    }
  }
}

Class initUIImage()
{
  __NSGetFrameworkReference(0, 0);
  result = objc_getClass("UIImage");
  classUIImage = result;
  if (!result)
  {
    initUIImage_cold_1();
  }

  getUIImageClass[0] = UIImageFunction;
  return result;
}

Class initUIImage_0()
{
  __NSGetFrameworkReference(0, 0);
  result = objc_getClass("UIImage");
  classUIImage_0 = result;
  if (!result)
  {
    initUIImage_cold_1_0();
  }

  getUIImageClass_0[0] = UIImageFunction_0;
  return result;
}

double __NSTextAttachmentLayoutInfoGetAscent(void *a1)
{
  [a1 _queryLayout];
  v2 = a1[9];
  v3 = a1[10];
  v4 = a1[11];
  v5 = a1[12];

  return CGRectGetMaxY(*&v2);
}

double __NSTextAttachmentLayoutInfoGetWidth(void *a1)
{
  [a1 _queryLayoutWithHorizontalOffset:?];
  v2 = a1[9];
  v3 = a1[10];
  v4 = a1[11];
  v5 = a1[12];

  return CGRectGetWidth(*&v2);
}

double __NSCoreTypesetterAdjustLineHeightAndBaselineForTextAttachments(const __CTLine *a1, double *a2, double *a3)
{
  GlyphRuns = CTLineGetGlyphRuns(a1);
  Count = CFArrayGetCount(GlyphRuns);
  v7 = *a3;
  v8 = *a3 - *a2;
  if (Count >= 1)
  {
    v9 = Count;
    v10 = 0;
    v11 = 0;
    v12 = *MEMORY[0x1E6965A50];
    v13 = *MEMORY[0x1E6965628];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, v11);
      if (CTRunGetStringRange(ValueAtIndex).length == 1)
      {
        Attributes = CTRunGetAttributes(ValueAtIndex);
        if (CFDictionaryGetValue(Attributes, v12) || CFDictionaryGetValue(Attributes, v13))
        {
          descent = 0.0;
          ascent = 0.0;
          v20.location = 0;
          v20.length = 0;
          CTRunGetTypographicBounds(ValueAtIndex, v20, &ascent, &descent, 0);
          v16 = (ascent > v7) | v10;
          if (ascent > v7)
          {
            v7 = ascent;
          }

          if (v8 > -descent)
          {
            v10 = 1;
          }

          else
          {
            v10 = v16;
          }

          if (v8 > -descent)
          {
            v8 = -descent;
          }
        }
      }

      ++v11;
    }

    while (v9 != v11);
  }

  *a3 = v7;
  result = v7 - v8;
  *a2 = v7 - v8;
  return result;
}

id __NSCreateNormalizedLanguage(CFStringRef localeIdentifier)
{
  v1 = *MEMORY[0x1E695E480];
  CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(*MEMORY[0x1E695E480], localeIdentifier);
  ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(v1, CanonicalLocaleIdentifierFromString);
  v4 = ComponentsFromLocaleIdentifier;
  if (!ComponentsFromLocaleIdentifier || (Value = CFDictionaryGetValue(ComponentsFromLocaleIdentifier, *MEMORY[0x1E695E6F0])) == 0)
  {
    v6 = 0;
    if (!CanonicalLocaleIdentifierFromString)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = Value;
  if (CanonicalLocaleIdentifierFromString)
  {
LABEL_6:
    CFRelease(CanonicalLocaleIdentifierFromString);
  }

LABEL_7:
  if (v4)
  {
    CFRelease(v4);
  }

  return v6;
}

void _NSDisposeBreakIterator(unint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = defaultBreakLanguage();
    v7 = v6;
    if (v6 == v5)
    {
    }

    else
    {
      v8 = defaultBreakLanguage();
      v9 = [v8 isEqualToString:v5];

      if (!v9)
      {
        goto LABEL_7;
      }
    }
  }

  ubrk_setText();
  v10 = 0;
  atomic_compare_exchange_strong_explicit(&__NSDefaultBreakers[a3], &v10, a1, memory_order_relaxed, memory_order_relaxed);
  if (v10)
  {
LABEL_7:
    ubrk_close();
  }
}

id defaultBreakLanguage()
{
  if (defaultBreakLanguage_onceToken != -1)
  {
    defaultBreakLanguage_cold_1();
  }

  v1 = defaultBreakLanguage_result;

  return v1;
}

uint64_t __shouldUseHangulWordPriorityWithLineBreakStrategy_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v0 objectForKey:@"NSForceHangulWordBreakPriority"];

  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v1 = [v3 unsignedIntegerValue];
    }

    else
    {
      v1 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v1 = 0x7FFFFFFFFFFFFFFFLL;
  }

  shouldUseHangulWordPriorityWithLineBreakStrategy_hangulWordBreakPriorityDefault = v1;

  return MEMORY[0x1EEE66BB8]();
}

void __defaultBreakLanguage_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 stringForKey:@"AppleTextBreakLocale"];
  v2 = defaultBreakLanguage_result;
  defaultBreakLanguage_result = v1;

  if (defaultBreakLanguage_result)
  {
    v3 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:?];
  }

  else
  {
    v4 = [MEMORY[0x1E695DF58] currentLocale];
    v5 = [v4 languageIdentifier];
    v6 = defaultBreakLanguage_result;
    defaultBreakLanguage_result = v5;

    if (defaultBreakLanguage_result)
    {
      return;
    }

    v3 = @"en_US";
  }

  defaultBreakLanguage_result = v3;

  MEMORY[0x1EEE66BB8]();
}

uint64_t __NSTokenizerLanguageSet()
{
  result = __tokenizerLanguageSet;
  if (!__tokenizerLanguageSet)
  {
    if (_createTokenizerLanguageSet_onceToken != -1)
    {
      __NSTokenizerLanguageSet_cold_1();
    }

    return __tokenizerLanguageSet;
  }

  return result;
}

uint64_t __NSShouldUseTokenizerForPushOut(const __CFString *a1)
{
  v2 = __NSTokenizerLanguageSet();
  v3 = 0;
  if (a1)
  {
    v4 = v2;
    if (v2)
    {
      v5 = __NSCreateNormalizedLanguage(a1);
      if (v5)
      {
        v3 = [v4 containsObject:v5];
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

void ___createTokenizerLanguageSet_block_invoke()
{
  if (!__tokenizerLanguageSet)
  {
    __tokenizerLanguageSet = [MEMORY[0x1E695DFD8] setWithObjects:{@"zh", @"ja", 0}];
  }
}

uint64_t __NSTextContentStorageQueryDocumentLocationDeltaForLocation(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 128);
  if (!v3)
  {
    return 0;
  }

  v5 = *(a1 + 120);
  if (v5 + v3 <= a2)
  {
    return *(a1 + 136);
  }

  if (v5 > a2)
  {
    return 0;
  }

  if (a3)
  {
    result = *(a3 + 568);
    if (result != 0x7FFFFFFFFFFFFFFFLL)
    {
      return result;
    }
  }

  v11 = a2;
  v12 = 0;
  if (v5 >= a2)
  {
    return 0;
  }

  for (i = a2 - 1; ; --i)
  {
    v9 = [*(a1 + 88) elementAtIndex:i effectiveRange:&v11];
    if (v9)
    {
      v10 = *(v9 + 8);
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }
    }

    if (v11 <= *(a1 + 120))
    {
      return 0;
    }
  }

  result = *(v9 + 16) + v10 - (v11 + v12);
  if (a3)
  {
    *(a3 + 568) = result;
  }

  return result;
}

void __defaultTabStops_block_invoke()
{
  v4 = [objc_allocWithZone(MEMORY[0x1E695DF70]) initWithCapacity:12];
  v0 = 1;
  v1 = MEMORY[0x1E695E0F8];
  do
  {
    objc_opt_class();
    v2 = __NSTextTabAllocMarkerInstance;
    if (!__NSTextTabAllocMarkerInstance)
    {
      v2 = [NSTextTab alloc];
    }

    v3 = [(NSTextTab *)v2 initWithTextAlignment:0 location:v1 options:v0 * 28.0];
    [v4 addObject:v3];

    ++v0;
  }

  while (v0 != 13);
  defaultTabStops_array = [v4 copyWithZone:0];
}

uint64_t _UIFoundationAssert(void *a1, void *a2, int a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if (_UIFoundationAssert_onceToken == -1)
  {
    if (a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    _UIFoundationAssert_cold_1();
    if (a3)
    {
      goto LABEL_9;
    }
  }

  v10 = v9[2](v9, v7);
  if (![v10 length])
  {
    v20 = v8;
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Assertion failure"];

    v10 = v11;
  }

  if (_UIFoundationAssert_raise == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%@", v10}];
  }

  else
  {
    v12 = [v8 UTF8String];
    v13 = [v10 UTF8String];
    __UIFoundationWriteLog(v12, OS_LOG_TYPE_DEBUG, v13, v14, v15, v16, v17, v18, v20);
  }

LABEL_9:
  return a3 ^ 1u;
}

uint64_t __NSTextContentStorageFlushUncachedTextElements(NSUInteger a1, uint64_t a2, char a3)
{
  v3 = *(a2 + 536);
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v7 = *(a2 + 576);
  v8 = *(a2 + 577);
  if (a3)
  {
    if (!*(a2 + 576))
    {
      goto LABEL_10;
    }

LABEL_8:
    v48 = (a2 + 24);
    goto LABEL_11;
  }

  if (*(a2 + 576))
  {
    if (v3 > 63)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    return 0;
  }

LABEL_10:
  v48 = (a2 + 8 * v3 + 32);
  v3 = 63 - v3;
LABEL_11:
  v9 = (a2 + 536);
  if (v3 >= 1)
  {
    v47 = *(a2 + 576);
    v10 = *(a2 + 544);
    v11 = *(a1 + 104);
    v12 = *(a1 + 112);
    v13 = v10 < v11 || v10 - v11 >= v12;
    v14 = 0x1EAC99000uLL;
    if (v13)
    {
      if (v10 < v11)
      {
        v15 = 0;
      }

      else
      {
        v15 = [*(a1 + 96) count];
        if (v15)
        {
          v12 = 0;
          v11 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = *(a1 + 104);
          v12 = *(a1 + 112);
        }
      }
    }

    else
    {
      v45 = *(a2 + 552);
      v46 = v10;
      v50 = 0uLL;
      v16 = *(a1 + 88);
      _NSBlockNumberForIndex(v16, v10, &v50);
      v18 = 0;
      if (v16[11] <= v17)
      {
        v18 = v16[4] - v16[3];
      }

      v19 = *(v16[7] + (v16[2] + 8) * (v18 + v17) + 8);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = 0x7FFFFFFFFFFFFFFFLL;
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = ____NSTextContentStorageCacheElementIndexRange_block_invoke;
      v56[3] = &__block_descriptor_48_e18___NSString_16__0_8l;
      v56[4] = v46;
      v56[5] = v45;
      _UIFoundationAssert(a1, v21, v19 == 0x7FFFFFFFFFFFFFFFLL, v56);
      if (v19 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = (a2 + 536);
LABEL_42:
        v7 = v47;
        goto LABEL_43;
      }

      v23 = v50.n128_u64[0];
      if (v50.n128_u64[0])
      {
        do
        {
          v50.n128_u64[0] = v23 - 1;
          v24 = *(a1 + 88);
          _NSBlockNumberForIndex(v24, v23 - 1, &v50);
          if (v24[11] <= v25)
          {
            v26 = v24[4] - v24[3];
          }

          else
          {
            v26 = 0;
          }

          v22 = *(v24[7] + (v24[2] + 8) * (v26 + v25) + 8);
          v23 = v50.n128_u64[0];
        }

        while (v22 == 0x7FFFFFFFFFFFFFFFLL && v50.n128_u64[0] != 0);
      }

      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = ____NSTextContentStorageCacheElementIndexRange_block_invoke_2;
      v55[3] = &__block_descriptor_48_e18___NSString_16__0_8l;
      v55[4] = v46;
      v55[5] = v45;
      _UIFoundationAssert(a1, v29, v22 != 0x7FFFFFFFFFFFFFFFLL, v55);
      v15 = v22 + 1;
      v11 = v45 + v46;
      v12 = *(a1 + 104) - (v45 + v46) + *(a1 + 112);
      v14 = 0x1EAC99000;
    }

    [*(a1 + *(v14 + 3744)) insertElements:0 count:v3 atIndex:v15];
    v50.n128_u64[0] = MEMORY[0x1E69E9820];
    v50.n128_u64[1] = 3221225472;
    v51 = ____NSTextContentStorageCacheElementIndexRange_block_invoke_3;
    v52 = &__block_descriptor_48_e24_v32__0__8__NSRange_QQ_16l;
    v53 = v48;
    v54 = v15;
    __NSTextContentStorageEnumerateCachedElementsInElementIndexRange(a1, v15, v3, &v50);
    v30 = [*(a1 + 88) count];
    v31 = [objc_msgSend(a1 "attributedString")];
    v32.f64[0] = NAN;
    v32.f64[1] = NAN;
    v49[0] = vnegq_f64(v32);
    v49[1] = xmmword_18E856290;
    if (v31 > v30)
    {
      [*(a1 + 88) insertElement:v49 range:v30 coalesceRuns:{v31 - v30, 1}];
    }

    __NSTextContentStorageUpdateElementIndexRangeForRange(a1, v48, v3, v15, v11, v12, v3);
    v33 = [*(a1 + *(v14 + 3744)) count];
    if (v33 && (v34 = v33, v33 <= [*(a1 + *(v14 + 3744)) count]))
    {
      v40 = [objc_msgSend(*objc_msgSend(*(a1 + *(v14 + 3744)) elementAtIndex:{0), "elementRange"), "range"}];
      v41 = v14;
      location = v40;
      length = v42;
      if (v34 != 1)
      {
        v58.location = [objc_msgSend(*objc_msgSend(*(a1 + *(v41 + 3744)) elementAtIndex:{v34 - 1), "elementRange"), "range"}];
        v58.length = v43;
        v57.location = location;
        v57.length = length;
        v44 = NSUnionRange(v57, v58);
        location = v44.location;
        length = v44.length;
      }
    }

    else
    {
      length = 0;
      location = 0x7FFFFFFFFFFFFFFFLL;
    }

    v9 = (a2 + 536);
    *(a1 + 104) = location;
    *(a1 + 112) = length;
    goto LABEL_42;
  }

LABEL_43:
  v37 = [a1 maximumNumberOfUncachedElements];
  if (v37)
  {
    v38 = v37;
  }

  else
  {
    v38 = -1;
  }

  *a2 = 0;
  *(a2 + 8) = 0x7FFFFFFFFFFFFFFFLL;
  bzero((a2 + 16), 0x208uLL);
  v39.f64[0] = NAN;
  v39.f64[1] = NAN;
  *v9 = vnegq_f64(v39);
  *(a2 + 552) = 0;
  *(a2 + 560) = v38;
  *(a2 + 568) = 0x7FFFFFFFFFFFFFFFLL;
  *(a2 + 576) = v7;
  *(a2 + 577) = v8;
  *(a2 + 578) = 0;
  *(a2 + 582) = 0;
  return 1;
}

void _replaceElements(uint64_t a1, NSRange range1, NSUInteger a3, const void *a4, int a5)
{
  length = range1.length;
  location = range1.location;
  v143 = *MEMORY[0x1E69E9840];
  if (_NSConsistencyCheckEnabled == 1)
  {
    [a1 _consistencyCheck:0];
  }

  if (a3 && !a4)
  {
    v11 = @"*** NSRunStorage (%p), _replaceElements(): no new element was given with a non-zero new length.";
LABEL_9:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{v11, a1}];
    goto LABEL_10;
  }

  if (!a3 && a4)
  {
    v11 = @"*** NSRunStorage (%p), _replaceElements(): a new element was given with a new length of zero.";
    goto LABEL_9;
  }

LABEL_10:
  v12 = location + length;
  v13 = *(a1 + 8);
  if (location + length > v13)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"*** NSRunStorage (%p), _replaceElements(): replaced range {%lu, %lu} extends beyond current run storage size %lu.", a1, location, length, v13}];
    v13 = *(a1 + 8);
  }

  if (__CFADD__(length, location))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"*** NSRunStorage (%p), _replaceElements(): replaced range {%llu, %llu} extends beyond current run storage size %llu and suffers from unsigned integer overflow.", a1, location, length, v13}];
    v13 = *(a1 + 8);
  }

  v141 = 0;
  v140 = 0uLL;
  v138 = a4;
  if (location >= v13)
  {
    v16 = *(a1 + 24);
    if (v16)
    {
      v17 = v16 - 1;
      if (*(a1 + 88) <= (v16 - 1))
      {
        v18 = *(a1 + 32) - v16;
      }

      else
      {
        v18 = 0;
      }

      v21 = *(*(a1 + 56) + (*(a1 + 16) + 8) * (v18 + v17));
      if (v17 >= *(a1 + 40))
      {
        v21 += *(a1 + 48);
      }

      v20 = v13 - v21;
    }

    else
    {
      v20 = 0;
      v21 = 0x7FFFFFFFFFFFFFFFLL;
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v23 = 0;
    v24 = 0;
    v19 = 0;
    v25.length = 0;
    v25.location = 0x7FFFFFFFFFFFFFFFLL;
    v15 = *(a1 + 24);
LABEL_64:
    v26 = 0x7FFFFFFFFFFFFFFFLL;
    v139 = v15;
    if (!v16 || (v36 = *(a1 + 40), v36 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v37 = 1;
      goto LABEL_90;
    }

    v38 = v16 - 1;
    if (v36 <= v16 - 1)
    {
      v39 = *(a1 + 56);
      do
      {
        v40 = *(a1 + 48);
        *(a1 + 40) = v36 + 1;
        if (*(a1 + 88) <= v36)
        {
          v41 = *(a1 + 32) - *(a1 + 24);
        }

        else
        {
          v41 = 0;
        }

        v42 = (*(a1 + 16) + 8) * (v41 + v36);
        *(v39 + v42) += v40;
        v36 = *(a1 + 40);
      }

      while (v36 <= v38);
      v16 = *(a1 + 24);
    }

    v26 = 0x7FFFFFFFFFFFFFFFLL;
    v43 = 1;
    v37 = 1;
    if (v36 != v16)
    {
      goto LABEL_90;
    }

LABEL_89:
    *(a1 + 40) = 0x7FFFFFFFFFFFFFFFLL;
    *(a1 + 48) = 0;
    v37 = v43;
    goto LABEL_90;
  }

  _NSBlockNumberForIndex(a1, location, &v141);
  v15 = v14;
  if (length)
  {
    _NSBlockNumberForIndex(a1, v12 - 1, &v140);
  }

  else
  {
    v140 = v141;
  }

  v19 = v141.location < location;
  if (v141.location >= location)
  {
    if (v15)
    {
      v17 = v15 - 1;
      if (*(a1 + 88) <= v15 - 1)
      {
        v22 = *(a1 + 32) - *(a1 + 24);
      }

      else
      {
        v22 = 0;
      }

      v21 = *(*(a1 + 56) + (*(a1 + 16) + 8) * (v22 + v17));
      if (v17 >= *(a1 + 40))
      {
        v21 += *(a1 + 48);
      }

      v20 = v141.location - v21;
    }

    else
    {
      v20 = 0;
      v21 = 0x7FFFFFFFFFFFFFFFLL;
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v20 = v141.length;
    v17 = v15++;
    v21 = v141.location;
  }

  v25 = v140;
  if (v140.n128_u64[1] + v140.n128_u64[0] > v12)
  {
    v24 = v12 != v140.n128_u64[0];
    v26 = v14;
    goto LABEL_59;
  }

  v16 = *(a1 + 24);
  v26 = v14 + 1;
  if (v14 >= v16 - 1)
  {
    v24 = 0;
    v25.length = 0;
    if (v26 >= v15)
    {
      v23 = v26 - v15;
    }

    else
    {
      v23 = 0;
    }

    v25.location = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_64;
  }

  v27 = *(a1 + 56);
  v28 = *(a1 + 88);
  if (v28 <= v26)
  {
    v29 = *(a1 + 32) - v16;
  }

  else
  {
    v29 = 0;
  }

  v30 = v29 + v26;
  v31 = *(a1 + 16) + 8;
  v25.location = *(v27 + v31 * v30);
  v32 = *(a1 + 40);
  if (v26 >= v32)
  {
    v25.location += *(a1 + 48);
  }

  if (v26 >= v16 - 1)
  {
    v24 = 0;
    v35 = *(a1 + 8);
  }

  else
  {
    v33 = v14 + 2;
    if (v28 <= v14 + 2)
    {
      v34 = *(a1 + 32) - v16;
    }

    else
    {
      v34 = 0;
    }

    v35 = *(v27 + (v34 + v33) * v31);
    if (v33 >= v32)
    {
      v35 += *(a1 + 48);
    }

    v24 = 0;
  }

  v25.length = v35 - v25.location;
LABEL_59:
  if (v26 >= v15)
  {
    v23 = v26 - v15;
  }

  else
  {
    v23 = 0;
  }

  if (v26 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = *(a1 + 24);
    goto LABEL_64;
  }

  v44 = *(a1 + 24);
  if (v26 + 1 >= v44)
  {
    v45 = v26;
  }

  else
  {
    v45 = v26 + 1;
  }

  v46 = *(a1 + 40);
  v139 = v15;
  if (v46 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v37 = 0;
    goto LABEL_90;
  }

  if (v46 <= v45)
  {
    v47 = *(a1 + 56);
    do
    {
      v48 = *(a1 + 48);
      *(a1 + 40) = v46 + 1;
      if (*(a1 + 88) <= v46)
      {
        v49 = *(a1 + 32) - *(a1 + 24);
      }

      else
      {
        v49 = 0;
      }

      v50 = (*(a1 + 16) + 8) * (v49 + v46);
      *(v47 + v50) += v48;
      v46 = *(a1 + 40);
    }

    while (v46 <= v45);
    v44 = *(a1 + 24);
  }

  v43 = 0;
  v37 = 0;
  if (v46 == v44)
  {
    goto LABEL_89;
  }

LABEL_90:
  range1a = length;
  v137 = a3 - length;
  if (v19)
  {
    v20 = location - v21;
  }

  v51 = 0x7FFFFFFFFFFFFFFFLL;
  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v52 = 0;
  }

  else
  {
    v52 = v20;
  }

  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v53 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v53 = v21;
  }

  if (v37)
  {
    v25.length = 0;
  }

  else if (v24)
  {
    v127 = v53;
    v54 = v52;
    v144.location = location;
    v129 = v24;
    v131 = v23;
    v55 = v19;
    v51 = location + a3;
    v144.length = range1a;
    v25.length -= NSIntersectionRange(v144, v25).length;
    if (v26 == v17)
    {
      v19 = v55;
      v115 = !v55;
      v52 = v54;
      if (v115)
      {
        v56 = 0;
      }

      else
      {
        v56 = v54;
      }

      v25.length -= v56;
      v23 = v131;
      v24 = v129;
    }

    else
    {
      v19 = v55;
      v23 = v131;
      v24 = v129;
      v52 = v54;
    }

    v53 = v127;
  }

  else
  {
    v51 = v25.location + v137;
  }

  v134 = v51;
  v135 = a3;
  if (!a5)
  {
    p_prots = (&OBJC_PROTOCOL___NSTextElementProvider + 16);
    v60 = range1a;
    v61 = v138;
    goto LABEL_192;
  }

  v141 = 0;
  v142 = 0;
  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v57 = 0;
    p_length = &v141;
  }

  else
  {
    p_length = &v141.length;
    if (*(a1 + 88) <= v17)
    {
      v62 = *(a1 + 32) - *(a1 + 24);
    }

    else
    {
      v62 = 0;
    }

    v141.location = *(a1 + 56) + (*(a1 + 16) + 8) * (v62 + v17) + 8;
    v57 = 1;
  }

  if (v138)
  {
    ++v57;
    p_length->location = v138;
  }

  if ((v37 & 1) == 0)
  {
    if (*(a1 + 88) <= v26)
    {
      v63 = *(a1 + 32) - *(a1 + 24);
    }

    else
    {
      v63 = 0;
    }

    *(&v141.location + v57++) = *(a1 + 56) + (*(a1 + 16) + 8) * (v63 + v26) + 8;
  }

  if (v57 == 3)
  {
    range2 = v25.length;
    v130 = v24;
    v133 = v23;
    v128 = v19;
    v69 = v141.length;
    v70 = *(a1 + 16);
    if (!memcmp(v141.location, v141.length, v70))
    {
      v146.location = location;
      v146.length = v135;
      v151.location = v53;
      v151.length = v52;
      v73 = NSUnionRange(v146, v151);
      location = v73.location;
      v72 = v73.length;
      v128 = 0;
      --v139;
      ++v133;
      v70 = *(a1 + 16);
      if (v17)
      {
        v71 = v17 - 1;
      }

      else
      {
        v71 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v71 = v17;
      v72 = v135;
    }

    if (memcmp(v69, v142, v70))
    {
      v68 = location;
      v17 = v71;
      p_prots = (&OBJC_PROTOCOL___NSTextElementProvider + 16);
      v60 = range1a;
      v61 = v138;
      v19 = v128;
      v23 = v133;
      v24 = v130;
      goto LABEL_191;
    }

    v147.location = location;
    v147.length = v72;
    v152.location = v51;
    v152.length = range2;
    v75 = NSUnionRange(v147, v152);
    v74 = v75.length;
    v68 = v75.location;
    v23 = v133;
    if (v17 != v26)
    {
      v23 = v133 + 1;
    }

    ++v26;
    v76 = *(a1 + 24);
    if (v26 >= v76)
    {
      v24 = 0;
      v134 = 0x7FFFFFFFFFFFFFFFLL;
      v26 = 0x7FFFFFFFFFFFFFFFLL;
      v17 = v71;
LABEL_157:
      p_prots = (&OBJC_PROTOCOL___NSTextElementProvider + 16);
      v60 = range1a;
      goto LABEL_158;
    }

    v17 = v71;
    location = v75.location;
LABEL_148:
    p_prots = &OBJC_PROTOCOL___NSTextElementProvider.prots;
    v60 = range1a;
    goto LABEL_149;
  }

  if (v57 == 2)
  {
    v64 = v53;
    v65 = v52;
    v66 = v25.length;
    v67 = v24;
    v132 = v23;
    v128 = v19;
    if (memcmp(v141.location, v141.length, *(a1 + 16)))
    {
      v68 = location;
      p_prots = (&OBJC_PROTOCOL___NSTextElementProvider + 16);
      v60 = range1a;
      v61 = v138;
      v19 = v128;
LABEL_128:
      v23 = v132;
LABEL_138:
      v24 = v67;
      goto LABEL_191;
    }

    if (v138 && v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v145.location = location;
      v145.length = a3;
      v150.location = v64;
      v150.length = v65;
      v68 = NSUnionRange(v145, v150).location;
      v19 = 0;
      v61 = v138;
      --v139;
      v23 = v132 + 1;
      if (v17)
      {
        --v17;
      }

      else
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      p_prots = (&OBJC_PROTOCOL___NSTextElementProvider + 16);
      v60 = range1a;
      goto LABEL_138;
    }

    if (v138 && v26 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v148.location = location;
      v148.length = a3;
      v153.location = v51;
      v153.length = v66;
      v78 = NSUnionRange(v148, v153);
      v74 = v78.length;
      v68 = v78.location;
      v23 = v132 + 1;
      ++v26;
      v76 = *(a1 + 24);
      v60 = range1a;
      if (v26 < v76)
      {
        location = v78.location;
        p_prots = (&OBJC_PROTOCOL___NSTextElementProvider + 16);
LABEL_149:
        v19 = v128;
        v134 = v68 + v74;
        if (v26 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v77 = *(a1 + 40);
          v61 = v138;
          if (v77 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v24 = 0;
            v68 = location;
            v26 = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_191;
          }

          v86 = v76 - 1;
          if (v77 <= v76 - 1)
          {
            v87 = *(a1 + 56);
            do
            {
              v88 = *(a1 + 48);
              *(a1 + 40) = v77 + 1;
              if (*(a1 + 88) <= v77)
              {
                v89 = *(a1 + 32) - *(a1 + 24);
              }

              else
              {
                v89 = 0;
              }

              v90 = (*(a1 + 16) + 8) * (v89 + v77);
              *(v87 + v90) += v88;
              v77 = *(a1 + 40);
            }

            while (v77 <= v86);
            v76 = *(a1 + 24);
          }

          v24 = 0;
          if (v77 == v76)
          {
            *(a1 + 40) = xmmword_18E856180;
          }

          v26 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          if (v26 + 1 >= v76)
          {
            v79 = v26;
          }

          else
          {
            v79 = v26 + 1;
          }

          v80 = *(a1 + 40);
          v61 = v138;
          if (v80 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_172;
          }

          if (v80 <= v79)
          {
            v81 = *(a1 + 56);
            do
            {
              v82 = *(a1 + 48);
              *(a1 + 40) = v80 + 1;
              if (*(a1 + 88) <= v80)
              {
                v83 = *(a1 + 32) - *(a1 + 24);
              }

              else
              {
                v83 = 0;
              }

              v84 = (*(a1 + 16) + 8) * (v83 + v80);
              *(v81 + v84) += v82;
              v80 = *(a1 + 40);
            }

            while (v80 <= v79);
            v76 = *(a1 + 24);
          }

          if (v80 != v76)
          {
LABEL_172:
            v24 = 0;
          }

          else
          {
            v24 = 0;
            *(a1 + 40) = xmmword_18E856180;
          }
        }

        v68 = location;
        goto LABEL_191;
      }

      v24 = 0;
      v134 = 0x7FFFFFFFFFFFFFFFLL;
      v26 = 0x7FFFFFFFFFFFFFFFLL;
      p_prots = (&OBJC_PROTOCOL___NSTextElementProvider + 16);
LABEL_158:
      v61 = v138;
      v19 = v128;
      goto LABEL_191;
    }

    v19 = v128;
    if (v26 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v68 = location;
      p_prots = (&OBJC_PROTOCOL___NSTextElementProvider + 16);
      v60 = range1a;
      v61 = v138;
      goto LABEL_128;
    }

    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = v67;
      v68 = location;
      p_prots = (&OBJC_PROTOCOL___NSTextElementProvider + 16);
      v60 = range1a;
      v61 = v138;
      v23 = v132;
      goto LABEL_191;
    }

    v149.location = v64;
    v149.length = v65;
    v154.location = v51;
    v154.length = v66;
    v85 = NSUnionRange(v149, v154);
    v74 = v85.length;
    v68 = v85.location;
    v23 = v132;
    if (v17 != v26)
    {
      v23 = v132 + 1;
    }

    ++v26;
    v76 = *(a1 + 24);
    if (v26 >= v76)
    {
      v24 = 0;
      v134 = 0x7FFFFFFFFFFFFFFFLL;
      v68 = location;
      v26 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_157;
    }

    goto LABEL_148;
  }

  v68 = location;
  p_prots = (&OBJC_PROTOCOL___NSTextElementProvider + 16);
  v60 = range1a;
  v61 = v138;
LABEL_191:
  location = v68;
LABEL_192:
  v91 = 1;
  if (v61)
  {
    v91 = 2;
  }

  if (v19 && v24 && v17 == v26)
  {
    v92 = v91;
  }

  else
  {
    v92 = v61 != 0;
  }

  v93 = v92 - v23;
  if (v92 <= v23)
  {
    if (v92 < v23)
    {
      v98 = v23 - v92;
      [a1 _moveGapAndMergeWithBlockRange:{v92 + v139, v23 - v92}];
      v99 = *(a1 + 40);
      if (v99 != 0x7FFFFFFFFFFFFFFFLL)
      {
        *(a1 + 40) = v99 - v98;
      }

      if (v26 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v26 -= v98;
      }
    }
  }

  else
  {
    v94 = v60;
    v95 = p_prots;
    v96 = v23;
    [a1 _ensureCapacity:{*(a1 + 24) + v93, v25.length}];
    [a1 _moveGapToBlockIndex:v96 + v139];
    *(a1 + 24) += v93;
    *(a1 + 88) += v93;
    v97 = *(a1 + 40);
    if (v97 != 0x7FFFFFFFFFFFFFFFLL)
    {
      *(a1 + 40) = v97 + v93;
    }

    if (v26 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v26 += v93;
    }

    p_prots = v95;
    v60 = v94;
  }

  if (v92 != 1)
  {
    if (v92 == 2)
    {
      v100 = v135;
      if (*(a1 + 88) <= v139)
      {
        v101 = *(a1 + 32) - *(a1 + 24);
      }

      else
      {
        v101 = 0;
      }

      v105 = (*(a1 + 56) + (*(a1 + 16) + 8) * (v101 + v139));
      *v105 = location;
      memmove(v105 + 1, v61, *(a1 + 16));
      v102 = *(a1 + 56);
      if (*(a1 + 88) <= v139 + 1)
      {
        v106 = *(a1 + 32) - *(a1 + 24);
      }

      else
      {
        v106 = 0;
      }

      v107 = v106 + v139 + 1;
LABEL_232:
      v111 = (v102 + (*(a1 + 16) + 8) * v107);
      *v111 = v134;
      v112 = v111 + 1;
      if (*(a1 + 88) <= v17)
      {
        v113 = *(a1 + 32) - *(a1 + 24);
      }

      else
      {
        v113 = 0;
      }

      memmove(v112, (v102 + (*(a1 + 16) + 8) * (v113 + v17) + 8), *(a1 + 16));
      goto LABEL_236;
    }

    v100 = v135;
    if (v26 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_236;
    }

LABEL_226:
    if (*(a1 + 88) <= v26)
    {
      v110 = *(a1 + 32) - *(a1 + 24);
    }

    else
    {
      v110 = 0;
    }

    *(*(a1 + 56) + (*(a1 + 16) + 8) * (v110 + v26)) = v134;
    goto LABEL_236;
  }

  v102 = *(a1 + 56);
  v103 = *(a1 + 88);
  if (!v61)
  {
    if (v103 <= v139)
    {
      v108 = *(a1 + 32) - *(a1 + 24);
    }

    else
    {
      v108 = 0;
    }

    v100 = v135;
    v107 = v108 + v139;
    goto LABEL_232;
  }

  if (v103 <= v139)
  {
    v104 = *(a1 + 32) - *(a1 + 24);
  }

  else
  {
    v104 = 0;
  }

  v100 = v135;
  v109 = (v102 + (*(a1 + 16) + 8) * (v104 + v139));
  *v109 = location;
  memmove(v109 + 1, v61, *(a1 + 16));
  if (v26 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_226;
  }

LABEL_236:
  v114 = *(a1 + 40);
  v115 = v100 == v60 || v26 == 0x7FFFFFFFFFFFFFFFLL;
  v116 = !v115;
  if (v114 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!v116 || v26 + 1 >= *(a1 + 24))
    {
      goto LABEL_259;
    }

    *(a1 + 40) = v26 + 1;
    goto LABEL_257;
  }

  if (!v116)
  {
    goto LABEL_259;
  }

  v117 = v26 + 1;
  v118 = *(a1 + 24);
  if (v26 + 1 >= v118)
  {
    goto LABEL_259;
  }

  if (v114 != v117)
  {
    v120 = v118 - 1;
    if (v114 <= v120)
    {
      v121 = *(a1 + 56);
      do
      {
        v122 = *(a1 + 48);
        *(a1 + 40) = v114 + 1;
        if (*(a1 + 88) <= v114)
        {
          v123 = *(a1 + 32) - *(a1 + 24);
        }

        else
        {
          v123 = 0;
        }

        v124 = (*(a1 + 16) + 8) * (v123 + v114);
        *(v121 + v124) += v122;
        v114 = *(a1 + 40);
      }

      while (v114 <= v120);
    }

    *(a1 + 40) = v117;
LABEL_257:
    v119 = v137;
    goto LABEL_258;
  }

  v119 = *(a1 + 48) + v137;
LABEL_258:
  *(a1 + 48) = v119;
LABEL_259:
  *(a1 + 8) += v137;
  v125.f64[0] = NAN;
  v125.f64[1] = NAN;
  *(a1 + 64) = vnegq_f64(v125);
  *(a1 + 80) = 0;
  if (*(p_prots + 2600) == 1)
  {
    [a1 _consistencyCheck:1];
  }
}

void __NSTextContentStorageUpdateElementIndexRangeForRange(uint64_t a1, id *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v26 = vnegq_f64(v11);
  *&v27 = 0;
  *(&v27 + 1) = 1;
  if (a3 >= 1)
  {
    v13 = a2;
    v14 = &a2[a3];
    do
    {
      v15 = [objc_msgSend(*v13 "elementRange")];
      v17 = v16;
      *&v26.f64[0] = a4;
      v18 = *v13++;
      BYTE8(v27) = [v18 coalescingType];
      [*(a1 + 88) replaceElementsInRange:v15 withElement:v17 coalesceRuns:{&v26, 0}];
      ++a4;
    }

    while (v13 < v14);
  }

  if (a6)
  {
    v25 = 0uLL;
    v19 = a5 + a6;
    if (a5 < a5 + a6)
    {
      do
      {
        v20 = *(a1 + 88);
        _NSBlockNumberForIndex(v20, a5, &v25);
        if (v20[11] <= v21)
        {
          v22 = v20[4] - v20[3];
        }

        else
        {
          v22 = 0;
        }

        v23 = v20[7] + (v20[2] + 8) * (v22 + v21);
        v24 = *(v23 + 24);
        v26 = *(v23 + 8);
        v27 = v24;
        if (*&v26.f64[0] != 0x7FFFFFFFFFFFFFFFLL)
        {
          *&v26.f64[0] += a7;
          [*(a1 + 88) replaceElementsInRange:*&v25 withElement:&v26 coalesceRuns:0];
        }

        a5 = v25.n128_u64[1] + v25.n128_u64[0];
      }

      while (v25.n128_u64[1] + v25.n128_u64[0] < v19);
    }
  }
}

__n128 _NSBlockNumberForIndex(void *a1, unint64_t a2, __n128 *a3)
{
  v6 = a1[1];
  if (v6 <= a2)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"*** NSRunStorage, _NSBlockNumberForIndex(): index (%lu) beyond array bounds (%lu)", a2, v6}];
  }

  v8 = a1[8];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
    v8 = a1[3];
    goto LABEL_5;
  }

  v23 = a1[9];
  v22 = (a1 + 9);
  if (a2 < v23 || a2 - v23 >= a1[10])
  {
    if (a2 < v23)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8 + 1;
      v25 = a1[3];
      if (v8 == v25 - 2)
      {
        v26 = a1[1];
      }

      else
      {
        v27 = v8 + 2;
        if (a1[11] <= (v8 + 2))
        {
          v28 = a1[4] - v25;
        }

        else
        {
          v28 = 0;
        }

        v26 = *(a1[7] + (a1[2] + 8) * (v28 + v27));
        if (v27 >= a1[5])
        {
          v26 += a1[6];
        }
      }

      if (v26 > a2)
      {
        goto LABEL_45;
      }

      v9 = v8 + 2;
      v8 = a1[3];
    }

LABEL_5:
    v10 = v8 - 1;
    if (v9 < v8 - 1)
    {
      v11 = a1[7];
      v12 = a1[11];
      v13 = a1[2] + 8;
      v14 = a1[5];
      do
      {
        v15 = v9 + ((v10 - v9) >> 1);
        if (v12 <= v15)
        {
          v16 = a1[4] - a1[3];
        }

        else
        {
          v16 = 0;
        }

        v17 = *(v11 + v13 * (v16 + v15));
        if (v15 >= v14)
        {
          v17 += a1[6];
        }

        if (v17 <= a2)
        {
          v18 = a1[3];
          if (v15 == v18 - 1)
          {
            v19 = a1[1];
          }

          else
          {
            v20 = v15 + 1;
            if (v12 <= v15 + 1)
            {
              v21 = a1[4] - v18;
            }

            else
            {
              v21 = 0;
            }

            v19 = *(v11 + (v21 + v20) * v13);
            if (v20 >= v14)
            {
              v19 += a1[6];
            }
          }

          if (v19 > a2)
          {
            v9 = v15;
          }

          else
          {
            v9 = v15 + 1;
          }

          if (v19 > a2)
          {
            v10 = v15;
          }
        }

        else
        {
          v10 = v15 - 1;
        }
      }

      while (v9 < v10);
      goto LABEL_46;
    }

LABEL_45:
    v11 = a1[7];
    v12 = a1[11];
LABEL_46:
    v29 = v9;
    a1[8] = v9;
    if (v12 <= v9)
    {
      v30 = a1[4] - a1[3];
    }

    else
    {
      v30 = 0;
    }

    v31 = a1[2] + 8;
    v32 = *(v11 + v31 * (v30 + v29));
    a1[9] = v32;
    v33 = (a1 + 9);
    v34 = a1[5];
    if (v29 >= v34)
    {
      v32 += a1[6];
      a1[9] = v32;
    }

    v35 = a1[3];
    if (v29 == v35 - 1)
    {
      v36 = a1[1];
    }

    else
    {
      v37 = v29 + 1;
      if (v12 <= v29 + 1)
      {
        v38 = a1[4] - v35;
      }

      else
      {
        v38 = 0;
      }

      v36 = *(v11 + (v38 + v37) * v31);
      if (v37 >= v34)
      {
        v36 += a1[6];
      }
    }

    a1[10] = v36 - v32;
    if (a3)
    {
      result = *v33;
      *a3 = *v33;
    }

    return result;
  }

  if (a3)
  {
    result = *v22;
    *a3 = *v22;
  }

  return result;
}

uint64_t __NSTextLayoutManagerRemoveTextLayoutFragmentsInTextRange(id *a1, void *a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = [objc_msgSend(a1 "textContentManager")];
  if (a3 || ![a2 isEqualToTextRange:v6])
  {
    v7 = [objc_msgSend(a1[11] "contentRange")];
    v29 = 0;
    v30 = &v29;
    v31 = 0x3052000000;
    v32 = __Block_byref_object_copy__2;
    v33 = __Block_byref_object_dispose__2;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3052000000;
    v26 = __Block_byref_object_copy__2;
    v27 = __Block_byref_object_dispose__2;
    if (a3)
    {
      v8 = [a2 location];
    }

    else
    {
      v8 = 0;
    }

    v28 = v8;
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3052000000;
    v22[3] = __Block_byref_object_copy__2;
    v22[4] = __Block_byref_object_dispose__2;
    v22[5] = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = ____NSTextLayoutManagerRemoveTextLayoutFragmentsInTextRange_block_invoke_2;
    v21[3] = &unk_1E7266860;
    v21[6] = a3;
    v21[7] = v22;
    v21[8] = &v23;
    v21[9] = &v29;
    v21[4] = a1;
    v21[5] = v7;
    if ([objc_msgSend(a2 "endLocation")])
    {
      [a1[11] enumerateTextLayoutFragmentFromLocation:objc_msgSend(a2 options:"location") usingBlock:{0, v21}];
    }

    else
    {
      [a1[11] enumerateTextLayoutFragmentInTextRange:a2 options:0 usingBlock:v21];
    }

    [a1[11] enumerateTextLayoutFragmentFromLocation:objc_msgSend(a2 options:"endLocation") usingBlock:{0, &__block_literal_global_622}];
    if ([v30[5] count])
    {
      if (v7 && [v24[5] compare:v7] == -1)
      {
        v9 = [NSTextRange alloc];
        v10 = [(NSTextRange *)v9 initWithLocation:v24[5] endLocation:v7];
        [v30[5] addObject:v10];
      }

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v11 = v30[5];
      v12 = [v11 countByEnumeratingWithState:&v17 objects:v35 count:16];
      if (v12)
      {
        v13 = *v18;
        v14 = 1;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(v11);
            }

            [a1[11] invalidateTextLayoutFragmentsInTextRange:*(*(&v17 + 1) + 8 * i) adjustTextRange:v14 & 1];
            v14 = 0;
          }

          v12 = [v11 countByEnumeratingWithState:&v17 objects:v35 count:16];
          v14 = 0;
        }

        while (v12);
      }
    }

    else
    {
      [a1[11] invalidateTextLayoutFragmentsInTextRange:a2 adjustTextRange:1];
    }

    _Block_object_dispose(v22, 8);
    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v29, 8);
  }

  else
  {
    if ([a1 canSendViewProviderInvalidationNotification])
    {
      if ([objc_msgSend(a2 "endLocation")])
      {
        [a1[11] enumerateTextLayoutFragmentFromLocation:objc_msgSend(a2 options:"location") usingBlock:{0, &__block_literal_global_620}];
      }

      else
      {
        [a1[11] enumerateTextLayoutFragmentInTextRange:a2 options:0 usingBlock:&__block_literal_global_620];
      }
    }

    a1[12] = 0;
    a1[11] = 0;
  }

  result = [a1[12] count];
  if (!result)
  {
    return [a1 _setSoftInvalidationLocation:0 onlyIfUpstream:1];
  }

  return result;
}

void sub_18E75675C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a40, 8);
  _Unwind_Resume(a1);
}

NSUInteger __NSTextRunStorageReleaseElementContentsInRange(NSUInteger result, NSUInteger a2, NSUInteger a3)
{
  if (!*(result + 16))
  {
    v4 = result;
    if (a2 == 0x7FFFFFFFFFFFFFFFLL && !a3)
    {
      a3 = [*(result + 24) count];
      a2 = 0;
    }

    return __NSTextRunStorageEnumerateElementsInRange(v4, a2, a3, 0, &__block_literal_global_29);
  }

  return result;
}

void *__NSTextContentStorageChildElementsEnumerationCacheGetNextElement(uint64_t a1)
{
  while (1)
  {
    v2 = *(a1 + 33);
    *(a1 + 33) = 0;
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 24);
    if ((v4 & 0x8000000000000000) != 0 || v4 >= [*(a1 + 8) count])
    {
      break;
    }

    v5 = *(a1 + 24);
    NextElement = [*(a1 + 8) objectAtIndexedSubscript:v5];
    v7 = [NextElement childElements];
    v8 = v7;
    if (*(a1 + 32) == 1)
    {
      v9 = v5 + 1;
      if (v7)
      {
        v10 = *(a1 + 16);
        *a1 = NextElement;
        *(a1 + 8) = v7;
        if (v10)
        {
          v11 = [v10 indexPathByAddingIndex:v9];
        }

        else
        {
          v11 = [MEMORY[0x1E696AC88] indexPathWithIndex:v9];
        }

        *(a1 + 16) = v11;
        if (*(a1 + 32))
        {
          v28 = 0;
        }

        else
        {
          v28 = [v8 count] - 1;
        }

        *(a1 + 24) = v28;
      }

      else if (v9 >= [*(a1 + 8) count])
      {
        do
        {
          v22 = *(a1 + 16);
          v23 = [v22 length];
          v24 = *a1;
          *(a1 + 33) = *a1 != 0;
          v25 = [v24 parentElement];
          *a1 = v25;
          *(a1 + 8) = [v25 childElements];
          if (v23 <= 0)
          {
            v26 = 0;
            *(a1 + 24) = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            *(a1 + 24) = [*(a1 + 16) indexAtPosition:v23 - 1];
            if (v23 == 1)
            {
              v26 = 0;
            }

            else
            {
              v26 = [*(a1 + 16) indexPathByRemovingLastIndex];
            }
          }

          *(a1 + 16) = v26;

          if (![*a1 parentElement])
          {
            break;
          }

          v27 = *(a1 + 24);
        }

        while (v27 >= [*(a1 + 8) count]);
      }

      else
      {
        *(a1 + 24) = v9;
      }

      goto LABEL_15;
    }

    if (!v7 || (v2 & 1) != 0)
    {
      if (v5 < 0)
      {
        v29 = *(a1 + 16);
        v30 = [v29 length];
        v31 = *a1;
        *(a1 + 33) = *a1 != 0;
        v32 = [v31 parentElement];
        *a1 = v32;
        *(a1 + 8) = [v32 childElements];
        if (v30 <= 0)
        {
          v33 = 0;
          *(a1 + 24) = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          *(a1 + 24) = [*(a1 + 16) indexAtPosition:v30 - 1];
          if (v30 == 1)
          {
            v33 = 0;
          }

          else
          {
            v33 = [*(a1 + 16) indexPathByRemovingLastIndex];
          }
        }

        *(a1 + 16) = v33;

        goto LABEL_15;
      }

      v21 = v5 - 1;
    }

    else
    {
      do
      {
        v17 = *(a1 + 16);
        *a1 = NextElement;
        *(a1 + 8) = v8;
        if (v17)
        {
          v18 = [v17 indexPathByAddingIndex:v5];
        }

        else
        {
          v18 = [MEMORY[0x1E696AC88] indexPathWithIndex:v5];
        }

        *(a1 + 16) = v18;
        if (*(a1 + 32))
        {
          v19 = 0;
        }

        else
        {
          v19 = [v8 count] - 1;
        }

        *(a1 + 24) = v19;

        v20 = [*(a1 + 8) count];
        v5 = v20 - 1;
        NextElement = [*(a1 + 8) objectAtIndexedSubscript:v20 - 1];
        v8 = [NextElement childElements];
      }

      while (v8);
      v21 = v20 - 2;
    }

    *(a1 + 24) = v21;
LABEL_15:
    objc_autoreleasePoolPop(v3);
    if (!NextElement || [NextElement isRepresentedElement])
    {
      return NextElement;
    }
  }

  v12 = *(a1 + 16);
  v13 = [v12 length];
  v14 = *a1;
  *(a1 + 33) = *a1 != 0;
  v15 = [v14 parentElement];
  *a1 = v15;
  *(a1 + 8) = [v15 childElements];
  if (v13 <= 0)
  {
    v16 = 0;
    *(a1 + 24) = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(a1 + 24) = [*(a1 + 16) indexAtPosition:v13 - 1];
    if (v13 == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = [*(a1 + 16) indexPathByRemovingLastIndex];
    }
  }

  *(a1 + 16) = v16;

  if ((*(a1 + 32) & 1) == 0 && *(a1 + 33) == 1)
  {
    NextElement = __NSTextContentStorageChildElementsEnumerationCacheGetNextElement(a1);
    goto LABEL_15;
  }

  objc_autoreleasePoolPop(v3);
  return 0;
}

uint64_t __NSCreateRenderingContextForAttributedString(uint64_t a1, uint64_t a2, char a3, char a4, char a5, double a6, double a7)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__10;
  v19 = __Block_byref_object_dispose__10;
  v20 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ____NSCreateRenderingContextForAttributedString_block_invoke;
  v9[3] = &unk_1E7267A58;
  *&v9[6] = a6;
  v9[4] = a1;
  v9[5] = &v15;
  v9[7] = a2;
  v10 = 0;
  v11 = a5;
  v12 = a3;
  v13 = a4;
  *&v9[8] = a7;
  v14 = 0;
  [NSSingleLineTypesetter performWithSingleLineTypesetterContext:v9];
  v7 = v16[5];
  _Block_object_dispose(&v15, 8);
  return v7;
}

uint64_t _NSReadAttributedStringFromURLOrData(void *a1, unint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v8 = a1;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3052000000;
  v29 = __Block_byref_object_copy__3;
  v30 = __Block_byref_object_dispose__3;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___NSReadAttributedStringFromURLOrData_block_invoke;
  v13[3] = &unk_1E7266A60;
  v13[4] = &v26;
  v13[5] = &v20;
  v13[6] = &v14;
  _NSReadAttributedStringFromURLOrDataCommon(a1, a2, a3, a4, 0, v13);
  v9 = v27[5];
  if (v9)
  {
    if (v8)
    {
    }

    else
    {
      v8 = v27[5];
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = v21[5];
  if (a5)
  {
    *a5 = v10;
  }

  else
  {
  }

  v11 = v15[5];
  if (a6)
  {
    *a6 = v11;
  }

  else
  {
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);
  return v8;
}

void sub_18E758160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void _NSReadAttributedStringFromURLOrDataCommon(void *a1, unint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6)
{
  v7 = a4;
  *(&v198[64] + 1) = *MEMORY[0x1E69E9840];
  v193 = 0;
  v10 = [a4 objectForKey:@"NSIndexing"];
  v11 = [v7 objectForKey:@"NSThumbnail"];
  v12 = [v10 integerValue];
  v13 = [v11 integerValue];
  v14 = [v7 objectForKey:@"NSFileHeaderData"];
  v15 = [objc_msgSend(v7 objectForKey:{@"NSNoReadNecessary", "BOOLValue"}];
  v16 = +[NSTextList includesTextListMarkers];
  bzero(v198, 0x201uLL);
  v192 = 0;
  if (!v10)
  {
    v17 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    if (v17)
    {
      v12 = [v17 integerValue];
    }
  }

  if (v12 <= 0)
  {
    v18 = v13;
  }

  else
  {
    v18 = v12;
  }

  v177 = v18;
  if (!(a2 | a3))
  {
    goto LABEL_13;
  }

  if (a2)
  {
    if (([a2 isFileURL] & 1) == 0)
    {
      v30 = MEMORY[0x1E696ABC0];
      v31 = *MEMORY[0x1E696A250];
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObject:a2 forKey:*MEMORY[0x1E696A998]];
      v19 = v30;
      v20 = v31;
      v21 = 262;
      goto LABEL_31;
    }

    v174 = [a2 path];
    if (!a3 && [a2 isFileURL] && !v174)
    {
LABEL_13:
      v19 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A250];
      v21 = 258;
      v22 = 0;
LABEL_31:
      [v19 errorWithDomain:v20 code:v21 userInfo:v22];
      v32 = *(a6 + 16);

      v32();
      return;
    }
  }

  else
  {
    v174 = [0 path];
  }

  v23 = [v7 objectForKeyedSubscript:?];
  if (v23)
  {
    v16 = [v23 BOOLValue];
  }

  v24 = [v7 objectForKey:?];
  if (!v24)
  {
    v24 = [v7 objectForKey:NSFileTypeDocumentOption];
    if (v24)
    {
      v24 = [MEMORY[0x1E696AAB0] _documentTypeForFileType:v24];
    }
  }

  v163 = v15;
  v25 = 0;
  if (v24)
  {
    v26 = a3 == 0;
  }

  else
  {
    v26 = 1;
  }

  v169 = v24;
  v170 = v12;
  v166 = v14;
  v27 = v24;
  v28 = 0;
  if (!v26)
  {
    v168 = 0;
    goto LABEL_50;
  }

  v168 = 0;
  if (v174)
  {
    *&v194 = 0;
    v29 = [objc_msgSend(v174 "pathExtension")];
    v168 = [a2 getResourceValue:&v194 forKey:*MEMORY[0x1E695DB78] error:&v192];
    if (v168)
    {
      v27 = v169;
      if (v194)
      {
        v28 = [v194 BOOLValue];
        if (v169)
        {
          v168 = 1;
          v27 = v169;
LABEL_49:
          v25 = v27 != 0;
          goto LABEL_50;
        }

        if (v28)
        {
          if ([@"rtfd" isEqual:v29])
          {
            v27 = @"NSRTFD";
          }

          else
          {
            v186 = 0;
            v51 = [a2 getResourceValue:&v186 forKey:*MEMORY[0x1E695DC68] error:0];
            if (v186)
            {
              v52 = v51;
            }

            else
            {
              v52 = 0;
            }

            if (v52 == 1)
            {
              v53 = [MEMORY[0x1E6982C40] typeWithIdentifier:?];
              if ([v53 conformsToType:*MEMORY[0x1E6982F98]])
              {
                v27 = @"NSRTFD";
              }

              else
              {
                v27 = 0;
              }
            }

            else
            {
              v27 = 0;
            }
          }

          v28 = 1;
          v168 = 1;
          goto LABEL_49;
        }
      }

      else if (v169)
      {
        v28 = 0;
        v168 = 1;
        goto LABEL_49;
      }
    }

    else
    {
      v27 = v169;
      if (!a3)
      {
        v33 = MEMORY[0x1E696ABC0];
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v174, *MEMORY[0x1E696A368], 0}];
        (*(a6 + 16))(a6, 0, 0, [v33 errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:v34]);
        return;
      }

      if (v169)
      {
        v28 = 0;
        v168 = 0;
        goto LABEL_49;
      }
    }

    if ([@"rtf" isEqual:v29])
    {
      v28 = 0;
      v35 = &NSRTFTextDocumentType;
LABEL_48:
      v27 = *v35;
      goto LABEL_49;
    }

    if (([@"html" isEqualToString:v29] & 1) != 0 || objc_msgSend(@"htm", "isEqualToString:", v29))
    {
      v28 = 0;
      v35 = &NSHTMLTextDocumentType;
      goto LABEL_48;
    }

    if ([@"webarchive" isEqualToString:v29])
    {
      v28 = 0;
      v35 = &NSWebArchiveTextDocumentType;
      goto LABEL_48;
    }

    if ([@"txt" isEqualToString:v29])
    {
      v28 = 0;
      v35 = &NSPlainTextDocumentType;
      goto LABEL_48;
    }

    v186 = 0;
    v54 = [a2 getResourceValue:&v186 forKey:*MEMORY[0x1E695DC68] error:0];
    if (v186)
    {
      v55 = v54;
    }

    else
    {
      v55 = 0;
    }

    if (v55 == 1)
    {
      v56 = [MEMORY[0x1E6982C40] typeWithIdentifier:?];
      if ([v56 conformsToType:*MEMORY[0x1E6982F90]])
      {
        v57 = &NSRTFTextDocumentType;
      }

      else
      {
        if (![v56 conformsToType:*MEMORY[0x1E6982E18]])
        {
          if ([v56 conformsToType:*MEMORY[0x1E6983098]])
          {
            v27 = @"NSWebArchive";
          }

          else
          {
            v27 = 0;
          }

          goto LABEL_411;
        }

        v57 = &NSHTMLTextDocumentType;
      }

      v27 = *v57;
    }

    else
    {
      v27 = 0;
    }

LABEL_411:
    v28 = 0;
    goto LABEL_49;
  }

LABEL_50:
  v164 = v16;
  v165 = v25;
  v167 = v28;
  if (v27)
  {
    v36 = 0;
    v171 = 0;
    goto LABEL_137;
  }

  v37 = a3;
  if (!a3)
  {
    v37 = v14;
    if (!v14)
    {
      if (!v168)
      {
        v43 = 0;
        v36 = 0;
        v171 = 0;
        goto LABEL_87;
      }

      v47 = createOrResetFileHandle(0, v174, v7, v12 > 0);
      v36 = [v47 readDataOfLength:512 buffer:v198];
      v171 = v47;
      if (v36)
      {
        goto LABEL_58;
      }

LABEL_86:
      v43 = 0;
      goto LABEL_87;
    }
  }

  v38 = [v37 length];
  if (v38 >= 0x200)
  {
    v36 = 512;
  }

  else
  {
    v36 = v38;
  }

  [v37 getBytes:v198 length:v36];
  v171 = 0;
  if (!v36)
  {
    goto LABEL_86;
  }

LABEL_58:
  v39 = 0;
  v40 = MEMORY[0x1E69E9830];
  do
  {
    v41 = *(v198 + v39);
    if (v41 < 0)
    {
      v42 = __maskrune(*(v198 + v39), 0x4000uLL);
    }

    else
    {
      v42 = *(v40 + 4 * v41 + 60) & 0x4000;
    }

    if (v42)
    {
      v43 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v43 = v39;
    }

    ++v39;
  }

  while (v43 == 0x7FFFFFFFFFFFFFFFLL && v39 < v36);
  if (v43 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v43 = 0;
  }

  if (v36 >= 9)
  {
    v45 = LODWORD(v198[0]) == 1768714338 && WORD2(v198[0]) == 29811;
    if (v45 && BYTE6(v198[0]) - 48 <= 9 && HIBYTE(v198[0]) - 48 <= 9)
    {
LABEL_80:
      v46 = &NSWebArchiveTextDocumentType;
LABEL_135:
      v27 = *v46;
      goto LABEL_136;
    }

    if (a3 && v198[0] == 1684436082)
    {
      v46 = &NSRTFDTextDocumentType;
      goto LABEL_135;
    }
  }

LABEL_87:
  v48 = v36 - v43;
  if (v36 - v43 >= 6)
  {
    v49 = v198 + v43;
    if (*(v198 + v43) == 1953651835 && *(v198 + v43 + 4) == 102)
    {
      v46 = &NSRTFTextDocumentType;
      goto LABEL_135;
    }

    if (v48 != 6)
    {
      if (!strncasecmp(v49, "<html", 5uLL) || !strncasecmp(v49, "<head", 5uLL) || !strncasecmp(v49, "<title", 6uLL))
      {
        goto LABEL_134;
      }

      if (v48 < 0xF)
      {
        goto LABEL_93;
      }

      if (!strncasecmp(v49, "<!doctype html", 0xEuLL))
      {
        goto LABEL_134;
      }

      if (v48 < 0x14)
      {
        goto LABEL_93;
      }

      if (!strncasecmp(v49, "<?xml", 5uLL) && strnstr(v49, "<!DOCTYPE html", v48))
      {
LABEL_134:
        v46 = &NSHTMLTextDocumentType;
        goto LABEL_135;
      }

      if (v48 >= 0x41 && !strncasecmp(v49, "<?xml", 5uLL) && (strnstr(v49, "<!DOCTYPE plist", v48) || strnstr(v49, "<!doctype plist", v48)) && strnstr(v49, "<plist", v48))
      {
        if (!strnstr(v49, "<key>WebMainResource</key>", v48))
        {
          v46 = &NSPlainTextDocumentType;
          goto LABEL_135;
        }

        goto LABEL_80;
      }
    }
  }

LABEL_93:
  v27 = 0;
LABEL_136:
  [v171 seekToFileOffset:0];
  v28 = v167;
LABEL_137:
  v58 = @"NSPlainText";
  if (v28)
  {
    v58 = 0;
  }

  if (v27)
  {
    v59 = v27;
  }

  else
  {
    v59 = v58;
  }

  v172 = v59;
  if (([(__CFString *)v59 isEqual:@"NSRTF"]& 1) == 0 && ![(__CFString *)v172 isEqual:@"NSRTFD"])
  {
    if (([(__CFString *)v172 isEqual:@"NSHTML"]& 1) != 0 || [(__CFString *)v172 isEqual:@"NSWebArchive"])
    {
      if (a3 || ((v63 = objc_alloc(MEMORY[0x1E695DEF0]), v170 <= 0) ? (v64 = 0) : (v64 = 2), (a3 = [v63 initWithContentsOfFile:v174 options:v64 error:&v192]) != 0))
      {
        if (v170 || ![NSHTMLReader allowsAttributedStringAgentForOptions:v7])
        {
          v67 = [[NSHTMLReader alloc] initWithData:a3 options:v7];
          if (v67)
          {
            v68 = a1;
            if (!a1)
            {
              v68 = objc_alloc_init(MEMORY[0x1E696AD40]);
            }

            [(NSHTMLReader *)v67 setMutableAttributedString:v68];
            [(NSHTMLReader *)v67 setIncludesTextListMarkers:v16];
            v69 = [(NSHTMLReader *)v67 attributedString];
            if (v69)
            {
              v70 = [(NSHTMLReader *)v67 documentAttributes];
              if (v70)
              {
                v71 = [v70 mutableCopy];
              }

              else
              {
                v71 = [MEMORY[0x1E695DF90] dictionary];
              }

              v193 = v71;
              [v71 setObject:v172 forKey:@"DocumentType"];
              if ([(__CFString *)v172 isEqual:@"NSHTML"])
              {
                [v193 setObject:objc_msgSend(*MEMORY[0x1E6982E18] forKey:{"identifier"), @"UTI"}];
              }

              else if ([(__CFString *)v172 isEqual:@"NSWebArchive"])
              {
                [v193 setObject:objc_msgSend(*MEMORY[0x1E6983098] forKey:{"identifier"), @"UTI"}];
              }
            }

            else
            {
              v88 = MEMORY[0x1E696ABC0];
              v89 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v174, *MEMORY[0x1E696A368], 0}];
              v192 = [v88 errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:v89];
            }

            if (!v69)
            {
              v90 = v169 != 0;
              v91 = v165 | v167;
LABEL_228:
              v72 = (v90 | v91) ^ 1;
              goto LABEL_260;
            }

LABEL_226:
            v87 = 1;
            goto LABEL_413;
          }

LABEL_258:
          v72 = ((v169 != 0) | v165 | v167) ^ 1;
          goto LABEL_259;
        }

        if ([v7 objectForKeyedSubscript:@"DocumentType"] && objc_msgSend(v7, "objectForKeyedSubscript:", @"_WKAllowNetworkLoadsOption"))
        {
          if ([v7 objectForKeyedSubscript:@"TextKit1ListMarkerFormat"])
          {
LABEL_247:
            if (a5)
            {
              v99 = dispatch_semaphore_create(0);
              dispatch_retain(v99);
              *&v194 = 0;
              *(&v194 + 1) = &v194;
              *&v195 = 0x3052000000;
              *(&v195 + 1) = __Block_byref_object_copy__3;
              v196 = __Block_byref_object_dispose__3;
              v197 = 0;
              v186 = 0;
              v187 = &v186;
              v188 = 0x3052000000;
              v189 = __Block_byref_object_copy__3;
              v190 = __Block_byref_object_dispose__3;
              v191 = 0;
              v180 = 0;
              v181 = &v180;
              v182 = 0x3052000000;
              v183 = __Block_byref_object_copy__3;
              v184 = __Block_byref_object_dispose__3;
              v185 = 0;
              v179[0] = MEMORY[0x1E69E9820];
              v179[1] = 3221225472;
              v179[2] = ___NSReadAttributedStringFromURLOrDataCommon_block_invoke;
              v179[3] = &unk_1E7266B28;
              v179[6] = &v194;
              v179[7] = &v186;
              v179[8] = &v180;
              v179[4] = v7;
              v179[5] = v99;
              if ([(__CFString *)v172 isEqual:@"NSWebArchive"])
              {
                v100 = [v7 objectForKeyedSubscript:NSBaseURLDocumentOption];
                if (!v100)
                {
                  v100 = objc_alloc_init(MEMORY[0x1E695DFF8]);
                }

                v101 = [v7 objectForKey:NSTextEncodingNameDocumentOption];
                v102 = &stru_1F01AD578;
                v178[0] = MEMORY[0x1E69E9820];
                v178[1] = 3221225472;
                v178[2] = ___NSReadAttributedStringFromURLOrDataCommon_block_invoke_2;
                v178[3] = &unk_1E7266B50;
                if (v101)
                {
                  v102 = v101;
                }

                v178[4] = a3;
                v178[5] = v102;
                v178[6] = v100;
                [MEMORY[0x1E696AAB0] _loadFromHTMLWithOptions:v7 contentLoader:v178 completionHandler:v179];
              }

              else
              {
                [MEMORY[0x1E696AAB0] loadFromHTMLWithData:a3 options:v7 completionHandler:v179];
              }

              v144 = [v7 objectForKeyedSubscript:NSTimeoutDocumentOption];
              if (v144)
              {
                [v144 doubleValue];
                v146 = (v145 * 1000000000.0);
              }

              else
              {
                v146 = 60000000000;
              }

              v148 = dispatch_time(0, v146);
              v149 = dispatch_semaphore_wait(v99, v148);
              dispatch_release(v99);
              v150 = v181[5];
              if (v150)
              {
                v192 = v150;
              }

              else if (v149)
              {
                v151 = MEMORY[0x1E695DF90];
                v152 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:2 userInfo:0];
                v153 = [v151 dictionaryWithObject:v152 forKey:*MEMORY[0x1E696AA08]];
                v154 = v153;
                if (v174)
                {
                  [v153 setObject:v174 forKeyedSubscript:*MEMORY[0x1E696A368]];
                }

                v192 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:v154];
              }

              else
              {
                v68 = *(*(&v194 + 1) + 40);
                if (v68)
                {
                  if (a1)
                  {
                    [a1 setAttributedString:*(*(&v194 + 1) + 40)];

                    v68 = a1;
                  }

                  v193 = v187[5];
                  v155 = 1;
LABEL_397:
                  _Block_object_dispose(&v180, 8);
                  _Block_object_dispose(&v186, 8);
                  _Block_object_dispose(&v194, 8);
                  if (v169)
                  {
                    v90 = 1;
                  }

                  else
                  {
                    v90 = v155;
                  }

                  if ((v155 & 1) == 0)
                  {
                    v91 = v165 | v167;
                    goto LABEL_228;
                  }

                  goto LABEL_226;
                }
              }

              v155 = 0;
              v68 = a1;
              goto LABEL_397;
            }

            *&v194 = 0;
            if (_NSReadAttributedStringFromHTMLData(a3, v7, v174, &v194, &v193, &v192))
            {
              v68 = a1;
              if (a1)
              {
                if (v194)
                {
                  [a1 setAttributedString:v194];
                  v68 = a1;
                }
              }

              else
              {
                v68 = [v194 mutableCopy];
              }

              goto LABEL_226;
            }

            goto LABEL_258;
          }
        }

        else
        {
          if (v7)
          {
            v92 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v7];
          }

          else
          {
            v92 = [MEMORY[0x1E695DF90] dictionary];
          }

          v95 = v92;
          if (![v7 objectForKeyedSubscript:@"DocumentType"])
          {
            [v95 setObject:v172 forKeyedSubscript:@"DocumentType"];
          }

          if (![v7 objectForKeyedSubscript:@"_WKAllowNetworkLoadsOption"])
          {
            v96 = [v95 objectForKeyedSubscript:@"_NSHTMLAllowNetworkAccess"];
            if (v96)
            {
              v97 = [v96 BOOLValue];
            }

            else
            {
              v97 = 1;
            }

            [v95 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v97), @"_WKAllowNetworkLoadsOption"}];
            [v95 removeObjectForKey:@"_NSHTMLAllowNetworkAccess"];
          }

          v7 = [v95 copy];
          if ([v7 objectForKeyedSubscript:@"TextKit1ListMarkerFormat"])
          {
            goto LABEL_247;
          }

          if (v95)
          {
            goto LABEL_246;
          }
        }

        if (v7)
        {
          v98 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v7];
        }

        else
        {
          v98 = [MEMORY[0x1E695DF90] dictionary];
        }

        v95 = v98;
LABEL_246:
        [v95 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v16), @"TextKit1ListMarkerFormat"}];
        v7 = v95;
        goto LABEL_247;
      }
    }

    else if (v169 && ([(__CFString *)v172 isEqual:@"NSPlainText"]& 1) == 0)
    {
      v72 = 0;
      v192 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:65806 userInfo:0];
      goto LABEL_259;
    }

    v72 = 0;
LABEL_259:
    v68 = a1;
    goto LABEL_260;
  }

  v60 = [*MEMORY[0x1E6982F90] identifier];
  if (![(__CFString *)v172 isEqual:@"NSRTF"])
  {
    if (a3)
    {
      v62 = [[NSRTFReader alloc] initWithRTFD:a3];
      v60 = [*MEMORY[0x1E6982DC0] identifier];
      if (v62)
      {
LABEL_181:
        v73 = [v7 objectForKey:@"TargetTextScaling"];
        v74 = [v7 objectForKey:@"TargetTextScaling"];
        v75 = [v7 objectForKey:@"SourceTextScaling"];
        if (v74)
        {
          v76 = 1;
        }

        else
        {
          v76 = v73 == 0;
        }

        if (v76)
        {
          v77 = v74;
        }

        else
        {
          v77 = v73;
        }

        if (v77)
        {
          -[NSRTFReader _setTargetTextScaling:](v62, "_setTargetTextScaling:", [v77 integerValue]);
          if (v75)
          {
            -[NSRTFReader _setSourceTextScaling:](v62, "_setSourceTextScaling:", [v75 integerValue]);
          }
        }

        v68 = a1;
        if (!a1)
        {
          v68 = objc_alloc_init(MEMORY[0x1E696AD40]);
        }

        [(NSRTFReader *)v62 setMutableAttributedString:v68];
        if (v170 > 0)
        {
          [(NSRTFReader *)v62 setReadLimit:v170];
        }

        if (v13 >= 1)
        {
          [(NSRTFReader *)v62 setThumbnailLimit:v13];
        }

        [(NSRTFReader *)v62 setIncludesTextListMarkers:v164];
        v78 = [(NSRTFReader *)v62 attributedString];
        v79 = v78 != 0;
        if (v78)
        {
          v80 = [(NSRTFReader *)v62 documentAttributes];
          if (v80)
          {
            v81 = [v80 mutableCopy];
          }

          else
          {
            v81 = [MEMORY[0x1E695DF90] dictionary];
          }

          v193 = v81;
          [v81 setObject:v172 forKey:@"DocumentType"];
          [v193 setObject:v60 forKey:@"UTI"];
        }

        else
        {
          v82 = MEMORY[0x1E696ABC0];
          v83 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v174, *MEMORY[0x1E696A368], 0}];
          v192 = [v82 errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:v83];
        }

        v61 = v171;
        goto LABEL_209;
      }

      goto LABEL_207;
    }

    if (v170 < 1)
    {
      v84 = [MEMORY[0x1E695DFF8] fileURLWithPath:{objc_msgSend(v174, "stringByResolvingSymlinksInPath")}];
      v85 = [objc_alloc(MEMORY[0x1E696AC38]) initWithURL:v84 options:1 error:&v192];
      if (v85)
      {
        v62 = [[NSRTFReader alloc] initWithRTFDFileWrapper:v85];
        goto LABEL_206;
      }
    }

    else
    {
      v65 = [v174 stringByAppendingPathComponent:@"TXT.rtf"];
      v66 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v65 options:2 error:&v192];
      if (v66)
      {
        v62 = [[NSRTFReader alloc] initWithRTF:v66];

        goto LABEL_206;
      }
    }

    v62 = 0;
LABEL_206:
    v60 = [*MEMORY[0x1E6982F98] identifier];
    a3 = 0;
    if (v62)
    {
      goto LABEL_181;
    }

    goto LABEL_207;
  }

  if (a3)
  {
    goto LABEL_180;
  }

  if (v170 < 1)
  {
    a3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v174 options:0 error:&v192];
  }

  else
  {
    a3 = v166;
    if ((v163 & 1) == 0)
    {
      v61 = createOrResetFileHandle(v171, v174, v7, 1);
      a3 = [v61 readDataToEndOfFile];
      if (!a3)
      {
        v93 = MEMORY[0x1E696ABC0];
        v94 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v174, *MEMORY[0x1E696A368], 0}];
        a3 = 0;
        v79 = 0;
        v192 = [v93 errorWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:v94];
        goto LABEL_208;
      }

      v171 = v61;
      goto LABEL_180;
    }
  }

  if (a3)
  {
LABEL_180:
    v62 = [[NSRTFReader alloc] initWithRTF:a3];
    if (v62)
    {
      goto LABEL_181;
    }
  }

LABEL_207:
  v79 = 0;
  v61 = v171;
LABEL_208:
  v68 = a1;
LABEL_209:
  if (v169)
  {
    v86 = 1;
  }

  else
  {
    v86 = v79;
  }

  if ((v167 | v165 | v86))
  {
    v72 = 0;
    if (v79)
    {
      goto LABEL_214;
    }
  }

  else
  {
    v72 = [(__CFString *)v172 isEqual:@"NSRTF"];
    if (v79)
    {
LABEL_214:
      v87 = 1;
      if (v61)
      {
        goto LABEL_414;
      }

      goto LABEL_415;
    }
  }

  v171 = v61;
LABEL_260:
  if (((v72 | [(__CFString *)v172 isEqual:@"NSPlainText"]) & 1) == 0)
  {
    v87 = 0;
    goto LABEL_413;
  }

  v194 = 0u;
  v195 = 0u;
  v103 = a3;
  if (a3 || (v103 = v166) != 0)
  {
    v104 = [v103 length];
    if (v104 >= 0x200)
    {
      v36 = 512;
    }

    else
    {
      v36 = v104;
    }

    [v103 getBytes:v198 length:v36];
  }

  else if (v168)
  {
    v105 = createOrResetFileHandle(v171, v174, v7, v170 > 0);
    v36 = [v105 readDataOfLength:512 buffer:v198];
    goto LABEL_268;
  }

  v105 = v171;
LABEL_268:
  v106 = _NSExplicitCharacterEncodingTakesPrecedence_characterEncodingTakesPrecedence;
  if (_NSExplicitCharacterEncodingTakesPrecedence_characterEncodingTakesPrecedence == 254)
  {
    v106 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    _NSExplicitCharacterEncodingTakesPrecedence_characterEncodingTakesPrecedence = v106;
  }

  if (v106)
  {
    v173 = [objc_msgSend(v7 objectForKey:{@"CharacterEncoding", "unsignedIntegerValue"}];
    if (v173)
    {
      goto LABEL_319;
    }
  }

  if (v105 || (v105 = createOrResetFileHandle(0, v174, v7, v170 > 0)) != 0)
  {
    [v105 fileDescriptor];
    [MEMORY[0x1E695DEC8] arrayWithObject:@"com.apple.TextEncoding"];
    if ([_NSReadExtendedAttributesFromFileDescriptor() objectForKey:@"com.apple.TextEncoding"])
    {
      v107 = _NSEncodingFromDataForExtendedAttribute();
      v173 = v107;
      if (v107 != 0xFFFFFFFFLL)
      {
        if (v107)
        {
          goto LABEL_319;
        }
      }
    }
  }

  v108 = 0;
  if (!v36)
  {
    goto LABEL_302;
  }

  v109 = MEMORY[0x1E69E9830];
  do
  {
    v110 = *(v198 + v108);
    if (v110 < 0)
    {
      v111 = __maskrune(*(v198 + v108), 0x4000uLL);
    }

    else
    {
      v111 = *(v109 + 4 * v110 + 60) & 0x4000;
    }

    if (v111)
    {
      v112 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v112 = v108;
    }

    ++v108;
  }

  while (v112 == 0x7FFFFFFFFFFFFFFFLL && v108 < v36);
  v108 = v112 == 0x7FFFFFFFFFFFFFFFLL ? 0 : v112;
  v114 = v163;
  if (v36 < 4)
  {
    if (v36 == 1)
    {
      goto LABEL_302;
    }

    v115 = LOBYTE(v198[0]);
    v116 = BYTE1(v198[0]);
  }

  else
  {
    v173 = 2348810496;
    v115 = LOBYTE(v198[0]);
    v116 = BYTE1(v198[0]);
    if (LOBYTE(v198[0]) == 255 && BYTE1(v198[0]) == 254 && !WORD1(v198[0]) || !LOWORD(v198[0]) && BYTE2(v198[0]) == 254 && BYTE3(v198[0]) == 255)
    {
LABEL_321:
      v118 = 0;
      if (a3)
      {
        goto LABEL_342;
      }

      goto LABEL_326;
    }
  }

  if ((v115 != 255 || v116 != 254) && (v115 != 254 || v116 != 255))
  {
LABEL_302:
    if (!v106)
    {
      v173 = [objc_msgSend(v7 objectForKey:{@"CharacterEncoding", "unsignedIntegerValue"}];
      v114 = v163;
      if (v173)
      {
        goto LABEL_321;
      }
    }

    if (v36 < 3 || LOBYTE(v198[0]) != 239 || BYTE1(v198[0]) != 187 || BYTE2(v198[0]) != 191)
    {
      v117 = v36 - v108;
      if (v117 >= 6)
      {
        if (!strncasecmp(v198 + v108, "<?xml", 5uLL))
        {
          v147 = _NSXMLEncoding(v198 + v108, v117);
          v118 = 0;
          v119 = 4;
          if (v147)
          {
            v119 = v147;
          }

          goto LABEL_324;
        }

        if (v117 != 6 && (!strncasecmp(v198 + v108, "<html", 5uLL) || !strncasecmp(v198 + v108, "<head", 5uLL) || !strncasecmp(v198 + v108, "<title", 6uLL) || v117 >= 0xF && !strncasecmp(v198 + v108, "<!doctype html", 0xEuLL)))
        {
          v173 = _NSHTMLEncoding(v198 + v108, v117);
          if (v173)
          {
LABEL_319:
            v118 = 0;
            goto LABEL_325;
          }
        }
      }
    }

    *&v194 = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
    v118 = 1;
    v119 = 4;
LABEL_324:
    v173 = v119;
LABEL_325:
    v114 = v163;
    if (a3)
    {
      goto LABEL_342;
    }

    goto LABEL_326;
  }

  v118 = 0;
  v173 = 10;
  if (a3)
  {
    goto LABEL_342;
  }

LABEL_326:
  a3 = v166;
  if (v177 < 1)
  {
    if (v105)
    {
      [v105 seekToFileOffset:0];
      v123 = [v105 readDataToEndOfFile];
    }

    else
    {
      v123 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v174 options:0 error:&v192];
      v105 = 0;
    }

    a3 = v123;
  }

  else if ((v114 & 1) == 0)
  {
    v120 = createOrResetFileHandle(v105, v174, v7, v170 > 0);
    a3 = [v120 readDataOfLength:v177];
    if (!a3)
    {
      v171 = v120;
      v121 = MEMORY[0x1E696ABC0];
      v122 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v174, *MEMORY[0x1E696A368], 0}];
      v87 = 0;
      v192 = [v121 errorWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:v122];
      goto LABEL_413;
    }

    goto LABEL_343;
  }

  if (!a3)
  {
    v87 = 0;
    v171 = v105;
    goto LABEL_413;
  }

LABEL_342:
  v120 = v105;
LABEL_343:
  v171 = v120;
  if (!a1)
  {
    if (v68)
    {
    }

    v68 = objc_alloc_init(MEMORY[0x1E696AD40]);
  }

  [v68 beginEditing];
  v124 = 0;
  v125 = v173;
  while (1)
  {
    v126 = objc_opt_class();
    if (v126 == objc_opt_class())
    {
      v127 = objc_alloc_init(MEMORY[0x1E696AAD8]);
      if (([v127 _setData:a3 encoding:v125] & 1) == 0)
      {

        goto LABEL_352;
      }
    }

    else
    {
      v127 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:a3 encoding:v125];
    }

    if (v127)
    {
      goto LABEL_364;
    }

LABEL_352:
    v186 = [a3 length];
    if (v177 == v186 && v177 > 0)
    {
      CFStringConvertNSStringEncodingToEncoding(v125);
      [a3 bytes];
      if (CFStringEncodingBytesToUnicode() == 1 && v186 > 0)
      {
        v129 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
        v130 = [a3 bytes];
        v127 = [v129 initWithBytes:v130 length:v186 encoding:v125];
        if (v127)
        {
          goto LABEL_364;
        }
      }
    }

    if (v124 >= v118)
    {
      break;
    }

    v125 = *(&v194 + v124++);
    if (!v125)
    {
      v131 = 0;
      v127 = 0;
      goto LABEL_365;
    }
  }

  v127 = 0;
  v125 = 0;
LABEL_364:
  v131 = v127 != 0;
LABEL_365:
  if (v131 || v192)
  {
    if (v131)
    {
      v136 = CFStringConvertNSStringEncodingToEncoding(v125);
      [v68 replaceCharactersInRange:0 withString:{objc_msgSend(v68, "length"), v127}];
      if (v136 == 1586 || (v136 & 0xFFF) == 0x100)
      {
        [v127 rangeOfCharacterFromSet:_NSBidiControlCharacterSet()];
        v137 = v138 == 0;
      }

      else
      {
        v137 = 1;
      }

      v139 = [v7 objectForKey:@"DefaultAttributes"];
      if (v139)
      {
        [v68 setAttributes:v139 range:{0, objc_msgSend(v68, "length")}];
        if (!v137)
        {
          [v68 convertBidiControlCharactersToWritingDirection];
        }
      }

      else if (!v170)
      {
        v140 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{+[UIFont userFontOfSize:](NSFont, "userFontOfSize:", 12.0), @"NSFont", 0}];
        [v68 setAttributes:v140 range:{0, objc_msgSend(v68, "length")}];
      }

      v141 = MEMORY[0x1E695DF90];
      v142 = [*MEMORY[0x1E6982F40] identifier];
      v143 = [v141 dictionaryWithObjectsAndKeys:{@"NSPlainText", @"DocumentType", v142, @"UTI", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v125), @"CharacterEncoding", 0}];
      v193 = v143;
      if (v139)
      {
        [v143 setObject:v139 forKey:@"DefaultAttributes"];
      }

      v87 = 1;
    }

    else
    {
      v87 = 0;
    }
  }

  else
  {
    v132 = MEMORY[0x1E696ABC0];
    v133 = MEMORY[0x1E695DF20];
    v134 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v173];
    v135 = [v133 dictionaryWithObjectsAndKeys:{v134, *MEMORY[0x1E696A8F8], v174, *MEMORY[0x1E696A368], 0}];
    v87 = 0;
    v192 = [v132 errorWithDomain:*MEMORY[0x1E696A250] code:261 userInfo:v135];
  }

  [v68 endEditing];
LABEL_413:
  v61 = v171;
  if (v171)
  {
LABEL_414:
    [v61 closeFile];
  }

LABEL_415:
  v156 = v192;
  if (v192)
  {
    v157 = 1;
  }

  else
  {
    v157 = v87;
  }

  if ((v157 & 1) == 0)
  {
    v158 = MEMORY[0x1E696ABC0];
    v159 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v174, *MEMORY[0x1E696A368], 0}];
    v156 = [v158 errorWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:v159];
    v192 = v156;
  }

  if (v87)
  {
    v160 = v68;
  }

  else
  {
    v160 = 0;
  }

  if (v87)
  {
    v161 = v193;
  }

  else
  {
    v161 = 0;
  }

  if (v87)
  {
    v162 = 0;
  }

  else
  {
    v162 = v156;
  }

  (*(a6 + 16))(a6, v160, v161, v162);
  if (!a1)
  {
  }
}

double _NSRTFInit(uint64_t a1)
{
  *(a1 + 60) = 0;
  *(a1 + 1200) = 0;
  v2 = *(a1 + 1120);
  if (v2)
  {
    NSZoneFree(0, v2);
  }

  v3 = *(a1 + 1128);
  if (v3)
  {
    NSZoneFree(0, v3);
  }

  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0u;
  for (i = *(a1 + 1096); i; *(a1 + 1096) = i)
  {
    v5 = i;
    i = *(i + 40);
    v6 = *(v5 + 48);
    if (v6)
    {
      CFRelease(v6);
      v5 = *(a1 + 1096);
    }

    if (*v5)
    {
      NSZoneFree(0, *v5);
      v5 = *(a1 + 1096);
      if (!v5)
      {
        continue;
      }
    }

    NSZoneFree(0, v5);
  }

  for (j = *(a1 + 1104); j; *(a1 + 1104) = j)
  {
    v8 = j;
    j = *(j + 16);
    v9 = *(v8 + 24);
    if (v9)
    {
      CFRelease(v9);
      v8 = *(a1 + 1104);
    }

    if (*(v8 + 32))
    {
      NSZoneFree(0, *(v8 + 32));
      v8 = *(a1 + 1104);
      if (!v8)
      {
        continue;
      }
    }

    NSZoneFree(0, v8);
  }

  for (k = *(a1 + 1112); k; *(a1 + 1112) = k)
  {
    v11 = k;
    k = *(k + 64);
    v12 = *(v11 + 48);
    if (v12)
    {
      do
      {
        v13 = v12[2];
        v14 = v12[3];
        if (v13)
        {
          NSZoneFree(0, v13);
        }

        NSZoneFree(0, v12);
        v12 = v14;
      }

      while (v14);
      v11 = *(a1 + 1112);
    }

    if (*v11)
    {
      NSZoneFree(0, *v11);
      v11 = *(a1 + 1112);
      if (!v11)
      {
        continue;
      }
    }

    NSZoneFree(0, v11);
  }

  *(a1 + 2228) = -1;
  *(a1 + 40) = -1;
  result = 0.0;
  *(a1 + 2248) = 0u;
  *(a1 + 1084) = 0xFFFFFFFFLL;
  *(a1 + 1184) = DefaultMsgProc;
  *(a1 + 1192) = DefaultPanicProc;
  return result;
}

uint64_t _RTFGetToken(uint64_t result)
{
  v1 = result;
  v2 = *(result + 44);
  if ((v2 & 0x80000000) == 0)
  {
    *(result + 2228) = v2;
    *(result + 2232) = *(result + 48);
    *(result + 2240) = *(result + 56);
    __strlcpy_chk();
    result = strlen((v1 + 1200));
    *(v1 + 2224) = result;
    *(v1 + 44) = -1;
    return result;
  }

  v3 = (result + 2228);
  *(result + 2240) = -1000000;
  *(result + 2224) = 0u;
  *(result + 1200) = 0;
  v4 = *(result + 40);
  if (v4 == -1)
  {
    v5 = *(result + 24);
    if (v5 >= *(result + 16))
    {
      *v3 = 4;
      return result;
    }

    v6 = *(result + 8);
    *(result + 24) = v5 + 1;
    v4 = *(v6 + v5);
    *(result + 2224) = 1;
    *(result + 1200) = v4;
  }

  else
  {
    *(result + 2224) = 1;
    *(result + 1200) = v4;
    *(result + 1201) = 0;
    *(result + 40) = -1;
  }

  if (v4 > 122)
  {
    if (v4 == 125)
    {
      v12 = 0x100000001;
    }

    else
    {
      if (v4 != 123)
      {
        goto LABEL_18;
      }

      v12 = 1;
    }

    *v3 = v12;
    return result;
  }

  if (v4 == 9)
  {
    *v3 = 0x600000003;
    v13 = 37;
    goto LABEL_20;
  }

  if (v4 != 92)
  {
LABEL_18:
    *(result + 2228) = 2;
    *(result + 2232) = v4;
    return result;
  }

  v7 = *(result + 24);
  if (v7 >= *(result + 16))
  {
    return result;
  }

  v8 = *(result + 8);
  *(result + 24) = v7 + 1;
  v9 = *(v8 + v7);
  v10 = v9;
  *(result + 2224) = 2;
  *(result + 1201) = v9;
  v11 = v9;
  if (v9 < 0)
  {
    result = __maskrune(v9, 0x100uLL);
  }

  else
  {
    result = *(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x100;
  }

  if (!result)
  {
    if (v10 > 122)
    {
      if (v10 > 124)
      {
        if (v10 == 125)
        {
          goto LABEL_67;
        }

        if (v10 != 126)
        {
          return result;
        }
      }

      else if (v10 == 123)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v19 = v10 - 39;
      if ((v10 - 39) > 0x38)
      {
LABEL_57:
        if (v10 != 10 && v10 != 13)
        {
          return result;
        }

        *v3 = 0x600000003;
        v13 = 28;
LABEL_20:
        *(v1 + 2236) = v13;
        return result;
      }

      if (((1 << v19) & 0x100000000000048) == 0)
      {
        if (((1 << v19) & 0x20000000080000) == 0)
        {
          if (v10 == 39)
          {
            result = GetChar(v1);
            if (result != -1)
            {
              v20 = result;
              result = GetChar(v1);
              if (result != -1)
              {
                v21 = result;
                *(v1 + 2228) = 2;
                v22 = RTFCharToHex(v20);
                result = RTFCharToHex(v21);
                *(v1 + 2232) = result + 16 * v22;
              }
            }

            return result;
          }

          goto LABEL_57;
        }

LABEL_67:
        *(v1 + 2228) = 2;
        *(v1 + 2232) = v11;
        return result;
      }
    }

    *v3 = 0x600000003;
    if (v10 <= 94)
    {
      if (v10 == 42)
      {
        v13 = 52;
      }

      else
      {
        if (v10 != 45)
        {
          return result;
        }

        v13 = 50;
      }
    }

    else
    {
      switch(v10)
      {
        case '_':
          v13 = 51;
          break;
        case '|':
          v13 = 47;
          break;
        case '~':
          v13 = 49;
          break;
        default:
          return result;
      }
    }

    goto LABEL_20;
  }

  v14 = v1 + 1200;
  v15 = MEMORY[0x1E69E9830];
  if ((v10 & 0x80) == 0)
  {
    goto LABEL_28;
  }

LABEL_26:
  if (__maskrune(v10, 0x100uLL))
  {
    while (1)
    {
      v16 = *(v1 + 24);
      if (v16 >= *(v1 + 16))
      {
        break;
      }

      v17 = *(v1 + 2224);
      if (v17 > 1022)
      {
        break;
      }

      v18 = *(v1 + 8);
      *(v1 + 24) = v16 + 1;
      v10 = *(v18 + v16);
      *(v1 + 2224) = v17 + 1;
      *(v14 + v17) = v10;
      *(v14 + *(v1 + 2224)) = 0;
      if ((v10 & 0x80) != 0)
      {
        goto LABEL_26;
      }

LABEL_28:
      if ((*(v15 + 4 * v10 + 60) & 0x100) == 0)
      {
        goto LABEL_44;
      }
    }

    return Lookup(v1, (v1 + 1200));
  }

  else
  {
LABEL_44:
    *(*(v1 + 2224) + v14 - 1) = 0;
    result = Lookup(v1, (v1 + 1200));
    *(*(v1 + 2224) + v14 - 1) = v10;
    if (v10 == 45)
    {
      result = GetChar(v1);
      if (result == -1)
      {
        return result;
      }

      v10 = result;
      v23 = -1;
    }

    else
    {
      v23 = 1;
    }

    if ((v10 - 48) <= 9)
    {
      *(v1 + 2240) = 0;
      while (1)
      {
        v24 = v10 + 10 * *(v1 + 2240) - 48;
        *(v1 + 2240) = v24;
        v25 = *(v1 + 24);
        if (v25 >= *(v1 + 16))
        {
          break;
        }

        v26 = *(v1 + 2224);
        if (v26 > 1022)
        {
          break;
        }

        v27 = *(v1 + 8);
        *(v1 + 24) = v25 + 1;
        v10 = *(v27 + v25);
        *(v1 + 2224) = v26 + 1;
        *(v14 + v26) = v10;
        *(v14 + *(v1 + 2224)) = 0;
        if ((v10 - 48) >= 0xA)
        {
          v24 = *(v1 + 2240);
          goto LABEL_72;
        }
      }

      v10 = -1;
LABEL_72:
      *(v1 + 2240) = v24 * v23;
    }

    if (v10 != -1)
    {
      if (v10 != 32)
      {
        *(v1 + 40) = v10;
      }

      v28 = *(v1 + 2224) - 1;
      *(v1 + 2224) = v28;
      *(v14 + v28) = 0;
    }
  }

  return result;
}

uint64_t Lookup(uint64_t result, char *__s1)
{
  v2 = result;
  v4 = __s1 + 1;
  v3 = __s1[1];
  if (__s1[1] && !__s1[2] && (v3 - 85) <= 0x21 && ((1 << (v3 - 85)) & 0x300122001) != 0)
  {
    *(result + 2228) = 0xC00000003;
    if (v3 > 104)
    {
      switch(v3)
      {
        case 'i':
          v17 = 12;
          break;
        case 'u':
          v17 = 38;
          break;
        case 'v':
          v17 = 27;
          break;
        default:
          return result;
      }
    }

    else
    {
      switch(v3)
      {
        case 'U':
          v17 = 36;
          break;
        case 'b':
          v17 = 1;
          break;
        case 'f':
          v17 = 10;
          break;
        default:
          return result;
      }
    }

    v14 = 559;
    goto LABEL_43;
  }

  v5 = 0;
  v6 = 30;
  do
  {
    v7 = (v6 + v5) / 2;
    v8 = (&rtfVeryCommonKey + 24 * v7);
    result = strcmp(v4, v8[2]);
    if ((result & 0x80000000) != 0)
    {
      v6 = v7 - 1;
    }

    else
    {
      if (!result)
      {
LABEL_22:
        v18 = *v8;
        goto LABEL_33;
      }

      v5 = v7 + 1;
    }
  }

  while (v6 >= v5);
  v9 = 0;
  v10 = 30;
  do
  {
    v11 = (v10 + v9) / 2;
    v8 = (&rtfSomewhatCommonKey + 24 * v11);
    result = strcmp(v4, v8[2]);
    if ((result & 0x80000000) != 0)
    {
      v10 = v11 - 1;
    }

    else
    {
      if (!result)
      {
        goto LABEL_22;
      }

      v9 = v11 + 1;
    }
  }

  while (v10 >= v9);
  v12 = 0;
  v13 = 907;
  v14 = 557;
  while (1)
  {
    v15 = (v13 + v12) / 2;
    v16 = (&rtfKey + 24 * v15);
    result = strcmp(v4, v16[2]);
    if ((result & 0x80000000) == 0)
    {
      break;
    }

    v13 = v15 - 1;
LABEL_20:
    if (v13 < v12)
    {
      v17 = 0;
      goto LABEL_43;
    }
  }

  if (result)
  {
    v12 = v15 + 1;
    goto LABEL_20;
  }

  v18 = *v16;
LABEL_33:
  v2[279] = vmovn_s64(v18);
  v17 = 3;
  v14 = 557;
LABEL_43:
  v2->i32[v14] = v17;
  return result;
}

void controlClass(uint64_t a1)
{
  v338 = *MEMORY[0x1E69E9840];
  flushCharacters(a1, 1);
  v3 = *(a1 + 2768);
  if (v3 > 9)
  {
    if (v3 > 22)
    {
      if (v3 == 23)
      {
        if (*(a1 + 2772) == 2)
        {
          *(a1 + 372) = CFStringConvertWindowsCodepageToEncoding(*(a1 + 2776));
        }
      }

      else if (v3 == 28)
      {
        if (*(a1 + 2772) != 22)
        {
          return;
        }

        if ((*(a1 + 3024) & 1) == 0)
        {
          v69 = 0;
          while (1)
          {
            do
            {
              _NSRTFGetToken((a1 + 536));
            }

            while (*(a1 + 2764) != 1);
            v70 = *(a1 + 2768);
            if (v70 == 1)
            {
              if (!v69)
              {
                goto LABEL_140;
              }

              --v69;
            }

            if (!v70)
            {
              ++v69;
            }
          }
        }

        v57 = *(a1 + 340);
        if (v57 == -1)
        {
          v57 = 80;
        }

        v58 = *(a1 + 344) / 1000.0 + v57;
        if (v58 >= 810.0 && v58 <= 824.0)
        {
          _NSRTFGetToken((a1 + 536));
          if (*(a1 + 2764) != 3 || *(a1 + 2768) != 6 || *(a1 + 2772) != 37 || (_NSRTFRouteToken(a1 + 536), _NSRTFGetToken((a1 + 536)), *(a1 + 2764) != 1) || *(a1 + 2768) != 1)
          {
LABEL_140:

            _NSRTFUngetToken(a1 + 536);
          }
        }
      }

      else if (v3 == 29 && *(a1 + 356) == -1)
      {
        v41 = *(a1 + 2772);
        if (v41 <= 3 && v41 != 1)
        {
          *(a1 + 356) = v41;
        }
      }

      return;
    }

    if (v3 == 10)
    {
      v42 = [a1 _currentTable];
      v43 = [a1 _currentTableCell];
      v44 = v43;
      switch(*(a1 + 2772))
      {
        case 0:

          [a1 _startTableRowDefinition];
          return;
        case 2:

          [a1 _endTableCellDefinition];
          return;
        case 4:

          [a1 _mergeTableCellsHorizontally];
          return;
        case 0xE:
          v276 = a1;
          v277 = 1;
          goto LABEL_797;
        case 0xF:
          v276 = a1;
          v277 = 0;
          goto LABEL_797;
        case 0x10:
          v276 = a1;
          v277 = 3;
          goto LABEL_797;
        case 0x11:
          v276 = a1;
          v277 = 2;
LABEL_797:
          v279 = 1;
          goto LABEL_801;
        case 0x16:
          v191 = *(a1 + 2776);
          v192 = a1;
          v193 = 8;
          goto LABEL_788;
        case 0x19:

          [a1 _lastTableRow];
          return;
        case 0x1C:
          v276 = a1;
          v277 = 3;
          goto LABEL_800;
        case 0x1D:
          v276 = a1;
          v277 = 1;
          goto LABEL_800;
        case 0x1E:
          v276 = a1;
          v277 = 0;
          goto LABEL_800;
        case 0x1F:
          v276 = a1;
          v277 = 2;
LABEL_800:
          v279 = 0;
LABEL_801:

          [v276 _setCurrentBorderEdge:v277 isTable:v279];
          return;
        case 0x21:
          v275 = [a1 _currentTableCell];

          [v275 setBackgroundColor:0];
          return;
        case 0x2F:
          v191 = *(a1 + 2776);
          v192 = a1;
          v193 = 7;
LABEL_788:

LABEL_790:
          processColor(v192, v191, v193, 0);
          return;
        case 0x30:
          v278 = *(a1 + 2776);
          v274 = [v42 valueTypeForDimension:0];
          v271 = v278 / 20.0;
          goto LABEL_817;
        case 0x31:
          [v42 valueForDimension:0];
          v274 = *(a1 + 2776) == 2;
LABEL_817:
          v43 = v42;
          goto LABEL_818;
        case 0x32:
          v280 = *(a1 + 2776);

          [v42 _setTableFlags:v280];
          return;
        case 0x33:
          v271 = *(a1 + 2776) / 20.0;
          v43 = v42;
          v274 = 0;
          goto LABEL_818;
        case 0x34:
          v271 = *(a1 + 2776) / 20.0;
          v43 = v42;
          goto LABEL_851;
        case 0x35:
          v271 = *(a1 + 2776) / 20.0;
          v43 = v42;
          goto LABEL_822;
        case 0x36:
          v271 = *(a1 + 2776) / 20.0;
          v43 = v42;
          goto LABEL_751;
        case 0x37:
          v271 = *(a1 + 2776) / 20.0;
          v43 = v42;
          goto LABEL_766;
        case 0x38:
          v271 = *(a1 + 2776) / 20.0;
          v43 = v42;
          goto LABEL_862;
        case 0x39:
          v271 = *(a1 + 2776) / 20.0;
          v43 = v42;
          goto LABEL_844;
        case 0x3A:
          v271 = *(a1 + 2776) / 20.0;
          v43 = v42;
          goto LABEL_756;
        case 0x3B:
          v271 = *(a1 + 2776) / 20.0;
          v43 = v42;
          goto LABEL_837;
        case 0x3C:
          v271 = *(a1 + 2776) / 20.0;
          v43 = v42;
          goto LABEL_835;
        case 0x3D:
          v269 = *(a1 + 2776) / 20.0;
          v43 = v42;
          goto LABEL_763;
        case 0x3E:
          v269 = *(a1 + 2776) / 20.0;
          v43 = v42;
          goto LABEL_832;
        case 0x3F:
          v269 = *(a1 + 2776) / 20.0;
          v43 = v42;
          goto LABEL_825;
        case 0x40:
          v269 = *(a1 + 2776) / 20.0;
          v43 = v42;
          goto LABEL_876;
        case 0x41:
          v269 = *(a1 + 2776) / 20.0;
          v43 = v42;
          goto LABEL_857;
        case 0x42:
          v269 = *(a1 + 2776) / 20.0;
          v43 = v42;
          goto LABEL_868;
        case 0x43:
          v269 = *(a1 + 2776) / 20.0;
          v43 = v42;
          goto LABEL_827;
        case 0x44:
          v269 = *(a1 + 2776) / 20.0;
          v43 = v42;
          goto LABEL_847;
        case 0x45:
          v269 = *(a1 + 2776) / 20.0;
          v43 = v42;
          goto LABEL_758;
        case 0x46:
          v269 = *(a1 + 2776) / 20.0;
          v43 = v42;
          goto LABEL_840;
        case 0x47:
          v269 = *(a1 + 2776) / 20.0;
          v43 = v42;
          goto LABEL_745;
        case 0x48:
          v269 = *(a1 + 2776) / 20.0;
          v43 = v42;
          goto LABEL_854;
        case 0x49:
          v269 = *(a1 + 2776) / 20.0;
          v43 = v42;
          goto LABEL_859;
        case 0x4A:
          v269 = *(a1 + 2776) / 20.0;
          v43 = v42;
          goto LABEL_779;
        case 0x4B:
          v269 = *(a1 + 2776) / 20.0;
          v43 = v42;
          goto LABEL_872;
        case 0x4C:
          v269 = *(a1 + 2776) / 20.0;
          v43 = v42;
          goto LABEL_830;
        case 0x4D:
          v273 = *(a1 + 2776);
          v274 = [v43 valueTypeForDimension:0];
          v271 = v273 / 20.0;
          goto LABEL_786;
        case 0x4E:
          [v43 valueForDimension:0];
          v274 = *(a1 + 2776) == 2;
LABEL_786:
          v43 = v44;
LABEL_818:
          v281 = 0;
          goto LABEL_864;
        case 0x4F:
          v271 = *(a1 + 2776) / 20.0;
          v274 = 0;
          goto LABEL_852;
        case 0x50:
          v271 = *(a1 + 2776) / 20.0;
LABEL_851:
          v274 = 1;
LABEL_852:
          v281 = 1;
          goto LABEL_864;
        case 0x51:
          v271 = *(a1 + 2776) / 20.0;
LABEL_822:
          v274 = 0;
          goto LABEL_823;
        case 0x52:
          v271 = *(a1 + 2776) / 20.0;
LABEL_751:
          v274 = 1;
LABEL_823:
          v281 = 2;
          goto LABEL_864;
        case 0x53:
          v271 = *(a1 + 2776) / 20.0;
LABEL_766:
          v274 = 0;
          goto LABEL_863;
        case 0x54:
          v271 = *(a1 + 2776) / 20.0;
LABEL_862:
          v274 = 1;
LABEL_863:
          v281 = 4;
          goto LABEL_864;
        case 0x55:
          v271 = *(a1 + 2776) / 20.0;
LABEL_844:
          v274 = 0;
          goto LABEL_845;
        case 0x56:
          v271 = *(a1 + 2776) / 20.0;
LABEL_756:
          v274 = 1;
LABEL_845:
          v281 = 5;
          goto LABEL_864;
        case 0x57:
          v271 = *(a1 + 2776) / 20.0;
LABEL_837:
          v274 = 0;
          goto LABEL_838;
        case 0x58:
          v271 = *(a1 + 2776) / 20.0;
LABEL_835:
          v274 = 1;
LABEL_838:
          v281 = 6;
LABEL_864:

          [v43 setValue:v274 type:v281 forDimension:v271];
          return;
        case 0x59:
          v269 = *(a1 + 2776) / 20.0;
LABEL_763:
          v272 = 0;
          goto LABEL_833;
        case 0x5A:
          v269 = *(a1 + 2776) / 20.0;
LABEL_832:
          v272 = 1;
LABEL_833:
          v282 = 1;
          goto LABEL_842;
        case 0x5B:
          v269 = *(a1 + 2776) / 20.0;
LABEL_825:
          v272 = 0;
          goto LABEL_877;
        case 0x5C:
          v269 = *(a1 + 2776) / 20.0;
LABEL_876:
          v272 = 1;
LABEL_877:
          v282 = 1;
          goto LABEL_878;
        case 0x5D:
          v269 = *(a1 + 2776) / 20.0;
LABEL_857:
          v272 = 0;
          goto LABEL_869;
        case 0x5E:
          v269 = *(a1 + 2776) / 20.0;
LABEL_868:
          v272 = 1;
LABEL_869:
          v282 = 1;
          goto LABEL_870;
        case 0x5F:
          v269 = *(a1 + 2776) / 20.0;
LABEL_827:
          v272 = 0;
          goto LABEL_848;
        case 0x60:
          v269 = *(a1 + 2776) / 20.0;
LABEL_847:
          v272 = 1;
LABEL_848:
          v282 = 1;
          goto LABEL_874;
        case 0x61:
          v269 = *(a1 + 2776) / 20.0;
LABEL_758:
          v272 = 0;
          goto LABEL_841;
        case 0x62:
          v269 = *(a1 + 2776) / 20.0;
LABEL_840:
          v272 = 1;
LABEL_841:
          v282 = -1;
LABEL_842:
          v283 = 1;
          goto LABEL_879;
        case 0x63:
          v269 = *(a1 + 2776) / 20.0;
LABEL_745:
          v272 = 0;
          goto LABEL_855;
        case 0x64:
          v269 = *(a1 + 2776) / 20.0;
LABEL_854:
          v272 = 1;
LABEL_855:
          v282 = -1;
LABEL_878:
          v283 = 0;
          goto LABEL_879;
        case 0x65:
          v269 = *(a1 + 2776) / 20.0;
LABEL_859:
          v272 = 0;
          goto LABEL_860;
        case 0x66:
          v269 = *(a1 + 2776) / 20.0;
LABEL_779:
          v272 = 1;
LABEL_860:
          v282 = -1;
LABEL_870:
          v283 = 3;
          goto LABEL_879;
        case 0x67:
          v269 = *(a1 + 2776) / 20.0;
LABEL_872:
          v272 = 0;
          goto LABEL_873;
        case 0x68:
          v269 = *(a1 + 2776) / 20.0;
LABEL_830:
          v272 = 1;
LABEL_873:
          v282 = -1;
LABEL_874:
          v283 = 2;
LABEL_879:

          [v43 setWidth:v272 type:v282 forLayer:v283 edge:v269];
          return;
        case 0x69:
          v270 = 0;
          goto LABEL_806;
        case 0x6A:
          v270 = 3;
          goto LABEL_806;
        case 0x6B:
          v270 = 1;
          goto LABEL_806;
        case 0x6C:
          v270 = 2;
LABEL_806:

          [v43 setVerticalAlignment:v270];
          break;
        case 0x6E:

          [a1 _mergeTableCellsVertically];
          break;
        default:
          return;
      }

      return;
    }

    if (v3 == 11)
    {
      v51 = *(a1 + 2772);
      switch(v51)
      {
        case 0:
          v52 = [a1 _mutableParagraphStyle];
          [v52 setParagraphStyle:{objc_msgSend(a1, "defaultParagraphStyle")}];
          [a1 defaultTabInterval];
          v54 = v52;
          goto LABEL_479;
        case 1:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 22:
          return;
        case 2:
          v162 = *(a1 + 2776);
          v163 = [a1 _mutableParagraphStyle];
          if (v162 == -1000000)
          {
            LODWORD(v2) = 1.0;
          }

          else
          {
            v2 = 0.0;
          }

          goto LABEL_531;
        case 3:

          [a1 _paragraphInTable];
          return;
        case 11:
          v158 = [a1 _mutableParagraphStyle];
          v159 = 0;
          goto LABEL_456;
        case 12:
          v158 = [a1 _mutableParagraphStyle];
          v159 = 2;
          goto LABEL_456;
        case 13:
          v158 = [a1 _mutableParagraphStyle];
          v159 = 3;
          goto LABEL_456;
        case 14:
          v158 = [a1 _mutableParagraphStyle];
          v159 = 1;
LABEL_456:

          [v158 setAlignment:v159];
          return;
        case 15:
          v143 = [a1 _mutableParagraphStyle];
          [v143 headIndent];
          v149 = *(a1 + 2776) / 20.0;
          goto LABEL_431;
        case 16:
          v143 = [a1 _mutableParagraphStyle];
          [v143 firstLineHeadIndent];
          v145 = v144;
          [v143 headIndent];
          v147 = v146;
          [v143 setHeadIndent:*(a1 + 2776) / 20.0];
          v148 = v145 - v147;
          v149 = *(a1 + 2776) / 20.0;
LABEL_431:
          v170 = v148 + v149;

          [v143 setFirstLineHeadIndent:v170];
          return;
        case 17:
          v164 = *(a1 + 2776);
          if (*(a1 + 424) - (*(a1 + 448) + *(a1 + 440)) + v164 / -20.0 >= 0.0)
          {
            v165 = *(a1 + 424) - (*(a1 + 448) + *(a1 + 440)) + v164 / -20.0;
          }

          else
          {
            v165 = 0.0;
          }

          v166 = [a1 _mutableParagraphStyle];

          [v166 setTailIndent:v165];
          return;
        case 18:
          v140 = [a1 _mutableParagraphStyle];
          v141 = *(a1 + 2776) / 20.0;

          [v140 setParagraphSpacingBefore:v141];
          return;
        case 19:
          v142 = ParAttr_ignoreParaSpacing;
          if (ParAttr_ignoreParaSpacing != 254)
          {
            goto LABEL_936;
          }

          if ([objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")])
          {
            v142 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
            ParAttr_ignoreParaSpacing = v142;
          }

          else
          {
            v142 = ParAttr_ignoreParaSpacing;
            if (ParAttr_ignoreParaSpacing == 254)
            {
              ParAttr_ignoreParaSpacing = 2;
              goto LABEL_938;
            }
          }

LABEL_936:
          if (!v142)
          {
            goto LABEL_939;
          }

          if (v142 != 2)
          {
            return;
          }

LABEL_938:
          if (*(a1 + 340) == 100)
          {
            return;
          }

LABEL_939:
          v299 = [a1 _mutableParagraphStyle];
          v300 = *(a1 + 2776) / 20.0;

          [v299 setParagraphSpacing:v300];
          break;
        case 20:
          if (*(a1 + 2776) != 1000)
          {
            v154 = [a1 _mutableParagraphStyle];
            v155 = v154;
            v156 = *(a1 + 2776);
            if ((v156 & 0x80000000) != 0)
            {
              [v154 setMinimumLineHeight:-v156 / 20.0];
              v157 = -*(a1 + 2776) / 20.0;
            }

            else
            {
              [v154 setMinimumLineHeight:v156 / 20.0];
              v157 = 0.0;
            }

            v183 = v155;
LABEL_944:

            [v183 setMaximumLineHeight:v157];
          }

          return;
        case 21:
          if (*(a1 + 2776) == 1)
          {
            v150 = [a1 _mutableParagraphStyle];
            [v150 minimumLineHeight];
            [v150 setLineHeightMultiple:v151 / 12.0];
            v152 = 0.0;
            v153 = v150;
LABEL_443:

            [v153 setMinimumLineHeight:v152];
          }

          return;
        case 23:
          v94 = [a1 _mutableParagraphStyle];
          goto LABEL_406;
        case 24:
          v94 = [a1 _mutableParagraphStyle];
          v139 = 0;
          goto LABEL_483;
        case 25:
          v167 = [a1 _mutableParagraphStyle];
          v168 = (a1 + 410);
          v169 = -[NSTextTab initWithType:location:](+[NSTextTab allocWithZone:](NSTextTab, "allocWithZone:", [v167 zone]), "initWithType:location:", (*(a1 + 410) >> 10) & 0xF, *(a1 + 2776) / 20.0);
          [v167 addTabStop:v169];

          *v168 &= 0xFFFFC3FF;
          return;
        case 26:
          v160 = (a1 + 410);
          v161 = *(a1 + 410) & 0xFFFFC3FF;
          goto LABEL_896;
        case 27:
          v160 = (a1 + 410);
          v161 = *(a1 + 410) & 0xFFFFC3FF | 0x400;
          goto LABEL_896;
        case 28:
          v160 = (a1 + 410);
          v161 = *(a1 + 410) & 0xFFFFC3FF | 0x800;
          goto LABEL_896;
        case 29:
          v160 = (a1 + 410);
          v161 = *(a1 + 410) & 0xFFFFC3FF | 0xC00;
LABEL_896:
          *v160 = v161;
          return;
        default:
          switch(v51)
          {
            case 'V':
              v60 = [a1 _currentBorderEdge];
              if ([a1 _currentBorderIsTable])
              {
                v61 = [a1 _currentTable];
              }

              else
              {
                v61 = [a1 _currentTableCell];
              }

              v287 = v61;
              [v61 setWidth:0 type:0 forLayer:v60 edge:*(a1 + 2776) / 20.0];
              if ([v287 borderColorForEdge:v60])
              {
                return;
              }

              v286 = [(objc_class *)getNSColorClass_3() colorWithCalibratedWhite:0.75 alpha:1.0];
              v285 = v287;
LABEL_890:

              [v285 setBorderColor:v286 forEdge:v60];
              return;
            case 'W':
              v191 = *(a1 + 2776);
              v192 = a1;
              v193 = 6;
              goto LABEL_788;
            case 'Y':
              v60 = [a1 _currentBorderEdge];
              if ([a1 _currentBorderIsTable])
              {
                v184 = [a1 _currentTable];
              }

              else
              {
                v184 = [a1 _currentTableCell];
              }

              v284 = v184;
              [v184 setWidth:0 type:0 forLayer:v60 edge:0.0];
              v285 = v284;
              v286 = 0;
              goto LABEL_890;
            case 'i':
              v183 = [a1 _mutableParagraphStyle];
              v157 = *(a1 + 2776) / 20.0;
              goto LABEL_944;
            case 'j':
              v158 = [a1 _mutableParagraphStyle];
              v159 = 4;
              goto LABEL_456;
            case 'k':
              v181 = [a1 _mutableParagraphStyle];
              v182 = *(a1 + 2776) / 20.0;

              [v181 setLineSpacing:v182];
              return;
            case 'l':
              v153 = [a1 _mutableParagraphStyle];
              v152 = *(a1 + 2776) / 20.0;
              goto LABEL_443;
            case 'm':
              v54 = [a1 _mutableParagraphStyle];
              v53 = *(a1 + 2776) / 20.0;
              goto LABEL_479;
            case 'n':
              if ((*(a1 + 2776) & 0x80000000) != 0)
              {
                return;
              }

              [a1 _setCurrentListNumber:?];
              if ((*(a1 + 2776) & 0x80000000) != 0)
              {
                return;
              }

              v185 = [a1 _listDefinitions];
              v186 = [v185 objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(a1 + 2776))}];
              if (!v186)
              {
                return;
              }

              v176 = v186;
              v187 = [a1 _currentListLevel];
              if (v187 >= [v176 count])
              {
                return;
              }

              v178 = [a1 _mutableParagraphStyle];
              v179 = [v178 tabStops];
              v180 = [a1 _currentListLevel] + 1;
              goto LABEL_466;
            case 'o':
              if ((*(a1 + 2776) & 0x80000000) != 0)
              {
                return;
              }

              [a1 _setCurrentListLevel:?];
              if ((*(a1 + 2776) & 0x80000000) != 0)
              {
                return;
              }

              v174 = [a1 _listDefinitions];
              v175 = [v174 objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(a1, "_currentListNumber"))}];
              if (!v175)
              {
                return;
              }

              v176 = v175;
              v177 = *(a1 + 2776);
              if ([v175 count] <= v177)
              {
                return;
              }

              v178 = [a1 _mutableParagraphStyle];
              v179 = [v178 tabStops];
              v180 = *(a1 + 2776) + 1;
LABEL_466:
              [v178 setTextLists:{objc_msgSend(v176, "subarrayWithRange:", 0, v180)}];
              if ([v179 count] >= 2)
              {
                v188 = [v179 objectAtIndex:1];
                v189 = +[NSTextTab allocWithZone:](NSTextTab, "allocWithZone:", [v178 zone]);
                [v188 location];
                v317 = -[NSTextTab initWithTextAlignment:location:options:](v189, "initWithTextAlignment:location:options:", 4, [v188 options], v190);
                [v178 removeTabStop:v188];
                [v178 addTabStop:v317];
              }

              break;
            case 'p':
              v171 = *(a1 + 2776);

              [a1 _setTableNestingLevel:v171];
              return;
            case 'q':
              v163 = [a1 _mutableParagraphStyle];
              v2 = *(a1 + 2776) / 20.0;
              *&v2 = v2;
              goto LABEL_531;
            case 'r':
              v172 = [a1 _mutableParagraphStyle];
              v173 = *(a1 + 2776) / 20.0;
              *&v173 = v173;

              [v172 setTighteningFactorForTruncation:v173];
              return;
            case 's':
              v94 = [a1 _mutableParagraphStyle];
              v139 = -1;
              goto LABEL_483;
            case 't':
              v196 = [a1 _mutableParagraphStyle];

              [v196 setSpansAllLines:1];
              return;
            case 'u':
              v194 = [a1 _mutableParagraphStyle];
              v195 = *(a1 + 2776);

              [v194 setHorizontalAlignment:v195];
              return;
            case 'v':
              v197 = [a1 _mutableParagraphStyle];

              [v197 setFullyJustified:1];
              return;
            default:
              return;
          }

          return;
      }

      return;
    }

    if (v3 != 12)
    {
      return;
    }

    v36 = *(*(a1 + 2760) + a1 + 1735);
    switch(*(a1 + 2772))
    {
      case 0:
        v37 = [a1 mutableAttributes];
        v257 = *(a1 + 410);
        *(a1 + 384) = 0x4028000000000000;
        *(a1 + 410) = v257 & 0xFFFFFFF8;
        processFont(a1, 0);
        [v37 removeObjectForKey:@"NSBaselineOffset"];
        [v37 removeObjectForKey:@"NSSuperScript"];
        [v37 removeObjectForKey:@"NSKern"];
        [v37 removeObjectForKey:@"NSUnderline"];
        [v37 removeObjectForKey:@"NSStrikethrough"];
        [v37 removeObjectForKey:@"NSColor"];
        [v37 removeObjectForKey:@"NSBackgroundColor"];
        [v37 removeObjectForKey:@"NSStrokeColor"];
        [v37 removeObjectForKey:@"NSUnderlineColor"];
        [v37 removeObjectForKey:@"NSStrikethroughColor"];
        [v37 removeObjectForKey:@"NSStrokeWidth"];
        [v37 removeObjectForKey:@"NSShadow"];
        [v37 removeObjectForKey:@"NSObliqueness"];
        [v37 removeObjectForKey:@"NSExpansion"];
        [v37 removeObjectForKey:@"NSTextHighlightStyle"];
        v203 = NSTextHighlightColorSchemeAttributeName;
        goto LABEL_726;
      case 1:
        v35 = v36 == 48;
        v160 = (a1 + 410);
        v161 = *(a1 + 410) & 0xFFFFFFFA;
        if (!v35)
        {
          ++v161;
        }

        goto LABEL_896;
      case 4:
        v258 = *(a1 + 2776);
        if (v258 == -1000000)
        {
          v291 = -6.0;
          goto LABEL_930;
        }

        if (!v258)
        {
          goto LABEL_719;
        }

        v259 = -v258;
        goto LABEL_904;
      case 5:
      case 0x1A:
        if (*(a1 + 2776) == -1000000)
        {
          *(a1 + 2776) = 1;
        }

        v37 = [a1 mutableAttributes];
        if (*(a1 + 2772) == 5)
        {
          v134 = -*(a1 + 2776);
        }

        else
        {
          v134 = *(a1 + 2776);
        }

        v135 = [MEMORY[0x1E696AD98] numberWithInteger:v134];
        v136 = &NSSuperscriptAttributeName;
        goto LABEL_911;
      case 6:
        v204 = [a1 mutableAttributes];
        v205 = &NSSuperscriptAttributeName;
        goto LABEL_924;
      case 7:
        v242 = *(a1 + 2776);
        if (!v242)
        {
          goto LABEL_893;
        }

        v243 = *(a1 + 340);
        if (v243 == -1)
        {
          v243 = 80;
        }

        v244 = v243 > 102 || v243 == 0;
        v245 = 0.5;
        if (v244)
        {
          v245 = 0.25;
        }

        v246 = v245 * v242;
        goto LABEL_894;
      case 8:
        v247 = *(a1 + 2776);
        if (v247)
        {
          v246 = v247 / 20.0;
        }

        else
        {
LABEL_893:
          v246 = 0.0;
        }

LABEL_894:
        *(a1 + 392) = v246;
        goto LABEL_895;
      case 9:
        if (!*(a1 + 2776))
        {
          *(a1 + 392) = 0xC0F86A0000000000;
          goto LABEL_895;
        }

        if ((*(a1 + 410) & 0x10) != 0)
        {
          [objc_msgSend(objc_msgSend(a1 "mutableAttributes")];
          if (v298 != 0.0)
          {
            goto LABEL_895;
          }
        }

        else if (*(a1 + 392) != -100000.0)
        {
          goto LABEL_895;
        }

        *(a1 + 392) = 0;
LABEL_895:
        v160 = (a1 + 410);
        v161 = *(a1 + 410) & 0xFFFFFFEF;
        goto LABEL_896;
      case 0xA:
        processFont(a1, *(a1 + 2776));
        goto LABEL_710;
      case 0xB:
        v237 = vcvtd_n_f64_s32(*(a1 + 2776), 1uLL);
        goto LABEL_709;
      case 0xC:
        *(a1 + 410) = *(a1 + 410) & 0xFFFFFFF9 | (2 * (v36 != 48));
        return;
      case 0x12:
      case 0x44:
      case 0x45:
      case 0x46:
      case 0x49:
      case 0x4A:
        v76 = [a1 mutableAttributes];
        v77 = v76;
        if (*(a1 + 2772) == 18 && !*(a1 + 2776))
        {
          v204 = [a1 mutableAttributes];
          v205 = &NSShadowAttributeName;
          goto LABEL_924;
        }

        v78 = [v76 objectForKey:@"NSShadow"];
        v79 = v78;
        if (v78 && *(a1 + 2772) != 18)
        {
          v80 = [v78 copy];
        }

        else
        {
          v80 = objc_alloc_init(NSShadow);
        }

        v198 = v80;
        v199 = *(a1 + 2772);
        if (v199 > 69)
        {
          switch(v199)
          {
            case 'F':
              [(NSShadow *)v80 setShadowBlurRadius:*(a1 + 2776) / 20.0];
              break;
            case 'I':
              *__str = 0;
              __endptr[0] = 0;
              v326 = 0.0;
              v290 = *(a1 + 2776);
              [-[NSShadow shadowColor](v80 "shadowColor")];
              [(NSShadow *)v198 setShadowColor:[(objc_class *)getNSColorClass_3() colorWithCalibratedRed:*__str green:*__endptr blue:v326 alpha:v290 / 255.0]];
              break;
            case 'J':
              processColor(a1, *(a1 + 2776), 5, v80);
              break;
          }

LABEL_903:
          [v77 setObject:v198 forKey:@"NSShadow"];

          return;
        }

        switch(v199)
        {
          case 18:
            v200 = 3.0;
            v201 = 3.0;
            break;
          case 68:
            v289 = *(a1 + 2776) / 20.0;
            [v79 shadowOffset];
            v288 = v198;
            v200 = v289;
            goto LABEL_901;
          case 69:
            [v79 shadowOffset];
            v201 = *(a1 + 2776) / -20.0;
            break;
          default:
            goto LABEL_903;
        }

        v288 = v198;
LABEL_901:
        [(NSShadow *)v288 setShadowOffset:v200, v201];
        goto LABEL_903;
      case 0x13:
      case 0x25:
      case 0x2E:
        v84 = [a1 mutableAttributes];
        v37 = v84;
        if (!*(a1 + 2776))
        {
          [v84 removeObjectForKey:@"NSStrikethrough"];
          v203 = &NSStrikethroughColorAttributeName;
          goto LABEL_726;
        }

        v85 = *(a1 + 2772);
        v86 = 9;
        if (v85 != 46)
        {
          v86 = 1;
        }

        if (v85 == 37)
        {
          v87 = 32769;
        }

        else
        {
          v87 = v86;
        }

        v88 = MEMORY[0x1E696AD98];
        goto LABEL_722;
      case 0x14:
      case 0x15:
      case 0x16:
      case 0x18:
      case 0x30:
      case 0x31:
      case 0x32:
      case 0x33:
      case 0x34:
      case 0x35:
      case 0x36:
      case 0x37:
      case 0x38:
      case 0x39:
      case 0x3A:
      case 0x3B:
      case 0x3C:
        v37 = [a1 mutableAttributes];
        if (!*(a1 + 2776))
        {
          goto LABEL_725;
        }

        v38 = *(a1 + 2772);
        if (v38 <= 51)
        {
          if (v38 > 47)
          {
            if (v38 > 49)
            {
              if (v38 == 50)
              {
                v39 = 1025;
                goto LABEL_909;
              }
            }

            else if (v38 != 48)
            {
              v39 = 769;
              goto LABEL_909;
            }

            v39 = 513;
            goto LABEL_909;
          }

          switch(v38)
          {
            case 21:
              v39 = 257;
LABEL_909:
              v264 = MEMORY[0x1E696AD98];
LABEL_910:
              v135 = [v264 numberWithUnsignedInteger:v39];
              v136 = &NSUnderlineStyleAttributeName;
LABEL_911:
              v292 = *v136;
              v293 = v37;
LABEL_912:
              [v293 setObject:v135 forKey:v292];
              return;
            case 22:
              goto LABEL_505;
            case 24:
              v39 = 32769;
              goto LABEL_909;
          }
        }

        else
        {
          if (v38 <= 55)
          {
            if (v38 <= 53)
            {
              if (v38 != 52)
              {
                v39 = 258;
                goto LABEL_909;
              }

              goto LABEL_521;
            }

            if (v38 != 54)
            {
              v39 = 770;
              goto LABEL_909;
            }

LABEL_520:
            v39 = 514;
            goto LABEL_909;
          }

          if (v38 <= 58)
          {
            if (v38 == 56)
            {
              v39 = 1026;
              goto LABEL_909;
            }

            if (v38 == 57)
            {
              goto LABEL_520;
            }

            goto LABEL_907;
          }

          if (v38 == 60)
          {
LABEL_521:
            v39 = 2;
            goto LABEL_909;
          }

          if (v38 == 59)
          {
LABEL_505:
            v39 = 9;
            goto LABEL_909;
          }
        }

LABEL_907:
        v39 = 1;
        goto LABEL_909;
      case 0x17:
        v204 = [a1 mutableAttributes];
        v205 = &NSUnderlineStyleAttributeName;
        goto LABEL_924;
      case 0x19:
        v259 = *(a1 + 2776);
        if (v259 == -1000000)
        {
          v291 = 6.0;
        }

        else
        {
          if (!v259)
          {
LABEL_719:
            v204 = [a1 mutableAttributes];
            v205 = &NSBaselineOffsetAttributeName;
            goto LABEL_924;
          }

LABEL_904:
          v291 = vcvtd_n_f64_s32(v259, 1uLL);
        }

LABEL_930:
        v296 = [a1 mutableAttributes];
        v135 = [MEMORY[0x1E696AD98] numberWithDouble:v291];
        v297 = &NSBaselineOffsetAttributeName;
        goto LABEL_931;
      case 0x1C:
        v191 = *(a1 + 2776);
        v192 = a1;
        v193 = 0;
        goto LABEL_790;
      case 0x1D:
        v191 = *(a1 + 2776);
        v192 = a1;
        v193 = 1;
        goto LABEL_790;
      case 0x24:
        if (!*(a1 + 336))
        {
          processCharacter(a1, *(a1 + 2776));
        }

        return;
      case 0x26:
        processMSUnicodeChar(a1);
        return;
      case 0x27:
        *(a1 + 410) = *(a1 + 410) & 0xFFFFFC7F | ((*(a1 + 2776) & 7) << 7);
        return;
      case 0x28:
        v238 = *(a1 + 2776);
        v37 = [a1 mutableAttributes];
        if (v238)
        {
          v135 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 2776)];
          v136 = &NSCharacterShapeAttributeName;
          goto LABEL_911;
        }

        v203 = &NSCharacterShapeAttributeName;
        goto LABEL_726;
      case 0x29:
        v240 = *(a1 + 2776);
        v37 = [a1 mutableAttributes];
        if (v240 == 1)
        {
          v203 = &NSLigatureAttributeName;
          goto LABEL_726;
        }

        v135 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 2776)];
        v136 = &NSLigatureAttributeName;
        goto LABEL_911;
      case 0x2F:
        v191 = *(a1 + 2776);
        v192 = a1;
        v193 = 3;
        goto LABEL_790;
      case 0x3D:
        v239 = *(a1 + 2776);
        v37 = [a1 mutableAttributes];
        if (v239)
        {
          v135 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 2776) / 20.0];
          v136 = &NSStrokeWidthAttributeName;
          goto LABEL_911;
        }

        v203 = &NSStrokeWidthAttributeName;
        goto LABEL_726;
      case 0x3E:
        v191 = *(a1 + 2776);
        v192 = a1;
        v193 = 2;
        goto LABEL_790;
      case 0x3F:
        v263 = *(a1 + 2776);
        v37 = [a1 mutableAttributes];
        if (v263)
        {
          v264 = MEMORY[0x1E696AD98];
          v39 = *(a1 + 2776);
          goto LABEL_910;
        }

LABEL_725:
        v203 = &NSUnderlineStyleAttributeName;
        goto LABEL_726;
      case 0x40:
        v262 = *(a1 + 2776);
        v37 = [a1 mutableAttributes];
        if (!v262)
        {
          v203 = &NSStrikethroughStyleAttributeName;
          goto LABEL_726;
        }

        v88 = MEMORY[0x1E696AD98];
        v87 = *(a1 + 2776);
LABEL_722:
        v135 = [v88 numberWithUnsignedInteger:v87];
        v136 = &NSStrikethroughStyleAttributeName;
        goto LABEL_911;
      case 0x41:
        v191 = *(a1 + 2776);
        v192 = a1;
        v193 = 4;
        goto LABEL_790;
      case 0x42:
        v268 = *(a1 + 2776);
        v37 = [a1 mutableAttributes];
        if (v268)
        {
          v135 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 2776) / 20.0 / 100.0];
          v136 = &NSObliquenessAttributeName;
          goto LABEL_911;
        }

        v203 = &NSObliquenessAttributeName;
        goto LABEL_726;
      case 0x43:
        v241 = *(a1 + 2776);
        v37 = [a1 mutableAttributes];
        if (v241)
        {
          v135 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 2776) / 20.0 / 100.0];
          v136 = &NSExpansionAttributeName;
          goto LABEL_911;
        }

        v203 = &NSExpansionAttributeName;
LABEL_726:
        v265 = *v203;
        v204 = v37;
        goto LABEL_925;
      case 0x47:
        TypographyFeatures = readTypographyFeatures(a1);
        [a1 _updateAttributes];
        v249 = [a1 mutableAttributes];
        v250 = [objc_msgSend(v249 objectForKey:{@"NSFont", "fontDescriptor"}];
        v251 = v250;
        if (TypographyFeatures)
        {
          if (v250)
          {
            v252 = [objc_msgSend(v250 "fontAttributes")];
          }

          else
          {
            v252 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
          }

          v295 = v252;
          [v252 setObject:TypographyFeatures forKey:*MEMORY[0x1E69657A8]];
          if (!v295)
          {
            return;
          }
        }

        else
        {
          v294 = *MEMORY[0x1E69657A8];
          if ([v250 objectForKey:*MEMORY[0x1E69657A8]])
          {
            v295 = [objc_msgSend(v251 "fontAttributes")];
            [v295 removeObjectForKey:v294];
          }

          else
          {
            v295 = 0;
          }

          v310 = *MEMORY[0x1E69657C0];
          if ([v251 objectForKey:*MEMORY[0x1E69657C0]])
          {
            if (!v295)
            {
              v295 = [objc_msgSend(v251 "fontAttributes")];
            }

            [v295 removeObjectForKey:v310];
          }

          if (!v295)
          {
            return;
          }

          if ([v295 count] == 2)
          {
            v311 = [v295 objectForKey:@"NSFontNameAttribute"];
            v312 = [v295 objectForKey:@"NSFontSizeAttribute"];
            if (v311)
            {
              if (v312)
              {
                [v312 doubleValue];
                v313 = [UIFont _fontWithName:v311 size:?];
                if (v313)
                {
                  goto LABEL_992;
                }
              }
            }
          }
        }

        v313 = [*(a1 + 2960) objectForKey:v295];
        if (!v313)
        {
          v314 = [UIFont fontWithDescriptor:[UIFontDescriptor fontDescriptorWithFontAttributes:v295] size:0.0];
          v315 = *(a1 + 2960);
          if (!v315)
          {
            v315 = objc_alloc_init(MEMORY[0x1E695DF90]);
            *(a1 + 2960) = v315;
          }

          [v315 setObject:v314 forKey:v295];

          if (!v314)
          {
            return;
          }

LABEL_996:
          v293 = v249;
          v135 = v314;
          v292 = @"NSFont";
          goto LABEL_912;
        }

LABEL_992:
        v314 = v313;

        goto LABEL_996;
      case 0x48:
        v237 = *(a1 + 2776) / 1000.0;
LABEL_709:
        *(a1 + 384) = v237;
        goto LABEL_710;
      case 0x4C:
        *(a1 + 408) = *(a1 + 2776);
LABEL_710:
        v160 = (a1 + 410);
        v161 = *(a1 + 410) & 0xFFFFFFFB;
        goto LABEL_896;
      case 0x4D:
        FontPaletteColors = readFontPaletteColors(a1);
        if ([FontPaletteColors count])
        {
          [a1 _updateAttributes];
          v254 = [a1 mutableAttributes];
          v255 = [objc_msgSend(v254 objectForKey:{@"NSFont", "fontDescriptor"}];
          __endptr[0] = *MEMORY[0x1E6965828];
          *__str = FontPaletteColors;
          v256 = +[UIFont fontWithDescriptor:size:](UIFont, "fontWithDescriptor:size:", [v255 fontDescriptorByAddingAttributes:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", __str, __endptr, 1)}], 0.0);
          if (v256)
          {
            [v254 setObject:v256 forKey:@"NSFont"];
          }
        }

        return;
      case 0x4E:
        v266 = *(a1 + 2776);
        if (!v266)
        {
          v204 = [a1 mutableAttributes];
          v205 = NSTextHighlightStyleAttributeName;
          goto LABEL_924;
        }

        if ((v266 & 0x80000000) != 0)
        {
          v267 = +[NSRTFReader defaultTextHighlightStyles];
        }

        else
        {
          v267 = *(a1 + 3008);
        }

        if (v266 < 0)
        {
          v309 = ~v266;
        }

        else
        {
          v309 = v266 - 1;
        }

        if (v309 >= [(NSArray *)v267 count])
        {
          return;
        }

        v296 = [a1 mutableAttributes];
        v135 = [(NSArray *)v267 objectAtIndexedSubscript:v309];
        v297 = NSTextHighlightStyleAttributeName;
        goto LABEL_931;
      case 0x4F:
        v260 = *(a1 + 2776);
        if (!v260)
        {
          v204 = [a1 mutableAttributes];
          v205 = NSTextHighlightColorSchemeAttributeName;
LABEL_924:
          v265 = *v205;
LABEL_925:
          [v204 removeObjectForKey:v265];
          return;
        }

        if ((v260 & 0x80000000) != 0)
        {
          v261 = +[NSRTFReader defaultTextHighlightColorSchemes];
        }

        else
        {
          v261 = *(a1 + 3016);
        }

        if (v260 < 0)
        {
          v308 = ~v260;
        }

        else
        {
          v308 = v260 - 1;
        }

        if (v308 >= [(NSArray *)v261 count])
        {
          return;
        }

        v296 = [a1 mutableAttributes];
        v135 = [(NSArray *)v261 objectAtIndexedSubscript:v308];
        v297 = NSTextHighlightColorSchemeAttributeName;
LABEL_931:
        v292 = *v297;
        v293 = v296;
        goto LABEL_912;
      default:
        return;
    }
  }

  if (v3 <= 5)
  {
    if (!v3)
    {
      *(a1 + 336) = *(a1 + 2776) != 0;
      return;
    }

    if (v3 != 2)
    {
      if (v3 != 3)
      {
        return;
      }

      v4 = *(a1 + 560);
      v5 = *(a1 + 2772);
      if (v5 > 14)
      {
        switch(v5)
        {
          case 'A':
          case 'C':
            return;
          case 'B':
            v6 = 0;
            v7 = 0;
            v326 = 0.0;
            v327 = &v326;
            v328 = 0x2020000000;
            v329 = __str;
            v322 = 0;
            v323 = &v322;
            v324 = 0x2020000000;
            v325 = 1000;
            v318 = 0;
            v319 = &v318;
            v320 = 0x2020000000;
            v321 = 0;
            __endptr[0] = MEMORY[0x1E69E9820];
            __endptr[1] = 3221225472;
            v331 = __readFieldInst_block_invoke;
            v332 = &unk_1E72687C8;
            v333 = &v322;
            v334 = &v326;
            v8 = 1;
            v335 = &v318;
            v9 = MEMORY[0x1E69E9830];
            while (2)
            {
              if (_NSRTFGetToken((a1 + 536)) == 4)
              {
LABEL_374:
                v133 = *(v327 + 3);
                if (v133 != __str)
                {
                  free(v133);
                }

                _NSRTFRouteToken(a1 + 536);
                if (v7)
                {
                  [objc_msgSend(a1 "mutableAttributes")];
                }

                _Block_object_dispose(&v318, 8);
                _Block_object_dispose(&v322, 8);
                _Block_object_dispose(&v326, 8);
                return;
              }

              if (v6)
              {
LABEL_11:
                v6 = 1;
LABEL_12:
                v10 = *(a1 + 2764);
LABEL_30:
                if (v10 == 1)
                {
                  v15 = *(a1 + 2768);
                  if (v15 != 1)
                  {
                    if (!v15)
                    {
                      ++v8;
                    }

                    continue;
                  }

                  v28 = v8-- <= 1;
                  if (v28)
                  {
                    goto LABEL_374;
                  }
                }

                continue;
              }

              break;
            }

            v10 = *(a1 + 2764);
            if (v10 != 2)
            {
LABEL_29:
              v6 = 0;
              goto LABEL_30;
            }

            v11 = v319;
            v12 = v319[3];
            while (1)
            {
              if (v12 == v323[3])
              {
                if (!v331(__endptr))
                {
                  v6 = 0;
                  goto LABEL_12;
                }

                v11 = v319;
                v12 = v319[3];
              }

              v13 = *(a1 + 2768);
              if (!v12)
              {
                if (v13 > 0x7F)
                {
                  if (__maskrune(v13, 0x4000uLL))
                  {
                    goto LABEL_20;
                  }
                }

                else if ((*(v9 + 4 * v13 + 60) & 0x4000) != 0)
                {
                  goto LABEL_20;
                }

                LODWORD(v13) = *(a1 + 2768);
                v11 = v319;
                v12 = v319[3];
              }

              v14 = *(v327 + 3);
              v11[3] = v12 + 1;
              *(v14 + v12) = v13;
LABEL_20:
              _NSRTFGetToken((a1 + 536));
              v11 = v319;
              v12 = v319[3];
              if (v12 == 9 && !strncmp(*(v327 + 3), "HYPERLINK", 9uLL))
              {
                v11[3] = 0;
                while (1)
                {
                  v16 = v319;
                  if (*(a1 + 2764) != 2)
                  {
                    break;
                  }

                  v17 = v319[3];
                  if (v17 == v323[3])
                  {
                    v18 = v331(__endptr);
                    v16 = v319;
                    if (!v18)
                    {
                      break;
                    }

                    v17 = v319[3];
                  }

                  v19 = *(a1 + 2768);
                  v20 = *(v327 + 3);
                  v16[3] = v17 + 1;
                  *(v20 + v17) = v19;
                  _NSRTFGetToken((a1 + 536));
                }

                if (v16[3])
                {
                  v21 = 0;
                  while (1)
                  {
                    v22 = *(*(v327 + 3) + v21);
                    if (v22 < 0)
                    {
                      v23 = __maskrune(*(*(v327 + 3) + v21), 0x4000uLL);
                      v16 = v319;
                    }

                    else
                    {
                      v23 = *(v9 + 4 * v22 + 60) & 0x4000;
                    }

                    if (!v23)
                    {
                      break;
                    }

                    ++v21;
                    v24 = v16[3];
                    if (v21 >= v24)
                    {
                      goto LABEL_51;
                    }
                  }

                  v24 = v16[3];
LABEL_51:
                  if (v24 > v21)
                  {
                    while (1)
                    {
                      v25 = *(*(v327 + 3) + v24 - 1);
                      if (v25 < 0)
                      {
                        v26 = __maskrune(*(*(v327 + 3) + v24 - 1), 0x4000uLL);
                        v27 = v319;
                      }

                      else
                      {
                        v26 = *(v9 + 4 * v25 + 60) & 0x4000;
                        v27 = v16;
                      }

                      if (!v26)
                      {
                        break;
                      }

                      v16[3] = v24 - 1;
                      v24 = v27[3];
                      v16 = v27;
                      if (v24 <= v21)
                      {
                        goto LABEL_62;
                      }
                    }

                    v24 = v27[3];
LABEL_62:
                    v16 = v27;
                  }
                }

                else
                {
                  v21 = 0;
                  v24 = 0;
                }

                v29 = v24 - 1;
                if (v24 - 1 > v21 && (v30 = *(v327 + 3), *(v30 + v21) == 34) && *(v30 + v29) == 34)
                {
                  v16[3] = v29;
                  ++v21;
                }

                else
                {
                  v29 = v24;
                }

                v31 = *(a1 + 372);
                if (v31 == -1)
                {
                  v31 = *(a1 + 360);
                }

                v32 = CFStringCreateWithBytes(0, (*(v327 + 3) + v21), v29 - v21, v31, 0);
                v33 = CFMakeCollectable(v32);
                v34 = v33;
                if (v33)
                {
                  v35 = [v33 length] && v7 == 0;
                  if (v35)
                  {
                    v7 = [MEMORY[0x1E695DFF8] URLWithString:v34];
                  }
                }

                goto LABEL_11;
              }

              v10 = *(a1 + 2764);
              if (v10 != 2)
              {
                goto LABEL_29;
              }
            }

          case 'D':
          case 'E':
          case 'F':
          case 'G':
          case 'H':
          case 'K':
          case 'M':
          case 'N':
          case 'U':
          case 'V':
          case '[':
            goto LABEL_234;
          case 'I':
            v105 = a1;
            v106 = 0;
            goto LABEL_301;
          case 'J':
            goto LABEL_525;
          case 'L':
            v105 = a1;
            v106 = 1;
LABEL_301:

            readNeXTGraphic(v105, v106);
            return;
          case 'O':
            v108 = *(a1 + 2776);
            _NSRTFGetToken((a1 + 536));
            if (*(a1 + 2764) == 2)
            {
              v109 = 0;
              do
              {
                v110 = v109++;
                __str[v110] = *(a1 + 2768);
                _NSRTFGetToken((a1 + 536));
              }

              while (v110 <= 0x18E && *(a1 + 2764) == 2);
            }

            else
            {
              v109 = 0;
            }

            v230 = CFStringCreateWithBytes(0, __str, v109, 0x8000100u, 0);
            v231 = CFMakeCollectable(v230);
            v232 = *(a1 + 2764);
            if (v232 != 3)
            {
              v236 = 0;
              v235 = -1;
              goto LABEL_658;
            }

            if (*(a1 + 2768) != 12)
            {
              v236 = 0;
              v235 = -1;
              goto LABEL_955;
            }

            v233 = *(a1 + 2772);
            if (v233 == 42)
            {
              if (*(a1 + 2776) == -1000000)
              {
                v234 = -1;
              }

              else
              {
                v234 = *(a1 + 2776);
              }

              _NSRTFGetToken((a1 + 536));
              v235 = v234;
              v232 = *(a1 + 2764);
              if (v232 != 3)
              {
                v236 = 0;
                goto LABEL_658;
              }

              if (*(a1 + 2768) != 12)
              {
                goto LABEL_954;
              }

              v233 = *(a1 + 2772);
            }

            else
            {
              v235 = -1;
            }

            if (v233 == 43)
            {
              _NSRTFGetToken((a1 + 536));
              if (*(a1 + 2764) == 2)
              {
                v301 = 0;
                do
                {
                  __str[v301] = *(a1 + 2768);
                  _NSRTFGetToken((a1 + 536));
                  v302 = v301 + 1;
                  if (v301 > 0x18E)
                  {
                    break;
                  }

                  ++v301;
                }

                while (*(a1 + 2764) == 2);
              }

              else
              {
                v302 = 0;
              }

              v316 = CFStringCreateWithBytes(0, __str, v302, 0x8000100u, 0);
              v236 = CFMakeCollectable(v316);
              v232 = *(a1 + 2764);
LABEL_658:
              if (v232 == 1 && *(a1 + 2768) == 1)
              {
LABEL_956:
                _NSRTFRouteToken(a1 + 536);
                if (v236)
                {
                  [a1 _updateAttributes];
                  v303 = [objc_msgSend(a1 "mutableAttributes")];
                  if (v303)
                  {
                    v304 = [NSGlyphInfo glyphInfoWithGlyphName:v236 forFont:v303 baseString:v231];
                    goto LABEL_963;
                  }

LABEL_965:

                  return;
                }

                if (v235 == -1)
                {
                  [a1 _updateAttributes];
                  v305 = [objc_msgSend(a1 "mutableAttributes")];
                  if (!v305)
                  {
                    goto LABEL_965;
                  }

                  v304 = [NSGlyphInfo glyphInfoWithGlyph:v108 forFont:v305 baseString:v231];
                }

                else
                {
                  v304 = [NSGlyphInfo glyphInfoWithCharacterIdentifier:v108 collection:v235 baseString:v231];
                }

LABEL_963:
                v306 = v304;
                if (v304)
                {
                  v307 = [a1 mutableAttributes];
                  [v307 setObject:v306 forKey:NSGlyphInfoAttributeName];
                }

                goto LABEL_965;
              }

LABEL_955:
              _NSRTFSkipGroup((a1 + 536));
              goto LABEL_956;
            }

LABEL_954:
            v236 = 0;
            goto LABEL_955;
          case 'P':
            if (_NSRTFGetToken((a1 + 536)) == 4)
            {
              goto LABEL_294;
            }

            v206 = 0;
            v207 = 0;
            v208 = 0;
            v209 = 0;
            v210 = 0;
            v211 = 0;
            v212 = 1;
            while (1)
            {
              if ((v208 & 1) == 0)
              {
                goto LABEL_545;
              }

              if (*(a1 + 2764) == 2 && v207 <= 0x18E)
              {
                __str[v207++] = *(a1 + 2768);
                v208 = 1;
                goto LABEL_546;
              }

              if (v207 - 1 > 0x18E)
              {
                goto LABEL_545;
              }

              __str[v207] = 0;
              if (v211 & v210 & v209)
              {
                __endptr[0] = 0;
                v213 = strtol(__str, __endptr, 10);
                if (__endptr[0] == &__str[v207])
                {
                  v206 = colorFromRTFRGB(a1, v213, BYTE1(v213), BYTE2(v213));
                }
              }

              if (v211)
              {
                break;
              }

              v208 = 0;
              v210 = *__str == 0x6F6C6F436C6C6966 && v337 == 114;
LABEL_546:
              v214 = *(a1 + 2764);
              if (v214 == 1)
              {
                v215 = *(a1 + 2768);
                if (v215 == 1)
                {
                  if (v212 < 2)
                  {
                    goto LABEL_570;
                  }

                  --v212;
                }

                else if (!v215)
                {
                  ++v212;
                }

                goto LABEL_569;
              }

              if (!v206 && v214 == 3 && *(a1 + 2768) == 26)
              {
                v216 = *(a1 + 2772);
                switch(v216)
                {
                  case 'R':
                    v211 = 0;
                    v207 = 0;
                    goto LABEL_568;
                  case 'T':
                    v209 = 1;
                    break;
                  case 'S':
                    v207 = 0;
                    v211 = 1;
LABEL_568:
                    v208 = 1;
                    break;
                }
              }

LABEL_569:
              if (_NSRTFGetToken((a1 + 536)) == 4)
              {
LABEL_570:
                _NSRTFRouteToken(a1 + 536);
                if (v206)
                {
                  [a1 setBackgroundColor:v206];
                }

                return;
              }
            }

            v210 = 0;
LABEL_545:
            v208 = 0;
            goto LABEL_546;
          case 'Q':
            v122 = [objc_msgSend(a1 "attributedStringToEndOfGroup")];
            if (!v122)
            {
              return;
            }

            v63 = v122;
            v64 = [(NSRTFReader *)a1 _documentInfoDictionary];
            v65 = &NSCompanyDocumentAttribute;
            goto LABEL_349;
          case 'R':
            v103 = [objc_msgSend(a1 "attributedStringToEndOfGroup")];
            if (!v103)
            {
              return;
            }

            v63 = v103;
            v64 = [(NSRTFReader *)a1 _documentInfoDictionary];
            v65 = &NSManagerDocumentAttribute;
            goto LABEL_349;
          case 'S':
            Date = readDate(a1);
            if (!Date)
            {
              return;
            }

            v63 = Date;
            v64 = [(NSRTFReader *)a1 _documentInfoDictionary];
            v65 = &NSCreationTimeDocumentAttribute;
            goto LABEL_349;
          case 'T':
            v121 = readDate(a1);
            if (!v121)
            {
              return;
            }

            v63 = v121;
            v64 = [(NSRTFReader *)a1 _documentInfoDictionary];
            v65 = &NSModificationTimeDocumentAttribute;
            goto LABEL_349;
          case 'W':
            v107 = [MEMORY[0x1E695DF70] array];
            if (_NSRTFGetToken((a1 + 536)) == 4)
            {
              goto LABEL_299;
            }

            v218 = 0;
            v219 = 0;
            v220 = 0;
            v221 = -1;
            v222 = 1;
            v223 = 1;
            break;
          case 'X':
            if (_NSRTFGetToken((a1 + 536)) == 4)
            {
              goto LABEL_342;
            }

            v111 = 0;
            v112 = 0;
            v113 = 1;
            do
            {
              v114 = *(a1 + 2764);
              if (v114 == 1)
              {
                v117 = *(a1 + 2768);
                if (v117 == 1)
                {
                  if (v113 == 2)
                  {
                    if (v112 && v111)
                    {
                      [a1 _addOverride:v111 forKey:v112];
                      v112 = 0;
                      v111 = 0;
                    }

                    v113 = 1;
                  }

                  else
                  {
                    v28 = v113-- < 2;
                    if (v28)
                    {
                      break;
                    }
                  }
                }

                else if (!v117)
                {
                  ++v113;
                }
              }

              else if (v114 == 3)
              {
                v115 = *(a1 + 2768);
                if (v115 == 11)
                {
                  if (*(a1 + 2772) == 110)
                  {
                    v111 = *(a1 + 2776);
                  }
                }

                else if (v115 == 28)
                {
                  v116 = *(a1 + 2772);
                  if (v116 == 18)
                  {
                    if (v111)
                    {
                      v118 = v112 == 0;
                    }

                    else
                    {
                      v118 = 1;
                    }

                    if (v118)
                    {
                      v119 = v112;
                    }

                    else
                    {
                      v119 = 0;
                    }

                    if (v112)
                    {
                      v111 = 0;
                    }

                    v112 = v119;
                  }

                  else if (v116 == 17)
                  {
                    v112 = *(a1 + 2776);
                  }
                }
              }
            }

            while (_NSRTFGetToken((a1 + 536)) != 4);
LABEL_342:
            *(a1 + 568) = *(a1 + 560);
            goto LABEL_526;
          case 'Y':
            v102 = [objc_msgSend(a1 "attributedStringToEndOfGroup")];
            if (!v102)
            {
              return;
            }

            v63 = v102;
            v64 = [(NSRTFReader *)a1 _documentInfoDictionary];
            v65 = &NSCopyrightDocumentAttribute;
            goto LABEL_349;
          case 'Z':
            v120 = [objc_msgSend(a1 "attributedStringToEndOfGroup")];
            if (!v120)
            {
              return;
            }

            v63 = v120;
            v64 = [(NSRTFReader *)a1 _documentInfoDictionary];
            v65 = &NSCategoryDocumentAttribute;
            goto LABEL_349;
          case '\\':
            _NSRTFGetToken((a1 + 536));
            _NSRTFGetToken((a1 + 536));
            if (*(a1 + 2764) == 2)
            {
              v127 = 0;
              v128 = 0;
              do
              {
                v129 = *(a1 + 2768);
                if (v129 == 59)
                {
                  if (v128)
                  {
                    v128 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:__str length:v128 encoding:1];
                    if (v128)
                    {
                      if (!v127)
                      {
                        v127 = objc_alloc_init(MEMORY[0x1E695DF70]);
                      }

                      [v127 addObject:v128];

                      v128 = 0;
                    }
                  }
                }

                else
                {
                  __str[v128++] = v129;
                }

                _NSRTFGetToken((a1 + 536));
              }

              while (*(a1 + 2764) == 2);
            }

            else
            {
              v127 = 0;
            }

            _NSRTFRouteToken(a1 + 536);
            *(a1 + 3008) = v127;
            return;
          case ']':
            _NSRTFGetToken((a1 + 536));
            _NSRTFGetToken((a1 + 536));
            if (*(a1 + 2764) == 2)
            {
              v130 = 0;
              v131 = 0;
              do
              {
                v132 = *(a1 + 2768);
                if (v132 == 59)
                {
                  if (v131)
                  {
                    v131 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:__str length:v131 encoding:1];
                    if (v131)
                    {
                      if (!v130)
                      {
                        v130 = objc_alloc_init(MEMORY[0x1E695DF70]);
                      }

                      [v130 addObject:v131];

                      v131 = 0;
                    }
                  }
                }

                else if (v131 <= 0x3FF)
                {
                  __str[v131++] = v132;
                }

                _NSRTFGetToken((a1 + 536));
              }

              while (*(a1 + 2764) == 2);
            }

            else
            {
              v130 = 0;
            }

            _NSRTFRouteToken(a1 + 536);
            *(a1 + 3016) = v130;
            return;
          default:
            if (v5 == 15)
            {
              v137 = [objc_msgSend(a1 "attributedStringToEndOfGroup")];
              if (v137)
              {
                v138 = [v137 componentsSeparatedByString:{@", "}];
                if (v138)
                {
                  [-[NSRTFReader _documentInfoDictionary](a1) setObject:v138 forKey:@"NSKeywordsDocumentAttribute"];
                }

                if (*(a1 + 2816) >= 1)
                {
                  v126 = @"NSKeywordsDocumentAttribute";
                  v124 = a1;
                  v125 = v4;
                  goto LABEL_394;
                }
              }
            }

            else
            {
              if (v5 != 18)
              {
                goto LABEL_234;
              }

              v81 = [objc_msgSend(a1 "attributedStringToEndOfGroup")];
              if (v81)
              {
                v63 = v81;
                v64 = [(NSRTFReader *)a1 _documentInfoDictionary];
                v65 = &NSCommentDocumentAttribute;
                goto LABEL_349;
              }
            }

            return;
        }

        while (1)
        {
          v224 = *(a1 + 2764);
          if (v224 == 1)
          {
            v226 = *(a1 + 2768);
            if (v226 != 1)
            {
              if (!v226)
              {
                ++v222;
              }

              goto LABEL_581;
            }

            if (v222 == 2)
            {
              if (v220)
              {
                if ([v107 count])
                {
                  [a1 _addListDefinition:v107 forKey:v220];
                }

                [v107 removeAllObjects];
                v220 = 0;
              }

              v222 = 1;
              goto LABEL_581;
            }

            if (v222 == 3)
            {
              if ((v221 & 0x8000000000000000) == 0)
              {
                if (v219)
                {
                  goto LABEL_587;
                }

                if (v221 <= 2)
                {
                  v219 = @"{upper-roman}.";
                  if (v221 != 1)
                  {
                    if (v221 != 2)
                    {
                      goto LABEL_636;
                    }

                    v219 = @"{lower-roman}.";
                  }
                }

                else
                {
                  switch(v221)
                  {
                    case 3:
                      v219 = @"{upper-alpha}.";
                      break;
                    case 4:
                      v219 = @"{lower-alpha}.";
                      break;
                    case 23:
                      v219 = @"{disc}";
                      break;
                    default:
LABEL_636:
                      v219 = @"{decimal}.";
                      break;
                  }
                }

LABEL_587:
                v227 = [[NSTextList alloc] initWithMarkerFormat:v219 options:v218 & 1];
                [(NSTextList *)v227 setStartingItemNumber:v223];
                [v107 addObject:v227];

                v219 = 0;
                v218 = 0;
                v221 = -1;
                v223 = 1;
              }

              v222 = 2;
              goto LABEL_581;
            }

            if (v222 < 2)
            {
LABEL_299:
              *(a1 + 568) = *(a1 + 560);
              _NSRTFRouteToken(a1 + 536);
              return;
            }

            --v222;
          }

          else
          {
            if (v224 != 3 || *(a1 + 2768) != 28)
            {
              goto LABEL_581;
            }

            v225 = *(a1 + 2772);
            if (v225 == 17)
            {
              v220 = *(a1 + 2776);
            }

            else if ((v225 - 5) > 1)
            {
              if (v225 > 19)
              {
                if (v225 == 20)
                {
                  _NSRTFGetToken((a1 + 536));
                  if (*(a1 + 2764) == 2)
                  {
                    v229 = 0;
                    do
                    {
                      if (v229 <= 0x3FE)
                      {
                        __str[v229++] = *(a1 + 2768);
                      }

                      _NSRTFGetToken((a1 + 536));
                    }

                    while (*(a1 + 2764) == 2);
                  }

                  else
                  {
                    v229 = 0;
                  }

                  _NSRTFUngetToken(a1 + 536);
                  __str[v229] = 0;
                  v219 = [MEMORY[0x1E696AEC0] stringWithUTF8String:__str];
                  goto LABEL_581;
                }

                if (v225 != 21)
                {
LABEL_610:
                  if (!v225 && v220)
                  {
                    if ([v107 count])
                    {
                      [a1 _addListDefinition:v107 forKey:v220];
                    }

                    [v107 removeAllObjects];
                    v220 = 0;
                  }

                  goto LABEL_581;
                }

                v218 = 1;
              }

              else if (v225 == 4)
              {
                if ((v221 & 0x8000000000000000) == 0)
                {
                  if (v219)
                  {
LABEL_617:
                    v228 = [[NSTextList alloc] initWithMarkerFormat:v219 options:v218 & 1];
                    [(NSTextList *)v228 setStartingItemNumber:v223];
                    [v107 addObject:v228];

                    v219 = 0;
                    v218 = 0;
                    v221 = -1;
                    v223 = 1;
                    goto LABEL_581;
                  }

                  if (v221 <= 2)
                  {
                    v219 = @"{upper-roman}.";
                    if (v221 == 1)
                    {
                      goto LABEL_617;
                    }

                    if (v221 == 2)
                    {
                      v219 = @"{lower-roman}.";
                      goto LABEL_617;
                    }
                  }

                  else
                  {
                    switch(v221)
                    {
                      case 3:
                        v219 = @"{upper-alpha}.";
                        goto LABEL_617;
                      case 4:
                        v219 = @"{lower-alpha}.";
                        goto LABEL_617;
                      case 23:
                        v219 = @"{disc}";
                        goto LABEL_617;
                    }
                  }

                  v219 = @"{decimal}.";
                  goto LABEL_617;
                }
              }

              else
              {
                if (v225 != 10)
                {
                  goto LABEL_610;
                }

                v223 = *(a1 + 2776);
              }
            }

            else
            {
              v221 = *(a1 + 2776);
            }
          }

LABEL_581:
          if (_NSRTFGetToken((a1 + 536)) == 4)
          {
            goto LABEL_299;
          }
        }
      }

      if (v5 > 11)
      {
        if (v5 == 12)
        {
          v82 = [objc_msgSend(a1 "attributedStringToEndOfGroup")];
          if (!v82)
          {
            return;
          }

          v63 = v82;
          v64 = [(NSRTFReader *)a1 _documentInfoDictionary];
          v65 = &NSSubjectDocumentAttribute;
        }

        else if (v5 == 13)
        {
          v83 = [objc_msgSend(a1 "attributedStringToEndOfGroup")];
          if (!v83)
          {
            return;
          }

          v63 = v83;
          v64 = [(NSRTFReader *)a1 _documentInfoDictionary];
          v65 = &NSAuthorDocumentAttribute;
        }

        else
        {
          v62 = [objc_msgSend(a1 "attributedStringToEndOfGroup")];
          if (!v62)
          {
            return;
          }

          v63 = v62;
          v64 = [(NSRTFReader *)a1 _documentInfoDictionary];
          v65 = &NSEditorDocumentAttribute;
        }

        goto LABEL_349;
      }

      if (v5 == 10)
      {
        return;
      }

      if (v5 == 11)
      {
        v73 = [objc_msgSend(a1 "attributedStringToEndOfGroup")];
        if (!v73)
        {
          return;
        }

        v63 = v73;
        v64 = [(NSRTFReader *)a1 _documentInfoDictionary];
        v65 = &NSTitleDocumentAttribute;
LABEL_349:
        v123 = *v65;
        [v64 setObject:v63 forKey:*v65];
        if (*(a1 + 2816) >= 1)
        {
          v124 = a1;
          v125 = v4;
          v126 = v123;
LABEL_394:

          SaveMetadataInfo(v124, v125, v126);
        }

        return;
      }

LABEL_234:
      v89 = *(a1 + 340);
      if (v89 == -1)
      {
        *(a1 + 340) = 0;
      }

      else if (v89 >= 1)
      {
        *(a1 + 520) = 0;
        if (v89 <= 0x482)
        {
          *(a1 + 352) = 1;
        }
      }

LABEL_525:
      _NSRTFSkipGroup((a1 + 536));
LABEL_526:

LABEL_294:
      _NSRTFRouteToken(a1 + 536);
      return;
    }

    v50 = *(a1 + 2772);
    if (v50 == 4)
    {
      v66 = CFStringConvertWindowsCodepageToEncoding(*(a1 + 2776));
      *(a1 + 368) = v66;
      *(a1 + 360) = v66;
      if (CFStringIsEncodingAvailable(v66))
      {
LABEL_163:
        *(a1 + 2809) = 1;
        return;
      }
    }

    else if (v50 != 1)
    {
      if (!v50 && *(a1 + 336))
      {
        *(a1 + 368) = 1280;
        *(a1 + 360) = 1280;
        return;
      }

      *(a1 + 368) = 2817;
      *(a1 + 360) = 2817;
      v59 = *(a1 + 340);
      if (v59 == -1)
      {
        *(a1 + 340) = 1;
        *(a1 + 520) = 0;
LABEL_185:
        v72 = 1;
        goto LABEL_186;
      }

LABEL_153:
      if (v59 < 1)
      {
        return;
      }

      *(a1 + 520) = 0;
      if (v59 > 0x482)
      {
        return;
      }

      goto LABEL_185;
    }

    SystemEncoding = CFStringGetSystemEncoding();
    *(a1 + 368) = SystemEncoding;
    *(a1 + 360) = SystemEncoding;
    goto LABEL_163;
  }

  if (v3 == 6)
  {
    v45 = 0;
    v46 = 0;
    v47 = 12;
    switch(*(a1 + 2772))
    {
      case 0x1A:
      case 0x3B:
        v48 = [a1 _currentTableCellIsPlaceholder];
        if ((v48 & 1) == 0)
        {
          v49 = (a1 + 410);
          if ((*(a1 + 410) & 0x10000) != 0)
          {
            v45 = 1;
            goto LABEL_507;
          }
        }

        if (v48)
        {
          goto LABEL_517;
        }

        v45 = 1;
        v47 = 10;
        v46 = 1;
        goto LABEL_509;
      case 0x1B:
      case 0x3C:

        [a1 _endTableRow];
        return;
      case 0x1C:
        v45 = 0;
        if (*(a1 + 412))
        {
          v49 = (a1 + 410);
LABEL_507:
          v46 = 1;
          flushCharacters(a1, 1);
          [objc_msgSend(a1 "mutableAttributes")];
          *v49 &= ~0x10000u;
        }

        else
        {
          v46 = 1;
        }

        v47 = 10;
        goto LABEL_509;
      case 0x1E:
        goto LABEL_509;
      case 0x20:
        v45 = 0;
        v46 = 0;
        v47 = 8232;
        goto LABEL_509;
      case 0x25:
        v45 = 0;
        v46 = 0;
        v47 = 9;
        goto LABEL_509;
      case 0x26:
        v45 = 0;
        v46 = 0;
        v47 = 8212;
        goto LABEL_509;
      case 0x27:
        v45 = 0;
        v46 = 0;
        v47 = 8211;
        goto LABEL_509;
      case 0x28:
        v45 = 0;
        v46 = 0;
        v47 = 8195;
        goto LABEL_509;
      case 0x29:
        v45 = 0;
        v46 = 0;
        v47 = 8194;
        goto LABEL_509;
      case 0x2A:
        v45 = 0;
        v46 = 0;
        v47 = 8226;
        goto LABEL_509;
      case 0x2B:
        v45 = 0;
        v46 = 0;
        v47 = 8216;
        goto LABEL_509;
      case 0x2C:
        v45 = 0;
        v46 = 0;
        v47 = 8217;
        goto LABEL_509;
      case 0x2D:
        v45 = 0;
        v46 = 0;
        v47 = 8220;
        goto LABEL_509;
      case 0x2E:
        v45 = 0;
        v46 = 0;
        v47 = 8221;
        goto LABEL_509;
      case 0x31:
        v45 = 0;
        v46 = 0;
        v47 = 160;
        goto LABEL_509;
      case 0x33:
        v45 = 0;
        v46 = 0;
        v47 = 8209;
        goto LABEL_509;
      case 0x37:
        v45 = 0;
        v46 = 0;
        v47 = 8205;
        goto LABEL_509;
      case 0x38:
        v45 = 0;
        v46 = 0;
        v47 = 8204;
LABEL_509:
        if ((*(a1 + 2808) & 1) == 0)
        {
          flushCharacters(a1, 1);
        }

        v202 = *(a1 + 328);
        *(a1 + 328) = v202 + 1;
        *(a1 + 2 * v202 + 72) = v47;
        *(a1 + 2808) = 1;
        if (*(a1 + 328) < 0x80uLL)
        {
          if (!v46)
          {
LABEL_513:
            if (!v45)
            {
              return;
            }

            goto LABEL_517;
          }
        }

        else
        {
          flushCharacters(a1, 1);
          if ((v46 & 1) == 0)
          {
            goto LABEL_513;
          }
        }

        flushCharacters(a1, 1);
        if ((v45 & 1) == 0)
        {
          return;
        }

LABEL_517:

        [a1 _endTableCell];
        return;
      default:
        return;
    }
  }

  if (v3 != 8)
  {
    if (v3 == 9 && *(a1 + 2772) == 54)
    {
      v40 = *(a1 + 2776);

      [a1 setTextFlow:v40];
    }

    return;
  }

  v55 = *(a1 + 2772);
  if (v55 > 78)
  {
    if (v55 > 84)
    {
      if (v55 <= 86)
      {
        if (v55 == 85)
        {
          *(a1 + 348) = *(a1 + 2776);
        }

        else
        {
          *(a1 + 344) = *(a1 + 2776);
        }

        return;
      }

      if (v55 != 87)
      {
        if (v55 == 88)
        {
          v95 = *(a1 + 2776);
          if (v95 <= 1)
          {
            *(a1 + 2968) = v95;
          }
        }

        else if (v55 == 89)
        {
          v71 = *(a1 + 2776);
          if (v71 <= 2)
          {
            *(a1 + 2976) = v71;
          }
        }

        return;
      }

      v72 = *(a1 + 2776);
LABEL_186:
      *(a1 + 352) = v72;
      return;
    }

    if (v55 <= 81)
    {
      if (v55 == 79)
      {
        v99 = *(a1 + 2776);
        if (v99 <= 0)
        {
          v100 = 100;
        }

        else
        {
          v100 = v99;
        }

        [a1 setViewScale:v100];
      }

      else if (v55 == 81)
      {
        v74 = *(a1 + 2776);

        [a1 setViewKind:v74];
      }

      return;
    }

    if (v55 == 82)
    {
      v97 = *(a1 + 2776);
      [a1 viewSize];
      v92 = v97 / 20.0;
    }

    else
    {
      if (v55 != 83)
      {
        v59 = *(a1 + 340);
        if (v59 == -1)
        {
          v59 = *(a1 + 2776);
          *(a1 + 340) = v59;
        }

        goto LABEL_153;
      }

      [a1 viewSize];
      v93 = *(a1 + 2776) / 20.0;
    }

    [a1 setViewSize:{v92, v93}];
    return;
  }

  if (v55 > 43)
  {
    if (v55 <= 45)
    {
      if (v55 == 44)
      {
        v101 = *(a1 + 2776) / 20.0;

        [a1 setRightMargin:v101];
      }

      else
      {
        v75 = *(a1 + 2776) / 20.0;

        [a1 setTopMargin:v75];
      }

      return;
    }

    if (v55 == 46)
    {
      v98 = *(a1 + 2776) / 20.0;

      [a1 setBottomMargin:v98];
      return;
    }

    if (v55 == 76)
    {
      v94 = a1;
LABEL_406:
      v139 = 1;
LABEL_483:

      [v94 setBaseWritingDirection:v139];
      return;
    }

    if (v55 != 78)
    {
      return;
    }

    v68 = *(a1 + 2776);
    if (v68 < 1)
    {
      v2 = 0.0;
    }

    else
    {
      v2 = v68 / 100.0;
      *&v2 = v2;
    }

LABEL_530:
    v163 = a1;
LABEL_531:

    [v163 setHyphenationFactor:v2];
    return;
  }

  if (v55 <= 39)
  {
    if (!v55)
    {
      v53 = *(a1 + 2776) / 20.0;
      v54 = a1;
LABEL_479:

      [v54 setDefaultTabInterval:v53];
      return;
    }

    if (v55 != 4)
    {
      return;
    }

    LODWORD(v2) = *"fff?";
    if (!*(a1 + 2776))
    {
      *&v2 = 0.0;
    }

    goto LABEL_530;
  }

  if (v55 == 40)
  {
    v96 = *(a1 + 2776);
    [a1 paperSize];
    v90 = v96 / 20.0;
  }

  else
  {
    if (v55 != 41)
    {
      if (v55 == 43)
      {
        v56 = *(a1 + 2776) / 20.0;

        [a1 setLeftMargin:v56];
      }

      return;
    }

    [a1 paperSize];
    v91 = *(a1 + 2776) / 20.0;
  }

  [a1 setPaperSize:{v90, v91}];
}