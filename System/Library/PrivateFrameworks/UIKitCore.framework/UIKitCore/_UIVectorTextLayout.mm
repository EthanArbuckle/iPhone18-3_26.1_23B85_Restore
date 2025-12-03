@interface _UIVectorTextLayout
- (CGAffineTransform)coordinateAdjustment;
- (CGRect)boundingRect;
- (CGRect)usedBoundingRect;
- (CGSize)size;
- (_NSRange)textRange;
- (_UIVectorTextLayout)initWithTextParameters:(id)parameters;
- (id)description;
- (id)layoutDescription;
- (unint64_t)numberOfRuns;
- (void)_layoutIfNeeded;
- (void)enumerateRunsUsingBlock:(id)block;
- (void)resetLayout;
@end

@implementation _UIVectorTextLayout

- (_UIVectorTextLayout)initWithTextParameters:(id)parameters
{
  parametersCopy = parameters;
  v10.receiver = self;
  v10.super_class = _UIVectorTextLayout;
  v5 = [(_UIVectorTextLayout *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_new();
    layoutInfo = v5->_layoutInfo;
    v5->_layoutInfo = v6;

    v8 = [[_UIVectorTextLayoutParameters alloc] initWithParameters:parametersCopy];
    [(_UIVectorTextLayoutInfo *)v5->_layoutInfo setParameters:v8];
  }

  return v5;
}

- (void)resetLayout
{
  runs = self->_runs;
  self->_runs = 0;
}

- (CGRect)boundingRect
{
  [(_UIVectorTextLayout *)self _layoutIfNeeded];
  x = self->_boundingRect.origin.x;
  y = self->_boundingRect.origin.y;
  width = self->_boundingRect.size.width;
  height = self->_boundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)usedBoundingRect
{
  [(_UIVectorTextLayout *)self _layoutIfNeeded];
  x = self->_usedBoundingRect.origin.x;
  y = self->_usedBoundingRect.origin.y;
  width = self->_usedBoundingRect.size.width;
  height = self->_usedBoundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (unint64_t)numberOfRuns
{
  [(_UIVectorTextLayout *)self _layoutIfNeeded];
  runs = self->_runs;

  return [(NSArray *)runs count];
}

- (CGSize)size
{
  [(_UIVectorTextLayout *)self _layoutIfNeeded];
  width = self->_boundingRect.size.width;
  height = self->_boundingRect.size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (_NSRange)textRange
{
  [(_UIVectorTextLayout *)self _layoutIfNeeded];
  location = self->_fitRange.location;
  length = self->_fitRange.length;
  result.length = length;
  result.location = location;
  return result;
}

- (void)enumerateRunsUsingBlock:(id)block
{
  blockCopy = block;
  [(_UIVectorTextLayout *)self _layoutIfNeeded];
  runs = self->_runs;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47___UIVectorTextLayout_enumerateRunsUsingBlock___block_invoke;
  v7[3] = &unk_1E712A3A8;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSArray *)runs enumerateObjectsUsingBlock:v7];
}

- (id)description
{
  hasLayout = [(_UIVectorTextLayout *)self hasLayout];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  parameters = [(_UIVectorTextLayoutInfo *)self->_layoutInfo parameters];
  v7 = parameters;
  if (hasLayout)
  {
    [v4 stringWithFormat:@"<%@:%p params=%@ layout=(%fx%f, %ld lines, %ld runs)>", v5, self, parameters, *&self->_boundingRect.size.width, *&self->_boundingRect.size.height, self->_numberOfLines, -[NSArray count](self->_runs, "count")];
  }

  else
  {
    [v4 stringWithFormat:@"<%@:%p params=%@ layout=?>", v5, self, parameters, v10, v11, v12, v13];
  }
  v8 = ;

  return v8;
}

- (id)layoutDescription
{
  v55 = *MEMORY[0x1E69E9840];
  [(_UIVectorTextLayout *)self _layoutIfNeeded];
  v4 = objc_opt_new();
  [v4 appendString:@"Parameters:\n"];
  parameters = [(_UIVectorTextLayoutInfo *)self->_layoutInfo parameters];
  attributedText = [parameters attributedText];
  [v4 appendFormat:@"- text: %@\n", attributedText];

  parameters2 = [(_UIVectorTextLayoutInfo *)self->_layoutInfo parameters];
  [parameters2 withinSize];
  v9 = v8;
  if (v8 >= 1.79769313e308)
  {
    v11 = @"(max)";
  }

  else
  {
    v10 = MEMORY[0x1E696AD98];
    parameters3 = [(_UIVectorTextLayoutInfo *)self->_layoutInfo parameters];
    [parameters3 withinSize];
    v11 = [v10 numberWithDouble:?];
  }

  parameters4 = [(_UIVectorTextLayoutInfo *)self->_layoutInfo parameters];
  [parameters4 withinSize];
  if (v13 >= 1.79769313e308)
  {
    [v4 appendFormat:@"- withinSize: {%@, %@}\n", v11, @"(max)"];
  }

  else
  {
    v14 = MEMORY[0x1E696AD98];
    parameters5 = [(_UIVectorTextLayoutInfo *)self->_layoutInfo parameters];
    [parameters5 withinSize];
    v17 = [v14 numberWithDouble:v16];
    [v4 appendFormat:@"- withinSize: {%@, %@}\n", v11, v17];
  }

  if (v9 < 1.79769313e308)
  {
  }

  parameters6 = [(_UIVectorTextLayoutInfo *)self->_layoutInfo parameters];
  [v4 appendFormat:@"- numberOfLines: %ld\n", objc_msgSend(parameters6, "numberOfLines")];

  parameters7 = [(_UIVectorTextLayoutInfo *)self->_layoutInfo parameters];
  traitCollection = [parameters7 traitCollection];
  [v4 appendFormat:@"- traitCollection: %@\n", traitCollection];

  [v4 appendString:@"\n"];
  if ([(_UIVectorTextLayout *)self hasLayout])
  {
    [v4 appendString:@"Layout:\n"];
    [v4 appendFormat:@"- size: {%f, %f}\n", *&self->_boundingRect.size.width, *&self->_boundingRect.size.height];
    v21 = NSStringFromCGRect(self->_boundingRect);
    [v4 appendFormat:@"- bounding rect: %@\n", v21];

    v22 = NSStringFromCGRect(self->_usedBoundingRect);
    [v4 appendFormat:@"- used bounding rect: %@\n", v22];

    [v4 appendFormat:@"- first line baseline: %f\n", *&self->_firstLineBaseline];
    [v4 appendFormat:@"- last line baseline: %f\n", *&self->_lastLineBaseline];
    [v4 appendFormat:@"- lines (%ld):\n", self->_numberOfLines];
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    selfCopy = self;
    obj = self->_runs;
    v42 = [(NSArray *)obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v42)
    {
      v23 = 0;
      v43 = -1;
      v40 = *v51;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          v49 = v23;
          if (*v51 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v50 + 1) + 8 * i);
          if ([v25 lineIndex] != v43)
          {
            lineIndex = [v25 lineIndex];
            [v25 lineRect];
            v27 = NSStringFromCGRect(v57);
            [v25 usedLineRect];
            v28 = NSStringFromCGRect(v58);
            v43 = lineIndex;
            [v4 appendFormat:@"  > Line %ld: rect=%@ usedRect=%@\n", lineIndex, v27, v28];
          }

          stringRange = [v25 stringRange];
          v30 = v29;
          glyphCount = [v25 glyphCount];
          GlyphCount = CTRunGetGlyphCount([v25 _CTRun]);
          [v25 usedRunRect];
          v45 = NSStringFromCGRect(v59);
          parameters8 = [(_UIVectorTextLayoutInfo *)selfCopy->_layoutInfo parameters];
          attributedText2 = [parameters8 attributedText];
          string = [attributedText2 string];
          v33 = v30;
          v34 = [string substringWithRange:{stringRange, v30}];
          v35 = [v34 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
          v36 = [v35 stringByReplacingOccurrencesOfString:@"\r" withString:@"\\r"];
          v37 = [v36 stringByReplacingOccurrencesOfString:@"\t" withString:@"\\t"];

          [v4 appendFormat:@"    [Run %ld: glyphCount=%ld/%ld usedRect=%@ string={%ld, %ld} %@ (ref=%p)]\n", v49, glyphCount, GlyphCount, v45, stringRange, v33, v37, objc_msgSend(v25, "_CTRun")];
          v23 = v49 + 1;
        }

        v42 = [(NSArray *)obj countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v42);
    }
  }

  else
  {
    [v4 appendString:@"Layout: *not layouted*\n"];
  }

  return v4;
}

