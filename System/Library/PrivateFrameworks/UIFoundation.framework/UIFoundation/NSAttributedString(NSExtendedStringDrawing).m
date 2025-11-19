@interface NSAttributedString(NSExtendedStringDrawing)
- (double)boundingRectWithSize:()NSExtendedStringDrawing options:context:;
- (id)_ui_attributedSubstringFromRange:()NSExtendedStringDrawing scaledByScaleFactor:;
- (id)_ui_attributedSubstringFromRange:()NSExtendedStringDrawing withTrackingAdjustment:;
- (uint64_t)hasColorGlyphsInRange:()NSExtendedStringDrawing;
- (void)drawWithRect:()NSExtendedStringDrawing options:context:;
@end

@implementation NSAttributedString(NSExtendedStringDrawing)

- (void)drawWithRect:()NSExtendedStringDrawing options:context:
{
  v15 = MEMORY[0x193AD39D0](0.15);
  v16 = MEMORY[0x193AD39E0](0.0);
  _NSStringDrawingCore(a1, 0, a7, 0, a2, a3, a4, a5, 0.0, v17, a8);
  v18 = MEMORY[0x193AD39D0](v15);
  MEMORY[0x193AD39E0](v18, v16);
}

- (id)_ui_attributedSubstringFromRange:()NSExtendedStringDrawing withTrackingAdjustment:
{
  v4 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:a1];
  v5 = [a1 length];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __103__NSAttributedString_NSExtendedStringDrawing___ui_attributedSubstringFromRange_withTrackingAdjustment___block_invoke;
  v7[3] = &unk_1E72679E0;
  *&v7[5] = a2;
  v7[4] = v4;
  [v4 enumerateAttribute:@"NSKern" inRange:0 options:v5 usingBlock:{0, v7}];
  return v4;
}

