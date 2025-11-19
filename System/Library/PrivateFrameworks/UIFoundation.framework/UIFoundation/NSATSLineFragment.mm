@interface NSATSLineFragment
- (double)resolveOpticalAlignmentUpdatingMinPosition:(double *)a3 maxPosition:;
- (uint64_t)_copyRenderingContextWithGlyphOrigin:(uint64_t)result;
- (uint64_t)resolvedLineBreakMode:(uint64_t)result;
- (unint64_t)_charIndexToBreakLineByWordWrappingAtIndex:(char *)a3 lineFragmentWidth:(double)a4 hyphenate:;
- (void)dealloc;
- (void)finalize;
- (void)getTypographicLineHeight:(int)a3 baselineOffset:(int)a4 leading:(int)a5;
- (void)justifyWithFactor:(uint64_t)a1;
- (void)saveMorphedGlyphs:(uint64_t)a1;
- (void)saveWithGlyphOrigin:;
@end

@implementation NSATSLineFragment

uint64_t __92__NSATSLineFragment__charIndexToBreakLineByWordWrappingAtIndex_lineFragmentWidth_hyphenate___block_invoke(uint64_t a1, uint64_t *a2)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = *a2;
  if (*(a2 + 16) == 1)
  {
    return [v2 shouldBreakLineByHyphenatingBeforeCharacterAtIndex:v3];
  }

  else
  {
    return [v2 shouldBreakLineByWordBeforeCharacterAtIndex:v3];
  }
}

double __92__NSATSLineFragment__charIndexToBreakLineByWordWrappingAtIndex_lineFragmentWidth_hyphenate___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *([*(*(a1 + 32) + 16) _getATSTypesetterGuts] + 16);

  return [(NSATSGlyphStorage *)v5 _widthForStringRange:a2, a3];
}

