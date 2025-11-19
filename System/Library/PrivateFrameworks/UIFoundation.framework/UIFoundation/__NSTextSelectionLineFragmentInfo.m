@interface __NSTextSelectionLineFragmentInfo
- (BOOL)isMonotonicDirection;
- (BOOL)location:(id)a3 isLeading:(BOOL *)a4 trailing:(BOOL *)a5 inTextRanges:(id)a6;
- (__NSTextSelectionLineFragmentInfo)initWithTextSelectionNavigation:(id)a3 range:(id)a4;
- (const)caretPositionAtIndex:(int64_t)a3;
- (const)caretPositionClosestToLocation:(id)a3 visualDirection:(int64_t)a4 matchLocation:(BOOL *)a5;
- (const)caretPositionClosestToOffset:(double)a3;
- (const)logicalFirstCaret;
- (const)logicalLastCaret;
- (double)offsetForLocation:(id)a3;
- (id)_findNextCaretLocationForLocation:(id)a3;
- (id)_locationForEdgeCaretAtIndex:(unint64_t)a3 leftEdge:(BOOL)a4;
- (id)_secondaryLocationTable;
- (id)_sortedLocations;
- (id)description;
- (id)rangesBetweenStartingOffset:(double)a3 endOffset:(double)a4 logicallyContinuous:(BOOL)a5;
- (id)textRangeOfCharacterAtOffset:(double)a3 fractionOfDistanceThroughGlyph:(double *)a4;
- (int64_t)_baseWritingDirection;
- (int64_t)_sortedLocationIndexForLocation:(id)a3;
- (int64_t)caretIndexForEdgeLocationInTextRanges:(id)a3 leftEdge:(BOOL)a4;
- (int64_t)caretIndexForLocation:(id)a3 inTextRanges:(id)a4 secondaryCaretIndex:(int64_t *)a5;
- (int64_t)caretIndexForPrimaryLocation:(id)a3;
- (int64_t)caretIndexForSecondaryLocation:(id)a3;
- (void)_cache;
- (void)_computeVisualDirection;
- (void)_fetchCaretOffsets;
- (void)_resolveTrailingEdges;
- (void)dealloc;
@end

@implementation __NSTextSelectionLineFragmentInfo

- (void)_cache
{
  if (!self->_carets)
  {
    [(__NSTextSelectionLineFragmentInfo *)self _fetchCaretOffsets];
    if (self->_numberOfCarets)
    {
      [(__NSTextSelectionLineFragmentInfo *)self _resolveTrailingEdges];
      [(__NSTextSelectionLineFragmentInfo *)self _computeVisualDirection];

      [(__NSTextSelectionLineFragmentInfo *)self _invalidateSortedLocations];
    }
  }
}

- (void)_fetchCaretOffsets
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0x7FFFFFFFFFFFFFFFLL;
  v3 = objc_alloc_init(MEMORY[0x1E696AC70]);
  v4 = [(__NSTextSelectionLineFragmentInfo *)self _baseWritingDirection]== 1;
  v5 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  if (!self->_carets)
  {
    self->_carets = NSZoneCalloc(0, self->_offset, 0x20uLL);
  }

  v6 = [(NSTextSelectionNavigation *)self->_navigation textSelectionDataSource];
  v7 = [(NSTextRange *)self->_textRange location];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55____NSTextSelectionLineFragmentInfo__fetchCaretOffsets__block_invoke;
  v9[3] = &unk_1E7265BC0;
  v9[4] = self;
  v9[5] = v3;
  v10 = v4;
  v9[8] = v23;
  v9[9] = &v17;
  v9[6] = v5;
  v9[7] = &v24;
  v9[10] = &v11;
  [v6 enumerateCaretOffsetsInLineFragmentAtLocation:v7 usingBlock:v9];
  v8 = v25[3];
  self->_numberOfCarets = v8;
  if (v8)
  {

    self->_primaryLocationTable = v5;
    self->_secondaryLocationTable = v18[5];

    self->_otherLocations = v12[5];
  }

  else
  {

    if (v12[5])
    {
      __assert_rtn("[__NSTextSelectionLineFragmentInfo _fetchCaretOffsets]", "NSTextSelectionNavigation.m", 307, "!otherTable");
    }
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v24, 8);
}

- (int64_t)_baseWritingDirection
{
  result = self->_baseDirection;
  if (result == -1)
  {
    result = [-[NSTextSelectionNavigation textSelectionDataSource](self->_navigation "textSelectionDataSource")];
    self->_baseDirection = result;
    if (result == -1)
    {
      result = [NSParagraphStyle defaultWritingDirectionForLanguage:0];
      self->_baseDirection = result;
    }
  }

  return result;
}

