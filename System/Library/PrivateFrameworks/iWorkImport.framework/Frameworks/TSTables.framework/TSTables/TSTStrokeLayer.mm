@interface TSTStrokeLayer
+ (id)strokeLayer;
- ($DE50B600744B7521845B4CEF3C5064D2)findWidthAndRangeAtIndex:(SEL)a3;
- ($DE50B600744B7521845B4CEF3C5064D2)nextWidthAndRange:(SEL)a3;
- (TSTStrokeLayer)initWithContext:(id)a3 columnOrRowIndex:(unsigned int)a4;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)findStrokeAndRangeAtIndex:(int64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)nextStrokeAndRange:(id)a3;
- (id)strokeLayerAtIndex:(unint64_t)a3;
- (id)strokeLayerModifiedByInsertingSpaceAt:(TSTSimpleRange)a3;
- (id)strokeLayerModifiedByRemovingRangeAt:(TSTSimpleRange)a3;
- (int)startingStrokeOrder;
- (int64_t)startingIndex;
- (void)enumerateStrokesInRange:(TSTSimpleRange)a3 usingBlock:(id)a4;
- (void)enumerateStrokesUsingBlock:(id)a3;
- (void)enumerateWidthsInRange:(TSTSimpleRange)a3 usingBlock:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)p_appendStroke:(id)a3 inRange:(TSTSimpleRange)a4 order:(int)a5;
- (void)p_flattenStrokeOrder;
- (void)p_insertSpaceAtRange:(TSTSimpleRange)a3;
- (void)p_invalidate;
- (void)p_invalidateRange:(TSTSimpleRange)a3;
- (void)p_mergeStrokeRunsAtPosition:(unint64_t)a3;
- (void)p_removeRange:(TSTSimpleRange)a3;
- (void)p_setStroke:(id)a3 inRange:(TSTSimpleRange)a4 order:(int)a5;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSTStrokeLayer

+ (id)strokeLayer
{
  v2 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_contextForTransientObjects(MEMORY[0x277D80878], v3, v4, v5, v6);
  v10 = objc_msgSend_initWithContext_columnOrRowIndex_(v2, v8, v7, 0, v9);

  return v10;
}

- (TSTStrokeLayer)initWithContext:(id)a3 columnOrRowIndex:(unsigned int)a4
{
  v6.receiver = self;
  v6.super_class = TSTStrokeLayer;
  result = [(TSTStrokeLayer *)&v6 initWithContext:a3];
  if (result)
  {
    result->_columnOrRowIndex = a4;
  }

  return result;
}

- (int64_t)startingIndex
{
  begin = self->_strokeRuns.__begin_;
  if (self->_strokeRuns.__end_ == begin)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return *(begin + 1);
  }
}

- (int)startingStrokeOrder
{
  begin = self->_strokeRuns.__begin_;
  if (self->_strokeRuns.__end_ == begin)
  {
    return 0;
  }

  else
  {
    return *(begin + 6);
  }
}

