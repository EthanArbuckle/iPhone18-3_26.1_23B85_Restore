@interface NSStringDrawingEngine
@end

@implementation NSStringDrawingEngine

Class ____NSStringDrawingEngine_block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (v0)
  {
    v1 = v0;
    if (objc_opt_respondsToSelector())
    {
      __NSStringDrawingDefaultRendererConfiguration = [v1 integerValue];
    }
  }

  result = NSClassFromString(@"NSProFont");
  if (result)
  {
    __NSStringDrawingDefaultRendererConfiguration &= 0xFFFFFFFFFFFFFFFCLL;
  }

  return result;
}

uint64_t ____NSStringDrawingEngine_block_invoke_2()
{
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (result)
  {
    v1 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      result = [v1 doubleValue];
      __NSStringDrawingEngine__factor = v2;
    }
  }

  return result;
}

uint64_t ____NSStringDrawingEngine_block_invoke_376(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  if (v4 == *(a1 + 80))
  {
    v5 = [_NSCachedAttributedString alloc];
    if (*(a1 + 192) == 1 && *(a1 + 88) != *(a1 + 96))
    {
      v6 = [*(a1 + 32) substringToIndex:?];
    }

    else
    {
      v6 = *(a1 + 32);
    }

    *(*(*(a1 + 64) + 8) + 40) = [(_NSCachedAttributedString *)v5 initWithString:v6 attributes:*(a1 + 40)];
    v4 = *(*(*(a1 + 64) + 8) + 40);
  }

  else if (*(a1 + 192) == 1 && *(a1 + 88) != *(a1 + 96))
  {
    v4 = [*(a1 + 32) attributedSubstringFromRange:0];
  }

  v7 = [a2 textContainerForAttributedString:v4 containerSize:*(a1 + 104) lineFragmentPadding:{*(a1 + 112), 0.0}];
  [v7 setMaximumNumberOfLines:{objc_msgSend(*(a1 + 48), "maximumNumberOfLines")}];
  if (*(a1 + 193))
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  [v7 setLineBreakMode:v8];
  [a2 _setBaselineMode:*(a1 + 192)];
  if (*(a1 + 193) == 1)
  {
    v9 = [*(a1 + 48) wrapsForTruncationMode];
  }

  else
  {
    v9 = 0;
  }

  [a2 _setForceWordWrapping:v9];
  [a2 _setBaselineDelta:0.0];
  [a2 _setWrappedByCluster:0];
  [a2 setDefaultTighteningFactor:*(a1 + 120)];
  [objc_msgSend(a2 "layoutManager")];
  [objc_msgSend(a2 "layoutManager")];
  [objc_msgSend(a2 "layoutManager")];
  [objc_msgSend(a2 "layoutManager")];
  [objc_msgSend(a2 "layoutManager")];
  [objc_msgSend(a2 "layoutManager")];
  [objc_msgSend(a2 "layoutManager")];
  [a2 _setUsesSimpleTextEffects:{objc_msgSend(*(a1 + 48), "usesSimpleTextEffects")}];
  [objc_msgSend(a2 "layoutManager")];
  [a2 setCuiCatalog:{objc_msgSend(*(a1 + 48), "cuiCatalog")}];
  [a2 _setApplicationFrameworkContext:*(a1 + 128)];
  [objc_msgSend(a2 "layoutManager")];
  v10 = [*(a1 + 56) CGContext];
  if (v10)
  {
    if (*(a1 + 199))
    {
      goto LABEL_18;
    }

    v38 = [a2 length];
    v39 = *(a1 + 40);
    if (v39)
    {
      v40 = [v39 objectForKey:@"NSShadow"];
      if (!v40)
      {
        goto LABEL_18;
      }

      v41 = v40;
      if ([objc_msgSend(*(a1 + 40) objectForKey:{@"NSUnderline", "intValue"}] < 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v51 = xmmword_18E856180;
      v42 = [a2 attribute:@"NSShadow" atIndex:0 longestEffectiveRange:&v51 inRange:{0, v38}];
      v47 = 0;
      v48 = &v47;
      v49 = 0x2020000000;
      v50 = 0;
      if (v51 != __PAIR128__(v38, 0))
      {
        _Block_object_dispose(&v47, 8);
        goto LABEL_18;
      }

      v41 = v42;
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = ____NSStringDrawingEngine_block_invoke_2_377;
      v46[3] = &unk_1E7266970;
      v46[4] = &v47;
      [a2 enumerateAttribute:@"NSUnderline" inRange:0 options:v38 usingBlock:{0, v46}];
      v43 = *(v48 + 24);
      _Block_object_dispose(&v47, 8);
      if ((v43 & 1) == 0)
      {
LABEL_18:
        v11 = 0;
        goto LABEL_19;
      }
    }

    [a2 removeAttribute:@"NSShadow" range:{0, v38}];
    [v41 applyToGraphicsContext:*(a1 + 56)];
    CGContextBeginTransparencyLayer(v10, 0);
    v11 = 1;
LABEL_19:
    [a2 drawTextContainer:v7 range:*(a1 + 136) withRect:*(a1 + 96) - *(a1 + 136) graphicsContext:v10 baselineMode:*(a1 + 192) scrollable:*(a1 + 200) padding:{*(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176)}];
    if (!*(a1 + 48))
    {
      goto LABEL_41;
    }

    goto LABEL_22;
  }

  v11 = 0;
LABEL_22:
  if (*(a1 + 192))
  {
    [a2 _baselineDelta];
    v12 = *(*(a1 + 72) + 8);
    v14 = v13 - *(v12 + 56);
  }

  else
  {
    v12 = *(*(a1 + 72) + 8);
    v14 = 0.0;
  }

  *(v12 + 32) = 0;
  *(v12 + 40) = v14;
  [a2 usedRectForTextContainer:v7];
  v15 = *(*(a1 + 72) + 8);
  *(v15 + 48) = v16;
  *(v15 + 56) = v17;
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    [objc_msgSend(a2 "layoutManager")];
    height = v52.size.height;
    if (!CGRectIsEmpty(v52))
    {
      *(*(*(a1 + 72) + 8) + 56) = *(*(*(a1 + 72) + 8) + 56) - height;
    }
  }

  v19 = *(a1 + 48);
  if (v19)
  {
    if ([v19 wantsNumberOfLineFragments])
    {
      v20 = [a2 layoutManager];
      v21 = [v20 glyphRangeForTextContainer:v7];
      v22 = 0;
      v24 = v21 + v23;
      if (v21 + v23)
      {
        v25 = 0;
        do
        {
          v47 = 0;
          v48 = 0;
          [v20 lineFragmentRectForGlyphAtIndex:v25 effectiveRange:&v47];
          ++v22;
          v25 = v48 + v47;
        }

        while (v48 + v47 < v24);
      }

      [*(a1 + 48) setNumberOfLineFragments:v22];
    }

    if ([*(a1 + 48) wantsBaselineOffset])
    {
      v26 = [a2 layoutManager];
      v27 = [v26 glyphRangeForTextContainer:v7];
      v29 = v27 + v28;
      v30 = v27 + v28 - 1;
      [v26 lineFragmentRectForGlyphAtIndex:v30 effectiveRange:0];
      v32 = v31;
      [v26 baselineOffsetForGlyphAtIndex:v30];
      *&v51 = v33;
      [*(a1 + 48) setBaselineOffset:v32 + v33];
      v47 = 0;
      v48 = 0;
      [v26 lineFragmentRectForGlyphAtIndex:v27 effectiveRange:&v47];
      v35 = v34;
      if (v29 <= v48 + v47 || *(a1 + 88))
      {
        [v26 baselineOffsetForGlyphAtIndex:v27];
        *&v51 = v36;
      }

      else
      {
        v44 = [a2 attributesAtIndex:0 effectiveRange:0];
        v45 = [v44 objectForKeyedSubscript:@"NSParagraphStyle"];
        +[NSCoreTypesetter _lineMetricsForAttributes:typesetterBehavior:usesFontLeading:applySpacings:usesSystemFontLeading:usesNegativeFontLeading:layoutOrientation:lineHeight:baselineOffset:spacing:](NSCoreTypesetter, "_lineMetricsForAttributes:typesetterBehavior:usesFontLeading:applySpacings:usesSystemFontLeading:usesNegativeFontLeading:layoutOrientation:lineHeight:baselineOffset:spacing:", v44, [MEMORY[0x1E696AEC0] typesetterBehavior], *(a1 + 198), v45 != 0, 0, 0, objc_msgSend(v7, "layoutOrientation"), 0, &v51, 0);
        v36 = *&v51;
      }

      [*(a1 + 48) setFirstBaselineOffset:v35 + v36];
    }

    [*(a1 + 48) setTotalBounds:{*(*(*(a1 + 72) + 8) + 32), *(*(*(a1 + 72) + 8) + 40), *(*(*(a1 + 72) + 8) + 48), *(*(*(a1 + 72) + 8) + 56)}];
    if (*(a1 + 184))
    {
      **(a1 + 184) = [a2 _wrappedByCluster];
    }
  }

LABEL_41:
  [v7 setLineBreakMode:0];
  [a2 setDefaultTighteningFactor:0.0];
  [objc_msgSend(a2 "layoutManager")];
  [objc_msgSend(a2 "layoutManager")];
  [objc_msgSend(a2 "layoutManager")];
  if (v11)
  {
    CGContextEndTransparencyLayer(v10);
  }

  return 0;
}

uint64_t ____NSStringDrawingEngine_block_invoke_2_377(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 intValue];
  if (result >= 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

@end