- (void)getTypographicLineHeight:(int)a3 baselineOffset:(int)a4 leading:(int)a5
{
  if (!a1)
  {
    return;
  }

  OUTLINED_FUNCTION_30();
  v44 = v43;
  v115 = v45;
  v116 = v46;
  v117 = v47;
  v48 = [*(v43 + 16) _getATSTypesetterGuts];
  v113 = *(v48 + 40);
  v49 = *(v48 + 16);
  v50 = v49[11];
  v51 = v49[12];
  v52 = *(v44 + 40);
  v53 = v52 - [*(v44 + 16) paragraphCharacterRange];
  v118 = [*(v44 + 16) typesetterBehavior];
  v120 = [*(v44 + 16) usesFontLeading];
  v119 = [*(v44 + 16) _forceOriginalFontBaseline];
  v54 = v49[25];
  v114 = v49;
  if (v54)
  {
    v55 = v49[26];
    if (v55 <= v53)
    {
      v56 = v49[26];
    }

    else
    {
      v56 = 0;
    }

    if (v55 <= v53)
    {
      v57 = v54;
    }

    else
    {
      v57 = v50;
    }
  }

  else
  {
    v56 = 0;
    v57 = v50;
  }

  v58 = v50 + 104 * v51;
  if ((v120 & 1) == 0)
  {
    v61 = [*(v44 + 16) paragraphSeparatorGlyphRange];
    if (v62)
    {
      v63 = *(v44 + 24);
    }

    else
    {
      v63 = *(v44 + 24);
      if (*(v44 + 32) + v63 >= v61)
      {
        v59 = 0;
        goto LABEL_16;
      }
    }

    v59 = 1;
LABEL_16:
    v60 = v63 != 0;
    goto LABEL_17;
  }

  v59 = 0;
  v60 = 0;
LABEL_17:
  if (v57 < v58)
  {
    while (1)
    {
      v64 = *(v57 + 16) + v56;
      if (v53 < v64)
      {
        break;
      }

      v57 += 104;
      v56 = v64;
      if (v57 >= v58)
      {
        goto LABEL_22;
      }
    }
  }

  v64 = v56;
LABEL_22:
  v65 = *(v44 + 48) + v53;
  v66 = 0.0;
  v67 = v57 >= v58 || v65 <= v64;
  v68 = 0.0;
  v69 = 0.0;
  if (!v67)
  {
    v122 = *(MEMORY[0x1E696AA80] + 8);
    v123 = *MEMORY[0x1E696AA80];
    v70 = *(MEMORY[0x1E696AA80] + 24);
    bRecta = *(MEMORY[0x1E696AA80] + 16);
    v71 = (v118 < 2) & ~v120;
    v72 = v57 + 104;
    do
    {
      *&v124.origin.y = v122;
      *&v124.origin.x = v123;
      *&v124.size.width = bRecta;
      v124.size.height = v70;
      if (NSEqualRects(*(v72 - 40), v124))
      {
        v73 = *(v72 - 72);
        v74 = *(v72 - 64);
      }

      else
      {
        v73 = *(v72 - 16);
        v74 = v73 + *(v72 - 32);
      }

      v75 = 0.0;
      if ((((v59 | v60) | v120) & 1) != 0 && ([*(v72 - 96) isVertical] & 1) == 0)
      {
        v76 = *(v72 - 104);
        if (!v76)
        {
          goto LABEL_39;
        }

        if (!v119 || (v77 = [*(v72 - 104) objectForKey:_NSOriginalFontAttributeName]) == 0)
        {
          v77 = [v76 objectForKey:@"NSFont"];
        }

        if ([objc_msgSend(v76 objectForKey:{@"CTVerticalForms", "BOOLValue"}])
        {
          v77 = [v77 verticalFont];
        }

        if (!v77)
        {
LABEL_39:
          v77 = NSDefaultFont();
        }

        if (((v120 & 1) != 0 || CTFontIsSystemUIFont()) && v77)
        {
          [v77 _leading];
          v75 = v78;
        }
      }

      if (v60)
      {
        if ((v59 & 1) == 0)
        {
          v79 = v120;
          if (v75 <= 0.0)
          {
            v79 = 1;
          }

          if (!v79)
          {
            v75 = 0.0;
          }
        }
      }

      else if (v75 < 0.0)
      {
        v75 = 0.0;
      }

      v80 = *(v72 - 48);
      if (v80 <= 0.0)
      {
        v81 = 0.0;
      }

      else
      {
        v81 = *(v72 - 48);
      }

      v82 = fmin(v75, 0.0) + v74 + v81;
      v83 = v80 < 0.0;
      if (v80 >= 0.0)
      {
        v84 = 0.0;
      }

      else
      {
        v84 = *(v72 - 48);
      }

      v85 = v74 - v73 + v84;
      v86 = v80 + v85;
      if ((v71 & (v80 > 0.0)) == 0)
      {
        v86 = v85;
      }

      if (v85 < v66)
      {
        v66 = v86;
        v85 = v86;
      }

      v87 = v80 + v82;
      if ((v71 & v83) == 0)
      {
        v87 = v82;
      }

      if (v82 > v69)
      {
        v69 = v87;
      }

      if (v75 >= 0.0)
      {
        v88 = v75;
      }

      else
      {
        v88 = 0.0;
      }

      v89 = v88 - v85;
      if (v89 > v68)
      {
        v68 = v89;
      }

      v64 += *(v72 - 88);
      v90 = v72 >= v58;
      v72 += 104;
    }

    while (!v90 && v65 > v64);
  }

  v92 = v69 - v66;
  if (v118 < 3)
  {
    v99 = v69 - v66;
    v95 = v116;
    v96 = v117;
    v98 = v114;
    v97 = v115;
    v93 = v113;
    v100 = v44;
  }

  else
  {
    v93 = v113;
    v94 = *(v113 + 104);
    v95 = v116;
    v96 = v117;
    v98 = v114;
    v97 = v115;
    if (v94 <= 0.0)
    {
      v99 = v69 - v66;
    }

    else
    {
      v99 = v92 * v94;
      v69 = v69 + v99 - v92;
    }

    v100 = v44;
  }

  v101 = *(v93 + 88);
  v102 = *(v93 + 96);
  v103 = v101 - v99;
  v104 = v99 < v101;
  if (v99 < v101)
  {
    v99 = *(v93 + 88);
  }

  v105 = v69 + v103;
  if (!v104)
  {
    v105 = v69;
  }

  v106 = v105 - (v99 - v102);
  if (v102 > 0.0 && v99 > v102)
  {
    v99 = *(v93 + 96);
    v105 = v106;
  }

  v107 = HIWORD(*(v93 + 216)) & 1;
  if (v99 < v92)
  {
    v107 = 1;
  }

  if (v107)
  {
    v108 = 4;
  }

  else
  {
    v108 = 0;
  }

  *(v100 + 104) = v108 | *(v100 + 104) & 0xFFFFFFFB;
  *v97 = v105 - v66;
  *v95 = v105;
  *v96 = v66 + v68;
  v109 = v120;
  if (v118 >= 3)
  {
    v109 = 0;
  }

  if (v109 == 1)
  {
    v110 = **(v98 + 88);
    if (!v110)
    {
      goto LABEL_104;
    }

    if (!v119 || (v111 = [v110 objectForKey:_NSOriginalFontAttributeName]) == 0)
    {
      v111 = [v110 objectForKey:@"NSFont"];
    }

    if ([objc_msgSend(v110 objectForKey:{@"CTVerticalForms", "BOOLValue"}])
    {
      v111 = [v111 verticalFont];
    }

    if (!v111)
    {
LABEL_104:
      v111 = NSDefaultFont();
    }

    [v111 _leading];
    *v96 = v112;
  }

  OUTLINED_FUNCTION_29();
}

- (void)justifyWithFactor:(uint64_t)a1
{
  if (a1)
  {
    v4 = *(a1 + 64) - *(a1 + 56);
    v5 = *(a1 + 80);
    BoundsWithOptions = CTLineGetBoundsWithOptions(*(a1 + 8), 0);
    if (BoundsWithOptions.size.width + *(a1 + 96) - v5 < v4 * a2)
    {
      JustifiedLineWithOptions = CTLineCreateJustifiedLineWithOptions();
      if (JustifiedLineWithOptions)
      {
        v7 = JustifiedLineWithOptions;
        CFRelease(*(a1 + 8));
        *(a1 + 8) = v7;
        *(a1 + 72) = *(a1 + 48) + *(a1 + 40);
        *(a1 + 80) = 0;
      }
    }
  }
}

- (double)resolveOpticalAlignmentUpdatingMinPosition:(double *)a3 maxPosition:
{
  if (a1)
  {
    BoundsWithOptions = CTLineGetBoundsWithOptions(*(a1 + 8), 0x80uLL);
    x = BoundsWithOptions.origin.x;
    width = BoundsWithOptions.size.width;
    v10 = CTLineGetBoundsWithOptions(*(a1 + 8), 0xC0uLL);
    v10.size.height = *(a1 + 64);
    v10.origin.y = *(a1 + 56) + x - v10.origin.x;
    *(a1 + 56) = v10.origin.y;
    *(a1 + 64) = v10.size.height + x + width - (v10.origin.x + v10.size.width);
    *a2 = v10.origin.y;
    result = *(a1 + 64);
    *a3 = result;
  }

  return result;
}

- (void)saveMorphedGlyphs:(uint64_t)a1
{
  *&v138[508] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1;
    if (*(a1 + 8))
    {
      v118 = v138;
      v124 = *([*(a1 + 16) _getATSTypesetterGuts] + 16);
      GlyphRuns = CTLineGetGlyphRuns(*(v2 + 8));
      v135 = 0;
      v136 = 0;
      Count = CFArrayGetCount(GlyphRuns);
      v6 = Count;
      v7 = *(v2 + 104) & 3;
      v120 = a2;
      if (v7 == 2)
      {
        GlyphRuns = CFArrayCreateMutableCopy(0, Count, GlyphRuns);
        v139.location = 0;
        v139.length = v6;
        CFArraySortValues(GlyphRuns, v139, __NSATSLineFragmentRunCompare, 0);
        v10 = 0;
        v123 = 1;
        v119 = GlyphRuns;
      }

      else
      {
        v8 = v7 == 1;
        if (v7 == 1)
        {
          v9 = -1;
        }

        else
        {
          v9 = 1;
        }

        v123 = v9;
        if (v8)
        {
          v10 = Count - 1;
        }

        else
        {
          v10 = 0;
        }

        v119 = 0;
      }

      v11 = 0;
      v130 = v2;
      v131 = 0;
      v125 = (v2 + 32);
      v12 = 0x1EAC99000uLL;
LABEL_13:
      v127 = v11;
      while (v6-- >= 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, v10);
        v10 += v123;
        location = CTRunGetStringRange(ValueAtIndex).location;
        GlyphStorage = CTRunGetGlyphStorage();
        v17 = MEMORY[0x193AD3A70](GlyphStorage);
        v18 = *(v12 + 1356);
        v19 = *(v17 + v18);
        if (v19)
        {
          v20 = v17;
          v122 = GlyphRuns;
          v21 = *(v17 + 152);
          if (!v21)
          {
            v21 = v17;
          }

          v126 = *(v21 + 128);
          v22 = *(v17 + *MEMORY[0x1E6965610]);
          v23 = v135;
          v24 = *(v17 + *MEMORY[0x1E6965618]);
          v25 = *(v17 + *MEMORY[0x1E6965620]);
          v26 = *(v17 + *MEMORY[0x1E69655F8]);
          if (v26)
          {
            v27 = (v26 + 8 * v135);
          }

          else
          {
            v27 = 0;
          }

          if ((v19 & 0x10) != 0 || (*(v124 + v18) & 0x10) != 0)
          {
            v29 = *(v2 + 16);
            v30 = v126 + location;
            v31 = v24;
            v32 = v2;
            v33 = v22;
            v34 = [v29 glyphRangeForCharacterRange:v30 actualCharacterRange:{1, 0}];
            v22 = v33;
            v2 = v32;
            v24 = v31;
            v28 = v34;
          }

          else
          {
            v28 = *(v17 + 112) + v135;
          }

          v35 = (v22 + 2 * v23);
          v134 = v28;
          if (v136 == 1 && (*(v20 + 224) & 8) != 0 && !*v35)
          {
            v36 = v24;
            v121 = v28;
            v37 = [*(v2 + 16) _allowsEllipsisGlyphSubstitution];
            v24 = v36;
            if (v37)
            {
              v137 = 0xFFFFFF;
              GlyphRuns = v122;
              if (v27)
              {
                v38 = *v27;
                v12 = 0x1EAC99000;
                if (v38 < 1)
                {
                  v131 = v121;
                  v41 = 1;
                  [*(v2 + 16) substituteGlyphsInRange:v121 withGlyphs:{1, &v137}];
                }

                else if (v38 < 0x80)
                {
                  v41 = v38 + 1;
                  __memset_chk();
                  v131 = v121;
                  [*(v2 + 16) substituteGlyphsInRange:v121 withGlyphs:{v38 + 1, &v137}];
                }

                else
                {
                  v39 = v121;
                  v40 = 127;
                  do
                  {
                    __memset_chk();
                    [*(v2 + 16) substituteGlyphsInRange:v39 withGlyphs:{128, &v137}];
                    v39 += v40;
                    v38 -= v40;
                    v40 = 128;
                  }

                  while (v38 > 0x80);
                  v131 = v39;
                  __memset_chk();
                  v11 = 0;
                  v41 = v38;
                  if (!v38)
                  {
                    goto LABEL_13;
                  }

LABEL_154:
                  [*(v2 + 16) substituteGlyphsInRange:v131 withGlyphs:{v38, &v137}];
                }
              }

              else
              {
                v131 = v121;
                v41 = 1;
                v12 = 0x1EAC99000;
                [*(v2 + 16) substituteGlyphsInRange:v121 withGlyphs:{1, &v137}];
              }

              v11 = v41;
              goto LABEL_13;
            }
          }

          v42 = (v24 + 4 * v23);
          v43 = (v25 + 8 * v23);
          Status = CTRunGetStatus(ValueAtIndex);
          GlyphRuns = v122;
          if (Status)
          {
            v79 = v136 - 1;
            v11 = v127;
            v12 = 0x1EAC99000;
            if (v136 < 1)
            {
              goto LABEL_13;
            }

            v80 = &v35[v79];
            if (v27)
            {
              v81 = &v27[v79];
            }

            else
            {
              v81 = 0;
            }

            v82 = &v43[v79];
            v83 = &v42[4 * v79];
            while (1)
            {
              v128 = v11;
              while (1)
              {
                v84 = *v83;
                if ((*v83 & 0x200000) != 0)
                {
                  if (v80 - v35 < 0)
                  {
                    v89 = 0;
                  }

                  else
                  {
                    v85 = 0;
                    v86 = v81;
                    v87 = v83;
                    do
                    {
                      if ((*v87 & 0x200000) == 0)
                      {
                        break;
                      }

                      if (v86 && (v88 = *v86, --v86, v88 > 0) || (*v87 & 0x60000) != 0)
                      {
                        v85 = 1;
                      }

                      v87 -= 4;
                    }

                    while (v87 >= &v83[-2 * (v80 - v35)]);
                    v89 = (v83 - v87) >> 2;
                    if (v85)
                    {
                      v90 = *(v2 + 32);
                      v91 = -v89;
                      __NSDoReordants(*(v2 + 16), v80, v83, v82, v81, v126, -v89, &v134, v125);
                      if (*(v2 + 32) <= v90)
                      {
                        v2 = v130;
                        v12 = 0x1EAC99000;
                      }

                      else
                      {
                        v12 = 0x1EAC99000;
                        OUTLINED_FUNCTION_0_0(Status, v45, v46, v92, v47, v48, v49, v50, v117, v118, v119, v120, v121, v122, v123, v124);
                        v2 = v130;
                      }

                      v11 = v128;
                      goto LABEL_123;
                    }
                  }

                  v134 += v89;
                  v91 = -v89;
LABEL_123:
                  v80 += v91;
                  v83 += 4 * v91;
                  if (v81)
                  {
                    v81 += v91;
                  }

                  else
                  {
                    v81 = 0;
                  }

                  v82 += v91;
                  goto LABEL_127;
                }

                if ((v84 & 0x20000) == 0)
                {
                  break;
                }

                if ((v84 & 0x20) == 0)
                {
                  v93 = v134;
                  [*(v2 + 16) insertGlyph:*v80 atGlyphIndex:v134 characterIndex:*v82 + v126];
                  OUTLINED_FUNCTION_18();
                  OUTLINED_FUNCTION_0_0(v99, v100, v101, v102, v103, v104, v105, v106, v117, v118, v119, v120, v121, v122, v123, v124);
                  if ((*v83 & 0x40000) == 0)
                  {
                    goto LABEL_133;
                  }

                  goto LABEL_130;
                }

                OUTLINED_FUNCTION_17();
LABEL_127:
                if (v80 < v35)
                {
                  goto LABEL_151;
                }
              }

              v93 = v134;
              if ((v84 & 0x40000) == 0)
              {
                goto LABEL_133;
              }

LABEL_130:
              v94 = *v80;
              if (v94 == 0xFFFF)
              {
                v94 = 0;
              }

              v137 = v94;
              v11 = 1;
LABEL_133:
              if (!v81)
              {
                goto LABEL_144;
              }

              v129 = v93;
              v95 = *v81;
              if (*v81 < 1)
              {
                v93 = v129;
LABEL_144:
                v131 = v93;
                if (v11)
                {
                  goto LABEL_145;
                }

                goto LABEL_146;
              }

              if (v11)
              {
                v96 = v129;
              }

              else
              {
                v96 = v129 + 1;
              }

              v97 = v95 + v11;
              if (v95 + v11 < 0x81)
              {
                v98 = v11;
              }

              else
              {
                do
                {
                  OUTLINED_FUNCTION_28(Status, v45, v46, v11, v47, v48, v49, v50, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v129, v130, v131, v134, v135, v136, v137);
                  Status = [*(v130 + 16) substituteGlyphsInRange:v96 withGlyphs:{128, &v137}];
                  v11 = 0;
                  v98 = 0;
                  v96 += v97;
                  v95 -= v97;
                  v97 = v95;
                }

                while (v95 > 0x80);
              }

              v131 = v96;
              bzero(&v138[4 * v98 - 4], 4 * v95);
              v93 = *v81 + v129;
              v11 = v97;
              v2 = v130;
              v12 = 0x1EAC99000;
              if (!v11)
              {
                goto LABEL_146;
              }

LABEL_145:
              [*(v2 + 16) substituteGlyphsInRange:v131 withGlyphs:{v11, &v137}];
LABEL_146:
              v134 = v93 + 1;
              OUTLINED_FUNCTION_17();
              if (v80 < v35)
              {
LABEL_151:
                GlyphRuns = v122;
                goto LABEL_13;
              }
            }
          }

          v51 = v127;
          if (v136 < 1)
          {
            v53 = v131;
            v12 = 0x1EAC99000;
            goto LABEL_153;
          }

          v52 = &v35[v136];
          v53 = v131;
          v121 = v52;
          v12 = 0x1EAC99000;
          while (2)
          {
            v132 = v53;
            while (2)
            {
              v54 = *v42;
              if (v51 && (v54 & 0x40000) == 0 || (v54 & 0x220000) != 0 || !v27 || !*v27 || v51 == 128)
              {
                Status = [*(v2 + 16) substituteGlyphsInRange:v53 withGlyphs:?];
                v51 = 0;
                v54 = *v42;
              }

              if ((v54 & 0x200000) != 0)
              {
                if (v52 - v35 < 1)
                {
                  v60 = 0;
                }

                else
                {
                  v55 = 0;
                  v56 = v27;
                  v57 = v42;
                  do
                  {
                    if ((*v57 & 0x200000) == 0)
                    {
                      break;
                    }

                    if (v56 && (v58 = *v56, ++v56, v58 > 0) || (*v57 & 0x60000) != 0)
                    {
                      v55 = 1;
                    }

                    v57 += 4;
                  }

                  while (v57 < &v42[2 * (v52 - v35)]);
                  v59 = v57 - v42;
                  v60 = v59 >> 2;
                  if (v55)
                  {
                    v61 = v51;
                    v62 = v2;
                    v63 = *(v2 + 32);
                    __NSDoReordants(*(v62 + 16), v35, v42, v43, v27, v126, v59 >> 2, &v134, v125);
                    if (*(v62 + 32) <= v63)
                    {
                      v2 = v130;
                      v12 = 0x1EAC99000;
                    }

                    else
                    {
                      v12 = 0x1EAC99000;
                      OUTLINED_FUNCTION_0_0(Status, v45, v46, v64, v47, v48, v49, v50, v117, v118, v119, v120, v121, v122, v123, v124);
                      v2 = v130;
                    }

                    v51 = v61;
                    v52 = v121;
                    goto LABEL_69;
                  }
                }

                v134 += v60;
LABEL_69:
                v35 += v60;
                v42 += 4 * v60;
                if (v27)
                {
                  v27 += v60;
                }

                else
                {
                  v27 = 0;
                }

                v43 += v60;
                v53 = v132;
LABEL_73:
                if (v35 >= v52)
                {
                  goto LABEL_153;
                }

                continue;
              }

              break;
            }

            if ((v54 & 0x20000) == 0)
            {
              goto LABEL_76;
            }

            if ((v54 & 0x20) != 0)
            {
              ++v35;
              v42 += 4;
              OUTLINED_FUNCTION_4_0();
              if (v27)
              {
                ++v27;
              }

              else
              {
                v27 = 0;
              }

              goto LABEL_73;
            }

            v65 = v51;
            v66 = [*(v2 + 16) insertGlyph:*v35 atGlyphIndex:v134 characterIndex:*v43 + v126];
            OUTLINED_FUNCTION_0_0(v66, v67, v68, v65, v69, v70, v71, v72, v117, v118, v119, v120, v121, v122, v123, v124);
            OUTLINED_FUNCTION_18();
            v54 = *v42;
LABEL_76:
            if ((v54 & 0x40000) != 0)
            {
              if (!v51)
              {
                v53 = v134;
              }

              v73 = *v35;
              if (v73 == 0xFFFF)
              {
                v73 = 0;
              }

              *&v138[4 * v51++ - 4] = v73;
              v12 = 0x1EAC99000;
            }

            if (v27)
            {
              v74 = v53;
              v75 = *v27;
              v76 = v134;
              if (*v27 >= 1)
              {
                if (!v51)
                {
                  v74 = v134 + 1;
                }

                v77 = v75 + v51;
                v133 = v134;
                if (v75 + v51 < 0x81)
                {
                  v78 = v51;
                }

                else
                {
                  do
                  {
                    OUTLINED_FUNCTION_28(Status, v45, v46, v51, v47, v48, v49, v50, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v130, v133, v134, v135, v136, v137);
                    Status = [*(v130 + 16) substituteGlyphsInRange:v74 withGlyphs:{128, &v137}];
                    v51 = 0;
                    v78 = 0;
                    v74 += v77;
                    v75 -= v77;
                    v77 = v75;
                  }

                  while (v75 > 0x80);
                }

                bzero(&v138[4 * v78 - 4], 4 * v75);
                v76 = *v27 + v133;
                v2 = v130;
              }

              v53 = v74;
            }

            else
            {
              v76 = v134;
            }

            v134 = v76 + 1;
            ++v35;
            v42 += 4;
            OUTLINED_FUNCTION_4_0();
            if (v27)
            {
              ++v27;
            }

            else
            {
              v27 = 0;
            }

            v52 = v121;
            if (v35 < v121)
            {
              continue;
            }

            break;
          }

LABEL_153:
          v131 = v53;
          v41 = 0;
          v38 = v51;
          v11 = 0;
          GlyphRuns = v122;
          if (v38)
          {
            goto LABEL_154;
          }

          goto LABEL_13;
        }
      }

      v107 = *(v2 + 88);
      v108 = *(v2 + 32);
      if (v107)
      {
        v109 = [*(v2 + 16) insertGlyph:v107 atGlyphIndex:v108 + *(v2 + 24) characterIndex:*(v2 + 40) + *(v2 + 48) - 1];
        OUTLINED_FUNCTION_0_0(v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124);
        OUTLINED_FUNCTION_18();
      }

      if (*(v120 + 8) < v108)
      {
        *(v120 + 8) = v108;
      }

      if (v119)
      {
        CFRelease(v119);
      }
    }
  }
}