- (id)findStrokeAndRangeAtIndex:(int64_t)a3
{
  p_strokeRuns = &self->_strokeRuns;
  begin = self->_strokeRuns.__begin_;
  end = self->_strokeRuns.__end_;
  sub_2213FFC6C(v19, 0, a3, 1, 0);
  if (end != begin)
  {
    v7 = (end - begin) >> 5;
    do
    {
      v8 = v7 >> 1;
      v9 = begin + 32 * (v7 >> 1);
      v10 = *(v9 + 2) + *(v9 + 1);
      v11 = (v9 + 32);
      v7 += ~(v7 >> 1);
      if (v10 < v19[1])
      {
        begin = v11;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
    end = begin;
  }

  v13 = p_strokeRuns->__begin_;
  v14 = end - p_strokeRuns->__begin_;
  v15 = v14 >> 5;
  v16 = (p_strokeRuns->__end_ - p_strokeRuns->__begin_) >> 5;
  if (v14 >> 5 < v16 && *(v13 + v14 + 16) + *(v13 + v14 + 8) <= a3)
  {
    ++v15;
  }

  if (v15 >= v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = objc_msgSend_tokenWithStroke_range_order_andPosition_(TSTStrokeLayerToken, v12, *(v13 + 4 * v15), *(v13 + 4 * v15 + 1), *(v13 + 4 * v15 + 2), *(v13 + 8 * v15 + 6));
  }

  return v17;
}

- (id)nextStrokeAndRange:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUCheckedDynamicCast();
  v10 = objc_msgSend_position(v5, v6, v7, v8, v9);
  if (v5 && (begin = self->_strokeRuns.__begin_, v10 + 1 < ((self->_strokeRuns.__end_ - begin) >> 5)))
  {
    v13 = objc_msgSend_tokenWithStroke_range_order_andPosition_(TSTStrokeLayerToken, v11, *(begin + 4 * v10 + 4), *(begin + 4 * v10 + 5), *(begin + 4 * v10 + 6), *(begin + 8 * v10 + 14));
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- ($DE50B600744B7521845B4CEF3C5064D2)findWidthAndRangeAtIndex:(SEL)a3
{
  retstr->var1.length = 0;
  *&retstr->var2 = 0;
  retstr->var0 = -1.0;
  retstr->var1.origin = 0x7FFFFFFFFFFFFFFFLL;
  p_var1 = &retstr->var1;
  retstr->var3 = 0x7FFFFFFFFFFFFFFFLL;
  p_strokeRuns = &self->_strokeRuns;
  begin = self->_strokeRuns.__begin_;
  end = self->_strokeRuns.__end_;
  sub_2213FFC6C(v30, 0, a4, 1, 0);
  if (end != begin)
  {
    v10 = (end - begin) >> 5;
    do
    {
      v11 = v10 >> 1;
      v12 = begin + 32 * (v10 >> 1);
      v13 = *(v12 + 2) + *(v12 + 1);
      v14 = (v12 + 32);
      v10 += ~(v10 >> 1);
      if (v13 < v30[1])
      {
        begin = v14;
      }

      else
      {
        v10 = v11;
      }
    }

    while (v10);
    end = begin;
  }

  v20 = p_strokeRuns->__begin_;
  v21 = end - p_strokeRuns->__begin_;
  v22 = v21 >> 5;
  v23 = (p_strokeRuns->__end_ - p_strokeRuns->__begin_) >> 5;
  if (v21 >> 5 < v23 && *(v20 + v21 + 16) + *(v20 + v21 + 8) <= a4)
  {
    ++v22;
  }

  if (v22 < v23)
  {
    v24 = *(v20 + 4 * v22);
    objc_msgSend_width(v24, v16, v17, v18, v19);
    retstr->var0 = v25;
    *p_var1 = *(p_strokeRuns->__begin_ + 32 * v22 + 8);
    result = objc_msgSend_isPortalStroke(v24, v26, v27, v28, v29);
    retstr->var2 = result;
    retstr->var3 = v22;
  }

  return result;
}

- ($DE50B600744B7521845B4CEF3C5064D2)nextWidthAndRange:(SEL)a3
{
  retstr->var1.length = 0;
  *&retstr->var2 = 0;
  retstr->var0 = -1.0;
  retstr->var1.origin = 0x7FFFFFFFFFFFFFFFLL;
  retstr->var3 = 0x7FFFFFFFFFFFFFFFLL;
  if (a4->var1.origin != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = a4->var3 + 1;
    p_var2 = &self[1].var2;
    v9 = *&self[1].var2;
    if (v7 < (self[1].var3 - v9) >> 5)
    {
      v10 = *(v9 + 32 * v7);
      objc_msgSend_width(v10, a3, a4, v4, v5);
      retstr->var0 = v11;
      retstr->var1 = *(*p_var2 + 32 * v7 + 8);
      self = objc_msgSend_isPortalStroke(v10, v12, v13, v14, v15);
      retstr->var2 = self;
      retstr->var3 = v7;
    }
  }

  return self;
}

- (void)enumerateStrokesUsingBlock:(id)a3
{
  v4 = a3;
  v9 = 0;
  begin = self->_strokeRuns.__begin_;
  for (i = self->_strokeRuns.__end_; begin != i; begin = (begin + 32))
  {
    v7 = *begin;
    (*(v4 + 2))(v4, v7, *(begin + 1), *(begin + 2), *(begin + 6), &v9);
    v8 = v9;

    if (v8)
    {
      break;
    }
  }
}

- (void)enumerateStrokesInRange:(TSTSimpleRange)a3 usingBlock:(id)a4
{
  length = a3.length;
  origin = a3.origin;
  v7 = a4;
  v47 = 0;
  v11 = objc_msgSend_findStrokeAndRangeAtIndex_(self, v8, origin, v9, v10);
  if (v11)
  {
    v16 = origin + length;
    v46 = v11;
    v17 = v11;
    while (1)
    {
      v18 = objc_msgSend_range(v17, v12, v13, v14, v15);
      if (origin == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v18 != 0x7FFFFFFFFFFFFFFFLL && length && v19)
      {
        if (origin <= v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = origin;
        }

        v24 = &v19[v18];
        if (v16 < &v19[v18])
        {
          v24 = (origin + length);
        }

        if (v24 > v23 && (v47 & 1) == 0)
        {
          v25 = objc_msgSend_range(v17, v19, v20, v21, v22);
          if (origin <= v25)
          {
            v30 = v25;
          }

          else
          {
            v30 = origin;
          }

          v31 = &v26[v25];
          if (v16 < &v26[v25])
          {
            v31 = (origin + length);
          }

          v32 = v31 < v30;
          v33 = &v31[-v30];
          if (v32)
          {
            v30 = 0x7FFFFFFFFFFFFFFFLL;
            v33 = 0;
          }

          if (!v26)
          {
            v30 = 0x7FFFFFFFFFFFFFFFLL;
            v33 = 0;
          }

          v34 = v25 == 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v30;
          v35 = v25 == 0x7FFFFFFFFFFFFFFFLL ? 0 : v33;
          v36 = objc_msgSend_stroke(v17, v26, v27, v28, v29);
          v41 = objc_msgSend_order(v17, v37, v38, v39, v40);
          v7[2](v7, v36, v34, v35, v41, &v47);

          v45 = objc_msgSend_nextStrokeAndRange_(self, v42, v17, v43, v44);

          v17 = v45;
          if (v45)
          {
            continue;
          }
        }
      }

      goto LABEL_32;
    }

    v17 = v46;
LABEL_32:
  }
}

- (void)enumerateWidthsInRange:(TSTSimpleRange)a3 usingBlock:(id)a4
{
  length = a3.length;
  origin = a3.origin;
  v7 = a4;
  v27 = 0;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  objc_msgSend_findWidthAndRangeAtIndex_(self, v8, origin, v9, v10);
  v11 = 0;
  if (origin != 0x7FFFFFFFFFFFFFFFLL && length != 0)
  {
    v13 = origin + length;
    do
    {
      if (!v25)
      {
        break;
      }

      v14 = origin <= v11 ? v11 : origin;
      v15 = v25 + v11;
      if (v13 < v15)
      {
        v15 = v13;
      }

      if (v15 <= v14)
      {
        break;
      }

      if (v27)
      {
        break;
      }

      v7[2](v7, *&v24);
      v19[0] = v24;
      v19[1] = v25;
      v20 = v26;
      objc_msgSend_nextWidthAndRange_(self, v16, v19, v17, v18);
      v24 = v21;
      v25 = v22;
      v26 = v23;
      v11 = *(&v21 + 1);
    }

    while (*(&v21 + 1) != 0x7FFFFFFFFFFFFFFFLL);
  }
}

- (id)strokeLayerModifiedByInsertingSpaceAt:(TSTSimpleRange)a3
{
  length = a3.length;
  origin = a3.origin;
  v6 = objc_msgSend_mutableCopy(self, a2, a3.origin, a3.length, v3);
  objc_msgSend_insertSpaceAtRange_(v6, v7, origin, length, v8);

  return v6;
}

- (id)strokeLayerModifiedByRemovingRangeAt:(TSTSimpleRange)a3
{
  length = a3.length;
  origin = a3.origin;
  v6 = objc_msgSend_mutableCopy(self, a2, a3.origin, a3.length, v3);
  objc_msgSend_removeRange_(v6, v7, origin, length, v8);

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, a3, v7, v8);
  v14 = objc_msgSend_context(self, v10, v11, v12, v13);
  v18 = objc_msgSend_initWithContext_(v9, v15, v14, v16, v17);

  if (v18)
  {
    v23 = objc_msgSend_columnOrRowIndex(self, v19, v20, v21, v22);
    objc_msgSend_setColumnOrRowIndex_(v18, v24, v23, v25, v26);
    if (v18 != self)
    {
      sub_2213FFCEC(&v18->_strokeRuns, self->_strokeRuns.__begin_, self->_strokeRuns.__end_, (self->_strokeRuns.__end_ - self->_strokeRuns.__begin_) >> 5);
    }
  }

  return v18;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v6 = objc_msgSend_allocWithZone_(TSTMutableStrokeLayer, a2, a3, v3, v4);
  v11 = objc_msgSend_context(self, v7, v8, v9, v10);
  v15 = objc_msgSend_initWithContext_(v6, v12, v11, v13, v14);

  if (v15)
  {
    v20 = objc_msgSend_columnOrRowIndex(self, v16, v17, v18, v19);
    objc_msgSend_setColumnOrRowIndex_(v15, v21, v20, v22, v23);
    if (v15 != self)
    {
      sub_2213FFCEC(&v15->_strokeRuns, self->_strokeRuns.__begin_, self->_strokeRuns.__end_, (self->_strokeRuns.__end_ - self->_strokeRuns.__begin_) >> 5);
    }
  }

  return v15;
}

- (id)strokeLayerAtIndex:(unint64_t)a3
{
  if (a3)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTStrokeLayer strokeLayerAtIndex:]", v3, v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeLayer.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 338, 0, "should never call this with index > 0");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  return self;
}

- (void)p_appendStroke:(id)a3 inRange:(TSTSimpleRange)a4 order:(int)a5
{
  length = a4.length;
  origin = a4.origin;
  v9 = a3;
  if (length)
  {
    sub_2213FFC6C(v10, v9, origin, length, a5);
    sub_2213FD474(&self->_strokeRuns.__begin_, v10);
  }
}

- (void)p_setStroke:(id)a3 inRange:(TSTSimpleRange)a4 order:(int)a5
{
  length = a4.length;
  origin = a4.origin;
  v9 = a3;
  p_strokeRuns = &self->_strokeRuns;
  end = self->_strokeRuns.__end_;
  begin = self->_strokeRuns.__begin_;
  if (begin == end)
  {
    sub_2213FFC6C(v58, v9, origin, length, a5);
    sub_2213FD8F0(&self->_strokeRuns, begin, v58);
LABEL_36:

    goto LABEL_39;
  }

  sub_2213FFC6C(v58, v9, origin, length, a5);
  v13 = (end - begin) >> 5;
  do
  {
    v14 = v13 >> 1;
    v15 = begin + 32 * (v13 >> 1);
    v16 = *(v15 + 2) + *(v15 + 1);
    v17 = (v15 + 32);
    v13 += ~(v13 >> 1);
    if (v16 < v58[1])
    {
      begin = v17;
    }

    else
    {
      v13 = v14;
    }
  }

  while (v13);

  v18 = *p_strokeRuns;
  v19 = self->_strokeRuns.__end_;
  v20 = begin - *p_strokeRuns;
  v21 = v20 >> 5;
  v22 = v19 - *p_strokeRuns;
  if (v20 >> 5 < (v22 >> 5))
  {
    v23 = v18 + v20;
    v24 = *(v18 + v20 + 8);
    v25 = *(v23 + 16);
    if (v24 > origin || v25 + v24 - 1 < (length + origin - 1))
    {
      v28 = v24 == 0x7FFFFFFFFFFFFFFFLL || v25 == 0 || origin == 0x7FFFFFFFFFFFFFFFLL || length == 0;
      if (!v28 && ((v47 = v25 + v24, origin + length != v24) ? (v48 = v47 == origin) : (v48 = 1), v48 && *(v23 + 24) == a5 && (v49 = sub_2213FC7C4(*v23, v9), v50 = *p_strokeRuns + v20, v24 = *(v50 + 8), v49)))
      {
        v51 = *(v50 + 16);
        if (v24 >= origin)
        {
          v52 = origin;
        }

        else
        {
          v52 = *(v50 + 8);
        }

        v53 = v51 + v24;
        if (v51 + v24 <= (origin + length))
        {
          v53 = origin + length;
        }

        v54 = v53 - v52;
        v55 = v24 == 0x7FFFFFFFFFFFFFFFLL || v51 == 0;
        if (v55)
        {
          v56 = length;
        }

        else
        {
          v56 = v54;
        }

        if (v55)
        {
          v57 = origin;
        }

        else
        {
          v57 = v52;
        }

        *(v50 + 8) = v57;
        *(v50 + 16) = v56;
      }

      else if (origin >= v24)
      {
        sub_2213FFC6C(v58, v9, origin, length, a5);
        sub_2213FD8F0(&self->_strokeRuns, begin + 32, v58);

        ++v21;
      }

      else
      {
        sub_2213FFC6C(v58, v9, origin, length, a5);
        sub_2213FD8F0(&self->_strokeRuns, begin, v58);
      }

      objc_msgSend_p_mergeStrokeRunsAtPosition_(self, v29, v21, v30, v31);
    }

    goto LABEL_39;
  }

  v32 = (v22 >> 5) - 1;
  v33 = v18 + 32 * v32;
  v34 = *(v33 + 8);
  v35 = *(v33 + 16);
  v38 = v34 == 0x7FFFFFFFFFFFFFFFLL || v35 == 0 || origin == 0x7FFFFFFFFFFFFFFFLL || length == 0;
  if (v38 || ((v39 = v35 + v34, v40 = origin + length, origin + length != v34) ? (v41 = v39 == origin) : (v41 = 1), !v41 || *(v33 + 24) != a5))
  {
LABEL_35:
    sub_2213FFC6C(v58, v9, origin, length, a5);
    sub_2213FD8F0(p_strokeRuns, v19, v58);
    goto LABEL_36;
  }

  if ((sub_2213FC7C4(*v33, v9) & 1) == 0)
  {
    v19 = p_strokeRuns[1];
    goto LABEL_35;
  }

  v42 = *p_strokeRuns + 32 * v32;
  v43 = *(v42 + 8);
  v44 = *(v42 + 16);
  if (v43 != 0x7FFFFFFFFFFFFFFFLL && v44 != 0)
  {
    if (v43 < origin)
    {
      origin = *(v42 + 8);
    }

    v46 = v44 + v43;
    if (v46 <= v40)
    {
      v46 = v40;
    }

    length = v46 - origin;
  }

  *(v42 + 8) = origin;
  *(v42 + 16) = length;
LABEL_39:
}

- (void)p_invalidate
{
  p_strokeRuns = &self->_strokeRuns;
  begin = self->_strokeRuns.__begin_;
  for (i = self->_strokeRuns.__end_; i != begin; i = (i - 32))
  {
    v5 = *(i - 4);
  }

  p_strokeRuns->__end_ = begin;
}

- (void)p_invalidateRange:(TSTSimpleRange)a3
{
  length = a3.length;
  origin = a3.origin;
  p_strokeRuns = &self->_strokeRuns;
  begin = self->_strokeRuns.__begin_;
  end = self->_strokeRuns.__end_;
  sub_2213FFC6C(v54, 0, a3.origin, a3.length, 0);
  if (end != begin)
  {
    v8 = (end - begin) >> 5;
    do
    {
      v9 = v8 >> 1;
      v10 = begin + 32 * (v8 >> 1);
      v11 = *(v10 + 2) + *(v10 + 1);
      v12 = (v10 + 32);
      v8 += ~(v8 >> 1);
      if (v11 < v54[1])
      {
        begin = v12;
      }

      else
      {
        v8 = v9;
      }
    }

    while (v8);
    end = begin;
  }

  v13 = *p_strokeRuns;
  v14 = p_strokeRuns[1];
  v15 = end - *p_strokeRuns;
  if (v15 >= (v14 - *p_strokeRuns))
  {
    return;
  }

  v16 = v15 >> 5;
  v53 = origin + length;
  v17 = origin + length - 1;
  while (2)
  {
    v18 = 32 * v16;
    while (1)
    {
      v19 = v13 + 32 * v16;
      v20 = *(v19 + 8);
      v21 = *(v19 + 16);
      v22 = v21 + v20;
      v23 = v21 + v20 - 1;
      if (origin > v20)
      {
        v30 = (v19 + 16);
        v31 = 1;
LABEL_27:
        v33 = length != 0;
        goto LABEL_30;
      }

      if (v17 < v23)
      {
        break;
      }

      v24 = v13 + v18;
      v25 = v24 + 32;
      if (v24 + 32 == v14)
      {
        v28 = v14;
        v14 = v24;
      }

      else
      {
        do
        {
          v26 = *v25;
          *v25 = 0;
          v27 = *(v25 - 32);
          *(v25 - 32) = v26;

          *(v25 - 24) = *(v25 + 8);
          *(v25 - 8) = *(v25 + 24);
          v25 += 32;
        }

        while (v25 != v14);
        v28 = p_strokeRuns[1];
        v14 = v25 - 32;
      }

      while (v28 != v14)
      {
        v29 = *(v28 - 32);
        v28 -= 32;
      }

      p_strokeRuns[1] = v14;
      v13 = *p_strokeRuns;
      if (v16 >= (v14 - *p_strokeRuns) >> 5)
      {
        return;
      }
    }

    v30 = (v19 + 16);
    v31 = v20 != 0x7FFFFFFFFFFFFFFFLL;
    if (v20 == 0x7FFFFFFFFFFFFFFFLL || length == 0)
    {
      goto LABEL_27;
    }

    if (v17 >= v20)
    {
      v52 = 0x7FFFFFFFFFFFFFFFLL;
      if (v53 >= origin)
      {
        v52 = origin + length;
      }

      *(v19 + 8) = v52;
      *(v19 + 16) = v22 - v52;
      return;
    }

    v31 = 1;
    v33 = 1;
LABEL_30:
    if (origin > v23 || v23 == 0x7FFFFFFFFFFFFFFFLL || !v33)
    {
      if (origin != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_41;
      }

LABEL_54:
      if (v17 < v20)
      {
        return;
      }
    }

    else
    {
      if (v17 < v23)
      {
LABEL_41:
        if (v20 != 0x7FFFFFFFFFFFFFFFLL && length != 0 && v21 != 0)
        {
          v38 = origin - v20;
          if (origin <= v20)
          {
            v39 = *(v19 + 8);
          }

          else
          {
            v39 = origin;
          }

          v40 = origin + length;
          v41 = v53 - v22;
          if (v53 >= v22)
          {
            v40 = v22;
          }

          if (v40 > v39)
          {
            v42 = v20 - origin;
            if (v20 <= origin)
            {
              v43 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v43 = origin;
            }

            if (v20 <= origin)
            {
              v42 = 0;
            }

            if (origin <= v20)
            {
              v20 = v43;
              v38 = v42;
            }

            if (v31)
            {
              v44 = v38;
            }

            else
            {
              v20 = 0x7FFFFFFFFFFFFFFFLL;
              v44 = 0;
            }

            v45 = v22 - v53;
            if (v22 <= v53)
            {
              v46 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v46 = origin + length;
            }

            if (v22 <= v53)
            {
              v45 = 0;
            }

            if (v22 >= v53)
            {
              v41 = v45;
            }

            else
            {
              v46 = v22;
            }

            v47 = v22 == 0x7FFFFFFFFFFFFFFFLL;
            if (v22 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v48 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v48 = v46;
            }

            if (v47)
            {
              v41 = 0;
            }

            if (v53 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v49 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v49 = v48;
            }

            if (v53 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v50 = 0;
            }

            else
            {
              v50 = v41;
            }

            *(v19 + 8) = v20;
            *(v19 + 16) = v44;
            v51 = v18 + v13;
            sub_2213FFC6C(v54, *v19, v49, v50, *(v19 + 24));
            sub_2213FD8F0(p_strokeRuns, v51 + 32, v54);

            return;
          }
        }

        goto LABEL_54;
      }

      *v30 = origin - v20;
    }

    if (++v16 < (v14 - v13) >> 5)
    {
      continue;
    }

    break;
  }
}

- (void)p_mergeStrokeRunsAtPosition:(unint64_t)a3
{
  v3 = a3 + 1;
  p_strokeRuns = &self->_strokeRuns;
  begin = self->_strokeRuns.__begin_;
  if (a3 + 1 < (self->_strokeRuns.__end_ - begin) >> 5)
  {
    v7 = begin + 32 * a3;
    v8 = begin + 32 * v3;
    v9 = *(v7 + 2);
    v10 = *(v7 + 1);
    v11 = *(v8 + 2);
    v12 = *(v8 + 1);
    if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(v7 + 8), xmmword_2217E1880), vceqq_s64(*(v8 + 8), xmmword_2217E1880)))) & 1) == 0 && (v9 + v10 == v12 || v11 + v12 == v10) && *(v7 + 6) == *(v8 + 6))
    {
      v14 = sub_2213FC7C4(*v7, *v8);
      begin = p_strokeRuns->__begin_;
      v15 = p_strokeRuns->__begin_ + 32 * a3;
      v10 = *(v15 + 8);
      v9 = *(v15 + 16);
      v16 = p_strokeRuns->__begin_ + 32 * v3;
      v12 = *(v16 + 8);
      v11 = *(v16 + 16);
      if (v14)
      {
        goto LABEL_26;
      }
    }

    v17 = v10 == 0x7FFFFFFFFFFFFFFFLL || v12 == 0x7FFFFFFFFFFFFFFFLL;
    v18 = v17 || v9 == 0;
    if (!v18 && v11 != 0)
    {
      if (v10 <= v12)
      {
        v20 = v12;
      }

      else
      {
        v20 = v10;
      }

      v21 = v9 + v10;
      if (v9 + v10 >= v11 + v12)
      {
        v21 = v11 + v12;
      }

      if (v21 > v20)
      {
LABEL_26:
        v22 = begin + 32 * a3;
        if (v10 >= v12)
        {
          v23 = v12;
        }

        else
        {
          v23 = v10;
        }

        v24 = v9 + v10;
        if (v9 + v10 <= v11 + v12)
        {
          v24 = v11 + v12;
        }

        v25 = v24 - v23;
        if (v12 == 0x7FFFFFFFFFFFFFFFLL || v11 == 0)
        {
          v23 = v10;
          v25 = v9;
        }

        v27 = v10 == 0x7FFFFFFFFFFFFFFFLL || v9 == 0;
        if (v27)
        {
          v28 = v12;
        }

        else
        {
          v28 = v23;
        }

        if (v27)
        {
          v29 = v11;
        }

        else
        {
          v29 = v25;
        }

        *(v22 + 1) = v28;
        *(v22 + 2) = v29;
        v30 = (begin + 32 * v3);
        end = p_strokeRuns->__end_;
        if ((v30 + 32) != end)
        {
          v32 = v22 + 40;
          do
          {
            v33 = *(v32 + 3);
            *(v32 + 3) = 0;
            v34 = *(v32 - 1);
            *(v32 - 1) = v33;

            v35 = v32 + 32;
            *v32 = *(v32 + 2);
            *(v32 + 4) = *(v32 + 12);
            v36 = (v32 + 56);
            v32 += 32;
          }

          while (v36 != end);
          end = p_strokeRuns->__end_;
          v30 = (v35 - 8);
        }

        while (end != v30)
        {
          v37 = *(end - 4);
          end = (end - 32);
        }

        p_strokeRuns->__end_ = v30;
      }
    }
  }
}

