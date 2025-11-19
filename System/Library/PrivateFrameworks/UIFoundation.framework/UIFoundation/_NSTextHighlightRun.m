@interface _NSTextHighlightRun
- (BOOL)beginsOnSameLineAsPreviousRun;
- (BOOL)combinedPaths;
- (BOOL)isLastRun;
- (BOOL)textRangeIsInSameLine:(id)a3;
- (CGPath)_createUnionedPathFromArray:(id)a3;
- (double)cornerOutset;
- (double)cornerRadius;
- (id)description;
- (id)firstSegment;
- (id)initWithTextRange:(void *)a3 withCluster:;
- (id)lastSegment;
- (id)secondLastSegment;
- (id)secondSegment;
- (uint64_t)drawRunUsingBlock:(void *)a1;
- (void)enumerateRunSegmentsUsingBlock:(id)a3;
- (void)getMetricsForTextSize:(double *)a3 cornerRadius:(double)a4 cornerOutset:(double)a5;
- (void)prevRun;
@end

@implementation _NSTextHighlightRun

- (id)initWithTextRange:(void *)a3 withCluster:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v27.receiver = a1;
    v27.super_class = _NSTextHighlightRun;
    v7 = objc_msgSendSuper2(&v27, sel_init);
    a1 = v7;
    if (v7)
    {
      [(_NSTextHighlightRun *)v7 initWithTextRange:v5 withCluster:v6, v25];
      v9 = v25[0];
      v25[0] = 0;
      v25[1] = v25;
      v25[2] = 0x3042000000;
      v25[3] = __Block_byref_object_copy__7;
      v25[4] = __Block_byref_object_dispose__7;
      objc_initWeak(&v26, a1);
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __53___NSTextHighlightRun_initWithTextRange_withCluster___block_invoke;
      v22 = &unk_1E7267168;
      v24 = v25;
      a1 = a1;
      v23 = a1;
      [a1 enumerateRunSegmentsUsingBlock:&v19];
      v10 = [(_NSTextHighlightRun *)a1 prevRun];
      v11 = [(_NSTextHighlightRun *)v10 lastSegment];

      if (v11 && *(v11 + 8) == 1)
      {
        v12 = *(v11 + 96);
        v13 = [(_NSTextHighlightRun *)a1 firstSegment];
        v14 = v13 ? v13[12] : 0.0;

        if (v12 == v14)
        {
          v15 = [(_NSTextHighlightRun *)a1 prevRun];
          v16 = v15;
          if (v15)
          {
            v17 = *(v15 + 56);
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;
          [v18 removeLastObject];

          *v9 = 1;
        }
      }

      _Block_object_dispose(v25, 8);
      objc_destroyWeak(&v26);
    }
  }

  return a1;
}

- (BOOL)textRangeIsInSameLine:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 location];
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_cluster);
      v8 = WeakRetained;
      if (WeakRetained)
      {
        v9 = objc_loadWeakRetained(WeakRetained + 3);
        goto LABEL_5;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = 0;
LABEL_5:
    v10 = [v9 textLayoutManager];

    v11 = [v10 textContentManager];
    v12 = [v10 textLayoutFragmentForLocation:v6];
    v13 = [v12 textParagraph];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 paragraphContentRange];
      v16 = [v15 containsLocation:v6];

      if ((v16 & 1) == 0)
      {
        v17 = [v14 paragraphSeparatorRange];
        v18 = [v17 endLocation];

        v19 = [v5 endLocation];
        v20 = [v18 compare:v19];

        if (v20 != -1)
        {
          v21 = 0;
          v6 = v18;
LABEL_13:

          goto LABEL_14;
        }

        v6 = v18;
      }

      v22 = [v12 textLineFragmentForTextLocation:v6 isUpstreamAffinity:0];
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = __Block_byref_object_copy__56;
      v39 = __Block_byref_object_dispose__57;
      v40 = 0;
      v23 = [v11 documentRange];
      v24 = [v23 endLocation];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __45___NSTextHighlightRun_textRangeIsInSameLine___block_invoke;
      v31[3] = &unk_1E72671B8;
      v32 = v12;
      v25 = v5;
      v33 = v25;
      v34 = &v35;
      v26 = [v10 enumerateTextLayoutFragmentsFromLocation:v24 options:1 usingBlock:v31];

      v27 = v36[5];
      v28 = [v25 endLocation];
      v29 = [v27 textLineFragmentForTextLocation:v28 isUpstreamAffinity:1];

      v21 = v22 == v29;
      _Block_object_dispose(&v35, 8);

      goto LABEL_13;
    }

    v21 = 0;
    goto LABEL_13;
  }

  v21 = 0;
