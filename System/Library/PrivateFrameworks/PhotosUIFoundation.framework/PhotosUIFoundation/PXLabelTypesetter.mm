@interface PXLabelTypesetter
+ (double)_textAutoscalingPrecision;
- (BOOL)_allowTextOverlapForFont:(id)font;
- (CGRect)bounds;
- (PXLabelTypesetter)initWithContext:(CGContext *)context;
- (unint64_t)_adjustCutoffLocation:(unint64_t)location forLineStartingAtIndex:(unint64_t)index;
- (void)_setLines:(id)lines;
- (void)_updateLines;
- (void)didPerformChanges;
- (void)performChanges:(id)changes;
- (void)shiftLinesVerticallyToAvoidOverlap:(id)overlap referenceFont:(id)font;
@end

@implementation PXLabelTypesetter

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_setLines:(id)lines
{
  linesCopy = lines;
  v6 = linesCopy;
  if (self->_lines != linesCopy)
  {
    v7 = linesCopy;
    linesCopy = [linesCopy isEqual:?];
    v6 = v7;
    if ((linesCopy & 1) == 0)
    {
      objc_storeStrong(&self->_lines, lines);
      linesCopy = [(PXObservable *)self signalChange:1];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](linesCopy, v6);
}

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = PXLabelTypesetter;
  [(PXObservable *)&v3 didPerformChanges];
  [(PXLabelTypesetter *)self _updateLines];
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXLabelTypesetter;
  [(PXObservable *)&v3 performChanges:changes];
}

- (BOOL)_allowTextOverlapForFont:(id)font
{
  v3 = _allowTextOverlapForFont__onceToken;
  fontCopy = font;
  if (v3 != -1)
  {
    dispatch_once(&_allowTextOverlapForFont__onceToken, &__block_literal_global_10546);
  }

  v5 = _allowTextOverlapForFont__handwritingFontFamilyNames;
  familyName = [fontCopy familyName];

  v7 = [v5 containsObject:familyName];
  return v7;
}

uint64_t __46__PXLabelTypesetter__allowTextOverlapForFont___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Dear Joe Four", 0}];
  v1 = _allowTextOverlapForFont__handwritingFontFamilyNames;
  _allowTextOverlapForFont__handwritingFontFamilyNames = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (unint64_t)_adjustCutoffLocation:(unint64_t)location forLineStartingAtIndex:(unint64_t)index
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  locationCopy = location;
  attributedString = [(PXLabelTypesetter *)self attributedString];
  string = [attributedString string];

  if (location && [string length] > location)
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3010000000;
    v15[3] = "";
    v16 = xmmword_1B4074ED0;
    v8 = [string length] - index;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __66__PXLabelTypesetter__adjustCutoffLocation_forLineStartingAtIndex___block_invoke;
    v11[3] = &unk_1E7BB6D90;
    v13 = v15;
    v12 = string;
    v14 = &v17;
    [v12 enumerateSubstringsInRange:index options:v8 usingBlock:{3, v11}];

    _Block_object_dispose(v15, 8);
  }

  v9 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v9;
}

void __66__PXLabelTypesetter__adjustCutoffLocation_forLineStartingAtIndex___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v13 = *(a1[5] + 8);
  *(v13 + 32) = a5;
  *(v13 + 40) = a6;
  v14 = a1[4];
  v15 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v16 = [v14 rangeOfCharacterFromSet:v15 options:4 range:{a3 + a4, a5 + a6 - (a3 + a4)}];

  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(a1[5] + 8) + 40) = v16 - *(*(a1[5] + 8) + 32);
  }

  *(*(a1[6] + 8) + 24) = *(*(a1[5] + 8) + 40) + *(*(a1[5] + 8) + 32);
  *a7 = 1;
}