- (void)p_insertSpaceAtRange:(TSTSimpleRange)a3
{
  length = a3.length;
  origin = a3.origin;
  p_strokeRuns = &self->_strokeRuns;
  begin = self->_strokeRuns.__begin_;
  end = self->_strokeRuns.__end_;
  sub_2213FFC6C(&v37, 0, a3.origin, a3.length, 0);
  if (end != begin)
  {
    v8 = (end - begin) >> 5;
    do
    {
      v9 = v8 >> 1;
      v10 = begin + 32 * (v8 >> 1);
      v11 = *(v10 + 2) + *(v10 + 1);
      v12 = (v10 + 32);
      v8 += ~(v8 >> 1);
      if (v11 < v38)
      {
        begin = v12;
      }

      else
      {
        v8 = v9;
      }
    }

    while (v8);
    end = begin;
  }

  v14 = *p_strokeRuns;
  v13 = p_strokeRuns[1];
  v15 = end - *p_strokeRuns;
  v16 = v15 >> 5;
  v17 = (v13 - *p_strokeRuns) >> 5;
  if (v15 >> 5 < v17 && *(v14 + v15 + 16) + *(v14 + v15 + 8) <= origin)
  {
    ++v16;
  }

  if (v16 < v17)
  {
    v18 = v14 + 32 * v16;
    v20 = v18 + 8;
    v19 = *(v18 + 8);
    if (v19 < origin && origin != 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = *(v18 + 16);
      if (v21)
      {
        if (v19 + v21 - 1 >= origin)
        {
          v37 = *v18;
          v22 = *(v20 + 16);
          v38 = *v20;
          v39 = v22;
          sub_2213FE164(p_strokeRuns, *p_strokeRuns + 32 * v16, &v37);
          v23 = *p_strokeRuns;
          v24 = *p_strokeRuns + 32 * v16;
          v25 = *(v24 + 8);
          v26 = *(v24 + 16);
          v27 = v25 - origin;
          if (v25 <= origin)
          {
            v28 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = origin;
          }

          if (v25 <= origin)
          {
            v27 = 0;
          }

          if (v25 < origin)
          {
            v28 = *(v24 + 8);
            v27 = origin - v25;
          }

          if (v25 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v28 = 0x7FFFFFFFFFFFFFFFLL;
            v27 = 0;
          }

          *(v24 + 8) = v28;
          *(v24 + 16) = v27;
          ++v16;
          v29 = v26 + v25;
          v30 = __OFSUB__(origin, v26 + v25);
          v31 = origin - (v26 + v25);
          if ((v31 < 0) ^ v30 | (v31 == 0))
          {
            v32 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v32 = v29;
          }

          if ((v31 < 0) ^ v30 | (v31 == 0))
          {
            v31 = 0;
          }

          if (origin < v29)
          {
            v32 = origin;
            v31 = v29 - origin;
          }

          v33 = v29 == 0x7FFFFFFFFFFFFFFFLL;
          if (v29 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v34 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v32;
          }

          if (v33)
          {
            v31 = 0;
          }

          v35 = v23 + 32 * v16;
          *(v35 + 8) = v34;
          *(v35 + 16) = v31;

          v14 = *p_strokeRuns;
          v13 = p_strokeRuns[1];
        }
      }
    }

    for (i = v14 + 32 * v16; i < v13; i += 32)
    {
      *(i + 8) += length;
    }
  }
}