- (void)saveWithGlyphOrigin:
{
  OUTLINED_FUNCTION_12();
  v312 = *MEMORY[0x1E69E9840];
  if (!v0)
  {
    goto LABEL_195;
  }

  v2 = v0;
  if (!*(v0 + 8))
  {
    goto LABEL_195;
  }

  v3 = v1;
  v4 = [*(v0 + 16) _getATSTypesetterGuts];
  v253 = *(v4 + 16);
  v284 = [*(v2 + 16) _bidiLevels];
  HIBYTE(v292) = 0;
  v293 = 0;
  v6 = *(v2 + 24);
  v5 = *(v2 + 32);
  [*(v2 + 16) lineFragmentPadding];
  v273 = v7;
  v8 = *(*(v4 + 40) + 216);
  *(&v292 + 7) = *(v2 + 88) != 0;
  GlyphRuns = CTLineGetGlyphRuns(*(v2 + 8));
  Count = CFArrayGetCount(GlyphRuns);
  v288 = v2;
  *(v2 + 56) = vaddq_f64(vdupq_lane_s64(v273, 0), *(v2 + 56));
  v269 = Count;
  if (Count <= 0)
  {
    goto LABEL_173;
  }

  v11 = 0;
  v280 = 0;
  v12 = 0;
  v13 = 0;
  v224 = 0;
  HIDWORD(v208) = v8;
  HIDWORD(v229) = v8 & 0x7000;
  v14 = *&v273 + v3;
  v15 = *MEMORY[0x1E696AA80];
  v16 = *(MEMORY[0x1E696AA80] + 8);
  v17 = *(MEMORY[0x1E696AA80] + 16);
  v18 = *(MEMORY[0x1E696AA80] + 24);
  v241 = v5 + v6 - 1;
  v212 = v5 + v6 - 2;
  v233 = 0.0;
  v237 = 0;
  v19 = 0.0;
  v265 = GlyphRuns;
  v20 = Count;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, v12);
    CTRunGetInitialAdvance();
    v23 = v22;
    v25 = v24;
    StringRange = CTRunGetStringRange(ValueAtIndex);
    GlyphStorage = CTRunGetGlyphStorage();
    v28 = MEMORY[0x193AD3A70](GlyphStorage);
    v36 = v28;
    v37 = *(v28 + 88);
    v38 = v37 + 104 * *(v28 + 96);
    v39 = v37 > v11 || v11 >= v38;
    if (v39 || v13 > StringRange.location)
    {
      v11 = *(v28 + 200);
      if (!v11 || (v13 = *(v28 + 208), v13 > StringRange.location))
      {
        v41 = *(v28 + 152);
        if (v41)
        {
          v13 = *(v28 + 128) - *(v41 + 128);
        }

        else
        {
          v13 = 0;
        }

        v11 = *(v28 + 88);
      }
    }

    v14 = v14 + v23;
    v19 = v19 + v25;
    if (!v11 || v11 >= v38)
    {
      v42 = v13;
LABEL_24:
      NSLog(@"NSATSGlyphStorage inconsistency. Cannot find run storage for character range {%ld %ld} for CTRun %p. Ignoring the run...", StringRange.location, StringRange.length, ValueAtIndex);
      v11 = 0;
      v13 = v42;
      goto LABEL_25;
    }

    while (1)
    {
      v42 = *(v11 + 16) + v13;
      if (StringRange.location < v42)
      {
        break;
      }

      v11 += 104;
      v13 = v42;
      if (v11 >= v38)
      {
        goto LABEL_24;
      }
    }

    v43 = *(v28 + *MEMORY[0x1E6965600]);
    if ((*(v28 + 224) & 0x10) != 0 || (*(v253 + 224) & 0x10) != 0)
    {
      v46 = [OUTLINED_FUNCTION_10_0(v28 v29];
      v47 = *(v36 + 152);
      if (!v47)
      {
        v47 = v36;
      }

      v44 = [v46 _exactGlyphRangeForCharacterRange:{*(v47 + 128) + StringRange.location, StringRange.length}];
      v45 = v48;
    }

    else
    {
      v44 = *(v28 + 112) + *(&v292 + 1);
      v45 = v293;
    }

    v49 = (v43 + 16 * *(&v292 + 1));
    v313.origin.x = v15;
    v313.origin.y = v16;
    v313.size.width = v17;
    v313.size.height = v18;
    v50 = NSEqualRects(*(v11 + 64), v313);
    if (!v50)
    {
      v129 = *(v11 + 72);
      [*(v288 + 16) setAttachmentSize:v44 forGlyphRange:{1, *(v11 + 80), *(v11 + 88)}];
      [*(v288 + 16) setNotShownAttribute:1 forGlyphRange:{v44, 1}];
      [*(v288 + 16) setLocation:0 withAdvancements:v44 forStartOfGlyphRange:{1, v14, v19 + v129 + *(v11 + 56)}];
      v14 = v14 + *v49;
      v280 = v44;
      goto LABEL_112;
    }

    v257 = v45;
    *&v273 = v44;
    v58 = *(v36 + *MEMORY[0x1E6965610]);
    v59 = *(v36 + *MEMORY[0x1E6965618]);
    v60 = *(v36 + *MEMORY[0x1E6965620]);
    v61 = *(v36 + *MEMORY[0x1E69655F8]);
    v62 = v293;
    if (v61)
    {
      v63 = (v61 + 8 * *(&v292 + 1));
    }

    else
    {
      v63 = 0;
    }

    v64 = *(v36 + 152);
    if (!v64)
    {
      v64 = v36;
    }

    v249 = *(v64 + 128);
    if ((*(v36 + 224) & 8) != 0)
    {
      BYTE7(v292) = 1;
      v65 = OUTLINED_FUNCTION_10_0(v50, v51, v52, v53, v54, v55, v56, v57, v192, v196, v200, v204, v208, v212, v216, v220, v224, v229, *&v233, v237, v241, v245, v249, v253, v257, v261, v265, v269, v44, *(&v273 + 1), v280, v284, v288);
      v261 = v66;
      v245 = v67;
      v69 = v68;
      v71 = v70;
      [objc_msgSend(v65 "layoutManager")];
      v60 = v71;
      v59 = v69;
      v58 = v245;
      v62 = v261;
    }

    v72 = v58 + 2 * *(&v292 + 1);
    v73 = v59 + 4 * *(&v292 + 1);
    v74 = v60 + 8 * *(&v292 + 1);
    if (v284)
    {
      if ((*(v36 + 224) & 8) == 0)
      {
        v75 = ValueAtIndex;
        v261 = &v49[2 * v62];
        v76 = v62;
        Status = CTRunGetStatus(v75);
        v62 = v76;
        if (Status)
        {
          BYTE7(v292) = 1;
          if (*(v288 + 88) && v257 + v273 - 1 == v241)
          {
            v131 = OUTLINED_FUNCTION_10_0(Status, v51, v52, v241, v78, v79, v80, v81, v192, v196, v200, v204, v208, v212, v216, v220, v224, v229, *&v233, v237, v241, v245, v249, v253, v257, v261, v265, v269, v273, *(&v273 + 1), v280, v284, v288);
            OUTLINED_FUNCTION_26(v131, v132, v133, v134);
            v62 = v76;
            v14 = v14 + *(v288 + 96);
          }

          if (v62 >= 1)
          {
            while (1)
            {
              OUTLINED_FUNCTION_31();
              while (1)
              {
                v145 = *(v73 - 4);
                if ((v143 & ~v145) != 0)
                {
                  break;
                }

                OUTLINED_FUNCTION_4_0();
                OUTLINED_FUNCTION_16();
                if (v39)
                {
                  goto LABEL_112;
                }
              }

              if ((v145 & 0x200000) != 0)
              {
                v148 = v144;
                v311 = 0;
                v149 = OUTLINED_FUNCTION_10_0(v135, v136, v137, v138, v139, v140, v141, v142, v192, v196, v200, v204, v208, v212, v216, v220, v224, v229, *&v233, v237, v241, v245, v249, v253, v257, v261, v265, v269, v273, *(&v273 + 1), v280, v284, v288);
                v157 = OUTLINED_FUNCTION_27(v149, v150, v151, v152, v153, v154, v155, v156, v195, v199, v203, v207, v211, v215, v219, v223, v227, v232, v236, v240, v244, v248, v252, v256, v260, v264, v268, v272, v276, v279, v283, v287, v291, v292, *(&v292 + 1), v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, 0);
                v147 = v157;
                if (v158 < 2 || (v159 = *(v73 - 4), (v159 & 0x20) != 0))
                {
                  v146 = v228;
                  v144 = v148;
                }

                else
                {
                  v160 = v228;
                  v144 = v148;
                  if (!v228 || (v228 >= v157 ? (v161 = v228 - v157 >= v158) : (v161 = 1), v161))
                  {
                    v160 = v157;
                  }

                  if ((v159 & 0x20000) != 0)
                  {
                    v147 = v160 + 1;
                    v146 = v160 + 1;
                  }

                  else
                  {
                    v146 = v160;
                  }
                }
              }

              else
              {
                v146 = 0;
                v147 = v144;
              }

              v224 = v146;
              if (v63 && (v162 = *v63, *v63 >= 1))
              {
                v163 = v162 + 1;
                v164 = (*(v73 - 4) & 0x600000) == 0x200000 ? 0 : *v63;
                v147 -= v164;
                v144 -= v162;
              }

              else
              {
                v162 = 0;
                v163 = 1;
              }

              *&v273 = v144;
              v280 = v147;
              if ((!*(v72 - 2) || (*(v73 - 4) & 0x20) != 0) && ((*(v11 + 96) & 4) == 0 || (*(v73 - 2) & 1) == 0))
              {
                break;
              }

              v165 = v288;
              if (v162)
              {
                v257 = v163;
                goto LABEL_157;
              }

LABEL_158:
              v166 = *(v165 + 56);
              if (v166 < v14)
              {
                v166 = v14;
              }

              v167 = [*(v165 + 16) setLocation:0 withAdvancements:v166 forStartOfGlyphRange:v19 + *(v11 + 56)];
              v14 = v14 + *(v49 - 2);
              if (!HIDWORD(v229) && v14 > *(v165 + 64))
              {
                v14 = *(v165 + 64);
              }

              v175 = *(v49 - 1);
              if (v175 != 0.0)
              {
                OUTLINED_FUNCTION_9_0(v167, v168, v169, v170, v171, v172, v173, v174, v192, v196, v200, v204, v208, v212, v216, v220, v224, v229, *&v233, v237, v241, v245, v249, v253, v257, v261, v265, v269, v273, *(&v273 + 1), v280, v284, v288);
                v175 = *(v49 - 1);
              }

              v19 = v19 + v175;
              OUTLINED_FUNCTION_4_0();
              if (v49 >= v176)
              {
                goto LABEL_112;
              }
            }

            v257 = v163;
LABEL_157:
            v165 = v288;
            [*(v288 + 16) setNotShownAttribute:1 forGlyphRange:?];
            goto LABEL_158;
          }

LABEL_112:
          GlyphRuns = v265;
          v20 = v269;
          goto LABEL_25;
        }
      }
    }

    if (v62 < 1)
    {
      v20 = v269;
      v82 = v273;
      v130 = v288;
      GlyphRuns = v265;
      goto LABEL_116;
    }

    LODWORD(v245) = 0;
    v82 = v273;
    do
    {
      OUTLINED_FUNCTION_31();
      while (1)
      {
        v92 = *(v73 - 4);
        if ((v89 & ~v92) != 0)
        {
          break;
        }

        OUTLINED_FUNCTION_4_0();
        OUTLINED_FUNCTION_16();
        if (v39)
        {
          goto LABEL_113;
        }
      }

      v257 = v82;
      if (v85)
      {
        if ((v91 | ((v92 & 0x200000u) >> 21)))
        {
          v93 = OUTLINED_FUNCTION_10_0(v83, v51, v52, v84, v85, v86, v87, v88, v192, v196, v200, v204, v208, v212, v216, v220, v224, v229, *&v233, v237, v241, v245, v249, v253, v82, v261, v265, v269, v273, *(&v273 + 1), v280, v284, v288);
          v95 = v94;
          v83 = [v93 setLocation:0 withAdvancements:v280 forStartOfGlyphRange:{*&v237, v233}];
          v90 = v95;
          v82 = v257;
          v91 = 0;
          v85 = 0;
          v92 = *(v73 - 4);
        }

        else
        {
          v91 = 0;
          ++v85;
        }
      }

      v261 = v90;
      if ((v92 & 0x200000) == 0)
      {
        v224 = 0;
        v96 = v82;
        goto LABEL_73;
      }

      v311 = 0;
      v97 = OUTLINED_FUNCTION_10_0(v83, v51, v52, v84, v85, v86, v87, v88, v192, v196, v200, v204, v208, v212, v216, v85, v224, v229, *&v233, v237, v241, v245, v249, v253, v257, v90, v265, v269, v273, *(&v273 + 1), v280, v284, v288);
      v105 = OUTLINED_FUNCTION_27(v97, v98, v99, v100, v101, v102, v103, v104, v193, v197, v201, v205, v209, v213, v217, v221, v225, v230, v234, v238, v242, v246, v250, v254, v258, v262, v266, v270, v274, v277, v281, v285, v289, v292, *(&v292 + 1), v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, 0);
      v111 = v105;
      if (v106 >= 2)
      {
        v112 = *(v73 - 4);
        if ((v112 & 0x20) == 0)
        {
          v113 = v222;
          v114 = v226;
          if (!v226 || (v226 >= v105 ? (v115 = v226 - v105 >= v106) : (v115 = 1), v115))
          {
            v114 = v105;
          }

          if ((v112 & 0x20000) != 0)
          {
            v111 = v114 + 1;
            v116 = v114 + 1;
          }

          else
          {
            v116 = v114;
          }

          v226 = v116;
          goto LABEL_72;
        }

        v111 = v106 + v251 + v105 - (v310 + v311) + *(v74 - 8);
      }

      v113 = v222;
LABEL_72:
      BYTE7(v292) = 1;
      OUTLINED_FUNCTION_9_0(v105, v106, v107, v111, v113, v108, v109, v110, v194, v198, v202, v206, v210, v214, v218, v222, v226, v231, v235, v239, v243, v247, v251, v255, v259, v263, v267, v271, v275, v278, v282, v286, v290);
LABEL_73:
      v117 = v280;
      if (!v85)
      {
        v118 = *(v288 + 56);
        if (v14 >= v118)
        {
          v118 = v14;
        }

        else
        {
          v91 = 1;
        }

        v233 = v19 + *(v11 + 56);
        v237 = *&v118;
        v85 = 1;
        v117 = v96;
      }

      v280 = v117;
      if ((*(v36 + 224) & 8) != 0 && v96 == v273)
      {
        v119 = *(v73 - 4);
LABEL_89:
        v121 = 0;
        ++v96;
        v120 = 1;
        if (!v63)
        {
          goto LABEL_94;
        }

        goto LABEL_90;
      }

      if (v245)
      {
        v119 = *(v73 - 4);
      }

      else
      {
        v119 = *(v73 - 4);
        if (*(v72 - 2) && (v119 & 0x20) == 0)
        {
          goto LABEL_89;
        }
      }

      v120 = 0;
      v121 = 1;
      if ((*(v11 + 96) & 4) != 0 && (v119 & 0x10000) != 0)
      {
        goto LABEL_89;
      }

      v91 = 1;
      if (!v63)
      {
        goto LABEL_94;
      }

LABEL_90:
      v122 = *v63;
      if (*v63 >= 1)
      {
        HIDWORD(v216) = v119;
        LODWORD(v220) = v91;
        v123 = v280;
        if ((v119 & 0x400000) != 0)
        {
          v96 = v280 - v122;
          v123 = v280 - v122;
        }

        v124 = v122 + v85;
        v125 = OUTLINED_FUNCTION_10_0(v83, v51, v52, v96, v122 + v121, v86, v87, v88, v192, v196, v200, v204, v208, v212, v216, v220, v224, v229, *&v233, v237, v241, v245, v249, v253, v122 + v257, v261, v265, v269, v273, *(&v273 + 1), v123, v284, v288);
        goto LABEL_96;
      }

LABEL_94:
      if (v120)
      {
        goto LABEL_97;
      }

      HIDWORD(v216) = v119;
      LODWORD(v220) = v91;
      v124 = v85;
      v125 = OUTLINED_FUNCTION_10_0(v83, v51, v52, v96, 1, v86, v87, v88, v192, v196, v200, v204, v208, v212, v216, v220, v224, v229, *&v233, v237, v241, v245, v249, v253, v257, v261, v265, v269, v273, *(&v273 + 1), v280, v284, v288);
LABEL_96:
      v83 = [v125 setNotShownAttribute:1 forGlyphRange:?];
      v85 = v124;
LABEL_97:
      v14 = v14 + *(v49 - 2);
      if (HIDWORD(v229))
      {
        v126 = v257;
      }

      else
      {
        v126 = v257;
        if (v14 > *(v288 + 64))
        {
          if (v245)
          {
            LODWORD(v245) = 1;
          }

          else
          {
            v83 = [OUTLINED_FUNCTION_10_0(v83 v51];
            if (v83)
            {
              v83 = [(NSATSLineFragment *)v288 resolvedLineBreakMode:?];
              LODWORD(v245) = v83 == 2;
            }

            else
            {
              LODWORD(v245) = 0;
            }

            v85 = v220;
          }

          v14 = *(v288 + 64);
        }
      }

      v127 = *(v49 - 1);
      if (v127 != 0.0)
      {
        OUTLINED_FUNCTION_9_0(v83, v51, v52, v96, v85, v86, v87, v88, v192, v196, v200, v204, v208, v212, v216, v220, v224, v229, *&v233, v237, v241, v245, v249, v253, v257, v261, v265, v269, v273, *(&v273 + 1), v280, v284, v288);
        v127 = *(v49 - 1);
      }

      v19 = v19 + v127;
      v82 = v126 + 1;
      OUTLINED_FUNCTION_4_0();
    }

    while (v49 < v128);
LABEL_113:
    GlyphRuns = v265;
    v20 = v269;
    v130 = v288;
    if (v85)
    {
      [*(v288 + 16) setLocation:0 withAdvancements:v280 forStartOfGlyphRange:{*&v237, v233}];
    }

LABEL_116:
    if (*(v130 + 88) && v82 == v241)
    {
      OUTLINED_FUNCTION_26(*(v288 + 16), v51, v52, v241);
      v14 = v14 + *(v288 + 96);
    }

LABEL_25:
    ++v12;
  }

  while (v12 != v20);
  if (v36 && (BYTE7(v292) & 1) == 0 && (*(v36 + 224) & 1) != 0 && (*(v36 + 152) || (v208 & 0x2000000000000) != 0))
  {
    BYTE7(v292) = 1;
  }

LABEL_173:
  if (v284)
  {
    v177 = [*(v288 + 16) paragraphCharacterRange];
    v179 = v177;
    v180 = *(v288 + 32);
    if (*(v288 + 48) == v180)
    {
      [*(v288 + 16) setBidiLevels:v284 + *(v288 + 40) - v177 forGlyphRange:*(v288 + 24)];
    }

    else
    {
      v181 = *(v288 + 24);
      v182 = v181 + v180;
      if (v181 < v181 + v180)
      {
        v183 = v178;
        do
        {
          if (v182 - v181 >= 0x80)
          {
            v184 = 128;
          }

          else
          {
            v184 = v182 - v181;
          }

          v185 = [*(v288 + 16) getGlyphsInRange:v181 glyphs:v184 properties:0 characterIndexes:0 bidiLevels:{&v310, &v294}];
          v186 = v185;
          if (v185 >= 1)
          {
            v187 = &v294;
            v188 = &v310;
            do
            {
              v189 = *v188 - v179;
              if (*v188 < v179 || v189 >= v183)
              {
                v191 = 0;
              }

              else
              {
                v191 = *(v284 + v189);
              }

              *v187 = v191;
              v187 = (v187 + 1);
              ++v188;
            }

            while (v187 < (&v294 + v185));
          }

          [*(v288 + 16) setBidiLevels:&v294 forGlyphRange:{v181, v185}];
          v181 += v186;
        }

        while (v181 < v182);
      }
    }
  }

  if ((*(v288 + 104) & 4) != 0)
  {
    [*(v288 + 16) setDrawsOutsideLineFragment:1 forGlyphRange:{*(v288 + 24), *(v288 + 32)}];
  }

  if (BYTE7(v292) == 1)
  {
    [*(v288 + 16) setHardInvalidation:1 forGlyphRange:{*(v288 + 24), *(v288 + 32)}];
  }

LABEL_195:
  OUTLINED_FUNCTION_13();
}