- (void)_resolveTrailingEdges
{
  carets = self->_carets;
  if (!carets)
  {
    [__NSTextSelectionLineFragmentInfo _resolveTrailingEdges];
  }

  self->_lastCaretPrefersSecondaryLocation = 0;
  numberOfCarets = self->_numberOfCarets;
  if (numberOfCarets >= 2)
  {
    baseDirection = self->_baseDirection;
    v6 = numberOfCarets - 1;
    if (baseDirection == 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    if (baseDirection == 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    p_var3 = &carets[1].var3;
    while (--v6)
    {
      v10 = *p_var3;
      p_var3 += 32;
      if (!v10)
      {
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if (self->_numberOfCarets)
        {
          v12 = 0;
          v13 = 0;
          do
          {
            v14 = &self->_carets[v12];
            if (v14->var3)
            {
              [v11 addObject:v14->var1];
              if (v14->var2)
              {
                [v11 addObject:?];
              }
            }

            ++v13;
            ++v12;
          }

          while (v13 < self->_numberOfCarets);
        }

        [v11 addObject:{-[NSTextRange endLocation](self->_textRange, "endLocation")}];
        [v11 sortUsingSelector:sel_compare_];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v58 = __58____NSTextSelectionLineFragmentInfo__resolveTrailingEdges__block_invoke;
        v59 = &unk_1E7265BE8;
        v60 = v11;
        v15 = self->_numberOfCarets;
        if (v15)
        {
          v53 = v8;
          v16 = 0;
          v17 = 0;
          v54 = v7;
          do
          {
            v18 = self->_carets;
            v19 = &v18[v16];
            v20 = v58(v57, v18[v16].var1);
            if (!v18[v16].var3)
            {
              if (v20)
              {
                v19->var1 = v20;
                -[NSMapTable setObject:forKey:](self->_primaryLocationTable, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17], v19->var1);
                v21 = &v18[v16];
                if (v18[v16].var2)
                {
                  v22 = (v58)(v57);
                  if (v22)
                  {
                    v23 = v22;
                    [-[__NSTextSelectionLineFragmentInfo _secondaryLocationTable](self "_secondaryLocationTable")];
                    v21->var2 = v23;
                    if (v23 == [(NSTextRange *)self->_textRange endLocation])
                    {
                      var4 = v18[v16].var4;
                      if (var4 == ([(__NSTextSelectionLineFragmentInfo *)self _baseWritingDirection]== 1))
                      {
                        v25 = &self->_carets[v54];
                        v25->var1 = v21->var2;
                        v25->var2 = v19->var1;
                        self->_lastCaretPrefersSecondaryLocation = 1;
                        v26 = objc_opt_class();
                        v27 = NSStringFromClass(v26);
                        v28 = v25->var2 != 0;
                        v56[0] = MEMORY[0x1E69E9820];
                        v56[1] = 3221225472;
                        v56[2] = __58____NSTextSelectionLineFragmentInfo__resolveTrailingEdges__block_invoke_3;
                        v56[3] = &__block_descriptor_40_e18___NSString_16__0_8l;
                        v56[4] = v54;
                        _UIFoundationAssert(self, v27, v28, v56);
                        -[NSMapTable setObject:forKey:](self->_primaryLocationTable, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithInteger:v54], v25->var1);
                        v29 = [(__NSTextSelectionLineFragmentInfo *)self _secondaryLocationTable];
                        [v29 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", v54), v25->var2}];
                      }
                    }

                    v30 = [(__NSTextSelectionLineFragmentInfo *)self _secondaryLocationTable];
                    [v30 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", v17), v23}];
                  }
                }
              }
            }

            ++v17;
            v15 = self->_numberOfCarets;
            ++v16;
          }

          while (v17 < v15);
          LODWORD(v15) = v15 > 1;
          v7 = v54;
          v8 = v53;
        }

        v31 = self->_carets;
        v32 = &v31[v8];
        if (!v32->var3 && !v32->var2)
        {
          if (v15)
          {
            v33 = 0;
            v34 = 1;
            while (![-[NSTextRange location](self->_textRange "location")])
            {
              ++v34;
              ++v33;
              if (v34 >= self->_numberOfCarets)
              {
                goto LABEL_36;
              }
            }

            v32->var1 = [(NSTextRange *)self->_textRange location];
            v32->var2 = self->_carets[v33 + 1].var1;
          }

          else
          {
LABEL_36:
            v32->var2 = v32->var1;
            v32->var1 = [(NSTextRange *)self->_textRange location];
          }

          -[NSMapTable setObject:forKey:](self->_primaryLocationTable, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithInteger:v8], v32->var1);
          v50 = [(__NSTextSelectionLineFragmentInfo *)self _secondaryLocationTable];
          [v50 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", v8), v32->var2}];
          v31 = self->_carets;
        }

        v51 = &v31[v7];
        if (v51->var3 && !v51->var2)
        {
          v51->var2 = v51->var1;
          v51->var1 = [(NSTextRange *)self->_textRange endLocation];
          -[NSMapTable setObject:forKey:](self->_primaryLocationTable, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithInteger:v7], v51->var1);
          v52 = [(__NSTextSelectionLineFragmentInfo *)self _secondaryLocationTable];
          [v52 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", v7), v51->var2}];
        }

        return;
      }
    }

    v35 = &carets[v8];
    if (!v35->var3)
    {
      v36 = &carets[v7];
      if (v35->var4 == v36->var4)
      {
        v35->var1 = [(NSTextRange *)self->_textRange location];
        v37 = [(NSTextRange *)self->_textRange endLocation];
        v35->var2 = v37;
        v36->var1 = v37;
        v36->var2 = v35->var1;
        self->_lastCaretPrefersSecondaryLocation = 1;
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        v40 = v36->var2 != 0;
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __58____NSTextSelectionLineFragmentInfo__resolveTrailingEdges__block_invoke_4;
        v55[3] = &__block_descriptor_40_e18___NSString_16__0_8l;
        v55[4] = v8;
        _UIFoundationAssert(self, v39, v40, v55);
        -[NSMapTable setObject:forKey:](self->_primaryLocationTable, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithInteger:v8], v35->var1);
        v41 = [(__NSTextSelectionLineFragmentInfo *)self _secondaryLocationTable];
        [v41 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", v8), v35->var2}];
        -[NSMapTable setObject:forKey:](self->_primaryLocationTable, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithInteger:v7], v36->var1);
        v42 = [(__NSTextSelectionLineFragmentInfo *)self _secondaryLocationTable];
        v43 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
        var2 = v36->var2;
        v45 = v42;
      }

      else
      {
        v46 = 0;
        v47 = 1;
        while (![-[NSTextRange location](self->_textRange "location")])
        {
          ++v47;
          ++v46;
          if (v47 >= self->_numberOfCarets)
          {
            goto LABEL_46;
          }
        }

        v35->var1 = [(NSTextRange *)self->_textRange location];
        v35->var2 = self->_carets[v46 + 1].var1;
        -[NSMapTable setObject:forKey:](self->_primaryLocationTable, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithInteger:v8], v35->var1);
        v48 = [(__NSTextSelectionLineFragmentInfo *)self _secondaryLocationTable];
        v43 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
        var2 = v35->var2;
        v45 = v48;
      }

      [v45 setObject:v43 forKey:var2];
    }

LABEL_46:
    v49 = &self->_carets[v7];
    if (!v49->var3)
    {
      v49->var1 = [(NSTextRange *)self->_textRange endLocation];
      -[NSMapTable setObject:forKey:](self->_primaryLocationTable, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithInteger:v7], v49->var1);
    }
  }
}