- (void)p_removeRange:(TSTSimpleRange)a3
{
  length = a3.length;
  origin = a3.origin;
  p_strokeRuns = &self->_strokeRuns;
  begin = self->_strokeRuns.__begin_;
  end = self->_strokeRuns.__end_;
  sub_2213FFC6C(v40, 0, a3.origin, a3.length, 0);
  if (end != begin)
  {
    v8 = (end - begin) >> 5;
    do
    {
      v9 = v8 >> 1;
      v10 = begin + 32 * (v8 >> 1);
      v11 = *(v10 + 2) + *(v10 + 1);
      v12 = (v10 + 32);
      v8 += ~(v8 >> 1);
      if (v11 < v40[1])
      {
        begin = v12;
      }

      else
      {
        v8 = v9;
      }
    }

    while (v8);
    end = begin;
  }

  v13 = p_strokeRuns->__begin_;
  v14 = p_strokeRuns->__end_;
  v15 = end - p_strokeRuns->__begin_;
  v16 = v15 >> 5;
  v17 = (v14 - p_strokeRuns->__begin_) >> 5;
  if (v15 >> 5 < v17 && *(v13 + v15 + 16) + *(v13 + v15 + 8) <= origin)
  {
    ++v16;
  }

  v18 = v13 + 32 * v16;
  if (v16 < v17 && v14 > v18)
  {
    v20 = origin + length;
    v21 = origin + length - 1;
    do
    {
      v22 = *(v18 + 1);
      v23 = *(v18 + 2);
      v24 = v23 + v22;
      if (origin <= v22)
      {
        if (v21 >= v24 - 1)
        {
          v29 = v18 + 32;
          if (v18 + 32 == v14)
          {
            v32 = v14;
            v14 = v18;
          }

          else
          {
            do
            {
              v30 = *v29;
              *v29 = 0;
              v31 = *(v29 - 4);
              *(v29 - 4) = v30;

              *(v29 - 24) = *(v29 + 8);
              *(v29 - 2) = *(v29 + 6);
              v29 += 32;
            }

            while (v29 != v14);
            v32 = p_strokeRuns->__end_;
            v14 = (v29 - 32);
          }

          while (v32 != v14)
          {
            v39 = *(v32 - 4);
            v32 = (v32 - 32);
          }

          p_strokeRuns->__end_ = v14;
          continue;
        }
      }

      else if (v20 >= v24)
      {
        if (origin == 0x7FFFFFFFFFFFFFFFLL)
        {
          v25 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = *(v18 + 1);
        }

        if (origin == 0x7FFFFFFFFFFFFFFFLL)
        {
          v26 = 0;
        }

        else
        {
          v26 = origin - v22;
        }

        *(v18 + 1) = v25;
        *(v18 + 2) = v26;
        goto LABEL_71;
      }

      if (origin >= v22)
      {
        if (v24 - 1 >= v21)
        {
          *(v18 + 2) = v23 - length;
          goto LABEL_71;
        }

        if (origin != 0x7FFFFFFFFFFFFFFFLL && v22 != 0x7FFFFFFFFFFFFFFFLL && length && v23)
        {
LABEL_45:
          if (origin <= v22)
          {
            v33 = *(v18 + 1);
          }

          else
          {
            v33 = origin;
          }

          if (v20 >= v24)
          {
            v34 = v24;
          }

          else
          {
            v34 = origin + length;
          }

          if (v34 > v33)
          {
            v35 = 0x7FFFFFFFFFFFFFFFLL;
            if (v20 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v38 = 0;
            }

            else
            {
              v36 = v20 - v24;
              if (v20 <= v24)
              {
                v37 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v37 = v24;
              }

              if (v20 <= v24)
              {
                v36 = 0;
              }

              if (v20 < v24)
              {
                v37 = origin + length;
                v36 = v24 - v20;
              }

              if (v24 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v38 = 0;
              }

              else
              {
                v35 = v37;
                v38 = v36;
              }
            }

            *(v18 + 1) = v35 - length;
            *(v18 + 2) = v38;
            goto LABEL_71;
          }
        }
      }

      else if (v22 != 0x7FFFFFFFFFFFFFFFLL && length != 0 && v23 != 0)
      {
        goto LABEL_45;
      }

      *(v18 + 1) = v22 - length;
LABEL_71:
      v18 += 32;
    }

    while (v18 < v14);
  }
}