- (uint64_t)_copyRenderingContextWithGlyphOrigin:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = objc_allocWithZone(NSLineFragmentRenderingContext);
    v5 = [*(v3 + 16) _textStorageForAttachmentProtocol];
    v6 = CFGetTypeID(*(v3 + 8));
    v7 = *(v3 + 8);
    if (v6 == qword_1ED4DF2E0)
    {
      GlyphRuns = *(v3 + 8);
    }

    else
    {
      GlyphRuns = CTLineGetGlyphRuns(v7);
      v7 = *(v3 + 8);
    }

    BoundsWithOptions = CTLineGetBoundsWithOptions(v7, 0);
    v9 = *(v3 + 96) + BoundsWithOptions.size.width;
    v10 = *(v3 + 80);
    v11 = [*(v3 + 16) _usesScreenFonts];
    v12 = [*(v3 + 16) _baseWritingDirection] == 1;
    v13 = [*(v3 + 16) applicationFrameworkContext];

    return [v4 initWithTextStorage:v5 runs:GlyphRuns glyphOrigin:v11 lineFragmentWidth:v12 elasticWidth:v13 usesScreenFonts:a2 isRTL:v9 applicationFrameworkContext:v10];
  }

  return result;
}

- (unint64_t)_charIndexToBreakLineByWordWrappingAtIndex:(char *)a3 lineFragmentWidth:(double)a4 hyphenate:
{
  if (!a1)
  {
    return 0;
  }

  v7 = a1;
  v8 = [*(a1 + 16) paragraphArbitrator];
  v9 = *(v7 + 40);
  v69 = a2 - v9;
  v10 = *(v7 + 16);
  if (v8)
  {
    [v10 lineBreakStrategy];
    [OUTLINED_FUNCTION_35() setLineBreakStrategy:?];
    [*(v7 + 16) hyphenationFactorForGlyphAtIndex:*(v7 + 24)];
    [v8 setHyphenationFactor:v11];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __92__NSATSLineFragment__charIndexToBreakLineByWordWrappingAtIndex_lineFragmentWidth_hyphenate___block_invoke;
    v72[3] = &unk_1E7265B28;
    v72[4] = v7;
    [v8 setValidateLineBreakContext:v72];
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __92__NSATSLineFragment__charIndexToBreakLineByWordWrappingAtIndex_lineFragmentWidth_hyphenate___block_invoke_2;
    v71[3] = &unk_1E7265B50;
    v71[4] = v7;
    [v8 setLineWidth:v71];
    [*(v7 + 16) attributedString];
    [OUTLINED_FUNCTION_35() setAttributedString:?];
    [*(v7 + 16) paragraphCharacterRange];
    [OUTLINED_FUNCTION_35() setParagraphRange:?];
    [*(v7 + 16) typesetterBehavior];
    [OUTLINED_FUNCTION_35() setTypesetterBehavior:?];
    [v8 lineBreakContextBeforeIndex:a2 lineFragmentWidth:v9 range:{v69, a4}];
    [v8 resetBreaker];
    [v8 reset];
    *a3 = 0;
    return 0;
  }

  v62 = a3;
  v63 = [v10 _getATSTypesetterGuts];
  v13 = [*(v7 + 16) attributedString];
  theString = [v13 string];
  v14 = [*(v7 + 16) paragraphCharacterRange];
  v16 = v15;
  [*(v7 + 16) hyphenationFactorForGlyphAtIndex:*(v7 + 24)];
  v18 = v17;
  v19 = [*(v7 + 16) lineBreakStrategy];
  v70 = v13;
  v66 = [v13 methodForSelector:sel_lineBreakBeforeIndex_withinRange_];
  CharacterAtIndex = [objc_opt_class() instanceMethodForSelector:sel_lineBreakBeforeIndex_withinRange_];
  v64 = v7;
  v65 = CharacterAtIndex;
  v28 = 0;
  v29 = 0;
  v30 = v19 & (v9 == v14);
  v31 = v14 + v16;
  do
  {
    v32 = a2 - 1;
    if (a2 < 1 || (CharacterAtIndex = CFStringGetCharacterAtIndex(theString, a2 - 1), CharacterAtIndex != 9))
    {
      if (v66 == v65)
      {
        v33 = [*(v7 + 16) lineBreakStrategy];
        CharacterAtIndex = [OUTLINED_FUNCTION_20(v33 v34];
      }

      else
      {
        CharacterAtIndex = [OUTLINED_FUNCTION_20(CharacterAtIndex v21];
      }

      v32 = CharacterAtIndex;
    }

    if (v32 <= v9)
    {
      v40 = v9;
    }

    else
    {
      v40 = v32;
    }

    if (v32 >= a2)
    {
      v12 = v9;
    }

    else
    {
      v12 = v40;
    }

    if (v12 < a2 && v12 - v9 > 0x1D)
    {
      v42 = v30;
    }

    else
    {
      v42 = 0;
    }

    if (v42 == 1 && v31 - v12 <= 5)
    {
      HIDWORD(v67) = v29;
      v44 = v30;
      v45 = v28;
      CharacterAtIndex = [v70 nextWordFromIndex:v12 forward:1];
      v46 = CharacterAtIndex;
      v47 = v31 - CharacterAtIndex;
      if (v31 > CharacterAtIndex)
      {
        v48 = [v70 string];
        v49 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
        v50 = v48;
        v7 = v64;
        CharacterAtIndex = [v50 rangeOfCharacterFromSet:v49 options:0 range:{v46, v47}];
        if (!v21)
        {
          v46 = v31;
        }
      }

      v28 = v45;
      v30 = v44;
      v29 = HIDWORD(v67);
      if (v46 == v31)
      {
        v51 = v12 - (v12 == a2);
        if (v51 > v9)
        {
          goto LABEL_55;
        }
      }
    }

    if (v12 > v9)
    {
      CharacterAtIndex = [(__CFString *)theString characterAtIndex:v12 - 1];
      v28 = (CharacterAtIndex == 173) | v28;
    }

    if (v18 <= 0.0)
    {
      v52 = 0;
    }

    else
    {
      if (!((v12 <= v9) | v29 & 1) && ((v28 & 1) != 0 || [(NSATSGlyphStorage *)*(v63 + 16) _widthForStringRange:v9, v12 - v9]/ a4 < v18))
      {
        v29 = 1;
LABEL_42:
        v53 = [OUTLINED_FUNCTION_20(CharacterAtIndex v21];
        v55 = v53 != 0x7FFFFFFFFFFFFFFFLL && v53 > v9;
        v57 = v53 < a2 && v55;
        v56 = v57 == 0;
        v52 = v57 & (v12 != v53);
        if (!v56)
        {
          v12 = v53;
        }

        goto LABEL_50;
      }

      if (v29 & 1 | (v12 == v9))
      {
        goto LABEL_42;
      }

      v52 = 0;
      v29 = 0;
    }

LABEL_50:
    v58 = *(v7 + 16);
    if ((v28 | v52))
    {
      CharacterAtIndex = [v58 shouldBreakLineByHyphenatingBeforeCharacterAtIndex:v12];
      if (CharacterAtIndex)
      {
        v59 = 1;
        goto LABEL_57;
      }
    }

    else
    {
      CharacterAtIndex = [v58 shouldBreakLineByWordBeforeCharacterAtIndex:v12];
      if (CharacterAtIndex)
      {
        break;
      }
    }

    v51 = v12 - (v12 == a2);
LABEL_55:
    a2 = v51;
  }

  while (v51 > v9);
  v59 = 0;
LABEL_57:
  *v62 = v59;
  return v12;
}

- (void)dealloc
{
  if (self)
  {
    self->_flags = 0;
    line = self->_line;
    if (line)
    {
      CFRelease(line);
      self->_line = 0;
    }
  }

  v4.receiver = self;
  v4.super_class = NSATSLineFragment;
  [(NSATSLineFragment *)&v4 dealloc];
}

- (void)finalize
{
  if (self)
  {
    self->_flags = 0;
    line = self->_line;
    if (line)
    {
      CFRelease(line);
      self->_line = 0;
    }
  }

  v4.receiver = self;
  v4.super_class = NSATSLineFragment;
  [(NSATSLineFragment *)&v4 finalize];
}

- (uint64_t)resolvedLineBreakMode:(uint64_t)result
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = [*(result + 16) _getATSTypesetterGuts];
  if ((*(v4 + 84) & 0x10) != 0)
  {
    if (!a2)
    {
      return 0;
    }

    return (*(*(v4 + 40) + 216) >> 11) & 0xF;
  }

  if (!a2)
  {
    return (*(*(v4 + 40) + 216) >> 11) & 0xF;
  }

  v5 = [*(v3 + 16) currentTextContainer];

  return [v5 lineBreakMode];
}

@end