- (void)_updateLines
{
  v134 = *MEMORY[0x1E69E9840];
  attributedString = [(PXLabelTypesetter *)self attributedString];
  [(PXLabelTypesetter *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ([attributedString length])
  {
    v135.origin.x = v6;
    v135.origin.y = v8;
    v135.size.width = v10;
    v135.size.height = v12;
    if (!CGRectIsEmpty(v135))
    {
      context = [(PXLabelTypesetter *)self context];
      maximumNumberOfLines = [(PXLabelTypesetter *)self maximumNumberOfLines];
      v77 = [[PXCTFramesetter alloc] initWithAttributedString:attributedString context:context];
      typesettingMode = [(PXLabelTypesetter *)self typesettingMode];
      if (typesettingMode != 1)
      {
        if (typesettingMode == 2)
        {
          v17 = [(PXCTFramesetter *)v77 frameWithRect:maximumNumberOfLines maximumLineCount:0 allowTruncation:v6, v8, v10, v12];
          lines = [v17 lines];
        }

        else
        {
          if (!typesettingMode)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"PXLabelTypesetter.m" lineNumber:73 description:@"Code which should be unreachable has been reached"];

            abort();
          }

          lines = 0;
        }

LABEL_74:
        v72 = [attributedString attribute:*MEMORY[0x1E69DB648] atIndex:0 effectiveRange:0];
        [(PXLabelTypesetter *)self shiftLinesVerticallyToAvoidOverlap:lines referenceFont:v72];

        goto LABEL_75;
      }

      v117 = 0;
      v118 = &v117;
      v119 = 0x4010000000;
      v120 = "";
      v121 = v6;
      v122 = v8;
      v123 = v10;
      v124 = v12;
      v113 = 0;
      v114 = &v113;
      v115 = 0x2020000000;
      v116 = maximumNumberOfLines;
      if (maximumNumberOfLines && -[PXLabelTypesetter allowTruncation](self, "allowTruncation") && [attributedString length])
      {
        [(PXLabelTypesetter *)self minimumTruncatedScaleFactor];
        if (v18 <= 0.0)
        {
          v53 = [attributedString length];
          v54 = [attributedString attribute:*MEMORY[0x1E69DB648] atIndex:v53 - 1 effectiveRange:0];
          [v54 lineHeight];
          v118[1].size.height = v118[1].size.height + v55 * 2.0;
          ++v114[3];

          v19 = 2;
        }

        else
        {
          v19 = 1;
        }

        v74 = v19;
      }

      else
      {
        v74 = 0;
      }

      v111[0] = 0;
      v111[1] = v111;
      v111[2] = 0x2020000000;
      v112 = 0;
      v105 = 0;
      v106 = &v105;
      v107 = 0x3032000000;
      v108 = __Block_byref_object_copy__10560;
      v109 = __Block_byref_object_dispose__10561;
      v110 = 0;
      v101 = 0;
      v102 = &v101;
      v103 = 0x2020000000;
      v104 = 0;
      v95 = 0;
      v96 = &v95;
      v97 = 0x3032000000;
      v98 = __Block_byref_object_copy__10560;
      v99 = __Block_byref_object_dispose__10561;
      v100 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __33__PXLabelTypesetter__updateLines__block_invoke;
      aBlock[3] = &unk_1E7BB6D18;
      v89 = &v105;
      v88 = v77;
      v90 = &v117;
      v91 = &v113;
      v92 = v111;
      v93 = &v101;
      v94 = &v95;
      v20 = _Block_copy(aBlock);
      v20[2]();
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = __33__PXLabelTypesetter__updateLines__block_invoke_2;
      v83[3] = &unk_1E7BB6D40;
      v85 = &v101;
      v86 = &v117;
      v76 = v20;
      v84 = v76;
      v21 = _Block_copy(v83);
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __33__PXLabelTypesetter__updateLines__block_invoke_3;
      v82[3] = &unk_1E7BB6D68;
      v82[4] = self;
      v82[5] = v111;
      *&v82[7] = v6;
      *&v82[8] = v8;
      *&v82[9] = v10;
      *&v82[10] = v12;
      v82[6] = &v117;
      v75 = _Block_copy(v82);
      [(PXLabelTypesetter *)self minimumScaleFactor];
      v23 = v22;
      adjustsFontSizeToFitWidth = [(PXLabelTypesetter *)self adjustsFontSizeToFitWidth];
      if (v23 > 0.0 && adjustsFontSizeToFitWidth)
      {
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v27 = v26;
        v136.origin.x = v6;
        v136.origin.y = v8;
        v136.size.width = v10;
        v136.size.height = v12;
        v28 = 0;
        v29 = CGRectGetWidth(v136) / v23;
        while (v28 < [v96[5] count] - 1)
        {
          v30 = [v96[5] objectAtIndexedSubscript:v28];
          stringRange = [v30 stringRange];
          v33 = stringRange + v32;
          v34 = [(PXLabelTypesetter *)self _adjustCutoffLocation:stringRange + v32 forLineStartingAtIndex:stringRange];
          if (v34 != v33)
          {
            v35 = [attributedString attributedSubstringFromRange:{stringRange, v34 - stringRange}];
            v36 = CTLineCreateWithAttributedString(v35);
            v37 = v36;
            if (v36)
            {
              TypographicBounds = CTLineGetTypographicBounds(v36, 0, 0, 0);
              CFRelease(v37);
              v39 = ceil(TypographicBounds);
              if (v39 > v102[3] && v39 <= v29)
              {
                v21[2](v21);
              }
            }
          }

          ++v28;
        }

        v41 = PFUIGetLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          *buf = 138412546;
          selfCopy4 = self;
          v128 = 2048;
          v129 = (v42 - v27) * 1000.0;
          _os_log_impl(&dword_1B3F73000, v41, OS_LOG_TYPE_DEBUG, "[%@] adjusted line cutoffs in %0.3fms", buf, 0x16u);
        }

        if ([*(v106 + 5) isTruncated])
        {
          v43 = v102[3];
          (v21[2])(v21, v29);
          if (([*(v106 + 5) isTruncated] & 1) == 0)
          {
            v44 = v102[3];
            +[PXLabelTypesetter _textAutoscalingPrecision];
            v46 = v45;
            if (v44 - v43 <= v45)
            {
              v50 = 0.0;
            }

            else
            {
              v47 = -1;
              do
              {
                v48 = v47;
                (v21[2])(v21, (v44 + v43) * 0.5);
                if ([*(v106 + 5) isTruncated])
                {
                  v43 = v102[3];
                }

                else
                {
                  v44 = v102[3];
                }

                v47 = v48 + 1;
              }

              while (v44 - v43 > v46 && v48 + 1 < 0x1D);
              *&v50 = v48 + 2;
              if (v47 >= 0x1D)
              {
                v51 = PFUIGetLog();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                {
                  v52 = v106[5];
                  *buf = 138412546;
                  selfCopy4 = self;
                  v128 = 2112;
                  v129 = v52;
                  _os_log_impl(&dword_1B3F73000, v51, OS_LOG_TYPE_DEFAULT, "[%@] maximum number of iterations reached for autoscaling, failing gracefully (currentFrame = %@)", buf, 0x16u);
                }
              }
            }

            v56 = PFUIGetLog();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138413058;
              selfCopy4 = self;
              v128 = 2048;
              v129 = v50;
              v130 = 2048;
              v131 = v43;
              v132 = 2048;
              v133 = v44;
              _os_log_impl(&dword_1B3F73000, v56, OS_LOG_TYPE_DEBUG, "[%@] autoscaled text in %li iterations (low: %f, high: %f)", buf, 0x2Au);
            }

            (v21[2])(v21, v44);
          }
        }

        v57 = PFUIGetLog();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          *buf = 138412546;
          selfCopy4 = self;
          v128 = 2048;
          v129 = (v58 - v27) * 1000.0;
          _os_log_impl(&dword_1B3F73000, v57, OS_LOG_TYPE_DEBUG, "[%@] autoscaled text in %0.3fms", buf, 0x16u);
        }
      }

      if (v74 == 2)
      {
        v118[1].size.height = v12;
        v114[3] = maximumNumberOfLines;
        lines2 = [*(v106 + 5) lines];
        v60 = [lines2 count] > maximumNumberOfLines;

        if (!v60)
        {
LABEL_63:
          (v20[2])(v76);
LABEL_64:
          Width = CGRectGetWidth(v118[1]);
          v137.origin.x = v6;
          v137.origin.y = v8;
          v137.size.width = v10;
          v137.size.height = v12;
          if (Width != CGRectGetWidth(v137))
          {
            v138.origin.x = v6;
            v138.origin.y = v8;
            v138.size.width = v10;
            v138.size.height = v12;
            v62 = CGRectGetWidth(v138);
            v63 = CGRectGetWidth(v118[1]);
            v139.origin.x = v6;
            v139.origin.y = v8;
            v139.size.width = v10;
            v139.size.height = v12;
            MidX = CGRectGetMidX(v139);
            v65 = CGRectGetMidX(v118[1]);
            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            v66 = v96[5];
            v67 = [v66 countByEnumeratingWithState:&v78 objects:v125 count:16];
            if (v67)
            {
              v68 = MidX - v62 / v63 * v65;
              v69 = *v79;
              do
              {
                for (i = 0; i != v67; ++i)
                {
                  if (*v79 != v69)
                  {
                    objc_enumerationMutation(v66);
                  }

                  v71 = *(*(&v78 + 1) + 8 * i);
                  [v71 scaleBy:v62 / v63];
                  [v71 translateHorizontallyBy:v68];
                }

                v67 = [v66 countByEnumeratingWithState:&v78 objects:v125 count:16];
              }

              while (v67);
            }
          }

          lines = v96[5];

          _Block_object_dispose(&v95, 8);
          _Block_object_dispose(&v101, 8);
          _Block_object_dispose(&v105, 8);

          _Block_object_dispose(v111, 8);
          _Block_object_dispose(&v113, 8);
          _Block_object_dispose(&v117, 8);
          goto LABEL_74;
        }
      }

      else if (v74 != 1 || ([*(v106 + 5) isTruncated] & 1) == 0)
      {
        goto LABEL_64;
      }

      v75[2]();
      goto LABEL_63;
    }
  }

  lines = 0;