- (void)p_flattenStrokeOrder
{
  begin = self->_strokeRuns.__begin_;
  end = self->_strokeRuns.__end_;
  if (begin != end)
  {
    v4 = 0;
    v5 = (end - begin - 32) >> 5;
    v6 = vdupq_n_s64(v5);
    v7 = (begin + 88);
    do
    {
      v8 = vdupq_n_s64(v4);
      v9 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_2217E0F60)));
      if (vuzp1_s16(v9, *v6.i8).u8[0])
      {
        *(v7 - 16) = 1;
      }

      if (vuzp1_s16(v9, *&v6).i8[2])
      {
        *(v7 - 8) = 1;
      }

      if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_2217E0F70)))).i32[1])
      {
        *v7 = 1;
        v7[8] = 1;
      }

      v4 += 4;
      v7 += 32;
    }

    while (((v5 + 4) & 0xFFFFFFFFFFFFFFCLL) != v4);
  }
}

- (void)loadFromUnarchiver:(id)a3
{
  v15 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v15, v4, off_2812E4498[94], v5, v6);

  if (*(v7 + 16))
  {
    self->_columnOrRowIndex = *(v7 + 48);
  }

  if (*(v7 + 32) >= 1)
  {
    v10 = 0;
    v11 = MEMORY[0x277D804A0];
    do
    {
      v12 = *(*(v7 + 40) + 8 * v10 + 8);
      if (*(v12 + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, *(v12 + 24), v15, v9);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v8, v11, v15, v9);
      }
      v13 = ;
      objc_msgSend_p_appendStroke_inRange_order_(self, v14, v13, *(v12 + 32), *(v12 + 36), *(v12 + 40));

      ++v10;
    }

    while (v10 < *(v7 + 32));
  }
}

