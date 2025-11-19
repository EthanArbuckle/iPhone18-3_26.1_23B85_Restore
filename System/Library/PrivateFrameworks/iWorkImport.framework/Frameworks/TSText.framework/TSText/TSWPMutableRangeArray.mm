@interface TSWPMutableRangeArray
- (_NSRange)replacedTextAtRange:(_NSRange)a3 delta:(int64_t)a4;
- (void)addRange:(_NSRange)a3;
- (void)intersectWithRanges:(id)a3;
- (void)removeRange:(_NSRange)a3;
- (void)removeRangesInRange:(_NSRange)a3;
- (void)subtract:(id)a3;
- (void)unionWith:(id)a3;
- (void)updateForTextReplacementInRange:(_NSRange)a3 delta:(int64_t)a4;
- (void)xor:(id)a3;
@end

@implementation TSWPMutableRangeArray

- (void)removeRangesInRange:(_NSRange)a3
{
  if (a3.length)
  {
    begin = self->super._rangeVector.__begin_;
    end = self->super._rangeVector.__end_;
    v6 = &begin[a3.location];
    v7 = &v6[a3.length];
    v8 = end - v7;
    if (end != v7)
    {
      memmove(&begin[a3.location], v7, end - v7);
    }

    self->super._rangeVector.__end_ = (v6 + v8);
  }
}

- (void)addRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v62 = a3;
  if (TSUAssertLegalRange())
  {
    v9 = *MEMORY[0x277D81490];
    v8 = *(MEMORY[0x277D81490] + 8);
    if ((self->super._rangeVector.__end_ != self->super._rangeVector.__begin_ || location != v9 || length != v8) && location == v9 && length == v8)
    {
      v30 = MEMORY[0x277D81150];
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPMutableRangeArray addRange:]");
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRangeArray.mm");
      v64.location = location;
      v64.length = length;
      v34 = NSStringFromRange(v64);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v35, v31, v33, 549, 0, "Bad range %@", v34);

      v38 = MEMORY[0x277D81150];

      objc_msgSend_logBacktraceThrottled(v38, v36, v37);
    }

    else
    {
      if (!objc_msgSend_rangeCount(self, v6, v7))
      {
        sub_276D20ABC(&self->super._rangeVector, &v62);
        return;
      }

      if (length)
      {
        v61 = v62;
        begin = self->super._rangeVector.__begin_;
        end = self->super._rangeVector.__end_;
        v17 = v62.length;
        v16 = v62.location;
        if (end == begin)
        {
          v60 = 0;
          v25 = self->super._rangeVector.__end_;
          v19 = v25;
        }

        else
        {
          v18 = end - begin;
          v19 = self->super._rangeVector.__begin_;
          do
          {
            v20 = v18 >> 1;
            v21 = &v19[v18 >> 1];
            v23 = v21->location;
            v22 = v21 + 1;
            v18 += ~(v18 >> 1);
            if (v23 < v62.location)
            {
              v19 = v22;
            }

            else
            {
              v18 = v20;
            }
          }

          while (v18);
          if (end == v19)
          {
            v60 = 0;
            v25 = self->super._rangeVector.__end_;
          }

          else
          {
            v24 = end - v19;
            v25 = v19;
            do
            {
              v26 = v24 >> 1;
              v27 = &v25[v24 >> 1];
              v29 = v27->location;
              v28 = v27 + 1;
              v24 += ~(v24 >> 1);
              if (v29 < v62.length + v62.location)
              {
                v25 = v28;
              }

              else
              {
                v24 = v26;
              }
            }

            while (v24);
            if (TSUIntersectionRangeWithEdge() == 0x7FFFFFFFFFFFFFFFLL)
            {
              v60 = 0;
            }

            else
            {
              v39 = NSUnionRange(v62, *v19);
              v16 = v39.location;
              v17 = v39.length;
              v61 = v39;
              v60 = 1;
            }
          }
        }

        if (v19 == begin)
        {
          v19 = begin;
        }

        else if (TSUIntersectionRangeWithEdge() != 0x7FFFFFFFFFFFFFFFLL)
        {
          v67 = v19[-1];
          --v19;
          v65.location = v16;
          v65.length = v17;
          v40 = NSUnionRange(v65, v67);
          v16 = v40.location;
          v17 = v40.length;
          v61 = v40;
          v60 = 1;
        }

        v41 = v25 != begin && v25 == end;
        v42 = 0xFFFFFFFFFFFFFFFLL;
        if (!v41)
        {
          v42 = 0;
        }

        v43 = &v25[v42];
        if (&v25[v42] == end || TSUIntersectionRangeWithEdge() == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ((v60 & 1) == 0)
          {
LABEL_64:
            sub_276E163B0(&self->super._rangeVector.__begin_, v19, &v61);
            if ((objc_msgSend_containsRange_(self, v51, location, length) & 1) == 0)
            {
              v53 = MEMORY[0x277D81150];
              v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "[TSWPMutableRangeArray addRange:]");
              v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRangeArray.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v57, v54, v56, 610, 0, "addRange failure");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59);
            }

            return;
          }
        }

        else
        {
          v68 = *v43++;
          v66.location = v16;
          v66.length = v17;
          v61 = NSUnionRange(v66, v68);
        }

        if (v19 >= v43)
        {
          if (v43 < v19)
          {
            v48 = self->super._rangeVector.__end_;
            v49 = v48 - v19;
            if (v48 != v19)
            {
              memmove(v43, v19, v48 - v19);
            }

            self->super._rangeVector.__end_ = (v43 + v49);
            v19 = v43;
            goto LABEL_64;
          }

          if (v19 == end)
          {
            v19 = end;
            goto LABEL_64;
          }

          v47 = v19 + 1;
          v50 = self->super._rangeVector.__end_;
          v45 = v50 - &v19[1];
          if (v50 != &v19[1])
          {
            v46 = v19;
            goto LABEL_62;
          }
        }

        else
        {
          v44 = self->super._rangeVector.__end_;
          v45 = v44 - v43;
          if (v44 != v43)
          {
            v46 = v19;
            v47 = v43;
LABEL_62:
            memmove(v46, v47, v45);
          }
        }

        self->super._rangeVector.__end_ = (v19 + v45);
        goto LABEL_64;
      }
    }
  }
}