- (void)_computeVisualDirection
{
  [(__NSTextSelectionLineFragmentInfo *)self _cache];
  self->_visualDirection = -1;
  numberOfCarets = self->_numberOfCarets;
  if (!numberOfCarets)
  {
    return;
  }

  v4 = -1;
  v5 = 25;
  v6 = self->_numberOfCarets;
  do
  {
    if (v4 == -1)
    {
      v4 = *(&self->_carets->var0 + v5);
      goto LABEL_8;
    }

    if (v4 == 2)
    {
      break;
    }

    if (v4 != *(&self->_carets->var0 + v5))
    {
      v4 = 2;
LABEL_8:
      self->_visualDirection = v4;
    }

    v5 += 32;
    --v6;
  }

  while (v6);
  if (numberOfCarets != 1 && v4 != 2)
  {
    if (v4 == 1)
    {
      v7 = &self->_carets[numberOfCarets];
      carets = v7 - 2;
      v9 = v7 - 1;
    }

    else
    {
      carets = self->_carets;
      v9 = carets + 1;
    }

    if (self->_visualDirection != ([carets->var1 compare:v9->var1] == 1))
    {
      self->_visualDirection = 2;
    }
  }
}

- (void)dealloc
{
  carets = self->_carets;
  if (carets)
  {
    NSZoneFree(0, carets);
  }

  v4.receiver = self;
  v4.super_class = __NSTextSelectionLineFragmentInfo;
  [(__NSTextSelectionLineFragmentInfo *)&v4 dealloc];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendFormat:@"<%p %@", self, objc_opt_class()];
  if (self->_carets)
  {
    if (self->_numberOfCarets)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        [v3 appendFormat:@" %@", objc_msgSend(self->_carets[v4].var1, "description")];
        carets = self->_carets;
        var2 = carets[v4].var2;
        if (var2)
        {
          [v3 appendFormat:@"/%@", objc_msgSend(var2, "description")];
          carets = self->_carets;
        }

        if (!carets[v4].var3)
        {
          [v3 appendString:@"t"];
          carets = self->_carets;
        }

        [v3 appendFormat:@"@%g", *&carets[v4].var0];
        ++v5;
        ++v4;
      }

      while (v5 < self->_numberOfCarets);
    }
  }

  else
  {
    [v3 appendFormat:@" uncached"];
  }

  [v3 appendString:@">"];
  return v3;
}

