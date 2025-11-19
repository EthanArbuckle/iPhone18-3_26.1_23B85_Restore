@interface TSWPMutableDirtyRangeArray
- (void)addChangedRange:(_NSRange)a3 delta:(int64_t)a4 allowEmpty:(BOOL)a5;
- (void)addRange:(id *)a3 allowEmpty:(BOOL)a4;
- (void)removeRange:(_NSRange)a3;
- (void)subtract:(id)a3;
@end

@implementation TSWPMutableDirtyRangeArray

- (void)addRange:(id *)a3 allowEmpty:(BOOL)a4
{
  if (a3->var0.location != 0x7FFFFFFFFFFFFFFFLL && (a4 || a3->var0.length || a3->var1))
  {
    begin = self->super._rangeVector.__begin_;
    end = self->super._rangeVector.__end_;
    if (begin != end)
    {
      var0 = a3->var0;
      var1 = a3->var1;
      length = var0.length;
      location = var0.location;
      v9 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
      v10 = begin;
      do
      {
        v11 = v9 >> 1;
        v12 = &v10->location + 3 * (v9 >> 1);
        v14 = *v12;
        v13 = (v12 + 3);
        v9 += ~(v9 >> 1);
        if (v14 < var0.location)
        {
          v10 = v13;
        }

        else
        {
          v9 = v11;
        }
      }

      while (v9);
      if (end == v10)
      {
        v21 = 0;
        v16 = end;
      }

      else
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * ((end - v10) >> 3);
        v16 = v10;
        do
        {
          v17 = v15 >> 1;
          v18 = (v16 + 24 * (v15 >> 1));
          v20 = *v18;
          v19 = (v18 + 3);
          v15 += ~(v15 >> 1);
          if (v20 < var0.length + var0.location)
          {
            v16 = v19;
          }

          else
          {
            v15 = v17;
          }
        }

        while (v15);
        if (TSUIntersectionRangeWithEdge() == 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = 0;
        }

        else
        {
          v23 = NSUnionRange(var0, *v10);
          location = v23.location;
          length = v23.length;
          v24 = v10[1].location + var1;
          var0 = v23;
          var1 = v24;
          v21 = 1;
        }
      }

      if (v10 == begin)
      {
        v10 = begin;
      }

      else if (TSUIntersectionRangeWithEdge() != 0x7FFFFFFFFFFFFFFFLL)
      {
        v44 = *(v10 - 24);
        v10 = (v10 - 24);
        v42.location = location;
        v42.length = length;
        v25 = NSUnionRange(v42, v44);
        location = v25.location;
        length = v25.length;
        v26 = v10[1].location + var1;
        var0 = v25;
        var1 = v26;
        v21 = 1;
      }

      v27 = v16 != begin && v16 == end;
      v28 = -24;
      if (!v27)
      {
        v28 = 0;
      }

      v29 = (v16 + v28);
      if ((v16 + v28) == end || v29 == v10 || TSUIntersectionRangeWithEdge() == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ((v21 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v43.location = location;
        v43.length = length;
        v30 = NSUnionRange(v43, *v29);
        v31 = v29[1].location + var1;
        var0 = v30;
        var1 = v31;
        v29 = (v29 + 24);
      }

      if (v10 >= v29)
      {
        if (v29 < v10)
        {
          v36 = self->super._rangeVector.__end_;
          v37 = v36 - v10;
          if (v36 != v10)
          {
            memmove(v29, v10, v36 - v10);
          }

          self->super._rangeVector.__end_ = (v29 + v37);
          v10 = v29;
          goto LABEL_51;
        }

        if (v10 == end)
        {
          v10 = end;
          goto LABEL_51;
        }

        v35 = (v10 + 24);
        v38 = self->super._rangeVector.__end_;
        v33 = v38 - &v10[1].length;
        if (v38 != &v10[1].length)
        {
          v34 = v10;
          goto LABEL_49;
        }
      }

      else
      {
        v32 = self->super._rangeVector.__end_;
        v33 = v32 - v29;
        if (v32 != v29)
        {
          v34 = v10;
          v35 = v29;
LABEL_49:
          memmove(v34, v35, v33);
        }
      }

      self->super._rangeVector.__end_ = (v10 + v33);
LABEL_51:
      sub_276E30F28(&self->super._rangeVector.__begin_, v10, &var0);
      return;
    }

    p_rangeVector = &self->super._rangeVector;

    sub_276E30510(p_rangeVector, a3);
  }
}

- (void)removeRange:(_NSRange)a3
{
  begin = self->super._rangeVector.__begin_;
  end = self->super._rangeVector.__end_;
  p_rangeVector = &self->super._rangeVector;
  if (end == begin)
  {
    v14 = a3.location + a3.length;
    v9 = end;
    v20 = end;
    v15 = end;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
    v8 = v7;
    v9 = begin;
    do
    {
      v10 = v8 >> 1;
      v11 = (v9 + 24 * (v8 >> 1));
      v13 = *v11;
      v12 = (v11 + 3);
      v8 += ~(v8 >> 1);
      if (v13 > a3.location)
      {
        v8 = v10;
      }

      else
      {
        v9 = v12;
      }
    }

    while (v8);
    v14 = a3.location + a3.length;
    v15 = begin;
    do
    {
      v16 = v7 >> 1;
      v17 = (v15 + 24 * (v7 >> 1));
      v19 = *v17;
      v18 = (v17 + 3);
      v7 += ~(v7 >> 1);
      if (v19 < v14)
      {
        v15 = v18;
      }

      else
      {
        v7 = v16;
      }
    }

    while (v7);
    v20 = v9;
  }

  v21 = begin;
  if (v9 != begin)
  {
    v22 = v20[-2].n128_u64[1];
    v23 = v20[-1].n128_u64[0];
    v24 = a3.location - v22;
    if (a3.location < v22 || v24 >= v23)
    {
      if (!v23)
      {
        v26 = v22 - a3.location < a3.length && v22 >= a3.location;
        v27 = -24;
        if (!v26)
        {
          v27 = 0;
        }

        v21 = (v9 + v27);
        goto LABEL_36;
      }
    }

    else
    {
      if (a3.location == v22)
      {
        v9 = (v9 - 24);
      }

      else
      {
        v20[-1].n128_u64[0] = v24;
      }

      if (v14 >= v22 && v14 - v22 < v23)
      {
        v41 = v23 + v22;
        if (v14 <= v23 + v22)
        {
          v42 = v23 + v22;
        }

        else
        {
          v42 = v14;
        }

        if (v14 < v23 + v22)
        {
          v41 = v14;
        }

        v43.n128_u64[0] = v41;
        v43.n128_u64[1] = v42 - v41;
        v44 = 0;
        if (a3.location == v22)
        {
          *v9 = v41;
          *(v9 + 1) = v42 - v41;
        }

        else
        {
          sub_276E30F28(p_rangeVector, v20, &v43);
        }

        return;
      }
    }

    v21 = v9;
  }

LABEL_36:
  if (end != v15)
  {
    v29 = *(v15 + 1);
    if (v14 > *v15 && v14 - *v15 < v29)
    {
      v31 = v29 + *v15;
      if (v14 <= v31)
      {
        v32 = v29 + *v15;
      }

      else
      {
        v32 = v14;
      }

      if (v14 < v31)
      {
        v31 = v14;
      }

      *v15 = v31;
      *(v15 + 1) = v32 - v31;
    }
  }

  if (v21 != v15)
  {
    if (begin != v15)
    {
      v33 = *(v15 - 3);
      v34 = *(v15 - 2);
      v35 = v14 < v33 || v14 - v33 >= v34;
      begin = v15;
      if (!v35)
      {
        v36 = v34 + v33;
        if (v14 >= v36)
        {
          v37 = v36;
        }

        else
        {
          v37 = v14;
        }

        if (v14 <= v36)
        {
          v14 = v36;
        }

        *(v15 - 3) = v37;
        *(v15 - 2) = v14 - v37;
        begin = (v15 - 24);
      }
    }

    if (v21 != begin)
    {
      if (v21 >= begin)
      {
        v40 = end - v21;
        if (end != v21)
        {
          memmove(begin, v21, end - v21);
        }

        v39 = (begin + v40);
      }

      else
      {
        v38 = end - begin;
        if (end != begin)
        {
          memmove(v21, begin, end - begin);
        }

        v39 = (v21 + v38);
      }

      self->super._rangeVector.__end_ = v39;
    }
  }
}

- (void)addChangedRange:(_NSRange)a3 delta:(int64_t)a4 allowEmpty:(BOOL)a5
{
  v5 = a5;
  length = a3.length;
  location = a3.location;
  begin = self->super._rangeVector.__begin_;
  end = self->super._rangeVector.__end_;
  range2 = a3.length;
  v36 = objc_opt_new();
  v13 = end - begin;
  if (end == begin)
  {
    v34 = 0;
  }

  else
  {
    v34 = 0;
    v14 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
    v15 = location + length;
    v16 = v13 - 24;
    v17 = -v13;
    v37 = location + length;
    do
    {
      v18 = self->super._rangeVector.__begin_;
      v19 = (v18 + v16);
      v20.location = *(v18 + v16);
      v21 = *(v18 + v16 + 8);
      if (v21 + v20.location < location)
      {
        break;
      }

      if (v20.location <= v15 - a4)
      {
        v22 = v19[2];
        if (a4 < 0 && v21 <= -a4)
        {
          v23 = v18 + v16;
          v12 = (v18 + v16 + 24);
          v24 = self->super._rangeVector.__end_;
          v25 = v24 - v18;
          v26 = v17 + v25;
          if (v12 != v24)
          {
            memmove(v23, v12, v17 + v25);
          }

          self->super._rangeVector.__end_ = &v23[v26];
          a4 += v22;
        }

        else
        {
          v20.length = v21 + a4;
          v42.location = location;
          v42.length = range2;
          v40 = NSUnionRange(v20, v42);
          v41 = v22 + a4;
          objc_msgSend_addRange_allowEmpty_(v36, v40.length, &v40, v5);
          v27 = self->super._rangeVector.__begin_;
          v28 = self->super._rangeVector.__end_;
          v29 = v27 + v16;
          v12 = (v27 + v16 + 24);
          v30 = v28 - v27;
          v31 = v17 + v30;
          if (v12 != v28)
          {
            memmove(v29, v12, v17 + v30);
          }

          a4 = 0;
          self->super._rangeVector.__end_ = &v29[v31];
          v34 = 1;
        }

        v15 = v37;
      }

      else
      {
        *v19 = v20.location + a4;
      }

      v16 -= 24;
      v17 += 24;
      --v14;
    }

    while (v14);
  }

  v32 = v36[1];
  for (i = v36[2]; v32 != i; v32 = (v32 + 24))
  {
    v40 = *v32;
    v41 = v32[1].location;
    v38 = v40;
    v39 = v41;
    objc_msgSend_addRange_allowEmpty_(self, v12, &v38, v5);
  }

  if ((v34 & 1) == 0)
  {
    v40.location = location;
    v40.length = range2;
    v41 = a4;
    objc_msgSend_addRange_allowEmpty_(self, v12, &v40, v5);
  }
}

- (void)subtract:(id)a3
{
  v25 = a3;
  if (self->super._rangeVector.__end_ != self->super._rangeVector.__begin_)
  {
    v7 = objc_msgSend_count(v25, v4, v5);
    if (v7)
    {
      v8 = 0;
      do
      {
        v9 = (v25[1] + v8);
        v10 = objc_msgSend_indexForRange_(self, v6, *v9, v9[1]);
        v13 = objc_msgSend_count(self, v11, v12);
        v15 = *v9;
        v16 = v9[1];
        if (v10 < v13 && ((begin = self->super._rangeVector.__begin_, v18 = (begin + 24 * v10), v20 = *v18, v19 = v18[1], v15 == v20) ? (v21 = v16 == v19) : (v21 = 0), v21))
        {
          v22 = begin + 24 * v10;
          v6 = v22 + 24;
          end = self->super._rangeVector.__end_;
          v24 = end - (v22 + 24);
          if (end != (v22 + 24))
          {
            memmove(v22, v6, end - (v22 + 24));
          }

          self->super._rangeVector.__end_ = &v22[v24];
        }

        else
        {
          objc_msgSend_removeRange_(self, v14, v15, v16);
        }

        v8 += 24;
        --v7;
      }

      while (v7);
    }
  }
}

@end