- (void)_layoutIfNeeded
{
  v98[16] = *MEMORY[0x1E69E9840];
  if (!self->_runs)
  {
    p_layoutInfo = &self->_layoutInfo;
    [(_UIVectorTextLayoutInfo *)self->_layoutInfo scale];
    v84 = v4;
    parameters = [(_UIVectorTextLayout *)self parameters];
    numberOfLines = [parameters numberOfLines];

    if (![(_UIVectorTextLayoutInfo *)*p_layoutInfo frame])
    {
      parameters2 = [(_UIVectorTextLayout *)self parameters];
      attributedText = [parameters2 attributedText];

      v8 = [attributedText length];
      v9 = CTFramesetterCreateWithAttributedString(attributedText);
      v10 = CFAutorelease(v9);
      if (v10)
      {
        v11 = v10;
        parameters3 = [(_UIVectorTextLayout *)self parameters];
        [parameters3 withinSize];
        v99.location = 0;
        v99.length = v8;
        v13 = CTFramesetterSuggestFrameSizeWithConstraints(v11, v99, 0, v103, 0);

        UICeilToScale(v13.width, v84);
        v15 = v14;
        UICeilToScale(v13.height, v84);
        v17 = v16;
        v104.origin.x = 0.0;
        v104.origin.y = 0.0;
        v104.size.width = v15;
        v104.size.height = v17;
        v18 = CGPathCreateWithRect(v104, 0);
        v19 = CFAutorelease(v18);
        v100.location = 0;
        v100.length = v8;
        Frame = CTFramesetterCreateFrame(v11, v100, v19, 0);
        v21 = CFAutorelease(Frame);
        if (v21)
        {
          [(_UIVectorTextLayoutInfo *)self->_layoutInfo setFrame:v21];
        }

        v93.b = 0.0;
        v93.c = 0.0;
        layoutInfo = self->_layoutInfo;
        v93.a = 1.0;
        *&v93.d = xmmword_18A681780;
        v93.ty = v17;
        [(_UIVectorTextLayoutInfo *)layoutInfo setCoordinateAdjustment:&v93];
      }

      else
      {
        v23 = self->_layoutInfo;
        v24 = *(MEMORY[0x1E695EFD0] + 16);
        *&v93.a = *MEMORY[0x1E695EFD0];
        *&v93.c = v24;
        *&v93.tx = *(MEMORY[0x1E695EFD0] + 32);
        [(_UIVectorTextLayoutInfo *)v23 setCoordinateAdjustment:&v93];
      }
    }

    v25 = MEMORY[0x1E695F058];
    self->_firstLineBaseline = 0.0;
    v26 = *v25;
    v27 = *(v25 + 16);
    self->_boundingRect.origin = *v25;
    self->_boundingRect.size = v27;
    self->_fitRange.location = 0;
    self->_fitRange.length = 0;
    self->_usedBoundingRect.origin = v26;
    self->_usedBoundingRect.size = v27;
    self->_lastLineBaseline = 0.0;
    p_firstLineBaseline = &self->_firstLineBaseline;
    if ([(_UIVectorTextLayoutInfo *)self->_layoutInfo frame])
    {
      Lines = CTFrameGetLines([(_UIVectorTextLayoutInfo *)self->_layoutInfo frame]);
      Count = CFArrayGetCount(Lines);
      v82 = [MEMORY[0x1E695DF70] arrayWithCapacity:Count];
      v77[1] = v77;
      v28 = MEMORY[0x1EEE9AC00](v82);
      v80 = &v77[-2 * v29];
      frame = [(_UIVectorTextLayoutInfo *)self->_layoutInfo frame];
      v101.location = 0;
      v101.length = 0;
      CTFrameGetLineOrigins(frame, v101, v80);
      if (Count < 1)
      {
        v31 = 0;
      }

      else
      {
        v31 = 0;
        v87 = 0x4010000000;
        v32 = MEMORY[0x1E695F050];
        v86 = 3221225472;
        while (!numberOfLines || v31 < numberOfLines)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Lines, v31);
          v96 = 0.0;
          v97 = 0.0;
          v95 = 0.0;
          TypographicBounds = CTLineGetTypographicBounds(ValueAtIndex, &v97, &v96, &v95);
          v35 = &v80[v31];
          x = v35->x;
          y = v35->y;
          v38 = UIRectIntegralWithScale(v35->x, y - v96, TypographicBounds, v97 + v96 + v95, v84);
          v40 = v39;
          v42 = v41;
          v44 = v43;
          v45 = self->_layoutInfo;
          if (v45)
          {
            [(_UIVectorTextLayoutInfo *)v45 coordinateAdjustment];
          }

          else
          {
            memset(&v93, 0, sizeof(v93));
          }

          v105.origin.x = v38;
          v105.origin.y = v40;
          v105.size.width = v42;
          v105.size.height = v44;
          v106 = CGRectApplyAffineTransform(v105, &v93);
          v111.origin.x = v106.origin.x;
          v46 = v106.origin.y;
          width = v106.size.width;
          height = v106.size.height;
          boundingRect = self->_boundingRect;
          v85 = v111.origin.x;
          v111.origin.y = v46;
          v111.size.width = width;
          v111.size.height = height;
          v108 = CGRectUnion(boundingRect, v111);
          self->_boundingRect.size.width = v108.size.width;
          self->_boundingRect.size.height = v108.size.height;
          v49 = UIPointRoundToScale(x, y, v84);
          v51 = v50;
          v52 = self->_layoutInfo;
          if (v52)
          {
            [(_UIVectorTextLayoutInfo *)v52 coordinateAdjustment];
            b = v93.b;
            d = v93.d;
            ty = v93.ty;
          }

          else
          {
            ty = 0.0;
            d = 0.0;
            b = 0.0;
          }

          v56 = ty + v51 * d + v49 * b;
          if (!v31)
          {
            *p_firstLineBaseline = v56;
          }

          v57 = v56;
          self->_lastLineBaseline = v56;
          GlyphRuns = CTLineGetGlyphRuns(ValueAtIndex);
          v59 = CFArrayGetCount(GlyphRuns);
          v60 = [MEMORY[0x1E695DF70] arrayWithCapacity:v59];
          if (v59 < 1)
          {
            v65 = height;
            v64 = width;
            v63 = v46;
            v62 = v85;
          }

          else
          {
            v61 = 0;
            v62 = v85;
            v63 = v46;
            v64 = width;
            v65 = height;
            do
            {
              v66 = CFArrayGetValueAtIndex(GlyphRuns, v61);
              if (CTRunGetGlyphCount(v66) >= 1)
              {
                v67 = [[_UIVectorTextLayoutRun alloc] initWithCTRun:v66 lineIndex:v31 layoutInfo:self->_layoutInfo];
                v93.a = 0.0;
                *&v93.b = &v93;
                *&v93.c = v87;
                *&v93.d = "";
                v68 = v32[1];
                *&v93.tx = *v32;
                v94 = v68;
                v92[0] = MEMORY[0x1E69E9820];
                v92[1] = v86;
                v92[2] = __38___UIVectorTextLayout__layoutIfNeeded__block_invoke;
                v92[3] = &unk_1E712A3D0;
                v92[4] = &v93;
                [(_UIVectorTextLayoutRun *)v67 _enumerateGlyphsUsingBlock:v92];
                if (!CGRectIsEmpty(*(*&v93.b + 32)))
                {
                  [(_UIVectorTextLayoutRun *)v67 setBaseline:v57];
                  [(_UIVectorTextLayoutRun *)v67 setLineRect:v85, v46, width, height];
                  [(_UIVectorTextLayoutRun *)v67 setUsedRunRect:*(*&v93.b + 32), *(*&v93.b + 40), *(*&v93.b + 48), *(*&v93.b + 56)];
                  [v60 addObject:v67];
                  v102.location = [(_UIVectorTextLayoutRun *)v67 stringRange];
                  v102.length = v69;
                  self->_fitRange = NSUnionRange(self->_fitRange, v102);
                  v109.origin.x = v62;
                  v109.origin.y = v63;
                  v109.size.width = v64;
                  v109.size.height = v65;
                  v110 = CGRectUnion(v109, *(*&v93.b + 32));
                  v62 = v110.origin.x;
                  v63 = v110.origin.y;
                  v64 = v110.size.width;
                  v65 = v110.size.height;
                  self->_usedBoundingRect = CGRectUnion(self->_usedBoundingRect, *(*&v93.b + 32));
                }

                _Block_object_dispose(&v93, 8);
              }

              ++v61;
            }

            while (v59 != v61);
          }

          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v70 = v60;
          v71 = [v70 countByEnumeratingWithState:&v88 objects:v98 count:16];
          if (v71)
          {
            v72 = *v89;
            do
            {
              for (i = 0; i != v71; ++i)
              {
                if (*v89 != v72)
                {
                  objc_enumerationMutation(v70);
                }

                [*(*(&v88 + 1) + 8 * i) setUsedLineRect:{v62, v63, v64, v65}];
              }

              v71 = [v70 countByEnumeratingWithState:&v88 objects:v98 count:16];
            }

            while (v71);
          }

          [(NSArray *)v82 addObjectsFromArray:v70];
          if (++v31 == Count)
          {
            v31 = Count;
            break;
          }
        }
      }

      v75 = [(NSArray *)v82 copy];
      runs = self->_runs;
      self->_runs = v75;

      v74 = v82;
    }

    else
    {
      v31 = 0;
      v74 = self->_runs;
      self->_runs = MEMORY[0x1E695E0F0];
    }

    self->_usedBoundingRect = CGRectUnion(self->_boundingRect, self->_usedBoundingRect);
    self->_numberOfLines = v31;
  }
}

- (CGAffineTransform)coordinateAdjustment
{
  v3 = *&self[3].a;
  *&retstr->a = *&self[2].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[3].c;
  return self;
}

@end