- (id)_sortedLocations
{
  [(__NSTextSelectionLineFragmentInfo *)self _cache];
  objc_sync_enter(self);
  sortedLocations = self->_sortedLocations;
  if (!sortedLocations)
  {
    sortedLocations = [(NSArray *)NSAllMapTableKeys(self->_primaryLocationTable) sortedArrayUsingSelector:sel_compare_];
    self->_sortedLocations = sortedLocations;
  }

  objc_sync_exit(self);
  return sortedLocations;
}

- (int64_t)_sortedLocationIndexForLocation:(id)a3
{
  v4 = [(__NSTextSelectionLineFragmentInfo *)self _sortedLocations];
  v5 = [v4 count];

  return [v4 indexOfObject:a3 inSortedRange:0 options:v5 usingComparator:{1024, &__block_literal_global_3}];
}

- (id)_findNextCaretLocationForLocation:(id)a3
{
  v5 = [(__NSTextSelectionLineFragmentInfo *)self _sortedLocations];
  v6 = [(__NSTextSelectionLineFragmentInfo *)self _sortedLocationIndexForLocation:a3];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v7 = v6 + 1;
  if (v6 + 1 >= [v5 count])
  {
    return 0;
  }

  return [v5 objectAtIndexedSubscript:v7];
}

- (id)_secondaryLocationTable
{
  result = self->_secondaryLocationTable;
  if (!result)
  {
    result = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    self->_secondaryLocationTable = result;
  }

  return result;
}