LABEL_14:

  return v21;
}

- (uint64_t)drawRunUsingBlock:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = a1[7];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __41___NSTextHighlightRun_drawRunUsingBlock___block_invoke;
    v16[3] = &unk_1E72671E0;
    v16[4] = a1;
    [v4 enumerateObjectsUsingBlock:v16];
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v5 = [(_NSTextHighlightRun *)a1 combinedPaths];
    v6 = a1[1];
    if (v5)
    {
      v7 = [a1 _createUnionedPathFromArray:a1[1]];
      v3[2](v3, v7, v7, a1[2], (v13 + 3));
      CFRelease(v7);
    }

    else
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __41___NSTextHighlightRun_drawRunUsingBlock___block_invoke_2;
      v9[3] = &unk_1E7267208;
      v9[4] = a1;
      v10 = v3;
      v11 = &v12;
      [v6 enumerateObjectsUsingBlock:v9];
    }

    LOBYTE(a1) = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
  }

  return a1 & 1;
}

- (CGPath)_createUnionedPathFromArray:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        if (v6)
        {
          CopyByUnioningPath = CGPathCreateCopyByUnioningPath(v6, *(*(&v11 + 1) + 8 * i), 1);
          CFRelease(v6);
          v6 = CopyByUnioningPath;
        }

        else
        {
          v6 = CFRetain(*(*(&v11 + 1) + 8 * i));
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)cornerRadius
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = (a1 + 64);
  if (*(a1 + 64) < 0.0 && [*(a1 + 56) count])
  {
    v6 = [*(a1 + 56) firstObject];
    v7 = v6;
    if (v6)
    {
      v8 = *(v6 + 144);
      v9 = *(v6 + 152);
    }

    else
    {
      v8 = 0.0;
      v9 = 0.0;
    }

    [(_NSTextHighlightRun *)a1 getMetricsForTextSize:v2 cornerRadius:(a1 + 72) cornerOutset:v8, v9];
  }

  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  _UIFoundationAssert(a1, v4, *(a1 + 64) >= 0.0, &__block_literal_global_13);

  return *(a1 + 64);
}

- (double)cornerOutset
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = (a1 + 72);
  if (*(a1 + 72) < 0.0 && [*(a1 + 56) count])
  {
    v4 = [*(a1 + 56) firstObject];
    v5 = v4;
    if (v4)
    {
      v6 = *(v4 + 144);
      v7 = *(v4 + 152);
    }

    else
    {
      v6 = 0.0;
      v7 = 0.0;
    }

    [(_NSTextHighlightRun *)a1 getMetricsForTextSize:v2 cornerRadius:v6 cornerOutset:v7];
  }

  return *v2;
}

- (void)getMetricsForTextSize:(double *)a3 cornerRadius:(double)a4 cornerOutset:(double)a5
{
  if (a1)
  {
    if (_MergedGlobals_2 != -1)
    {
      dispatch_once(&_MergedGlobals_2, &__block_literal_global_67);
    }

    if (a5 >= 28.0)
    {
      v11 = vcvtmd_u64_f64(a5 + -28.0) / 0xA;
      v10 = (v11 + 1) * 2.0 + 4.0;
      if (*&qword_1ED4DF308 <= 0.0)
      {
        v9 = 2.0;
      }

      else
      {
        v9 = *&qword_1ED4DF308 * v11 + 2.0;
      }
    }

    else
    {
      v9 = 2.0;
      v10 = 4.0;
    }

    *(a1 + 64) = v10;
    *a2 = v10;
    *(a1 + 72) = v9;
    *a3 = v9;
  }
}