- (double)boundingRectWithSize:()NSExtendedStringDrawing options:context:
{
  v11 = MEMORY[0x193AD39D0](0.15);
  v12 = MEMORY[0x193AD39E0](0.0);
  v13 = [-[__CFString string](a1 "string")];
  if (!a6 || (v14 = v13) == 0 || ([a6 minimumScaleFactor], v15 <= 0.0) || (v82 = 0, v83 = 0, (v16 = objc_msgSend(-[__CFString attribute:atIndex:longestEffectiveRange:inRange:](a1, "attribute:atIndex:longestEffectiveRange:inRange:", @"NSParagraphStyle", 0, &v82, 0, objc_msgSend(-[__CFString string](a1, "string"), "length")), "mutableCopy")) != 0) && ((v17 = v16, objc_msgSend(v16, "lineBreakMode") <= 1) && objc_msgSend(a6, "maximumNumberOfLines") != 1 || (v18 = v83, v18 != objc_msgSend(-[__CFString string](a1, "string"), "length")) || (objc_msgSend(v17, "firstLineHeadIndent"), v19 != 0.0)))
  {
    v22 = __NSStringDrawingEngine(a1, 0, a5, 0, a6, 0, 0, 0.0, 0.0, a2, a3, 0.0);
    goto LABEL_19;
  }

  v78 = a3;
  [a6 setWantsBaselineOffset:1];
  v20 = [a6 maximumNumberOfLines];
  v76 = a2;
  if (v20 == 1)
  {
    v21 = 9000000.0;
  }

  else
  {
    v21 = a2;
  }

  v75 = v21;
  v22 = __NSStringDrawingEngine(a1, 0, a5, 0, a6, 0, 0, 0.0, 0.0, v21, 9000000.0, 0.0);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [a6 maximumNumberOfLines];
  v30 = v29;
  v31 = 0;
  v81 = 0;
  v32 = v28;
  v33 = v26;
  if (v20 != 1)
  {
    if (v29)
    {
      [a6 setMaximumNumberOfLines:{objc_msgSend(a6, "maximumNumberOfLines") + 1}];
      v34 = __NSStringDrawingEngine(a1, 0, a5, 0, a6, 0, &v81, 0.0, 0.0, v75, 9000000.0, 0.0);
      v33 = v35;
      v32 = v36;
      v37 = [a6 numberOfLineFragments];
      v31 = v37 > v30;
      if (v14 <= 0x200)
      {
        v31 = (v37 > v30) | v81;
      }
    }
  }

  v77 = v12;
  [a6 minimumScaleFactor];
  v39 = v38;
  [a6 baselineOffset];
  v80 = v40;
  if (v20 == 1)
  {
    v41 = v76 / v33;
    if (v41 > 1.0)
    {
      if (boundingRectWithSize_options_context__onceToken != -1)
      {
        [NSAttributedString(NSExtendedStringDrawing) boundingRectWithSize:options:context:];
      }

      if (boundingRectWithSize_options_context__scaleSingleLineWithHeight == 1)
      {
        v41 = v78 / v32;
      }
    }
  }

  else
  {
    v41 = v78 / v32;
  }

  if (v41 <= 1.0)
  {
    v44 = v41;
  }

  else
  {
    v44 = 1.0;
  }

  if (v44 >= v39)
  {
    v45 = v44;
  }

  else
  {
    v45 = v39;
  }

  v46 = [a6 cachesLayout];
  [a6 setCachesLayout:0];
  v47 = v80;
  if ((v45 < 1.0) | v31 & 1)
  {
    v48 = [(__CFString *)a1 length];
    v49 = fmax(v39, 0.0);
    v45 = 1.0;
    if (vabdd_f64(1.0, v49) >= 0.00000011920929)
    {
      v45 = v49;
      if (v49 <= 1.0)
      {
        v50 = v48;
        v82 = 0;
        v83 = 0;
        v51 = [(__CFString *)a1 attributesAtIndex:0 effectiveRange:&v82];
        if (v82 || v83 != v50)
        {
          if (v45 <= 0.01)
          {
            v74 = 0;
            v53 = 0;
            goto LABEL_46;
          }

          v60 = [(NSAttributedString *)a1 _ui_scaledStringWithAttributes:0 font:v45 scale:?];
          v70 = 0;
        }

        else
        {
          v52 = v51;
          v74 = [v51 mutableCopy];
          v53 = [v52 objectForKeyedSubscript:@"NSFont"];
          if (v45 <= 0.01)
          {
            goto LABEL_46;
          }

          v73 = v53;
          v60 = [(NSAttributedString *)a1 _ui_scaledStringWithAttributes:v74 font:v53 scale:v45];
          if (v74)
          {
            v70 = v73;
            v71 = [objc_msgSend(v74 objectForKeyedSubscript:{@"NSFont", "isEqual:", v73}];
LABEL_67:
            v53 = v70;
            if ((v71 & 1) == 0)
            {
              v72 = __NSScaledTextOversized(v60, v14, v74, a5, a6, v30, v76, v78, 0.0, 0.0, v75, 9000000.0);
              v53 = v70;
              if (v72)
              {
                v63 = v80;
                v64 = v74;
LABEL_57:
                [a6 setMaximumNumberOfLines:v30];
                v65 = v63;
                v66 = v28;
                v12 = v77;
                if (v60 != a1)
                {
                  v22 = __NSStringDrawingEngine(v60, v64, a5, 0, a6, 0, 0, 0.0, 0.0, v76, v78, 0.0);
                  v24 = v67;
                  v26 = v68;
                  v66 = v69;
                  [a6 baselineOffset];
                }

                v79 = v66;
                v47 = v65;
                if (v64)
                {
                }

                goto LABEL_35;
              }
            }

LABEL_46:
            v54 = 0;
            v55 = 1.0;
            v56 = 1.0 - v45;
            v57 = -20;
            do
            {
              v58 = v55 + v56 * -0.5;
              v59 = v53;
              v60 = [(NSAttributedString *)a1 _ui_scaledStringWithAttributes:v74 font:v53 scale:v58];
              v61 = __NSScaledTextOversized(v60, v14, v74, a5, a6, v30, v76, v78, 0.0, 0.0, v75, 9000000.0);
              v53 = v59;
              if (!v61)
              {
                v45 = v58;
              }

              if (__CFADD__(v57++, 1))
              {
                break;
              }

              if (v61)
              {
                v55 = v58;
              }

              v54 |= v61 ^ 1;
              v56 = v55 - v45;
            }

            while ((v54 & 1) == 0 || v56 >= 0.01);
            v63 = v80;
            if (v58 == v45)
            {
              v45 = v58;
              v64 = v74;
            }

            else
            {
              v64 = v74;
              v60 = [(NSAttributedString *)a1 _ui_scaledStringWithAttributes:v74 font:v59 scale:v45];
            }

            v46 = v46;
            goto LABEL_57;
          }

          v70 = v73;
        }

        v71 = [(__CFString *)v60 isEqual:a1];
        v74 = 0;
        goto LABEL_67;
      }
    }
  }

  [a6 setMaximumNumberOfLines:v30];
  v79 = v28;
  v12 = v77;
LABEL_35:
  [a6 setCachesLayout:v46];
  [a6 setActualScaleFactor:v45];
  if ([a6 wantsScaledLineHeight])
  {
    [a6 setScaledLineHeight:v79];
  }

  [a6 setTotalBounds:{v22, v24, v26, v28}];
  if ([a6 wantsScaledBaselineOffset])
  {
    [a6 setScaledBaselineOffset:v47];
  }

  [a6 setBaselineOffset:v80];
LABEL_19:
  v42 = MEMORY[0x193AD39D0](v11);
  MEMORY[0x193AD39E0](v42, v12);
  return v22;
}

- (uint64_t)hasColorGlyphsInRange:()NSExtendedStringDrawing
{
  v7 = [objc_allocWithZone(_NSCachedAttributedString) initWithAttributedString:a1];
  v8 = [v7 copyCachedInstance];
  if (v8)
  {
    v9 = v8;

    v7 = v9;
  }

  else
  {
    [v7 fixAttributesInRange:{a3, a4}];
    if (a4 == [a1 length])
    {
      [v7 cache];
    }
  }

  v10 = [v7 hasColorGlyphsInRange:{a3, a4}];

  return v10;
}

- (id)_ui_attributedSubstringFromRange:()NSExtendedStringDrawing scaledByScaleFactor:
{
  v3 = [a1 attributedSubstringFromRange:?];

  return [(NSAttributedString *)v3 _ui_attributedStringScaledByScaleFactor:a2];
}

@end