LABEL_75:
  [(PXLabelTypesetter *)self _setLines:lines];
}

uint64_t __33__PXLabelTypesetter__updateLines__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  v3 = [*(a1 + 32) frameWithRect:*(*(*(a1 + 56) + 8) + 24) maximumLineCount:*(*(*(a1 + 64) + 8) + 24) allowTruncation:{v2[4], v2[5], v2[6], v2[7]}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  *(*(*(a1 + 72) + 8) + 24) = CGRectGetWidth(*(*(*(a1 + 48) + 8) + 32));
  v6 = [*(*(*(a1 + 40) + 8) + 40) lines];
  v7 = *(*(a1 + 80) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return MEMORY[0x1EEE66BB8](v6, v8);
}

void *__33__PXLabelTypesetter__updateLines__block_invoke_2(void *result, double a2)
{
  v2 = *(*(result[5] + 8) + 24);
  if (v2 != a2)
  {
    *(*(result[6] + 8) + 48) = a2;
    *(*(result[6] + 8) + 56) = a2 / v2 * *(*(result[6] + 8) + 56);
    return (*(result[4] + 16))();
  }

  return result;
}

void __33__PXLabelTypesetter__updateLines__block_invoke_3(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  [*(a1 + 32) minimumTruncatedScaleFactor];
  if (v2 > 0.0)
  {
    v3 = CGRectGetWidth(*(a1 + 56)) / v2;
    v4 = *(*(a1 + 48) + 8);
    if (*(v4 + 48) < v3)
    {
      v3 = *(v4 + 48);
    }

    *(v4 + 48) = v3;
  }
}

- (void)shiftLinesVerticallyToAvoidOverlap:(id)overlap referenceFont:(id)font
{
  v28 = *MEMORY[0x1E69E9840];
  overlapCopy = overlap;
  fontCopy = font;
  if (fontCopy && !-[PXLabelTypesetter _allowTextOverlapForFont:](self, "_allowTextOverlapForFont:", fontCopy) && [overlapCopy count] >= 2)
  {
    [fontCopy ascender];
    v9 = v8;
    [fontCopy descender];
    v11 = v10;
    [fontCopy leading];
    v13 = v12;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = overlapCopy;
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = (v9 - v11 + v13) * 0.0500000007;
      v18 = *v24;
      MinY = 1.79769313e308;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(*(&v23 + 1) + 8 * i);
          [v21 imageBounds];
          v22 = MinY - CGRectGetMaxY(v29);
          if (v22 < v17)
          {
            [v21 translateVerticallyBy:v22 - v17];
          }

          [v21 imageBounds];
          MinY = CGRectGetMinY(v30);
        }

        v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v16);
    }
  }
}

- (PXLabelTypesetter)initWithContext:(CGContext *)context
{
  v5.receiver = self;
  v5.super_class = PXLabelTypesetter;
  result = [(PXObservable *)&v5 init];
  if (result)
  {
    result->_context = context;
    result->_allowTruncation = 1;
  }

  return result;
}

+ (double)_textAutoscalingPrecision
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"PXLabelTypesetterTextAutoscalingPrecision"];
  v4 = v3;

  result = 5.0;
  if (v4 >= 1.0)
  {
    return v4;
  }

  return result;
}

@end