- (void)removeRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (!TSUAssertLegalRange() || !length)
  {
    return;
  }

  begin = self->super._rangeVector.__begin_;
  end = self->super._rangeVector.__end_;
  if (end == begin)
  {
    v15 = location + length;
    v10 = self->super._rangeVector.__end_;
    v21 = v10;
    v16 = v10;
  }

  else
  {
    v8 = end - begin;
    v9 = v8;
    v10 = self->super._rangeVector.__begin_;
    do
    {
      v11 = v9 >> 1;
      v12 = &v10[v9 >> 1];
      v14 = v12->location;
      v13 = v12 + 1;
      v9 += ~(v9 >> 1);
      if (v14 > location)
      {
        v9 = v11;
      }

      else
      {
        v10 = v13;
      }
    }

    while (v9);
    v15 = location + length;
    v16 = self->super._rangeVector.__begin_;
    do
    {
      v17 = v8 >> 1;
      v18 = &v16[v8 >> 1];
      v20 = v18->location;
      v19 = v18 + 1;
      v8 += ~(v8 >> 1);
      if (v20 < v15)
      {
        v16 = v19;
      }

      else
      {
        v8 = v17;
      }
    }

    while (v8);
    v21 = v10;
  }

  if (v10 != begin)
  {
    v22 = v21[-1].n128_u64[0];
    v23 = location - v22;
    if (location >= v22)
    {
      v24 = v21[-1].n128_u64[1];
      if (v23 < v24)
      {
        if (location == v22)
        {
          --v10;
        }

        else
        {
          v21[-1].n128_u64[1] = v23;
        }

        if (v15 >= v22 && v15 - v22 < v24)
        {
          v25 = v24 + v22;
          v26 = v15 >= v24 + v22;
          if (v15 <= v24 + v22)
          {
            v27 = v24 + v22;
          }

          else
          {
            v27 = v15;
          }

          if (!v26)
          {
            v25 = v15;
          }

          v38.location = v25;
          v38.length = v27 - v25;
          if (location == v22)
          {
            *v10 = v38;
          }

          else
          {
            sub_276E163B0(&self->super._rangeVector.__begin_, v21, &v38);
          }

          return;
        }
      }
    }

    begin = v10;
  }

  if (end != v16)
  {
    v28 = v16->length;
    if (v15 > v16->location && v15 - v16->location < v28)
    {
      v30 = v28 + v16->location;
      if (v15 <= v30)
      {
        v31 = v28 + v16->location;
      }

      else
      {
        v31 = v15;
      }

      if (v15 < v30)
      {
        v30 = v15;
      }

      v16->location = v30;
      v16->length = v31 - v30;
    }
  }

  if (begin != v16)
  {
    v32 = v16[-1].location;
    v33 = v16[-1].length;
    if (v15 >= v32 && v15 - v32 < v33)
    {
      v35 = v33 + v32;
      if (v15 <= v35)
      {
        v36 = v35;
      }

      else
      {
        v36 = v15;
      }

      if (v15 < v35)
      {
        v35 = v15;
      }

      v16[-1].location = v35;
      v16[-1].length = v36 - v35;
      --v16;
    }

    if (begin != v16)
    {
      v37 = end - v16;
      if (end != v16)
      {
        memmove(begin, v16, end - v16);
      }

      self->super._rangeVector.__end_ = (begin + v37);
    }
  }
}