- (void)saveToArchiver:(id)a3
{
  v27 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v27, v4, sub_2214005C8, off_2812E4498[94], v5);

  v11 = objc_msgSend_columnOrRowIndex(self, v7, v8, v9, v10);
  *(v6 + 16) |= 1u;
  *(v6 + 48) = v11;
  begin = self->_strokeRuns.__begin_;
  end = self->_strokeRuns.__end_;
  while (begin != end)
  {
    v16 = *begin;
    v28 = *(begin + 8);
    v17 = *(begin + 6);
    v18 = *(v6 + 40);
    if (!v18)
    {
      goto LABEL_8;
    }

    v19 = *(v6 + 32);
    v20 = *v18;
    if (v19 < *v18)
    {
      *(v6 + 32) = v19 + 1;
      v21 = *&v18[2 * v19 + 2];
      goto LABEL_10;
    }

    if (v20 == *(v6 + 36))
    {
LABEL_8:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 24));
      v18 = *(v6 + 40);
      v20 = *v18;
    }

    *v18 = v20 + 1;
    v21 = google::protobuf::Arena::CreateMaybeMessage<TST::StrokeLayerArchive_StrokeRunArchive>(*(v6 + 24));
    v22 = *(v6 + 32);
    v23 = *(v6 + 40) + 8 * v22;
    *(v6 + 32) = v22 + 1;
    *(v23 + 8) = v21;
LABEL_10:
    v24 = v21[2].i32[0];
    v21[4] = vmovn_s64(v28);
    v21[5].i32[0] = v17;
    v21[2].i32[0] = v24 | 0xF;
    v25 = v21[3];
    if (!v25)
    {
      v26 = v21[1];
      if (v26.i8[0])
      {
        v26 = *(*&v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = MEMORY[0x223DA0290](*&v26);
      v21[3] = v25;
    }

    objc_msgSend_saveToArchive_archiver_(v16, v14, v25, v27, v15);

    begin = (begin + 32);
  }
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 8) = 0;
  return self;
}

@end