- (void)prevRun
{
  v1 = a1;
  if (a1)
  {
    if (a1[2])
    {
      WeakRetained = objc_loadWeakRetained(a1 + 5);
      v3 = WeakRetained;
      if (WeakRetained)
      {
        WeakRetained = WeakRetained[4];
      }

      v1 = [WeakRetained objectAtIndex:v1[2] - 1];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (id)lastSegment
{
  if (a1)
  {
    a1 = OUTLINED_FUNCTION_14_0(a1);
    if (a1)
    {
      a1 = [*(v1 + 56) objectAtIndex:{objc_msgSend(*(v1 + 56), "count") - 1}];
    }

    v2 = vars8;
  }

  return a1;
}

- (id)firstSegment
{
  if (a1)
  {
    a1 = OUTLINED_FUNCTION_14_0(a1);
    if (a1)
    {
      a1 = [*(v1 + 56) objectAtIndex:0];
    }

    v2 = vars8;
  }

  return a1;
}

- (void)enumerateRunSegmentsUsingBlock:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_cluster);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(WeakRetained + 3);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 textLayoutManager];

  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  if (v8)
  {
    if (self)
    {
      textRange = self->_textRange;
    }

    else
    {
      textRange = 0;
    }

    v10 = textRange;
    v11 = [v8 textContentManager];
    v12 = [v11 documentRange];
    v13 = [v12 endLocation];

    __NSTextHighlightShapeProviderHasTypingAttributesOverride(v8, v10);
    OUTLINED_FUNCTION_0_2();
    v17 = 3221225472;
    v18 = __54___NSTextHighlightRun_enumerateRunSegmentsUsingBlock___block_invoke;
    v19 = &unk_1E7267190;
    v20 = self;
    v24 = v14;
    v15 = v13;
    v21 = v15;
    v22 = v4;
    v23 = v25;
    [v8 enumerateTextSegmentsInRange:v10 type:0 options:0 usingBlock:v16];
  }

  _Block_object_dispose(v25, 8);
}

- (BOOL)beginsOnSameLineAsPreviousRun
{
  v3 = [(_NSTextHighlightRun *)&self->super.isa prevRun];
  if (v3)
  {
    v6 = v3;
    v7 = [(_NSTextHighlightRun *)&self->super.isa prevRun];
    v8 = [(_NSTextHighlightRun *)v7 lastSegment];
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 88);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = [v11 location];
    if (v12)
    {
      v13 = v12;
      if (self)
      {
        textRange = self->_textRange;
      }

      else
      {
        textRange = 0;
      }

      v15 = [(NSTextRange *)textRange location];

      if (!v15)
      {
        return 0;
      }

      v16 = [NSTextRange alloc];
      v17 = [(_NSTextHighlightRun *)&self->super.isa prevRun];
      v18 = [(_NSTextHighlightRun *)v17 lastSegment];
      v19 = v18;
      if (v18)
      {
        v20 = *(v18 + 88);
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;
      v22 = [v21 location];
      if (self)
      {
        v23 = self->_textRange;
      }

      else
      {
        v23 = 0;
      }

      v24 = [(NSTextRange *)v23 location];
      v6 = [(NSTextRange *)v16 initWithLocation:v22 endLocation:v24];

      v4 = [(_NSTextHighlightRun *)self textRangeIsInSameLine:v6];
    }

    else
    {

      v4 = 0;
    }

    return v4;
  }

  return 0;
}

- (BOOL)isLastRun
{
  if (self)
  {
    runIndex = self->_runIndex;
    self = objc_loadWeakRetained(&self->_cluster);
    v3 = self;
    if (self)
    {
      self = *&self->_leadingRun;
    }
  }

  else
  {
    v3 = 0;
    runIndex = 0;
  }

  v4 = runIndex == [(_NSTextHighlightRun *)self count]- 1;

  return v4;
}

- (BOOL)combinedPaths
{
  if (result)
  {
    if (OUTLINED_FUNCTION_14_0(result) < 2)
    {
      return 0;
    }

    else
    {
      v2 = [*(v1 + 56) objectAtIndex:0];
      v3 = 0.0;
      v4 = 0.0;
      v5 = 0.0;
      v6 = 0.0;
      v7 = 0.0;
      if (v2)
      {
        v7 = v2[16];
        v4 = v2[17];
        v5 = v2[18];
        v6 = v2[19];
      }

      v8 = [*(v1 + 56) objectAtIndex:1];
      v9 = 0.0;
      v10 = 0.0;
      v11 = 0.0;
      if (v8)
      {
        v11 = v8[16];
        v3 = v8[17];
        v9 = v8[18];
        v10 = v8[19];
      }

      v13.origin.x = v11;
      v13.origin.y = v3;
      v13.size.width = v9;
      v13.size.height = v10;
      MinY = CGRectGetMinY(v13);
      v14.origin.x = v7;
      v14.origin.y = v4;
      v14.size.width = v5;
      v14.size.height = v6;
      return MinY - CGRectGetMaxY(v14) <= 0.0;
    }
  }

  return result;
}

- (id)secondSegment
{
  if (a1)
  {
    if (OUTLINED_FUNCTION_14_0(a1) < 2)
    {
      a1 = 0;
    }

    else
    {
      a1 = [*(v1 + 56) objectAtIndex:1];
    }

    v2 = vars8;
  }

  return a1;
}

