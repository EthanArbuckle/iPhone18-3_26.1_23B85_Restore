@interface _NSTextHighlightRun
- (BOOL)beginsOnSameLineAsPreviousRun;
- (BOOL)combinedPaths;
- (BOOL)isLastRun;
- (BOOL)textRangeIsInSameLine:(id)line;
- (CGPath)_createUnionedPathFromArray:(id)array;
- (double)cornerOutset;
- (double)cornerRadius;
- (id)description;
- (id)firstSegment;
- (id)initWithTextRange:(void *)range withCluster:;
- (id)lastSegment;
- (id)secondLastSegment;
- (id)secondSegment;
- (uint64_t)drawRunUsingBlock:(void *)block;
- (void)enumerateRunSegmentsUsingBlock:(id)block;
- (void)getMetricsForTextSize:(double *)size cornerRadius:(double)radius cornerOutset:(double)outset;
- (void)prevRun;
@end

@implementation _NSTextHighlightRun

- (id)initWithTextRange:(void *)range withCluster:
{
  v5 = a2;
  rangeCopy = range;
  if (self)
  {
    v27.receiver = self;
    v27.super_class = _NSTextHighlightRun;
    v7 = objc_msgSendSuper2(&v27, sel_init);
    self = v7;
    if (v7)
    {
      [(_NSTextHighlightRun *)v7 initWithTextRange:v5 withCluster:rangeCopy, v25];
      v9 = v25[0];
      v25[0] = 0;
      v25[1] = v25;
      v25[2] = 0x3042000000;
      v25[3] = __Block_byref_object_copy__7;
      v25[4] = __Block_byref_object_dispose__7;
      objc_initWeak(&v26, self);
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __53___NSTextHighlightRun_initWithTextRange_withCluster___block_invoke;
      v22 = &unk_1E7267168;
      v24 = v25;
      self = self;
      selfCopy = self;
      [self enumerateRunSegmentsUsingBlock:&v19];
      prevRun = [(_NSTextHighlightRun *)self prevRun];
      lastSegment = [(_NSTextHighlightRun *)prevRun lastSegment];

      if (lastSegment && *(lastSegment + 8) == 1)
      {
        v12 = *(lastSegment + 96);
        firstSegment = [(_NSTextHighlightRun *)self firstSegment];
        v14 = firstSegment ? firstSegment[12] : 0.0;

        if (v12 == v14)
        {
          prevRun2 = [(_NSTextHighlightRun *)self prevRun];
          v16 = prevRun2;
          if (prevRun2)
          {
            v17 = *(prevRun2 + 56);
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

  return self;
}

- (BOOL)textRangeIsInSameLine:(id)line
{
  lineCopy = line;
  v5 = lineCopy;
  if (lineCopy)
  {
    location = [lineCopy location];
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
    textLayoutManager = [v9 textLayoutManager];

    textContentManager = [textLayoutManager textContentManager];
    v12 = [textLayoutManager textLayoutFragmentForLocation:location];
    textParagraph = [v12 textParagraph];
    v14 = textParagraph;
    if (textParagraph)
    {
      paragraphContentRange = [textParagraph paragraphContentRange];
      v16 = [paragraphContentRange containsLocation:location];

      if ((v16 & 1) == 0)
      {
        paragraphSeparatorRange = [v14 paragraphSeparatorRange];
        endLocation = [paragraphSeparatorRange endLocation];

        endLocation2 = [v5 endLocation];
        v20 = [endLocation compare:endLocation2];

        if (v20 != -1)
        {
          v21 = 0;
          location = endLocation;
LABEL_13:

          goto LABEL_14;
        }

        location = endLocation;
      }

      v22 = [v12 textLineFragmentForTextLocation:location isUpstreamAffinity:0];
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = __Block_byref_object_copy__56;
      v39 = __Block_byref_object_dispose__57;
      v40 = 0;
      documentRange = [textContentManager documentRange];
      endLocation3 = [documentRange endLocation];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __45___NSTextHighlightRun_textRangeIsInSameLine___block_invoke;
      v31[3] = &unk_1E72671B8;
      v32 = v12;
      v25 = v5;
      v33 = v25;
      v34 = &v35;
      v26 = [textLayoutManager enumerateTextLayoutFragmentsFromLocation:endLocation3 options:1 usingBlock:v31];

      v27 = v36[5];
      endLocation4 = [v25 endLocation];
      v29 = [v27 textLineFragmentForTextLocation:endLocation4 isUpstreamAffinity:1];

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

- (uint64_t)drawRunUsingBlock:(void *)block
{
  v3 = a2;
  if (block)
  {
    v4 = block[7];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __41___NSTextHighlightRun_drawRunUsingBlock___block_invoke;
    v16[3] = &unk_1E72671E0;
    v16[4] = block;
    [v4 enumerateObjectsUsingBlock:v16];
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    combinedPaths = [(_NSTextHighlightRun *)block combinedPaths];
    v6 = block[1];
    if (combinedPaths)
    {
      v7 = [block _createUnionedPathFromArray:block[1]];
      v3[2](v3, v7, v7, block[2], (v13 + 3));
      CFRelease(v7);
    }

    else
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __41___NSTextHighlightRun_drawRunUsingBlock___block_invoke_2;
      v9[3] = &unk_1E7267208;
      v9[4] = block;
      v10 = v3;
      v11 = &v12;
      [v6 enumerateObjectsUsingBlock:v9];
    }

    LOBYTE(block) = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
  }

  return block & 1;
}

- (CGPath)_createUnionedPathFromArray:(id)array
{
  v16 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [arrayCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(arrayCopy);
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

      v5 = [arrayCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  if (!self)
  {
    return 0.0;
  }

  v2 = (self + 64);
  if (*(self + 64) < 0.0 && [*(self + 56) count])
  {
    firstObject = [*(self + 56) firstObject];
    v7 = firstObject;
    if (firstObject)
    {
      v8 = *(firstObject + 144);
      v9 = *(firstObject + 152);
    }

    else
    {
      v8 = 0.0;
      v9 = 0.0;
    }

    [(_NSTextHighlightRun *)self getMetricsForTextSize:v2 cornerRadius:(self + 72) cornerOutset:v8, v9];
  }

  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  _UIFoundationAssert(self, v4, *(self + 64) >= 0.0, &__block_literal_global_13);

  return *(self + 64);
}

- (double)cornerOutset
{
  if (!self)
  {
    return 0.0;
  }

  v2 = (self + 72);
  if (*(self + 72) < 0.0 && [*(self + 56) count])
  {
    firstObject = [*(self + 56) firstObject];
    v5 = firstObject;
    if (firstObject)
    {
      v6 = *(firstObject + 144);
      v7 = *(firstObject + 152);
    }

    else
    {
      v6 = 0.0;
      v7 = 0.0;
    }

    [(_NSTextHighlightRun *)self getMetricsForTextSize:v2 cornerRadius:v6 cornerOutset:v7];
  }

  return *v2;
}

- (void)getMetricsForTextSize:(double *)size cornerRadius:(double)radius cornerOutset:(double)outset
{
  if (self)
  {
    if (_MergedGlobals_2 != -1)
    {
      dispatch_once(&_MergedGlobals_2, &__block_literal_global_67);
    }

    if (outset >= 28.0)
    {
      v11 = vcvtmd_u64_f64(outset + -28.0) / 0xA;
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

    *(self + 64) = v10;
    *a2 = v10;
    *(self + 72) = v9;
    *size = v9;
  }
}

- (void)prevRun
{
  selfCopy = self;
  if (self)
  {
    if (self[2])
    {
      WeakRetained = objc_loadWeakRetained(self + 5);
      v3 = WeakRetained;
      if (WeakRetained)
      {
        WeakRetained = WeakRetained[4];
      }

      selfCopy = [WeakRetained objectAtIndex:selfCopy[2] - 1];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)lastSegment
{
  if (self)
  {
    self = OUTLINED_FUNCTION_14_0(self);
    if (self)
    {
      self = [*(v1 + 56) objectAtIndex:{objc_msgSend(*(v1 + 56), "count") - 1}];
    }

    v2 = vars8;
  }

  return self;
}

- (id)firstSegment
{
  if (self)
  {
    self = OUTLINED_FUNCTION_14_0(self);
    if (self)
    {
      self = [*(v1 + 56) objectAtIndex:0];
    }

    v2 = vars8;
  }

  return self;
}

- (void)enumerateRunSegmentsUsingBlock:(id)block
{
  blockCopy = block;
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

  textLayoutManager = [v7 textLayoutManager];

  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  if (textLayoutManager)
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
    textContentManager = [textLayoutManager textContentManager];
    documentRange = [textContentManager documentRange];
    endLocation = [documentRange endLocation];

    __NSTextHighlightShapeProviderHasTypingAttributesOverride(textLayoutManager, v10);
    OUTLINED_FUNCTION_0_2();
    v17 = 3221225472;
    v18 = __54___NSTextHighlightRun_enumerateRunSegmentsUsingBlock___block_invoke;
    v19 = &unk_1E7267190;
    selfCopy = self;
    v24 = v14;
    v15 = endLocation;
    v21 = v15;
    v22 = blockCopy;
    v23 = v25;
    [textLayoutManager enumerateTextSegmentsInRange:v10 type:0 options:0 usingBlock:v16];
  }

  _Block_object_dispose(v25, 8);
}

- (BOOL)beginsOnSameLineAsPreviousRun
{
  prevRun = [(_NSTextHighlightRun *)&self->super.isa prevRun];
  if (prevRun)
  {
    v6 = prevRun;
    prevRun2 = [(_NSTextHighlightRun *)&self->super.isa prevRun];
    lastSegment = [(_NSTextHighlightRun *)prevRun2 lastSegment];
    v9 = lastSegment;
    if (lastSegment)
    {
      v10 = *(lastSegment + 88);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    location = [v11 location];
    if (location)
    {
      v13 = location;
      if (self)
      {
        textRange = self->_textRange;
      }

      else
      {
        textRange = 0;
      }

      location2 = [(NSTextRange *)textRange location];

      if (!location2)
      {
        return 0;
      }

      v16 = [NSTextRange alloc];
      prevRun3 = [(_NSTextHighlightRun *)&self->super.isa prevRun];
      lastSegment2 = [(_NSTextHighlightRun *)prevRun3 lastSegment];
      v19 = lastSegment2;
      if (lastSegment2)
      {
        v20 = *(lastSegment2 + 88);
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;
      location3 = [v21 location];
      if (self)
      {
        v23 = self->_textRange;
      }

      else
      {
        v23 = 0;
      }

      location4 = [(NSTextRange *)v23 location];
      v6 = [(NSTextRange *)v16 initWithLocation:location3 endLocation:location4];

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
    selfCopy = self;
    if (self)
    {
      self = *&self->_leadingRun;
    }
  }

  else
  {
    selfCopy = 0;
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
  if (self)
  {
    if (OUTLINED_FUNCTION_14_0(self) < 2)
    {
      self = 0;
    }

    else
    {
      self = [*(v1 + 56) objectAtIndex:1];
    }

    v2 = vars8;
  }

  return self;
}

- (id)secondLastSegment
{
  if (self)
  {
    if (OUTLINED_FUNCTION_14_0(self) < 2)
    {
      self = 0;
    }

    else
    {
      self = [*(v1 + 56) objectAtIndex:{objc_msgSend(*(v1 + 56), "count") - 2}];
    }

    v2 = vars8;
  }

  return self;
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
  textLayoutManager = [v11 textLayoutManager];
  textContentManager = [textLayoutManager textContentManager];

  if (objc_opt_respondsToSelector())
  {
    attributedString = [textContentManager attributedString];
    string = [attributedString string];

    documentRange = [textContentManager documentRange];
    location = [documentRange location];
    if (self)
    {
      textRange = self->_textRange;
    }

    else
    {
      textRange = 0;
    }

    location2 = [(NSTextRange *)textRange location];
    v20 = [textContentManager offsetFromLocation:location toLocation:location2];

    documentRange2 = [textContentManager documentRange];
    location3 = [documentRange2 location];
    if (self)
    {
      v23 = self->_textRange;
    }

    else
    {
      v23 = 0;
    }

    endLocation = [(NSTextRange *)v23 endLocation];
    v25 = [textContentManager offsetFromLocation:location3 toLocation:endLocation];

    v26 = [string substringWithRange:{v20, v25 - v20}];
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