- (__NSTextSelectionLineFragmentInfo)initWithTextSelectionNavigation:(id)a3 range:(id)a4
{
  v9.receiver = self;
  v9.super_class = __NSTextSelectionLineFragmentInfo;
  v6 = [(__NSTextSelectionLineFragmentInfo *)&v9 init];
  if (v6)
  {
    v7 = [objc_msgSend(a3 "textSelectionDataSource")];
    v6->_offset = v7;
    if (v7 < 0x7FFFFFFFFFFFFFFFLL)
    {
      v6->_offset = v7 + 1;
      v6->_navigation = a3;
      v6->_textRange = a4;
      v6->_visualDirection = -1;
      v6->_baseDirection = -1;
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (id)textRangeOfCharacterAtOffset:(double)a3 fractionOfDistanceThroughGlyph:(double *)a4
{
  [(__NSTextSelectionLineFragmentInfo *)self _cache];
  numberOfCarets = self->_numberOfCarets;
  if (!numberOfCarets)
  {
    return 0;
  }

  carets = self->_carets;
  var0 = carets->var0;
  if (carets->var0 >= a3)
  {
    var1 = carets->var1;
    v15 = var1;
    if (numberOfCarets != 1)
    {
      v15 = carets[1].var1;
    }

    if (!a4)
    {
      goto LABEL_20;
    }

    var3 = carets->var3;
  }

  else
  {
    v10 = &carets[numberOfCarets];
    var0 = v10[-1].var0;
    if (var0 > a3)
    {
      v11 = numberOfCarets - 1;
      if (!v11)
      {
        goto LABEL_8;
      }

      v12 = carets + 1;
      while (1)
      {
        var0 = v12->var0;
        if (v12->var0 > a3)
        {
          break;
        }

        ++v12;
        if (!--v11)
        {
          goto LABEL_8;
        }
      }

      p_var0 = &v12[-1].var0;
      if (v12 == 32)
      {
LABEL_8:
        [__NSTextSelectionLineFragmentInfo textRangeOfCharacterAtOffset:fractionOfDistanceThroughGlyph:];
      }

      if (v12->var3 && v12->var4)
      {
        v21 = 1;
        v22 = v12--;
      }

      else
      {
        v21 = 0;
        v22 = v12 - 1;
      }

      v15 = v12->var1;
      var1 = v22->var1;
      if (!a4)
      {
        goto LABEL_20;
      }

      var0 = (a3 - *p_var0) / (var0 - *p_var0);
      *a4 = var0;
      if (!v21)
      {
        goto LABEL_20;
      }

      var0 = 1.0 - var0;
      goto LABEL_19;
    }

    v15 = v10[-1].var1;
    var1 = v15;
    if (numberOfCarets != 1)
    {
      var1 = v10[-2].var1;
    }

    if (!a4)
    {
      goto LABEL_20;
    }

    var3 = v10[-1].var3;
  }

  var0 = !var3;
LABEL_19:
  *a4 = var0;
LABEL_20:
  v17 = [v15 compare:{var1, var0}];
  if (v17 == -1)
  {
    v18 = v15;
  }

  else
  {
    v18 = var1;
  }

  if (v17 == -1)
  {
    v15 = var1;
  }

  v19 = [[NSTextRange alloc] initWithLocation:v18 endLocation:v15];

  return v19;
}

- (const)caretPositionClosestToOffset:(double)a3
{
  [(__NSTextSelectionLineFragmentInfo *)self _cache];
  carets = self->_carets;
  if (!carets)
  {
    return 0;
  }

  numberOfCarets = self->_numberOfCarets;
  if (!numberOfCarets)
  {
    return 0;
  }

  if (carets->var0 >= a3)
  {
    return self->_carets;
  }

  v7 = &carets[numberOfCarets];
  var0 = v7[-1].var0;
  v8 = v7 - 1;
  if (var0 <= a3)
  {
    return v8;
  }

  if (carets > v8)
  {
    return 0;
  }

  do
  {
    result = &carets[(v8 - carets) >> 6];
    if (result->var0 == a3)
    {
      break;
    }

    if (result->var0 <= a3)
    {
      carets = &result[1];
      v11 = result[1].var0;
      if (v11 > a3)
      {
        if (a3 - result->var0 > (v11 - result->var0) * 0.5)
        {
          ++result;
        }

        return result;
      }
    }

    else
    {
      v8 = result - 1;
    }
  }

  while (carets <= v8);
  return result;
}

- (const)logicalFirstCaret
{
  v3 = [(NSTextRange *)[(__NSTextSelectionLineFragmentInfo *)self textRange] location];

  return [(__NSTextSelectionLineFragmentInfo *)self caretPositionClosestToLocation:v3 visualDirection:1 matchLocation:0];
}

- (const)logicalLastCaret
{
  v3 = [(NSTextRange *)[(__NSTextSelectionLineFragmentInfo *)self textRange] endLocation];

  return [(__NSTextSelectionLineFragmentInfo *)self caretPositionClosestToLocation:v3 visualDirection:0 matchLocation:0];
}

- (const)caretPositionClosestToLocation:(id)a3 visualDirection:(int64_t)a4 matchLocation:(BOOL *)a5
{
  if (!-[NSTextRange containsLocation:](self->_textRange, "containsLocation:") && ![-[NSTextRange endLocation](self->_textRange "endLocation")])
  {
    return 0;
  }

  [(__NSTextSelectionLineFragmentInfo *)self _cache];
  v9 = [(__NSTextSelectionLineFragmentInfo *)self caretIndexForPrimaryLocation:a3];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_27;
  }

  visualDirection = self->_visualDirection;
  if (visualDirection == 2)
  {
    v11 = [(__NSTextSelectionLineFragmentInfo *)self _sortedLocations];
    v12 = [(__NSTextSelectionLineFragmentInfo *)self _sortedLocationIndexForLocation:a3];
    v13 = v12 - 1;
    if ((v12 - 1) > 0x7FFFFFFFFFFFFFFDLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
      if ((a4 != 2) != ([(__NSTextSelectionLineFragmentInfo *)self _baseWritingDirection]== 0))
      {
        if (v14 + 1 >= [v11 count])
        {
          v15 = v14;
        }

        else
        {
          v15 = v14 + 1;
        }

        v13 = v15 - 1;
      }

      v9 = -[__NSTextSelectionLineFragmentInfo caretIndexForPrimaryLocation:](self, "caretIndexForPrimaryLocation:", [v11 objectAtIndexedSubscript:v13]);
    }

    goto LABEL_27;
  }

  numberOfCarets = self->_numberOfCarets;
  if (numberOfCarets < 2)
  {
    v9 = 0;
LABEL_27:
    v26 = [(__NSTextSelectionLineFragmentInfo *)self caretPositionAtIndex:v9];
    v16 = v26;
    if (a5 && v26 && [v26->var2 isEqual:a3])
    {
      *a5 = 0;
    }

    return v16;
  }

  carets = self->_carets;
  v19 = &carets[numberOfCarets];
  v20 = &carets[visualDirection == 1];
  v21 = 0x7FFFFFFFFFFFFFELL;
  if (visualDirection == 1)
  {
    v21 = 0x7FFFFFFFFFFFFFFLL;
  }

  v22 = &v19[v21];
  if (visualDirection == 1)
  {
    v23 = -1;
  }

  else
  {
    v23 = 1;
  }

  while (v20 <= v22)
  {
    v24 = &v20[(v22 - v20) >> 6];
    v25 = [a3 compare:v24->var1];
    if (v25 != -1 && [v24[v23].var1 compare:a3] != -1)
    {
      if (visualDirection == 1)
      {
        v20 = v24 - 1;
      }

      else
      {
        v20 += (v22 - v20) >> 6;
      }

      if (visualDirection == 1)
      {
        v22 = v24;
      }

      else
      {
        v22 = v24 + 1;
      }

      break;
    }

    if (v25 == v23)
    {
      v20 = v24 + 1;
    }

    else
    {
      v22 = v24 - 1;
    }
  }

  if (a4 == 3)
  {
    return v20;
  }

  else
  {
    return v22;
  }
}

- (const)caretPositionAtIndex:(int64_t)a3
{
  [(__NSTextSelectionLineFragmentInfo *)self _cache];
  if (a3 < 0 || self->_numberOfCarets <= a3)
  {
    return 0;
  }

  else
  {
    return &self->_carets[a3];
  }
}

- (double)offsetForLocation:(id)a3
{
  [(__NSTextSelectionLineFragmentInfo *)self _cache];
  if (self->_lastCaretPrefersSecondaryLocation && [(NSTextRange *)self->_textRange endLocation]== a3)
  {
    v5 = [(__NSTextSelectionLineFragmentInfo *)self caretIndexForSecondaryLocation:a3];
  }

  else
  {
    v5 = [(__NSTextSelectionLineFragmentInfo *)self caretIndexForPrimaryLocation:a3];
  }

  v6 = -1.0;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(__NSTextSelectionLineFragmentInfo *)self caretPositionAtIndex:v5];
    if (v7)
    {
      return v7->var0;
    }
  }

  return v6;
}