- (_NSRange)replacedTextAtRange:(_NSRange)a3 delta:(int64_t)a4
{
  length = a3.length;
  location = a3.location;
  v8 = objc_msgSend_rangeCount(self, a2, a3.location);
  if (v8)
  {
    v10 = v8;
    v11 = 0;
    v12 = length - a4 + location;
    v40 = -a4;
    v41 = a4;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    v15 = a4;
    while (1)
    {
      begin = self->super._rangeVector.__begin_;
      v17 = &begin[v11];
      v19 = v17->location;
      v18 = v17->length;
      v20 = v18 + v17->location;
      if (v20 >= location)
      {
        if (location > v19)
        {
          ++v11;
          if (v12 >= v20)
          {
            v17->length = location - v19;
          }

          else
          {
            v17->length = v18 + v15;
          }

          goto LABEL_5;
        }

        if (v12 >= v20)
        {
          v9 = v17 + 1;
          end = self->super._rangeVector.__end_;
          v24 = end - &v17[1];
          if (end != &v17[1])
          {
            v25 = v13;
            v26 = v14;
            memmove(v17, v9, end - &v17[1]);
            v14 = v26;
            v13 = v25;
            v15 = v41;
          }

          self->super._rangeVector.__end_ = (v17 + v24);
          --v10;
          if (v13 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v14 = v11 + 1;
          }

          else
          {
            ++v14;
          }

          if (v13 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = v11;
          }

          goto LABEL_5;
        }

        if (v12 <= v19)
        {
          if (v15 < 0 && v19 < v40)
          {
            v38 = v14;
            v39 = v13;
            v27 = MEMORY[0x277D81150];
            v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPMutableRangeArray replacedTextAtRange:delta:]");
            v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRangeArray.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 713, 0, "bad location");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
            begin = self->super._rangeVector.__begin_;
            v15 = v41;
            v14 = v38;
            v13 = v39;
          }

          v21 = v19 + v15;
        }

        else
        {
          v21 = v20 + v15;
          if (location <= v21)
          {
            v22 = v21;
          }

          else
          {
            v22 = location;
          }

          if (location < v21)
          {
            v21 = location;
          }

          v18 = v22 - v21;
        }

        v34 = &begin[v11];
        v34->location = v21;
        v34->length = v18;
      }

      ++v11;
LABEL_5:
      if (v11 >= v10)
      {
        goto LABEL_32;
      }
    }
  }

  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_32:
  if (v13 <= v14)
  {
    v35 = v14;
  }

  else
  {
    v35 = v13;
  }

  if (v13 >= v14)
  {
    v36 = v14;
  }

  else
  {
    v36 = v13;
  }

  v37 = v35 - v36;
  result.length = v37;
  result.location = v36;
  return result;
}