- (id)secondLastSegment
{
  if (a1)
  {
    if (OUTLINED_FUNCTION_14_0(a1) < 2)
    {
      a1 = 0;
    }

    else
    {
      a1 = [*(v1 + 56) objectAtIndex:{objc_msgSend(*(v1 + 56), "count") - 2}];
    }

    v2 = vars8;
  }

  return a1;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  if (self)
  {
    runIndex_low = LODWORD(self->_runIndex);
    v5 = self->_textRange;
    segments = self->_segments;
  }

  else
  {
    v5 = 0;
    runIndex_low = 0;
    segments = 0;
  }

  v7 = segments;
  v8 = [v3 stringWithFormat:@"_NSTextHighlightRun\n\tRunIndex: %u\n\tRange: %@\n\tSegment Count: %u", runIndex_low, v5, -[NSMutableArray count](v7, "count")];

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_cluster);
    v10 = WeakRetained;
    if (WeakRetained)
    {
      v11 = objc_loadWeakRetained(WeakRetained + 3);
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
LABEL_6:
  v12 = [v11 textLayoutManager];
  v13 = [v12 textContentManager];

  if (objc_opt_respondsToSelector())
  {
    v14 = [v13 attributedString];
    v15 = [v14 string];

    v16 = [v13 documentRange];
    v17 = [v16 location];
    if (self)
    {
      textRange = self->_textRange;
    }

    else
    {
      textRange = 0;
    }

    v19 = [(NSTextRange *)textRange location];
    v20 = [v13 offsetFromLocation:v17 toLocation:v19];

    v21 = [v13 documentRange];
    v22 = [v21 location];
    if (self)
    {
      v23 = self->_textRange;
    }

    else
    {
      v23 = 0;
    }

    v24 = [(NSTextRange *)v23 endLocation];
    v25 = [v13 offsetFromLocation:v22 toLocation:v24];

    v26 = [v15 substringWithRange:{v20, v25 - v20}];
    [v8 appendFormat:@"\n\tText:%@", v26];
  }

  return v8;
}

- (void)initWithTextRange:(void *)a3 withCluster:(void *)a4 .cold.1(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = *(a1 + 56);
  *(a1 + 56) = v8;

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = *(a1 + 8);
  *(a1 + 8) = v10;

  objc_storeStrong((a1 + 48), a2);
  objc_storeWeak((a1 + 40), a3);
  if (a3)
  {
    v12 = a3[4];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  *(a1 + 16) = [v13 count];

  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 64) = _Q0;
  *a4 = a1 + 32;
  *(a1 + 32) = 257;
  v19 = [(_NSTextHighlightRun *)a1 prevRun];
  if (v19 && [a1 beginsOnSameLineAsPreviousRun])
  {
    v31 = *(a1 + 48);
    v32 = [v31 location];
    v33 = [(_NSTextHighlightRun *)a1 prevRun];
    v34 = v33;
    if (v33)
    {
      v33 = v33[6];
    }

    v35 = [v33 endLocation];
    v36 = [v32 compare:v35];

    if (!v36)
    {
      v37 = [(_NSTextHighlightRun *)a1 prevRun];
      if (v37)
      {
        v37[33] = 0;
      }

      *(a1 + 32) = 0;
    }
  }

  else
  {
  }

  if (*(a1 + 16))
  {
    v20 = [(_NSTextHighlightRun *)a1 prevRun];
    v21 = v20;
    if (v20)
    {
      WeakRetained = objc_loadWeakRetained((v20 + 40));
      v23 = WeakRetained;
      if (WeakRetained)
      {
        v24 = objc_loadWeakRetained(WeakRetained + 3);
LABEL_10:
        v25 = [(_NSTextHighlightRun *)a1 prevRun];
        v26 = v25;
        if (v25)
        {
          v27 = *(v25 + 48);
        }

        else
        {
          v27 = 0;
        }

        v28 = [v24 modifyOptions:0 forLineBoundariesInRange:v27];

        v29 = [(_NSTextHighlightRun *)a1 prevRun];
        if (v29)
        {
          v29[32] = (v28 & 4 | v29[32]) != 0;
        }

        v30 = [(_NSTextHighlightRun *)a1 prevRun];
        if (v30)
        {
          v30[33] = (v28 & 8 | v30[33]) != 0;
        }

        return;
      }
    }

    else
    {
      v23 = 0;
    }

    v24 = 0;
    goto LABEL_10;
  }
}

@end