- (id)rangesBetweenStartingOffset:(double)a3 endOffset:(double)a4 logicallyContinuous:(BOOL)a5
{
  v5 = a5;
  v41[1] = *MEMORY[0x1E69E9840];
  if (a3 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a3;
  }

  if (a3 >= a4)
  {
    v8 = a3;
  }

  else
  {
    v8 = a4;
  }

  v9 = [(__NSTextSelectionLineFragmentInfo *)self caretPositionClosestToOffset:v7];
  v10 = [(__NSTextSelectionLineFragmentInfo *)self caretPositionClosestToOffset:v8];
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    return 0;
  }

  v13 = v10;
  if (v5)
  {
    var1 = v9->var1;
    v15 = v10->var1;
    v16 = [var1 compare:v15];
    if (v16 == 1)
    {
      v17 = v15;
    }

    else
    {
      v17 = var1;
    }

    if (v16 != 1)
    {
      var1 = v15;
    }

    v18 = [[NSTextRange alloc] initWithLocation:v17 endLocation:var1];
    v41[0] = v18;
    v19 = v41;
    goto LABEL_24;
  }

  visualDirection = self->_visualDirection;
  if (visualDirection == 1)
  {
    v18 = [[NSTextRange alloc] initWithLocation:v10->var1 endLocation:v9->var1];
    v39 = v18;
    v19 = &v39;
    goto LABEL_24;
  }

  if (!visualDirection)
  {
    v18 = [[NSTextRange alloc] initWithLocation:v9->var1 endLocation:v10->var1];
    v40 = v18;
    v19 = &v40;
LABEL_24:
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];

    return v12;
  }

  v22 = [(__NSTextSelectionLineFragmentInfo *)self _baseWritingDirection];
  v12 = [MEMORY[0x1E695DF70] array];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v36 = __95____NSTextSelectionLineFragmentInfo_rangesBetweenStartingOffset_endOffset_logicallyContinuous___block_invoke;
  v37 = &unk_1E7265C30;
  v38 = v12;
  if (v9 > v13)
  {
    goto LABEL_53;
  }

  v23 = 0;
  var2 = 0;
  v25 = v22 == 1;
  do
  {
    v26 = var2;
    if (v9->var2)
    {
      v27 = v23;
      var3 = v9->var3;
      if (var3 == v25)
      {
        var2 = v9->var2;
      }

      else
      {
        var2 = v9->var1;
      }

      if (v26)
      {
        if (var3 == v25)
        {
          v29 = v9->var1;
        }

        else
        {
          v29 = v9->var2;
        }

        v36(v35, v26, v29, 0);
        v23 = var2;
        if (v9->var3)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v23 = var2;
        if (var3)
        {
          goto LABEL_47;
        }
      }

      v30 = [(__NSTextSelectionLineFragmentInfo *)self logicalLastCaret];
      if (v9 == v30)
      {
        v23 = v27;
      }

      else
      {
        v23 = var2;
      }

      if (v9 == v30)
      {
        var2 = v26;
      }
    }

    else
    {
      v23 = v9->var1;
      if (!var2)
      {
        var2 = v9->var1;
      }
    }

LABEL_47:
    ++v9;
  }

  while (v9 <= v13);
  if (var2)
  {
    v31 = v23 == 0;
  }

  else
  {
    v31 = 1;
  }

  if (!v31)
  {
    v32 = [v12 count] == 0;
    v36(v35, var2, v23, v32);
  }