- (void)updateForTextReplacementInRange:(_NSRange)a3 delta:(int64_t)a4
{
  length = a3.length;
  location = a3.location;
  v44 = -a4;
  if (a4 < 0 && a3.length < -a4)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPMutableRangeArray updateForTextReplacementInRange:delta:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRangeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 740, 0, "Invalid delta to range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  else if (!a4)
  {
    return;
  }

  v15 = objc_msgSend_rangeCount(self, a2, a3.location);
  if (v15)
  {
    v17 = v15;
    v18 = 0;
    v43 = location + length;
    v45 = length;
    do
    {
      v46.location = objc_msgSend_rangeAtIndex_(self, v16, v18);
      v19 = v46.location;
      v20 = v46.length;
      v47.location = location;
      v47.length = length;
      v21 = NSIntersectionRange(v46, v47);
      v16 = v21.length;
      if (v21.length && (v19 > location || v19 + v20 < v43))
      {
        v22 = MEMORY[0x277D81150];
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21.length, "[TSWPMutableRangeArray updateForTextReplacementInRange:delta:]");
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRangeArray.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 747, 0, "Invalid replacement range (must not cross subrange bounds)");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
        length = v45;
      }

      if (location >= v19)
      {
        if (location < v19 + v20)
        {
          if (a4 < 0 && v20 < v44)
          {
            v36 = MEMORY[0x277D81150];
            v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSWPMutableRangeArray updateForTextReplacementInRange:delta:]");
            v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRangeArray.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v40, v37, v39, 760, 0, "Expected delta to be within range");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42);
            length = v45;
          }

          objc_msgSend_replaceRangeAtIndex_withRange_(self, v16, v18, v19, v20 + a4);
        }
      }

      else
      {
        if (a4 < 0 && v19 < v44)
        {
          v29 = MEMORY[0x277D81150];
          v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSWPMutableRangeArray updateForTextReplacementInRange:delta:]");
          v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRangeArray.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 751, 0, "Expected delta to be within range");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
          length = v45;
        }

        objc_msgSend_replaceRangeAtIndex_withRange_(self, v16, v18, v19 + a4, v20);
      }

      ++v18;
    }

    while (v17 != v18);
  }
}

- (void)unionWith:(id)a3
{
  v17 = a3;
  v6 = objc_msgSend_superRange(self, v4, v5);
  v8 = v17;
  if (self != v17 && v6 == *MEMORY[0x277D81490] && v7 == *(MEMORY[0x277D81490] + 8))
  {
    sub_276E17544(&self->super._rangeVector.__begin_, v17[1], v17[2], (v17[2] - v17[1]) >> 4);
  }

  v11 = objc_msgSend_rangeCount(v17, v7, v8);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v13 = objc_msgSend_rangeAtIndex_(v17, v10, i);
      v15 = v14;
      if ((TSUAssertLegalRange() & 1) == 0)
      {
        break;
      }

      if (v15 || !objc_msgSend_rangeCount(self, v10, v16))
      {
        objc_msgSend_addRange_(self, v10, v13, v15);
      }
    }
  }
}

- (void)subtract:(id)a3
{
  v12 = a3;
  if (objc_msgSend_rangeCount(self, v4, v5))
  {
    v9 = objc_msgSend_rangeCount(v12, v6, v7);
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        v11 = objc_msgSend_rangeAtIndex_(v12, v8, i);
        if (v8)
        {
          objc_msgSend_removeRange_(self, v8, v11, v8);
        }
      }
    }
  }
}

- (void)xor:(id)a3
{
  v13 = a3;
  v6 = objc_msgSend_mutableCopy(self, v4, v5);
  objc_msgSend_subtract_(v6, v7, v13);
  v10 = objc_msgSend_mutableCopy(v13, v8, v9);
  objc_msgSend_subtract_(v10, v11, self);
  objc_msgSend_unionWith_(v6, v12, v10);
  if (v6 != self)
  {
    sub_276E17544(&self->super._rangeVector.__begin_, *(v6 + 8), *(v6 + 16), (*(v6 + 16) - *(v6 + 8)) >> 4);
  }
}

- (void)intersectWithRanges:(id)a3
{
  v5 = a3;
  if (self != v5)
  {
    __p = 0;
    __dst = 0;
    v15 = 0;
    begin = self->super._rangeVector.__begin_;
    end = self->super._rangeVector.__end_;
    p_rangeVector = &self->super._rangeVector;
    if (begin == end)
    {
      v12 = 0;
    }

    else
    {
      do
      {
        v9 = objc_msgSend_intersection_(v5, v4, begin->location, begin->length);
        if (objc_msgSend_rangeCount(v9, v10, v11))
        {
          sub_276E17778(&__p, __dst, v9[1], v9[2], (v9[2] - v9[1]) >> 4);
        }

        ++begin;
      }

      while (begin != end);
      v12 = __p;
    }

    if (p_rangeVector != &__p)
    {
      sub_276E17544(p_rangeVector, v12, __dst, (__dst - v12) >> 4);
      v12 = __p;
    }

    if (v12)
    {
      __dst = v12;
      operator delete(v12);
    }
  }
}

@end