LABEL_53:
  if ([v12 count] >= 2)
  {
    [v12 sortUsingComparator:&__block_literal_global_251];
    if ([v12 count] != 1)
    {
      v33 = 0;
      do
      {
        if ([objc_msgSend(objc_msgSend(v12 objectAtIndexedSubscript:{v33), "endLocation"), "isEqual:", objc_msgSend(objc_msgSend(v12, "objectAtIndexedSubscript:", v33 + 1), "location")}])
        {
          v34 = -[NSTextRange initWithLocation:endLocation:]([NSTextRange alloc], "initWithLocation:endLocation:", [objc_msgSend(v12 objectAtIndexedSubscript:{v33), "location"}], objc_msgSend(objc_msgSend(v12, "objectAtIndexedSubscript:", v33 + 1), "endLocation"));
          [v12 setObject:v34 atIndexedSubscript:v33];
          [v12 removeObjectAtIndex:v33 + 1];
        }

        else
        {
          ++v33;
        }
      }

      while (v33 < [v12 count] - 1);
    }
  }

  return v12;
}

- (BOOL)isMonotonicDirection
{
  [(__NSTextSelectionLineFragmentInfo *)self _cache];
  if (self->_visualDirection == 2)
  {
    return 0;
  }

  else
  {
    return ([(__NSTextSelectionLineFragmentInfo *)self _baseWritingDirection]== 0) ^ (self->_visualDirection != 0);
  }
}

- (int64_t)caretIndexForPrimaryLocation:(id)a3
{
  [(__NSTextSelectionLineFragmentInfo *)self _cache];
  v5 = [(NSMapTable *)self->_primaryLocationTable objectForKey:a3];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v5 integerValue];
}

- (int64_t)caretIndexForSecondaryLocation:(id)a3
{
  [(__NSTextSelectionLineFragmentInfo *)self _cache];
  secondaryLocationTable = self->_secondaryLocationTable;
  if (!secondaryLocationTable)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = [(NSMapTable *)secondaryLocationTable objectForKey:a3];
  if (!v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v6 integerValue];
}

- (BOOL)location:(id)a3 isLeading:(BOOL *)a4 trailing:(BOOL *)a5 inTextRanges:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [a6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(a6);
      }

      v14 = *(*(&v19 + 1) + 8 * v13);
      v15 = [objc_msgSend(v14 "location")];
      if (v15 == 1)
      {
        break;
      }

      v16 = v15;
      v17 = [a3 compare:{objc_msgSend(v14, "endLocation")}];
      if (v17 != 1)
      {
        *a4 = v17 == -1;
        *a5 = v16 == -1;
        return 1;
      }

      if (v11 == ++v13)
      {
        v11 = [a6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  result = 0;
  *a5 = 0;
  *a4 = 0;
  return result;
}

- (int64_t)caretIndexForLocation:(id)a3 inTextRanges:(id)a4 secondaryCaretIndex:(int64_t *)a5
{
  v19 = 0;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(__NSTextSelectionLineFragmentInfo *)self location:a3 isLeading:&v19 + 1 trailing:&v19 inTextRanges:a4])
  {
    v9 = [(__NSTextSelectionLineFragmentInfo *)self caretIndexForPrimaryLocation:a3];
    v10 = v9;
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_3:
      v11 = 0;
LABEL_13:
      v13 = [(__NSTextSelectionLineFragmentInfo *)self caretIndexForSecondaryLocation:a3];
      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = &self->_carets[v13];
        if (v14->var2)
        {
          if (HIBYTE(v19) == 1 && v14->var3)
          {
            v15 = 1;
            goto LABEL_20;
          }

          if (v19 == 1)
          {
            v15 = !v14->var3;
LABEL_20:
            if (!(v11 & 1 | ((v15 & 1) == 0)))
            {
              v11 = 1;
              v10 = v13;
              v15 = 0;
            }

            if (!a5)
            {
              goto LABEL_28;
            }

            goto LABEL_25;
          }
        }
      }

      v15 = 0;
      if (!a5)
      {
LABEL_28:
        if (v11)
        {
          return v10;
        }

        else
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }
      }

LABEL_25:
      v16 = (v15 & 1) == 0;
      v17 = 0x7FFFFFFFFFFFFFFFLL;
      if (!v16)
      {
        v17 = v13;
      }

      *a5 = v17;
      goto LABEL_28;
    }

    v12 = &self->_carets[v9];
    if ((v19 & 0x100) != 0)
    {
      if (v12->var3)
      {
        goto LABEL_11;
      }

      if ((v19 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else if ((v19 & 1) == 0)
    {
      v11 = v19 ^ 1;
      goto LABEL_13;
    }

    if (v12->var3 && v12->var2)
    {
      goto LABEL_3;
    }

LABEL_11:
    v11 = 1;
    goto LABEL_13;
  }

  return v8;
}

- (id)_locationForEdgeCaretAtIndex:(unint64_t)a3 leftEdge:(BOOL)a4
{
  [(__NSTextSelectionLineFragmentInfo *)self _cache];
  v7 = &self->_carets[a3];
  if (v7->var2)
  {
    if ((([(__NSTextSelectionLineFragmentInfo *)self _baseWritingDirection]== 0) ^ a4 ^ v7->var3))
    {
      p_var1 = &v7->var1;
    }

    else
    {
      p_var1 = &v7->var2;
    }
  }

  else
  {
    p_var1 = &v7->var1;
  }

  return *p_var1;
}

- (int64_t)caretIndexForEdgeLocationInTextRanges:(id)a3 leftEdge:(BOOL)a4
{
  v4 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0x7FFFFFFFFFFFFFFFLL;
  [(__NSTextSelectionLineFragmentInfo *)self _cache];
  if ([objc_msgSend(a3 "firstObject")])
  {
    v7 = -[__NSTextSelectionLineFragmentInfo caretIndexForLocation:inTextRanges:secondaryCaretIndex:](self, "caretIndexForLocation:inTextRanges:secondaryCaretIndex:", [objc_msgSend(a3 "firstObject")], a3, 0);
LABEL_13:
    v13 = v7;
    v23[3] = v7;
    goto LABEL_14;
  }

  if (self->_visualDirection == 2)
  {
    v8 = [(__NSTextSelectionLineFragmentInfo *)self _sortedLocations];
    v9 = -[__NSTextSelectionLineFragmentInfo _sortedLocationIndexForLocation:](self, "_sortedLocationIndexForLocation:", [objc_msgSend(a3 "firstObject")]);
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v23[3] = 0x7FFFFFFFFFFFFFFFLL;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v18 = __84____NSTextSelectionLineFragmentInfo_caretIndexForEdgeLocationInTextRanges_leftEdge___block_invoke;
      v19 = &unk_1E7265C58;
      v20 = &v22;
      v21 = v4;
      v10 = [v8 count];
      if (v9 < v10)
      {
        do
        {
          v11 = [v8 objectAtIndexedSubscript:v9];
          if ([objc_msgSend(objc_msgSend(a3 "lastObject")] == -1)
          {
            break;
          }

          v16 = 0x7FFFFFFFFFFFFFFFLL;
          v12 = [(__NSTextSelectionLineFragmentInfo *)self caretIndexForLocation:v11 inTextRanges:a3 secondaryCaretIndex:&v16];
          v18(v17, v12);
          v18(v17, v16);
          ++v9;
        }

        while (v10 != v9);
      }
    }
  }

  v13 = v23[3];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ((self->_visualDirection != 0) == v4)
    {
      v14 = [objc_msgSend(a3 "lastObject")];
    }

    else
    {
      v14 = [objc_msgSend(a3 "firstObject")];
    }

    v7 = [(__NSTextSelectionLineFragmentInfo *)self caretIndexForLocation:v14 inTextRanges:a3 secondaryCaretIndex:0];
    goto LABEL_13;
  }

LABEL_14:
  _Block_object_dispose(&v22, 8);
  return v13;
}

@end